# -*- coding: utf-8 -*-
"""
Created on Sat Nov 08 09:42:59 2014
@author: yagweb (Wenguang Yang)
Issues contact with: hbtmdxywg@126.com
"""
import numpy as np
import os
import _pyCAE
import pyCAE
import ctypes
from collections import OrderedDict

rads2rmp = 30/np.pi
rad2deg = 180.0/np.pi
deg2rad = np.pi/180.0
def typeFromAddress(ftype, addr):
    '''
    from_handle 传入一个1个元素的int数组，存入的是地址。
    '''
    addr = (ctypes.c_int*1)(addr)
#    addr = ctypes.addressof((ctypes.c_int*1)(addr))
#    addr = np.array([addr], dtype=np.int)
#    addr = np.array([addr], dtype='i4', order='f')
    res = ftype.from_handle(addr)
    return res

class FASTCore(object):
    def __init__(self):
        #Fast_ParameterType
        addr = _pyCAE.fast_data.p_FAST.ctypes.data
        self.p_FAST = typeFromAddress(pyCAE.Fast_Types.Fast_Parametertype, addr)
        #FAST_OutputFileType
        addr = _pyCAE.fast_data.y_FAST.ctypes.data
        self.y_FAST = typeFromAddress(pyCAE.Fast_Types.Fast_Outputfiletype, addr)
        #FAST_MiscVarType
        addr = _pyCAE.fast_data.m_FAST.ctypes.data #获取地址
        self.m_FAST = typeFromAddress(pyCAE.Fast_Types.Fast_Miscvartype, addr)
        #FAST_ModuleMapType
#        addr = _pyCAE.fast_data.m_FAST.ctypes.data #获取地址
#        self.MeshMapData = typeFromAddress(pyCAE.Fast_Types.FAST_Modulemaptype, addr)
        #ElastoDyn_Data
        addr = _pyCAE.fast_data.ED.ctypes.data
        self.ED = typeFromAddress(pyCAE.Fast_Types.Elastodyn_Data, addr)
        #ServoDyn_Data
        addr = _pyCAE.fast_data.SrvD.ctypes.data
        self.SrvD = typeFromAddress(pyCAE.Fast_Types.Servodyn_Data, addr)
        #AeroDyn_Data
        addr = _pyCAE.fast_data.AD.ctypes.data
        self.AD = typeFromAddress(pyCAE.Fast_Types.Aerodyn_Data, addr)
        #InflowWind_Data
        addr = _pyCAE.fast_data.IfW.ctypes.data
        self.IfW = typeFromAddress(pyCAE.Fast_Types.Inflowwind_Data, addr)
        #HydroDyn_Data
        addr = _pyCAE.fast_data.HD.ctypes.data
        self.HD = typeFromAddress(pyCAE.Fast_Types.Hydrodyn_Data, addr)
        #SubDyn_Data
        addr = _pyCAE.fast_data.SD.ctypes.data
        self.SD = typeFromAddress(pyCAE.Fast_Types.Subdyn_Data, addr)
        #MAP_Data
#        addr = _pyCAE.fast_data.MAPp.ctypes.data
#        self.MAPp = typeFromAddress(pyCAE.Fast_Types.MAP_Data, addr)
        #FEAMooring_Data
        addr = _pyCAE.fast_data.FEAM.ctypes.data
        self.FEAM = typeFromAddress(pyCAE.Fast_Types.Feamooring_Data, addr)
        #MoorDyn_Data
        addr = _pyCAE.fast_data.MD.ctypes.data
        self.MD = typeFromAddress(pyCAE.Fast_Types.Moordyn_Data, addr)
        #IceFloe_Data
        addr = _pyCAE.fast_data.IceF.ctypes.data
        self.IceF = typeFromAddress(pyCAE.Fast_Types.Icefloe_Data, addr)
        #IceDyn_Data
#        addr = _pyCAE.fast_data.IceD.ctypes.data
#        self.IceD = typeFromAddress(pyCAE.Fast_Types.Icedyn_Data, addr)
        
        self.outputDimension = 0
        self.outputNames = None
        
        #回调事件注册
        after_read_Delegate = ctypes.CFUNCTYPE(None,
                                       ctypes.c_char_p,
                                       ctypes.POINTER(ctypes.c_int),   #fileid
                                       ctypes.POINTER(ctypes.c_int),   #dataHandle
                                       ctypes.POINTER(ctypes.c_int),   #errstat
                                       ctypes.POINTER(ctypes.c_char),  #errMsg
                                       ctypes.POINTER(ctypes.c_int), 
                                       ctypes.POINTER(ctypes.c_int))
        self.call_after_read_wrapper = after_read_Delegate(self.__call_after_read) #保存引用
        call_after_read_address = ctypes.addressof(self.call_after_read_wrapper)
        addr = ctypes.c_int.from_address(call_after_read_address)
        _pyCAE.py_set_after_read((ctypes.c_int*1)(addr))
        #pyCAE.py_set_after_read2(ctypes.pointer(addr))
        self.__call_after_read_handles = OrderedDict()
        self.__call_after_read_handles[1] = {}
        self.__call_after_read_handles[2] = {}
        self.__call_after_read_handles[3] = {}
        self.__call_after_read_handles[4] = {}
        self.windfilename = None
        self.result_root = None
        self.result_name = None
        self.add_call_after_read(1, 'result_path', self.__set_result_path)
        self.add_call_after_read(2, 'windfilename', self.__set_windfilename)

    def __set_result_path(self, data):
        '''
        由于变桨输入控制的原因，目前无法使用
        '''
        default = data.outfileroot.strip()
        if self.result_root is None:
            self.result_root = os.path.dirname(default)
        else:
            if not os.path.isabs(self.result_root):
                self.result_root = os.path.join(self.inputroot, self.result_root)
            if not os.path.exists(self.result_root):
                os.mkdir(self.result_root)
        if self.result_name is None:
            self.result_name = os.path.basename(default)
        data.outfileroot = os.path.join(self.result_root, self.result_name)
        return 0, None

    def __set_windfilename(self, data):
        default = data.adfilename.strip()
        if self.windfilename is not None:
            if os.path.isabs(self.windfilename):
                data.windfilename = self.windfilename
            else:
                windfilename = os.path.join(os.path.dirname(default), 
                                                 self.windfilename)
                data.windfilename = windfilename
            if not os.path.exists(data.windfilename.strip()):
                return 4, 'python: wind file not exist'
        else:
            self.windfilename = data.windfilename.strip()
        return 0, None

    def __call_after_read(self, routine_name, fileid, dataHandle, errstat, errmsg, routine_name_len, errmsg_len):
        routine_name = routine_name[:routine_name_len.contents.value]
        _fileid = fileid.contents.value        
        handles = self.__call_after_read_handles[_fileid]
        if len(handles) == 0:
            return
        _dataHandle = dataHandle.contents.value
        if _fileid == 1:
#            data = typeFromAddress(pyCAE.Fast_Types.Fast_Parametertype, 
#                                           _dataHandle)
            data = self.p_FAST
        elif _fileid == 2:
            data = typeFromAddress(pyCAE.Aerodyn_Types.Ad_Initinputtype, 
                                            _dataHandle)
        elif _fileid == 3:            
            data = typeFromAddress(pyCAE.Elastodyn_Types.Ed_Inputfile, 
                                            _dataHandle)
        elif _fileid == 4:
            data = typeFromAddress(pyCAE.Servodyn_Types.Srvd_Inputfile, 
                                            _dataHandle)
        else:
            return
        _errmsg_len = errmsg_len.contents.value
        for handle_key in handles:            
            _errstat, _errmsg = handles[handle_key](data)
            if _errstat != 0:
                errstat.contents.value = _errstat
                for i in range(len(_errmsg)):
                    if i >= _errmsg_len:
                        break
                    errmsg[i] = _errmsg[i]
                return
        
    def add_call_after_read(self, fileid, key, handle):
        self.__call_after_read_handles[fileid][key] = handle 

    def remove_call_after_read(self, fileid, key):
        if key in self.__call_after_read_handles[fileid]:
            del self.__call_after_read_handles[fileid][key]

    @property
    def n_t_global(self):
        return _pyCAE.fast_data.n_t_global

    @n_t_global.setter
    def n_t_global(self, value):
        _pyCAE.fast_data.n_t_global = value

    @property
    def n_tmax_m1(self):
        return self.m_FAST.n_tmax_m1

    @n_tmax_m1.setter
    def n_tmax_m1(self, value):
        self.m_FAST.n_tmax_m1 = value

    @property
    def dt(self):
        res = self.p_FAST.dt
        return res

    @property
    def outfileroot(self):
        return self.p_FAST.outfileroot.strip()

    def get_outputNames(self):
        temp = self.y_FAST.channelnames
        row, col = temp.shape
        res = [''.join(temp[:, i]).strip() for i in range(col)]
        return res

    def simulate(self, path, maxStep=-1):
        '''
        Intel的MKL的库要快三倍速度以上
        '''
        self.init(path, maxStep=maxStep)
        self.set_parameters(pcmode=3, vscontrl=1, ycmode=0)
        self.start()
        n_tmax_m1 = self.n_tmax_m1
        for i in range(n_tmax_m1):
            if i%1000 == 0:
                print('%d/%d, %.2f%%' %(i, n_tmax_m1, i*100.0/n_tmax_m1))
            self.update()
        self.end()   

    def init(self, path, maxStep=-1):
        path = os.path.abspath(path)
        self.inputfile = path
        self.inputroot = os.path.dirname(path)
        self.n_t_global = 0
        
        _pyCAE.fast_init_i(path)
        
        if maxStep > 0:
            self.n_tmax_m1 = maxStep
        else:
            maxStep = self.n_tmax_m1
        self.outputNames = self.get_outputNames()
        self.outputDimension = len(self.outputNames)

    def set_parameters(self, **kwargs):
        '''
        pcmode：  0: none, 1: simple, {2: 空缺}, 3:routine UserYawCont, 4: user-defined, 5: DLL
        vscontrl：0: none, 1: simple, 2: advance, 3:routine UserYawCont, 4: user-defined, 5: DLL
        ycmode：  0: none, 1: simple, {2: 空缺}, 3:routine UserYawCont, 4: user-defined, 5: DLL
        '''
        if 'pcmode' in kwargs:
            self.SrvD.p.pcmode = kwargs['pcmode'] 
        if 'vscontrl' in kwargs:
            self.SrvD.p.vscontrl = kwargs['vscontrl'] 
        if 'ycmode' in kwargs:   
            self.SrvD.p.ycmode = kwargs['ycmode']

    def set_external_input(self, **kwargs):
        '''
        blpitchcom和yawposcom等都应该是弧度单位
        '''
        if 'gentrq' in kwargs:
            self.m_FAST.externinput.gentrq = kwargs['gentrq']
        if 'elecpwr' in kwargs:
            self.m_FAST.externinput.elecpwr = kwargs['elecpwr']
        if 'yawposcom' in kwargs:
            self.m_FAST.externinput.yawposcom = kwargs['yawposcom']
        if 'yawratecom' in kwargs:
            self.m_FAST.externinput.yawratecom = kwargs['yawratecom']
        if 'blpitchcom' in kwargs:
            self.m_FAST.externinput.blpitchcom = kwargs['blpitchcom']
        if 'hccbrfrac' in kwargs:
            self.m_FAST.externinput.hccbrfrac = kwargs['hccbrfrac']
        if 'lidarfocus' in kwargs:
            self.m_FAST.externinput.lidarfocus = kwargs['lidarfocus'] 

    def set_external_inputs(self, un):
        '''
        un的长度必须为8或11个
        blpitchcom和yawposcom等都应该是弧度单位
        '''
        inputary = np.array(un, dtype=np.double)
        _pyCAE.fast_setexternalinputs_i(inputary)

    def start(self):
        _pyCAE.fast_start_i()

    def update(self): 
        self.n_t_global += 1 
        _pyCAE.fast_update_i()

    def filloutput(self):
        '''
        到底使用下面哪个方法，去看生成的对象的__doc__属性
        '''
#        res = np.zeros([self.outputDimension,], dtype=np.double)
#        _pyCAE.pyfilloutputwtdyn(res)
        res = _pyCAE.fast_filloutput_i(self.outputDimension)
        return res

    def end(self):
        _pyCAE.fast_end_i()
        
fast = FASTCore()