# -*- coding: utf-8 -*-
"""
Created on Mon Dec 01 20:49:10 2014
@author: YangWenguang
Issues contact with: hbtmdxywg@126.com

os.popen： 返回值是一个开放的文件对象连接到管道，可读写模式是根据是否为'r'（预设）或'w'。
"""
import os
import numpy as np
import matplotlib.pylab as plt
import scipy.io as spio
import scipy.signal as spsignal
from scipy.linalg import det, eig, norm, eigh
from mpldatacursor import datacursor

#import MBMP.FAST.pyCAE
#import MBMP.FAST._pyCAE
#import MBMP.FAST.FASTCore
#from MBMP.FAST.FASTCore import fast

rads2rmp = 30/np.pi
rad2deg = 180.0/np.pi
class output(object):
    def __init__(self):
        u_srvd = wtdyn.SrvD.u
        y_srvd = wtdyn.SrvD.y   #t时刻，控制系统的约束状态
        y_ad = wtdyn.AD.y
        y_ed = wtdyn.ED.y
        #控制系统
        self.ElecPwr = y_srvd.elecpwr
        self.BlPitchCom = y_srvd.blpitchcom *rad2deg    #相当于copy()
#        self.BlPitch = u_srvd.blpitch *rad2deg         #copy()
#        self.BlPitch = OtherSt_ED.blpitch *rad2deg     #copy()
#        self.BlPitch = OtherSt_ED.allouts[280:283].copy()
        #空气动力学
        self.Velocity = y_ad.ifw_outputs.velocity
        #弹性动力学：结构、转子
        self.BlPitch = y_ed.blpitch *rad2deg
#        self.BlPitch4 = getBladePitch() *rad2deg
        self.Yaw = y_ed.yaw
        self.YawRate = y_ed.yawrate
        self.LSS_Spd = y_ed.lss_spd * rads2rmp
        self.HSS_Spd = y_ed.hss_spd * rads2rmp
        self.RotSpeed = y_ed.rotspeed * rads2rmp
        self.TwrAccel = y_ed.twraccel
        self.YawAngle = y_ed.yawangle

def getBladePitch():
    import ctypes
    temp = _pyCAE.w_ed_outputtype__array__blpitch(pyCAE.wtdyn.y_ed._handle)
    dloc = temp[3]
    value = (ctypes.c_float *3).from_address(dloc)
    value = np.array(value[:])
    return value
class pitchCtrlInput():
    def __init__(self):
        t = fast.m_FAST.t_global     #目前的仿真时间秒
        u = fast.SrvD.u   #t时刻，控制系统的输入
        p = fast.SrvD.p   #控制系统参数
        x = fast.SrvD.x   #t时刻，控制系统的连续状态
        xd = fast.SrvD.xd #t时刻，控制系统的连续状态
        z = fast.SrvD.z   #t时刻，控制系统的约束状态
        y = fast.SrvD.y   #t时刻，控制系统的输出
           
        self.BlPitch = u.blpitch
        self.ElecPwr = y.elecpwr
        self.LSS_Spd = u.lss_spd
        self.TwrAccel = u.twraccel  
        self.BlPitchCom = y.blpitchcom
        self.NumBl = p.numbl
        self.t = t
        self.DT = p.dt
        self.RootName = p.rootname
        
class pitchCtrlBase(object):    
    def calc(self):
        paras = pitchCtrlInput()
        print(paras.BlPitch*180/np.pi)
        print(paras.BlPitchCom)
        y = fast.SrvD.y   #t时刻，控制系统的约束状态
        self.setvalue([1,2,3])
        return y.blpitchcom
    def setvalue(self, values):
        y = fast.SrvD.y   #t时刻，控制系统的约束状态
        y.blpitchcom = values
        
class yawCtrlInput():
    def __init__(self):
        t = fast.m_FAST.t_global     #目前的仿真时间秒
        u = fast.SrvD.u   #t时刻，控制系统的输入
        p = fast.SrvD.p   #控制系统参数
        x = fast.SrvD.x   #t时刻，控制系统的连续状态
        xd = fast.SrvD.xd #t时刻，控制系统的连续状态
        z = fast.SrvD.z   #t时刻，控制系统的约束状态
        y = fast.SrvD.y   #t时刻，控制系统的约束状态
         
        self.Yaw = u.yaw
        self.YawRate = u.yawrate
        self.WindDir = u.winddir
        self.YawErr = u.yawerr
        self.NumBl = p.numbl
        self.t = t
        self.DT = p.dt
        self.RootName = p.rootname
        
class yawCtrlBase(object):    
    def calc(self):
        paras = yawCtrlInput()
        print(paras.Yaw, paras.YawRate)
        y = fast.SrvD.y   #t时刻，控制系统的约束状态
        self.setvalue(1,2)
        return y.externalyawposcom, y.externalyawratecom
    def setvalue(self, pos, rate):
        y = fast.SrvD.y   #t时刻，控制系统的约束状态
        y.externalyawposcom = pos
        y.externalyawratecom = rate
 
        
class TorqueCtrlInput():
    def __init__(self):
        t = fast.m_FAST.t_global     #目前的仿真时间秒
        u = fast.SrvD.u   #t时刻，控制系统的输入
        p = fast.SrvD.p   #控制系统参数
        x = fast.SrvD.x   #t时刻，控制系统的连续状态
        xd = fast.SrvD.xd #t时刻，控制系统的连续状态
        z = fast.SrvD.z   #t时刻，控制系统的约束状态
        y = fast.SrvD.y   #t时刻，控制系统的约束状态
        
        self.HSS_Spd = u.hss_spd
        self.LSS_Spd = u.lss_spd
        self.GenEff = p.geneff
        self.GenTrq = y.gentrq
        self.ElecPwr = y.elecpwr
        self.NumBl = p.numbl
        self.t = t
        self.DT = p.dt
        self.RootName = p.rootname
        
class TorqueCtrlBase(object):    
    def calc(self):
        paras = TorqueCtrlInput()
        print(paras.GenTrq, paras.ElecPwr, paras.HSS_Spd)
        y = fast.SrvD.y   #t时刻，控制系统的约束状态
        self.setvalue(1,2)
        return y.gentrq, y.elecpwr
    def setvalue(self, torque, pwr):
        '''
        只要给定需要的扭矩，转速通过动力学去平衡
        '''
        y = fast.SrvD.y   #t时刻，控制系统的约束状态
        y.gentrq = torque
        y.elecpwr = pwr
def fft(datas, samplingRate):
    samplingN = len(datas)
    temp = np.fft.fft(datas)
    amps = (np.abs(temp)*2/samplingN)[0:samplingN/2]
    amps[0] = amps[0]/2.0
    df = samplingRate/samplingN
    flist = np.arange(len(amps))*df
    return flist, amps   
def fast_exe(path):  
    path = os.path.abspath(path)
    cmd = '%s %s' % (os.path.join(os.path.dirname(__file__), 'FAST_win32.exe'), path)
    result = os.system(cmd)
    return result
def turbsim(path):
    path = os.path.abspath(path)
    cmd = '%s %s' % (os.path.join(os.path.dirname(__file__), 'turbsim.exe'), path)
    result = os.system(cmd)
    return result
def IECWind(path, destfolder=None):
    import pyPreFast
#    import subprocess
#    subprocess.Popen(['IECWind.exe',], shell=False)  
    if destfolder == None:
        destfolder = os.path.dirname(path) + '\\'
    pyPreFast.startiecwind(path, destfolder)
def modes(path): 
    '''
    path不能带有后缀！
    '''
    cmd = '%s %s' % (os.path.join(os.path.dirname(__file__), 'modes.exe'), path)
    result = os.system(cmd)
    return result
def simulink(path):
    pass
def test_IECWind():
    destfolder = '..\\Data\\FASTV8_demo_a\\demo_a\\IECWind\\'
    path = '..\\Data\\FASTV8_demo_a\\demo_a\\Wind\\IEC.ipt'
    IECWind(path, destfolder)
def test_turbsim(cfg_path, speed, turb, dest): 
    turbsim(cfg_path)
    if dest is None:
        dest = os.path.dirname(cfg_path)
    old = '%s.sum' % cfg_path[:-4]
    new = os.path.join(dest, '%s_%dmps.sum' % (turb, speed))
    if os.path.exists(new):
        os.remove(new)
    os.rename(old, new)
    old = '%s.wnd' % cfg_path[:-4]
    new = os.path.join(dest, '%s_%dmps.wnd' % (turb, speed))
    if os.path.exists(new):
        os.remove(new)
    os.rename(old, new)
def test_modes():
#    path = r'..\Data\FASTV8_demo_a\pre\modes_Blade'
    path = r'..\Data\FASTV8_demo_a\pre\modes_Tower'
    modes(path)
def test_pyCAE():
    addr = _pyCAE.fast_data.m_FAST.ctypes.data
    obj = pyCAE.FAST_MiscVarType(addr)
    print(obj.t_global)
#    print(_pyCAE.fast_data.n_t_global)
#    pyCAE.wtdyn.n_t_global += 4
#    print(pyCAE.fast_data.n_t_global)
#    print(pyCAE.startwtdyn.__doc__)
    path = r'../Data/FASTV8_demo_a/Test11.fst'
    path = os.path.abspath(path)
#    pyCAE.fast_data.wtdyn_start(path)
#    pyCAE.fast_data.wtdyn_init(path)
#    for i in range(pyCAE.wtdyn.n_TMax_m1):
#        pyCAE.stepwtdyn()
#        pyCAE.fast_data.n_t_global += 1
#    pyCAE.endwtdyn()

def test_ctrlbase():
    path = r'../Data/FASTV8_demo_a/Test11.fst'
    fast.init(path)
    fast.step()        
#    import pdb
#    pdb.set_trace()
    print('pitch-test')
    a = pitchCtrlBase()
    print(a.calc())
    print('yaw-test')
    a = yawCtrlBase()
    print(a.calc())
    print('torque-test')
    a = TorqueCtrlBase()
    print(a.calc())
def test_ctrlbase2():
    path = r'../Data/FASTV8_demo_a/Test11.fst'
    path = os.path.abspath(path)
    pyCAE.wtdyn.wtdyn_init(path)
    values = []
    for i in range(200*10):
        pyCAE.wtdyn.wtdyn_step()
        _pyCAE.wtdyn.n_t_global += 1
        if i>0 and i%10 == 0:
            paras = output()
#            b = [paras.BlPitch[0], paras.BlPitchCom[0], paras.BlPitch1[0], paras.BlPitch2[0], paras.BlPitch3[0]]
            b = [paras.BlPitch[0], paras.BlPitchCom[0], paras.RotSpeed, paras.LSS_Spd, paras.HSS_Spd, paras.ElecPwr]
            values.append(b)
    values = np.array(values)
    fig = plt.figure(facecolor='white')
    for i in range(5):
        fig.add_subplot(5,1,i+1)
        plt.plot(values[:,i])
    plt.show()
#    _pyCAE.endwtdyn()
    pyCAE.wtdyn.wtdyn_end()
    
#from Transient import MPT, slaveNode
#class test_planet_transient_bat_task(slaveNode):
##    def to_Write(self, msg):
##        print msg,
#    def process(self, pnum=3, 
#                   speed_c = 120,  

def test_fast_default():
#    fast.result_root = 'result'
    fast.result_name = 'rr1'
#    fast.windfilename = 'Wind\A_16mps.wnd'
    fast.windfilename = 'Wind\A_8mps.wnd'
    import time
#    path = r'../Data/FASTV8_WP1.5/Test11.fst'
#    path = r'../Data/FASTV8_demo_a/Test11.fst'
    path = r'../Data/FASTV8_demo_hr/Test11.fst'
#    fast.simulate(path, maxStep=2)
    start = time.time()
#    fast.simulate(path)
    fast.simulate(path, maxStep=200*20)  
#    fast.init(path, maxStep=-1)
    elapsed = time.time() - start
    print('time consumed: %.1f' % elapsed)
#    fast_exe(path)
    path = '%s.out' % fast.outfileroot
    print(path)
    from FASTPost import test_plot1
    test_plot1(path)
    plt.gcf().canvas.set_window_title(fast.windfilename)
    plt.show()
def test_fast_default2():
#    path = r'../Data/FASTV8_WP1.5/Test11.fst'
    path = r'../Data/FASTV8_demo_a/Test11.fst'
    path = os.path.abspath(path)
#    wtdyn.simulate(path, maxStep=2)
    os.system(r'E:\Project\EIS\FAST\FASTV8.10.00a\bin_raw\FAST_win32.exe %s' % path)
    
if __name__ == '__main__':
    print('start')
#    import f90wrap.runtime
#    print f90wrap.runtime.sizeof_fortran_t
#    laoxu_modal()
#    laoxu_transient()
#    test_pyCAE()
#    test_pyCAE_element()
#    test_ctrlbase()
#    test_ctrlbase2()
#    test_fast_default()
#    test_fast_default2()
#    test_modes()
#    test_IECWind()
    cfg_path = '../../Data/FASTV8_demo_hr/demo_a/Wind/60_84m_mps.inp'
    test_turbsim(cfg_path, 24, 'A', '.')
    print('end')