# -*- coding: utf-8 -*-
"""
Created on Mon Mar 23 17:30:16 2015
@author: YangWenguang
Issues contact with: hbtmdxywg@126.com
"""
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
class outFile(object):
    def __init__(self, path, geneEff = 0.95):
        fp = open(path)
        lines = fp.readlines()
        cols = splitLine(lines[6])
        self.units = splitLine(lines[7])
        _data = []
        for i in range(8, len(lines)):
            values = splitFloats(lines[i])
            if len(values) == 0:
                break
            _data.append(values)
        self.data = pd.DataFrame(_data, columns=cols)
        self.data['GenTorq'] = (self.data['GenPwr']/(self.data['GenSpeed']*np.pi/30.0 / geneEff)).fillna(0)
        self.columns = cols
    def plotList(self, where, varPairs, fig = None):
        if fig == None:
            fig = plt.figure(facecolor='white')
        data = self.data
        if where:
            data = data.query(where)
        cnt = len(varPairs)
        for i, varPair in enumerate(varPairs, 1):
            ax = fig.add_subplot(cnt, 1, i)
            self.plotOne(data, varPair, ax = ax)
    def plotOne(self, data, varPair, ax = None):
        if ax == None:
            fig = plt.figure(facecolor='white')
            ax = fig.add_subplot(111)
        ax.plot(data[varPair[0]], data[varPair[1]])
        ax.set_xlabel(varPair[0])
        ax.set_ylabel(varPair[1])
        ax.set_title('%s-%s' % varPair)

def test_plot1(path):
    data = outFile(path)
    for i in range(len(data.columns)):
        print(data.columns[i], data.units[i])
#    print(len(data.data))
#    radio1 = data.data['RotTorq']/data.data['GenTorq']
#    radio2 = data.data['GenSpeed']/data.data['RotSpeed']
#    plt.plot(radio1)
#    plt.plot(radio2)
#    plt.show()
    data.plotList('Time<10',[('Time','WindVxi'),
                   ('Time','BldPitch1'),
                   ('Time','GenSpeed'),
                   ('Time','RotTorq'),
                   ('Time','GenTorq'),
#                   ('Time','RotPwr'),
                   ('Time','GenPwr')])
#    data.plotList('Time>0',[('Time','WindVxi'),
#                   ('Time','LSShftMxa'),
#                   ('Time','HSShftTq'),
#                   ('Time','GenTq'),
#                   ('Time','GenPwr')])

if __name__ == '__main__':
    print('start')
#    path = r'E:\Project\EIS\FEwork\Data\FASTV8_demo_a\test11.out'
#    test_plot1(path)
#    path = r'E:\Project\EIS\FEwork\Data\FASTV8_WP1.5\test11.out'
#    path = r'E:\Project\EIS\FEwork\Data\FASTV8_demo_a\FASTV7.out'
    path = r'E:\ywg10\Research\FEwork\Data\FASTV8_demo_hr\rr1.out'
    test_plot1(path)
#    path = r'Z:\ywg10\matlab\FAST\Samples\FASTV8_demo_a\FASTV7_SFunc.out'
#    test_plot1(path)
    plt.show()  