# -*- coding: utf-8 -*-
"""
Created on Mon May 18 20:04:55 2015
@author: YangWenguang
Issues contact with: hbtmdxywg@126.com
"""
import _pyCAEV7

def linearize(inpfile, is_end=True):
    '''
    '''
    _pyCAEV7.pymarch(inpfile)
    _pyCAEV7.pyfast_init(inpfile)
#    _pyCAEV7.pyfastdynamics(ztime_s, qt_s, qdt_s, 
#                            blpitchcom_s, yawposcom_s, yawratecom_s, elecpwr_s, gentrq_s,
#                            qd2t_s,outdata_s)
    if is_end:    
        _pyCAEV7.pyfast_end()
def test_linearize():  
#    path = r'..\Data\FASTV7_demo_a\test13.fst'
#    path = r'..\Data\FASTV8_demo_a\FASTV7.fst'
    path = r'..\Data\FASTV8_demo_hr\FASTV7_linear.fst'
    linearize(path)    
if __name__ == '__main__':
    print('start')
    test_linearize()