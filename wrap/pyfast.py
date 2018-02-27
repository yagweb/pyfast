# -*- coding: utf-8 -*-
"""
Created on Tue Nov 28 11:11:28 2017

IECWind.exe： https://nwtc.nrel.gov/IECWind

@author: li-dw08
"""
import os

def turbsim(path):
    path = os.path.abspath(path)
    cmd = '%s %s' % (os.path.join(os.path.dirname(__file__), 'turbsim.exe'), path)
    result = os.system(cmd)
    return result