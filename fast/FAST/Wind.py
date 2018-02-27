# -*- coding: utf-8 -*-
"""
Created on Tue Apr 14 11:34:47 2015
@author: YangWenguang
Issues contact with: hbtmdxywg@126.com
"""
import matplotlib.pylab as plt
import re
import numpy as np
import pandas as pd
from scipy import interpolate
from collections import OrderedDict
import struct

blankPattern = re.compile(r'\s+')
def splitLine(line):
    temp = line.strip()
    cols = blankPattern.split(temp)
    return cols
def splitFloats(line):
    cols = splitLine(line)
    values = [float(bb) for bb in cols]
    return values
class IECWind(object):
    def __init__(self, path):
        fp = open(path)
        lines = fp.readlines()
        ss = 0
        for ss,line in enumerate(lines):
            temp = line.strip()
            if temp and not temp.startswith('!'):
                break
        _data = []
        for i in range(ss, len(lines)):
            values = splitFloats(lines[i])
            if len(values) == 0:
                break
            _data.append(values)
        cols = ['Time', 'Speed', 'Dir', 'VSpeed', 'HShear', 'PwrVShear', 'LinVShear', 'GustSpeed']
        self.data = pd.DataFrame(_data, columns=cols)
        self.columns = cols
    def plotList(self, varPairs, fig = None):
        if fig == None:
            fig = plt.figure(facecolor='white')
        cnt = len(varPairs)
        for i, varPair in enumerate(varPairs, 1):
            ax = fig.add_subplot(cnt, 1, i)
            self.plotOne(varPair, ax = ax)
    def plotOne(self, varPair, ax = None):
        if ax == None:
            fig = plt.figure(facecolor='white')
            ax = fig.add_subplot(111)
        ax.plot(self.data[varPair[0]], self.data[varPair[1]])
        ax.set_xlabel(varPair[0])
        ax.set_ylabel(varPair[1])
        ax.set_title('%s-%s' % varPair)
class FullFieldWind_Bladed(object):
    def __init__(self, path):
        self.path = path
        fp = binaryFile(path)
        self.ID = fp.get_short()
        if self.ID != -99:
            raise Exception('file is not a TurbSim binary file')
        self.ID2 = fp.get_short()
        if self.ID2 != 4:
            raise Exception('file is not a TurbSim binary file')
        self.nc = fp.get_int()
        if self.nc != 3:
            raise Exception('file is not a TurbSim binary file')
        latitude = fp.get_float()
        self.latitude = latitude
        Z0 = fp.get_float()
        self.Z0 = Z0
        Ztmp = fp.get_float() #The height at the center of the grid, in meters. 
        self.Ztmp = Ztmp
        self.TI = np.array(fp.get_float_array(3))/100
        self.TI_u = self.TI[0]  #percent.
        self.TI_v = self.TI[1]
        self.TI_w = self.TI[2]
        self.dz = fp.get_float()
        self.dy = fp.get_float()
        time_step = fp.get_float()
        n_t = fp.get_int() * 2
        self.n_t = n_t
        self.u_hub = fp.get_float()
        self.time_step = time_step/self.u_hub
        #Unused
        fp.get_float_array(3)
        fp.get_int()
        self.RandSeed1 = fp.get_int()
        numGrid_Z = fp.get_int()
        self.numGrid_Z = numGrid_Z
        numGrid_Y = fp.get_int()
        self.numGrid_Y = numGrid_Y
        fp.get_int_array(6)
        
        temp = fp.get_short_array(3*n_t*numGrid_Z*numGrid_Y)
        V_grid_norm = np.zeros([3, numGrid_Y, numGrid_Z, n_t])
        self.V_grid_norm = V_grid_norm
        cur = 0
        for it in range(n_t):
            for iz in range(numGrid_Z):
                for iy in range(numGrid_Y):
                    V_grid_norm[:, iy, iz, it] = temp[cur: cur+3]
                    cur += 3  
                    
        V_grid = np.zeros([3, numGrid_Y, numGrid_Z, n_t])   
        for i in range(3):
            if i == 0:
                V_grid[i, :,:,:] = self.u_hub * (self.TI[i]/1000.0 * V_grid_norm[i, :,:,:] + 1)
            else:
                V_grid[i, :,:,:] = self.u_hub * (self.TI[i]/1000.0 * V_grid_norm[i, :,:,:])
        self.V_grid = V_grid
        self.Z_grid = -0.5*(numGrid_Z - 1)* self.dz + self.Ztmp - 0 + (np.arange(numGrid_Z))* self.dz
        self.Y_grid = 0.5*(numGrid_Y - 1)* self.dy - (np.arange(numGrid_Y))* self.dy
        fp.close()
class FullFieldWind_TurbSim(object):
    def __init__(self, path):
        self.path = path
        fp = binaryFile(path)
        import pdb
        pdb.set_trace()
        self.ID = fp.get_short()
        if self.ID != 7:
            raise Exception('file is not a TurbSim binary file')
        numGrid_Z = fp.get_int()
        self.numGrid_Z = numGrid_Z
        numGrid_Y = fp.get_int()
        self.numGrid_Y = numGrid_Y
        n_tower = fp.get_int()
        self.n_tower = n_tower
        n_t = fp.get_int()
        self.n_t = n_t
        self.dz = fp.get_float()
        self.dy = fp.get_float()
        self.time_step = fp.get_float()
        self.u_hub = fp.get_float()
        self.hub_ht = fp.get_float()
        self.z_bottom = fp.get_float()
        v_slope = np.zeros([3,])
        self.v_slope = v_slope
        v_intercept = np.zeros([3,])
        self.v_intercept = v_intercept
        for i in range(3):
            v_slope[i] = fp.get_float()
            v_intercept[i] = fp.get_float()
        n_chrs = fp.get_int()
        if n_chrs <= 0:
            raise Exception('string length < 0')
        self.version = fp.get_chars_as_string(n_chrs)
        
        temp = fp.get_short_array(n_t*(numGrid_Z*numGrid_Y*4 + n_tower*3))
        V_grid_norm = np.zeros([3, numGrid_Y, numGrid_Z, n_t])
        self.V_grid_norm = V_grid_norm
        V_tower_norm = np.zeros([3, n_tower, n_t])
        self.V_tower_norm = V_tower_norm
        cur = 0
        for it in range(n_t):
            for iz in range(numGrid_Z):
                for iy in range(numGrid_Y):
                    V_grid_norm[:, iy, iz, it] = temp[cur: cur+3]
                    cur += 3
         
            for iz in range(n_tower):
                V_tower_norm[:, iz, it] = temp[cur: cur+3]
                cur += 3
        V_grid = np.zeros([3, numGrid_Y, numGrid_Z, n_t])
        V_tower = np.zeros([3, n_tower, n_t])
        for i in range(3):
            V_grid[i, :,:,:] = (V_grid[i, :,:,:] - v_intercept[i])/v_slope[i]
            V_tower[i, :,:] = (V_tower_norm[i, :,:] - v_intercept[i])/v_slope[i]
        self.V_grid = V_grid
        self.V_tower = V_tower
        
        fp.close()
class binaryFile(object):
    def __init__(self, path):
        self.path = path
        self.fp = open(path, 'rb')
    def close(self):
        self.fp.close()
    def get_short(self, signed=True):
        fp = self.fp
        fmt = 'h' if signed else 'H'
        res = struct.unpack(fmt, fp.read(2))
        return res[0]
    def get_int(self, signed=True):
        fp = self.fp
        fmt = 'i' if signed else 'I'
        res = struct.unpack(fmt, fp.read(4))
        return res[0]
    def get_longlong(self, signed=True):
        fp = self.fp
        fmt = 'q' if signed else 'Q'
        res = struct.unpack(fmt, fp.read(8))
        return res[0]
    def get_float(self, signed=True):
        fp = self.fp
        res = struct.unpack('f', fp.read(4))
        return res[0]
    def get_double(self, signed=True):
        fp = self.fp
        res = struct.unpack('d', fp.read(8))
        return res[0]
    def get_chars_as_string(self, num):
        fp = self.fp
        temp = struct.unpack('%dc'% num, fp.read(num))
        res = ''.join(temp)
        return res
    def get_short_array(self, num, signed=True):
        fp = self.fp
        fmt = 'h' if signed else 'H'
        res = struct.unpack('%d%s'% (num, fmt), fp.read(2*num))
        return res
    def get_int_array(self, num, signed=True):
        fp = self.fp
        fmt = 'i' if signed else 'I'
        res = struct.unpack('%d%s'% (num, fmt), fp.read(4*num))
        return res
    def get_longlong_array(self, num, signed=True):
        fp = self.fp
        fmt = 'q' if signed else 'Q'
        res = struct.unpack('%d%s'% (num, fmt), fp.read(8*num))
        return res
    def get_float_array(self, num):
        fp = self.fp
        res = struct.unpack('%df'% num, fp.read(4*num))
        return res
    def get_double_array(self, num):
        fp = self.fp
        res = struct.unpack('%dd'% num, fp.read(8*num))
        return res
    def get_struct_array(self, fmt, num):
        fp = self.fp
        size = struct.calcsize(fmt)
        res = [struct.unpack(fmt, fp.read(size)) for i in range(num)]
        return res
def test_plot1():
#    path = r'..\Data\FASTV8_demo_a\demo_a\IECWind\ECD+R.wnd'
    path = r'..\Data\FASTV8_demo_a\demo_a\IECWind\EDC+I.wnd'
    data = IECWind(path)
    print(data.columns)
    print(len(data.data))
    data.plotList([('Time','Speed'),('Time','Dir'),('Time','HShear')])
    plt.show()  
def test_fullfield():
    path = r'../Data\FASTV8_demo_hr\demo_a\Wind\A_12mps.wnd'
    obj = FullFieldWind_Bladed(path)
    print(obj.numGrid_Y, obj.numGrid_Z, obj.n_t, obj.V_grid_norm.shape)
    print(obj.TI)
    print(obj.u_hub)
    print(obj.Ztmp)
    print(obj.Z_grid)
    print(obj.Y_grid)
    plt.figure(facecolor='w')
    time = obj.time_step * np.arange(obj.n_t)
#    for i in range(obj.numGrid_Z):     
    for i in [0,3,6]:           
        speed = obj.V_grid[0, 3, i, :]
        plt.plot(time, speed)
    plt.show()
if __name__ == '__main__':
    print('start')
#    test_plot1()
    test_fullfield()
    print('end')