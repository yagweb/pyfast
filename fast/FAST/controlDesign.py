# -*- coding: utf-8 -*-
"""
Created on Tue Apr 28 08:44:16 2015
@author: YangWenguang
Issues contact with: hbtmdxywg@126.com
"""
import numpy as np
import matplotlib.pylab as plt
import sympy as sp
from sympy.core.mul import Mul
from control import matlab
from scipy.signal import zpk2ss, ss2zpk, tf2zpk, zpk2tf
def get_sys_from_mat(path):
    sys_torque_zpk, sys_pitch_zpk, sys_drive_train_zpk = get_sys_zpk_from_mat(path)
    sys_torque = zpk_tf1(sys_torque_zpk[0], sys_torque_zpk[1], sys_torque_zpk[2])
    sys_pitch = zpk_tf1(sys_pitch_zpk[0], sys_pitch_zpk[1], sys_pitch_zpk[2])
    sys_drive_train = zpk_tf1(sys_drive_train_zpk[0], sys_drive_train_zpk[1], sys_drive_train_zpk[2])
    return sys_torque, sys_pitch, sys_drive_train
def get_sys_zpk_from_mat(path):
    sys_torque_zpk, sys_pitch_zpk, sys_drive_train_zpk = _get_sys_zpk_from_mat(path)
    return sys_torque_zpk, sys_pitch_zpk, sys_drive_train_zpk
def _get_sys_zpk_from_mat(path):
    from scipy.io import loadmat
    sys  = loadmat(path)
    zeros_tf = sys['sys_torque_z'][:, 0].tolist()
    poles_tf = sys['sys_torque_p'][:, 0].tolist()
    gain = sys['sys_torque_k'][0, 0]
    sys_torque_zpk = (zeros_tf, poles_tf, gain)
    
    zeros_tf = sys['sys_pitch_z'][:, 0].tolist()
    poles_tf = sys['sys_pitch_p'][:, 0].tolist()
    gain = sys['sys_pitch_k'][0, 0]
    sys_pitch_zpk = (zeros_tf, poles_tf, gain)
    
    zeros_tf = sys['sys_drive_train_z'][:, 0].tolist()
    poles_tf = sys['sys_drive_train_p'][:, 0].tolist()
    gain = sys['sys_drive_train_k'][0, 0]
    sys_drive_train_zpk = (zeros_tf, poles_tf, gain)
    return sys_torque_zpk, sys_pitch_zpk, sys_drive_train_zpk
def plotrlocus(gn, gd, hn=None, hd=None, K=None):
    """
    Plot the root locus of a system with the total transfer function
    T = K*G/(1 + K*G*H)
    where G and H are rational transfer functions described by polynomials in
    their numerator and denomenator, or gn and gd for G and optionally hn and
    hd for H.  If H is not specified, it is assumed to be unity.
    The gain range of the plot may be specified by K, but by default goes from
    0 to 100.
    """
    if not K:
        K = np.linspace(1e-15, 100, 4000)
    if not hn:
        hn = np.array([1])
    if not hd:
        hd = np.array([1])

    tn1 = np.convolve(hd, gd)
    tn2 = np.convolve(gn, hn)

    tnlen = max(len(tn1), len(tn2))
    tn1 = np.hstack([np.zeros(tnlen - len(tn1)), tn1])
    tn2 = np.hstack([np.zeros(tnlen - len(tn2)), tn2])

    nK = 10000
    poles = np.empty([nK, tnlen - 1], dtype="complex128")

    for i, KK in enumerate(np.linspace(0.1, 100, nK)):
        r = np.roots(tn1 + KK*tn2)
        poles[i, :] = r

    colors = 'rgbky'
    for p, c in zip(poles.T, colors):
        plt.plot(np.real(p), np.imag(p), c + '-')
        plt.plot(np.real(p[0]), np.imag(p[0]), c + 'x')
        plt.plot(np.real(p[-1]), np.imag(p[-1]), c + 'o')
    plt.grid('on') 
    plt.show()
def getPolyFunc(paras, s):
    order = len(paras)
    f = 0
    for i, bb in enumerate(paras):
        f += bb*s**(order-1-i)
    return f
def polySolve(paras):
    s = sp.symbols('s')
    f = getPolyFunc(paras, s)
    xishu = sp.solve(f, s)   #消除了重根！！
    xishu = [complex(bb.evalf()) for bb in xishu]
    xishu = [bb.real if bb.imag==0 else bb for bb in xishu]
    return xishu
def getzeros(paras):
    '''
    重根会丢失！
    '''
    zeros = []
    for bb in paras:
        if isinstance(bb, list) or isinstance(bb, tuple):
            xishu = polySolve(bb)
            zeros.extend(xishu)
        else:
            zeros.append(bb)
    return zeros
def getPolyParas(paras):
    '''
    获取展开的多项式的系数
    '''
    s = sp.symbols('s')
    fs = []
    for bb in paras:
        if not isinstance(bb, list) and not isinstance(bb, tuple):
            bb = [1, -bb]
        f = getPolyFunc(bb, s)
        fs.append(f)
    f = reduce(lambda x,y:x*y, fs)
    f = f.expand()
    subs = {s:0}
    diffs = []
    while f != 0:
        c0 = complex(f.evalf(subs = subs))
        c0 = c0.real
        diffs.append(c0)
        f = sp.diff(f, s)
    xishu = []
    factorial = 1
    for i, bb in enumerate(diffs):
        if i != 0:
            factorial *= i
        xishu.append(bb/factorial)
    xishu = xishu[::-1]
    return xishu
def zpk_tf1(zeros_tf, poles_tf, gain):
    zeros = getzeros(zeros_tf)
    poles = getzeros(poles_tf)
    num, den = zpk2tf(zeros, poles, gain)
#    sys = matlab.zpk(zeros, poles, gain)
    sys = matlab.tf(num, den)
    return sys
def zpk_tf2(zeros_tf, poles_tf, gain):
    num = getPolyParas(zeros_tf)
    num = [bb*gain for bb in num]
    den = getPolyParas(poles_tf)
#    zeros, poles, gain = tf2zpk(np.array(num), np.array(den))
    sys = matlab.tf(num, den)
    return sys
    
def test_tf():
    zeros_tf = [0, -1, (1,8,15)]
    poles_tf = [-2,(1,2,-80)]
    gain = -0.5
    sys1 = zpk_tf1(zeros_tf, poles_tf, gain)
    sys2 = zpk_tf2(zeros_tf, poles_tf, gain)
    print(sys1)
    print(sys2)
    print(sys1-sys2)
def test_plot(sys):
    fig = plt.figure(facecolor = 'w')
    mag, phase, omega = matlab.bode(sys)
    fig = plt.figure(facecolor = 'w')
    real, imag, freq = matlab.nyquist(sys)
    fig = plt.figure(facecolor = 'w')
    matlab.nichols(sys)
    
    rlist, klist = matlab.rlocus(sys, klist=None)
    
#    fig = plt.figure(facecolor = 'w')
#    #对数幅相特性曲线
#    ax = fig.add_subplot(221)
#    ax.grid(True)
##    real = mag*np.sin(phase)
##    imag = mag*np.cos(phase)
#    plt.plot(real, imag)
#    ax = fig.add_subplot(223)
#    ax.grid(True)
#    real = np.log(mag)*np.sin(phase)
#    imag = np.log(mag)*np.cos(phase)
#    plt.plot(real, imag)
#    #对数频率特性曲线
#    ax = fig.add_subplot(222)
#    ax.grid(True)
#    plt.plot(np.log(omega), np.log(mag))
#    ax = fig.add_subplot(224)
#    ax.grid(True)
#    plt.plot(np.log(omega), phase)
    plt.show()
def test_bode_tf():
    from scipy import signal
    num = [1, 2]
    den = [2, 1, 0]
    s1 = signal.lti(num, den)
    w, mag, phase = signal.bode(s1)
    
    plt.figure(facecolor='w')
    plt.semilogx(w, mag)    # bode magnitude plot
    plt.grid('on')
    plt.figure(facecolor='w')
    plt.semilogx(w, phase)  # bode phase plot
    plt.grid('on')
    plt.show()
def test_matlab():
    zeros_tf = [0, -50, -640, (1,-0.1422,8.303), (1,0.04791,8.765),
                (1,-1.963,45.63), (1,0.1592,266.9),(1,9.724,378.4),(1,7.78,724.3)]
    poles_tf = [-51.61,-3.333,-0.06996,-0.01306,(1,0.03257,8.386),(1,0.3603,8.647),
                (1,4.279,46.71),(1,2.556,214.2),(1,0.9348,280.6),(1,4.368,391.3),(1,1.574,668.3)]
    gain = -90.9477
    sys_pitch_14 = zpk_tf2(zeros_tf, poles_tf, gain)
    
    zeros_tf = [(1,0.04271,8.081),(1,0.1098,23.67),(1,0.1615,274.1),(1,9.724,378.4),(1,0.544,456.3)]
    poles_tf = [-51.66,-0.04851,(1,0.03507,8.386),(1,2.661,214.3),(1,1.003,280.4),(1,4.177,397.6),(1,1.557,674.3)]
    gain = -0.8323
    sys_torque_8 = zpk_tf2(zeros_tf, poles_tf, gain)
    
    sys_drive_train = matlab.tf([73.19,568900,309800,217100000],
                         [1,50.41,585.2,28290,53290,2516000])

    omega = np.power(10, np.linspace(-1, 3, 300))                         
    fig = plt.figure(facecolor = 'w')
    mag, phase, omega = matlab.bode(sys_pitch_14, omega)
    fig = plt.figure(facecolor = 'w')
    mag, phase, omega = matlab.bode(sys_torque_8, omega)
    fig = plt.figure(facecolor = 'w')
    mag, phase, omega = matlab.bode(sys_drive_train, omega)
#    test_plot(sys_pitch_14)
    plt.show()

def test_get_sys():
    omega = np.power(10, np.linspace(-3, 3, 1000))
    root = r'..\Data\sys\sys_%d.mat' 
    sys_8 = get_sys_from_mat(root % 8)
    sys_12 = get_sys_from_mat(root % 12)
    sys_14 = get_sys_from_mat(root % 14)
    sys_18 = get_sys_from_mat(root % 18)
                          
    fig = plt.figure(facecolor = 'w')
    fig.canvas.set_window_title('sys_torque_8') 
    mag, phase, omega1 = matlab.bode(sys_8[0], omega)
    
    fig = plt.figure(facecolor='w')
    fig.canvas.set_window_title('sys_pitch')
    mag, phase, omega1 = matlab.bode(sys_12[1], sys_14[1], sys_18[1], omega)
    
    fig = plt.figure(facecolor='w')
    fig.canvas.set_window_title('sys_drive_train_%d' % 8)
    mag, phase, omega1 = matlab.bode(sys_8[2], omega)
    plt.show() 
if __name__ == '__main__':
    print('start')
#    test_bode_tf()
#    test_tf()
#    test_matlab()
    test_get_sys()
    print('end')