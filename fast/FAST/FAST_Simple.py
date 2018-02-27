# -*- coding: utf-8 -*-
"""
Created on Sat Jun 06 22:21:05 2015
@author: YangWenguang
Issues contact with: hbtmdxywg@126.com
"""
import os
import numpy as np
#import _pyCAE_module as pyCAE 
import _pyCAE as pyCAE 
import ctypes

def fast_filloutput_i():
    res = pyCAE.fast_filloutput_i(33)
#    res = np.zeros([33,], dtype=np.float)
#    pyCAE.pyfilloutputwtdyn(res)
    return res

after_read_Delegate = ctypes.CFUNCTYPE(None,
                                       ctypes.c_char_p,                #routine_name
                                       ctypes.POINTER(ctypes.c_int), 
                                       ctypes.POINTER(ctypes.c_int), 
                                       ctypes.POINTER(ctypes.c_int), 
                                       ctypes.POINTER(ctypes.c_char),
                                       ctypes.POINTER(ctypes.c_int), 
                                       ctypes.POINTER(ctypes.c_int))
def call_after_read(routine_name, fileid, dataHandle, errstat, errmsg, routine_name_len, errmsg_len):
    print('*****called*****')
    print('dataHandle: %d' % dataHandle.contents.value)
    routine_name = routine_name[:routine_name_len.contents.value]
    print('call_after_read %s: %d' %(routine_name, fileid.contents.value))
call_after_read_wrapper = after_read_Delegate(call_after_read) #保存引用
call_after_read_address = ctypes.addressof(call_after_read_wrapper)
addr = ctypes.c_int.from_address(call_after_read_address)
print(call_after_read_address, addr)
tt = (ctypes.c_int*1)(addr)
print(tt[0])
pyCAE.py_set_after_read(tt)
#pyCAE.py_set_after_read2(ctypes.pointer(addr))

#errstat = ctypes.c_int(1)
#errmsg = (ctypes.c_char*100)()
#pyCAE.py_call_after_read('123', 1, ctypes.pointer(errstat), errmsg, 3, 100)
#print errstat, errmsg
#import pdb
#pdb.set_trace()

def test_simpleVersion():
    path = r'../Data/FASTV8_demo_a/Test11.fst'
    path = os.path.abspath(path)
#    print(pyCAE.fast_filloutput_i.__doc__)
#    print(pyCAE.fast_setexternalinputs_i.__doc__)
    pyCAE.fast_init_i(path)
    pyCAE.fast_start_i()
    for i in range(1500):
        if i>1490:
    #        print(i)
            pyCAE.fast_update_i()
            pyCAE.fast_data.n_t_global += 1
            res = fast_filloutput_i()
            print(res)
    pyCAE.fast_end_i()
  
if __name__ == '__main__':
    print('start')
    test_simpleVersion()
    print('end')