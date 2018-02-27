# -*- coding: utf-8 -*-
"""
Created on Mon Mar 23 17:30:16 2015
@author: YangWenguang
Issues contact with: hbtmdxywg@126.com
"""
import os
from airfoilprep import Polar, Airfoil
import matplotlib.pylab as plt
import re
import numpy as np
import pandas as pd
from scipy import interpolate
from collections import OrderedDict

blankPattern = re.compile(r'\s+')
def splitLine(line):
    temp = line.strip()
    cols = blankPattern.split(temp)
    return cols
def splitFloats(line):
    cols = splitLine(line)
    values = [float(bb) for bb in cols]
    return values
class ADipt(object):
    def __init__(self, path):
        fp = open(path)
        lines = fp.readlines()
        self.NumFoil = int(splitLine(lines[17])[0])
        self.foils = []
        for i in range(self.NumFoil):
            tt = splitLine(lines[18+i])[0][1:-1]
            path_af = os.path.join(os.path.dirname(path), tt)
            af = Airfoil.initFromAerodynFile(path_af)
            self.foils.append(af)
        nodeNum = int(splitLine(lines[22])[0])        
        self.cols = splitLine(lines[23])
        _data = []
        for i in range(nodeNum):
            values = self.splitLine(lines[24+i])
            _data.append(values)
        self.nodeData = pd.DataFrame(_data, columns=self.cols)
    def splitLine(self, line):
        cols = splitLine(line)
        for i in range(5):
            cols[i] = float(cols[i])
        return cols
    def plotfoils(self):
        fig = plt.figure(facecolor='white')
        cnt = len(self.foils)
        for i,af in enumerate(self.foils):
            ax = fig.add_subplot(cnt, 1, i+1)
            af.polars[0].plotax(ax = ax)
class Blade(object):
    def __init__(self, path):
        fp = open(path)
        lines = fp.readlines()
        nodeNum = int(splitLine(lines[3])[0])
        cols = splitLine(lines[14])
        self.units = splitLine(lines[15])
        _data = []
        for i in range(nodeNum):
            values = splitFloats(lines[16+i])
            _data.append(values)
        self.nodeData = pd.DataFrame(_data, columns=cols)
    def datacell(self, row, col):
        item = self.nodeData.loc[row, col]
        return item
def bladed_interp(ipt, path_b):
    ad = ADipt(ipt)
    blade = Blade(path_b)
    Rhub = 1.75
    Lblade = 35-Rhub
    RNodes = ad.nodeData['RNodes'] - Rhub
    rs = np.arange(10)*Lblade/9  #bladed教育版只支持10个点
    _data = OrderedDict()
    _data['RNodes'] = rs
    for i in range(1, len(ad.nodeData.columns)-1):
        col = ad.nodeData.columns[i]
        tck = interpolate.splrep(RNodes, ad.nodeData[col], s=0, k=2)    #行用loc，iloc
        _data[col] = interpolate.splev(rs, tck)
    a = blade.nodeData['BlFract'] * Lblade
    for i in range(1, len(blade.nodeData.columns)):
        col = blade.nodeData.columns[i]
        tck = interpolate.splrep(a, blade.nodeData[col], s=0, k=2)    
        _data[col] = interpolate.splev(rs, tck)
    #插值，输出10个点的数据
    res = pd.DataFrame(_data)
    res.to_csv(r'../data/test.txt', sep='\t', encoding='utf-8', index=False)
    print(res)
    return res
class tower(object):
    def __init__(self, path):
        fp = open(path)
        lines = fp.readlines()
        nodeNum = int(splitLine(lines[3])[0])
        cols = splitLine(lines[17])
        self.units = splitLine(lines[18])
        _data = []
        for i in range(nodeNum):
            values = splitFloats(lines[19+i])
            _data.append(values)
        self.nodeData = pd.DataFrame(_data, columns=cols)
    def datarow(self, row):
        item = self.nodeData.loc[row, :]  #根据行index获取数据
#        item = self.nodeData.ix[row, :]
#        item = self.nodeData.iloc[row, :]
        return item
    def datacell(self, row, col):
#        icol = self.nodeData.columns.tolist().index(col)
        item = self.nodeData.loc[row, col]
        return item
    def datacol(self, col):
        item = self.nodeData[col]
        return item
    def resample(self, num):
        rs = np.arange(num)/float(num-1) 
        HtFracts = self.nodeData['HtFract']
        _data = OrderedDict()
        _data['HtFract'] = rs
        for i in range(1, len(self.nodeData.columns)):
            col = self.nodeData.columns[i]
            tck = interpolate.splrep(HtFracts, self.nodeData[col], s=0, k=2)    #行用loc，iloc
            _data[col] = interpolate.splev(rs, tck)
        res = pd.DataFrame(_data)
        return res
def tower_interp(path):
    obj = tower(path)
#    import pdb
#    pdb.set_trace()
    Ltower=60
#    num = 5#bladed教育版只支持5个点
    num = 20
    res = obj.resample(num)
    res['RNodes'] = res['HtFract'] * Ltower
    res.to_csv(r'../data/test.xls', sep='\t', encoding='utf-8', index=False)
    print(res)
    return res
def test_balde():
#    path = r'E:\Project\EIS\FEwork\Data\FASTV8_demo_a\demo_a\Test11_AD.ipt' 
    path = r'E:\Project\EIS\FEwork\Data\FASTV8_WP1.5\WP_Baseline\Test11_AD.ipt' 
    ad = ADipt(path)
    ad.plotfoils()
    plt.show()
if __name__ == '__main__':
    print('start')
#    bladed_interp(r'E:\Project\EIS\FEwork\Data\FASTV8_demo_a\demo_a\Test11_AD.ipt',
#                  r'E:\Project\EIS\FEwork\Data\FASTV8_demo_a\demo_a\Baseline_Blade.dat')
#    tower_interp(r'E:\Project\EIS\FEwork\Data\FASTV8_demo_a\demo_a\baseline_Tower.dat')
    test_balde()
    print('End')