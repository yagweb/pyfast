from __future__ import print_function, absolute_import, division
import _openfast
import f90wrap.runtime
import logging

class Fast_Data(f90wrap.runtime.FortranModule):
    """
    Module fast_data
    
    
    Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
        lines 12-684
    
    """
    @staticmethod
    def fast_allocateturbines(nturbines, errstat_c, errmsg_c):
        """
        fast_allocateturbines(nturbines, errstat_c, errmsg_c)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 37-58
        
        Parameters
        ----------
        nturbines : int
        errstat_c : int
        errmsg_c : str array
        
        """
        _openfast.w_fast_allocateturbines(nturbines=nturbines, errstat_c=errstat_c, \
            errmsg_c=errmsg_c)
    
    @staticmethod
    def fast_sizes(iturb, tmax, initinpary, inputfilename_c, aborterrlev_c, \
        numouts_c, dt_c, errstat_c, errmsg_c, channelnames_c):
        """
        fast_sizes(iturb, tmax, initinpary, inputfilename_c, aborterrlev_c, numouts_c, \
            dt_c, errstat_c, errmsg_c, channelnames_c)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 60-132
        
        Parameters
        ----------
        iturb : int
        tmax : float
        initinpary : float array
        inputfilename_c : str array
        aborterrlev_c : int
        numouts_c : int
        dt_c : float
        errstat_c : int
        errmsg_c : str array
        channelnames_c : str array
        
        """
        _openfast.w_fast_sizes(iturb=iturb, tmax=tmax, initinpary=initinpary, \
            inputfilename_c=inputfilename_c, aborterrlev_c=aborterrlev_c, \
            numouts_c=numouts_c, dt_c=dt_c, errstat_c=errstat_c, errmsg_c=errmsg_c, \
            channelnames_c=channelnames_c)
    
    @staticmethod
    def fast_start(iturb, numinputs_c, numoutputs_c, inputary, outputary, errstat_c, \
        errmsg_c):
        """
        fast_start(iturb, numinputs_c, numoutputs_c, inputary, outputary, errstat_c, \
            errmsg_c)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 135-205
        
        Parameters
        ----------
        iturb : int
        numinputs_c : int
        numoutputs_c : int
        inputary : float array
        outputary : float array
        errstat_c : int
        errmsg_c : str array
        
        """
        _openfast.w_fast_start(iturb=iturb, numinputs_c=numinputs_c, \
            numoutputs_c=numoutputs_c, inputary=inputary, outputary=outputary, \
            errstat_c=errstat_c, errmsg_c=errmsg_c)
    
    @staticmethod
    def fast_update(iturb, numinputs_c, numoutputs_c, inputary, outputary, \
        errstat_c, errmsg_c):
        """
        fast_update(iturb, numinputs_c, numoutputs_c, inputary, outputary, errstat_c, \
            errmsg_c)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 208-283
        
        Parameters
        ----------
        iturb : int
        numinputs_c : int
        numoutputs_c : int
        inputary : float array
        outputary : float array
        errstat_c : int
        errmsg_c : str array
        
        """
        _openfast.w_fast_update(iturb=iturb, numinputs_c=numinputs_c, \
            numoutputs_c=numoutputs_c, inputary=inputary, outputary=outputary, \
            errstat_c=errstat_c, errmsg_c=errmsg_c)
    
    @staticmethod
    def fast_setexternalinputs(iturb, numinputs_c, inputary, m_fast):
        """
        fast_setexternalinputs(iturb, numinputs_c, inputary, m_fast)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 286-314
        
        Parameters
        ----------
        iturb : int
        numinputs_c : int
        inputary : float array
        m_fast : Fast_Miscvartype
        
        """
        _openfast.w_fast_setexternalinputs(iturb=iturb, numinputs_c=numinputs_c, \
            inputary=inputary, m_fast=m_fast._handle)
    
    @staticmethod
    def fast_end(iturb, stoptheprogram):
        """
        fast_end(iturb, stoptheprogram)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 317-327
        
        Parameters
        ----------
        iturb : int
        stoptheprogram : bool
        
        """
        _openfast.w_fast_end(iturb=iturb, stoptheprogram=stoptheprogram)
    
    @staticmethod
    def fast_createcheckpoint(iturb, checkpointrootname_c, errstat_c, errmsg_c):
        """
        fast_createcheckpoint(iturb, checkpointrootname_c, errstat_c, errmsg_c)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 330-369
        
        Parameters
        ----------
        iturb : int
        checkpointrootname_c : str array
        errstat_c : int
        errmsg_c : str array
        
        """
        _openfast.w_fast_createcheckpoint(iturb=iturb, \
            checkpointrootname_c=checkpointrootname_c, errstat_c=errstat_c, \
            errmsg_c=errmsg_c)
    
    @staticmethod
    def fast_restart(iturb, checkpointrootname_c, aborterrlev_c, numouts_c, dt_c, \
        n_t_global_c, errstat_c, errmsg_c):
        """
        fast_restart(iturb, checkpointrootname_c, aborterrlev_c, numouts_c, dt_c, \
            n_t_global_c, errstat_c, errmsg_c)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 372-422
        
        Parameters
        ----------
        iturb : int
        checkpointrootname_c : str array
        aborterrlev_c : int
        numouts_c : int
        dt_c : float
        n_t_global_c : int
        errstat_c : int
        errmsg_c : str array
        
        """
        _openfast.w_fast_restart(iturb=iturb, checkpointrootname_c=checkpointrootname_c, \
            aborterrlev_c=aborterrlev_c, numouts_c=numouts_c, dt_c=dt_c, \
            n_t_global_c=n_t_global_c, errstat_c=errstat_c, errmsg_c=errmsg_c)
    
    @staticmethod
    def fast_opfm_solution0(iturb, errstat_c, errmsg_c):
        """
        fast_opfm_solution0(iturb, errstat_c, errmsg_c)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 502-527
        
        Parameters
        ----------
        iturb : int
        errstat_c : int
        errmsg_c : str array
        
        """
        _openfast.w_fast_opfm_solution0(iturb=iturb, errstat_c=errstat_c, \
            errmsg_c=errmsg_c)
    
    @staticmethod
    def fast_opfm_step(iturb, errstat_c, errmsg_c):
        """
        fast_opfm_step(iturb, errstat_c, errmsg_c)
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            lines 633-682
        
        Parameters
        ----------
        iturb : int
        errstat_c : int
        errmsg_c : str array
        
        """
        _openfast.w_fast_opfm_step(iturb=iturb, errstat_c=errstat_c, errmsg_c=errmsg_c)
    
    @property
    def t_initial(self):
        """
        Element t_initial ftype=real(dbki) pytype=float
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            line 21
        
        """
        return _openfast.w_fast_data__get__t_initial()
    
    @property
    def numturbines(self):
        """
        Element numturbines ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            line 22
        
        """
        return _openfast.w_fast_data__get__numturbines()
    
    @numturbines.setter
    def numturbines(self, numturbines):
        _openfast.w_fast_data__set__numturbines(numturbines)
    
    @property
    def intfstrlen(self):
        """
        Element intfstrlen ftype=integer pytype=int
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            line 23
        
        """
        return _openfast.w_fast_data__get__intfstrlen()
    
    @property
    def maxoutputs(self):
        """
        Element maxoutputs ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            line 24
        
        """
        return _openfast.w_fast_data__get__maxoutputs()
    
    @property
    def maxinitinputs(self):
        """
        Element maxinitinputs ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            line 25
        
        """
        return _openfast.w_fast_data__get__maxinitinputs()
    
    @property
    def numfixedinputs(self):
        """
        Element numfixedinputs ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            line 26
        
        """
        return _openfast.w_fast_data__get__numfixedinputs()
    
    @property
    def n_t_global(self):
        """
        Element n_t_global ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            line 31
        
        """
        return _openfast.w_fast_data__get__n_t_global()
    
    @n_t_global.setter
    def n_t_global(self, n_t_global):
        _openfast.w_fast_data__set__n_t_global(n_t_global)
    
    @property
    def errstat(self):
        """
        Element errstat ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            line 32
        
        """
        return _openfast.w_fast_data__get__errstat()
    
    @errstat.setter
    def errstat(self, errstat):
        _openfast.w_fast_data__set__errstat(errstat)
    
    @property
    def errmsg(self):
        """
        Element errmsg ftype=character(intfstrlen-1) pytype=str
        
        
        Defined at F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90 \
            line 33
        
        """
        return _openfast.w_fast_data__get__errmsg()
    
    @errmsg.setter
    def errmsg(self, errmsg):
        _openfast.w_fast_data__set__errmsg(errmsg)
    
    def __str__(self):
        ret = ['<fast_data>{\n']
        ret.append('    t_initial : ')
        ret.append(repr(self.t_initial))
        ret.append(',\n    numturbines : ')
        ret.append(repr(self.numturbines))
        ret.append(',\n    intfstrlen : ')
        ret.append(repr(self.intfstrlen))
        ret.append(',\n    maxoutputs : ')
        ret.append(repr(self.maxoutputs))
        ret.append(',\n    maxinitinputs : ')
        ret.append(repr(self.maxinitinputs))
        ret.append(',\n    numfixedinputs : ')
        ret.append(repr(self.numfixedinputs))
        ret.append(',\n    n_t_global : ')
        ret.append(repr(self.n_t_global))
        ret.append(',\n    errstat : ')
        ret.append(repr(self.errstat))
        ret.append(',\n    errmsg : ')
        ret.append(repr(self.errmsg))
        ret.append('}')
        return ''.join(ret)
    
    _dt_array_initialisers = []
    

fast_data = Fast_Data()

class Fast_Types(f90wrap.runtime.FortranModule):
    """
    Module fast_types
    
    
    Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
        lines 32-30508
    
    """
    @f90wrap.runtime.register_class("FAST_VTK_BLSurfaceType")
    class FAST_VTK_BLSurfaceType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_vtk_blsurfacetype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 95-96
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Vtk_Blsurfacetype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 95-96
            
            
            Returns
            -------
            this : Fast_Vtk_Blsurfacetype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_vtk_blsurfacetype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_vtk_blsurfacetype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Vtk_Blsurfacetype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 95-96
            
            Parameters
            ----------
            this : Fast_Vtk_Blsurfacetype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_vtk_blsurfacetype
            """
            if self._alloc:
                _openfast.w_fast_vtk_blsurfacetype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_VTK_SurfaceType")
    class FAST_VTK_SurfaceType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_vtk_surfacetype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 100-110
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Vtk_Surfacetype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 100-110
            
            
            Returns
            -------
            this : Fast_Vtk_Surfacetype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_vtk_surfacetype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_vtk_surfacetype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Vtk_Surfacetype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 100-110
            
            Parameters
            ----------
            this : Fast_Vtk_Surfacetype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_vtk_surfacetype
            """
            if self._alloc:
                _openfast.w_fast_vtk_surfacetype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_ParameterType")
    class FAST_ParameterType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_parametertype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 114-180
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Parametertype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 114-180
            
            
            Returns
            -------
            this : Fast_Parametertype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_parametertype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_parametertype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Parametertype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 114-180
            
            Parameters
            ----------
            this : Fast_Parametertype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_parametertype
            """
            if self._alloc:
                _openfast.w_fast_parametertype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_LinType")
    class FAST_LinType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_lintype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 184-205
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Lintype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 184-205
            
            
            Returns
            -------
            this : Fast_Lintype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_lintype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_lintype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Lintype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 184-205
            
            Parameters
            ----------
            this : Fast_Lintype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_lintype
            """
            if self._alloc:
                _openfast.w_fast_lintype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_LinFileType")
    class FAST_LinFileType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_linfiletype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 209-213
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Linfiletype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 209-213
            
            
            Returns
            -------
            this : Fast_Linfiletype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_linfiletype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_linfiletype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Linfiletype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 209-213
            
            Parameters
            ----------
            this : Fast_Linfiletype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_linfiletype
            """
            if self._alloc:
                _openfast.w_fast_linfiletype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_OutputFileType")
    class FAST_OutputFileType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_outputfiletype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 217-233
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Outputfiletype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 217-233
            
            
            Returns
            -------
            this : Fast_Outputfiletype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_outputfiletype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_outputfiletype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Outputfiletype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 217-233
            
            Parameters
            ----------
            this : Fast_Outputfiletype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_outputfiletype
            """
            if self._alloc:
                _openfast.w_fast_outputfiletype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("IceDyn_Data")
    class IceDyn_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=icedyn_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 237-247
        
        """
        def __init__(self, handle=None):
            """
            self = Icedyn_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 237-247
            
            
            Returns
            -------
            this : Icedyn_Data
            	Object to be constructed
            
            
            Automatically generated constructor for icedyn_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_icedyn_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Icedyn_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 237-247
            
            Parameters
            ----------
            this : Icedyn_Data
            	Object to be destructed
            
            
            Automatically generated destructor for icedyn_data
            """
            if self._alloc:
                _openfast.w_icedyn_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("BeamDyn_Data")
    class BeamDyn_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=beamdyn_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 251-261
        
        """
        def __init__(self, handle=None):
            """
            self = Beamdyn_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 251-261
            
            
            Returns
            -------
            this : Beamdyn_Data
            	Object to be constructed
            
            
            Automatically generated constructor for beamdyn_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_beamdyn_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Beamdyn_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 251-261
            
            Parameters
            ----------
            this : Beamdyn_Data
            	Object to be destructed
            
            
            Automatically generated destructor for beamdyn_data
            """
            if self._alloc:
                _openfast.w_beamdyn_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("ElastoDyn_Data")
    class ElastoDyn_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=elastodyn_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 265-276
        
        """
        def __init__(self, handle=None):
            """
            self = Elastodyn_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 265-276
            
            
            Returns
            -------
            this : Elastodyn_Data
            	Object to be constructed
            
            
            Automatically generated constructor for elastodyn_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_elastodyn_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Elastodyn_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 265-276
            
            Parameters
            ----------
            this : Elastodyn_Data
            	Object to be destructed
            
            
            Automatically generated destructor for elastodyn_data
            """
            if self._alloc:
                _openfast.w_elastodyn_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("ServoDyn_Data")
    class ServoDyn_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=servodyn_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 280-290
        
        """
        def __init__(self, handle=None):
            """
            self = Servodyn_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 280-290
            
            
            Returns
            -------
            this : Servodyn_Data
            	Object to be constructed
            
            
            Automatically generated constructor for servodyn_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_servodyn_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Servodyn_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 280-290
            
            Parameters
            ----------
            this : Servodyn_Data
            	Object to be destructed
            
            
            Automatically generated destructor for servodyn_data
            """
            if self._alloc:
                _openfast.w_servodyn_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("AeroDyn14_Data")
    class AeroDyn14_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=aerodyn14_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 294-304
        
        """
        def __init__(self, handle=None):
            """
            self = Aerodyn14_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 294-304
            
            
            Returns
            -------
            this : Aerodyn14_Data
            	Object to be constructed
            
            
            Automatically generated constructor for aerodyn14_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_aerodyn14_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Aerodyn14_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 294-304
            
            Parameters
            ----------
            this : Aerodyn14_Data
            	Object to be destructed
            
            
            Automatically generated destructor for aerodyn14_data
            """
            if self._alloc:
                _openfast.w_aerodyn14_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("AeroDyn_Data")
    class AeroDyn_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=aerodyn_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 308-318
        
        """
        def __init__(self, handle=None):
            """
            self = Aerodyn_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 308-318
            
            
            Returns
            -------
            this : Aerodyn_Data
            	Object to be constructed
            
            
            Automatically generated constructor for aerodyn_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_aerodyn_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Aerodyn_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 308-318
            
            Parameters
            ----------
            this : Aerodyn_Data
            	Object to be destructed
            
            
            Automatically generated destructor for aerodyn_data
            """
            if self._alloc:
                _openfast.w_aerodyn_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("InflowWind_Data")
    class InflowWind_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=inflowwind_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 322-332
        
        """
        def __init__(self, handle=None):
            """
            self = Inflowwind_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 322-332
            
            
            Returns
            -------
            this : Inflowwind_Data
            	Object to be constructed
            
            
            Automatically generated constructor for inflowwind_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_inflowwind_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Inflowwind_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 322-332
            
            Parameters
            ----------
            this : Inflowwind_Data
            	Object to be destructed
            
            
            Automatically generated destructor for inflowwind_data
            """
            if self._alloc:
                _openfast.w_inflowwind_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("OpenFOAM_Data")
    class OpenFOAM_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=openfoam_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 336-340
        
        """
        def __init__(self, handle=None):
            """
            self = Openfoam_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 336-340
            
            
            Returns
            -------
            this : Openfoam_Data
            	Object to be constructed
            
            
            Automatically generated constructor for openfoam_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_openfoam_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Openfoam_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 336-340
            
            Parameters
            ----------
            this : Openfoam_Data
            	Object to be destructed
            
            
            Automatically generated destructor for openfoam_data
            """
            if self._alloc:
                _openfast.w_openfoam_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("SuperController_Data")
    class SuperController_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=supercontroller_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 344-347
        
        """
        def __init__(self, handle=None):
            """
            self = Supercontroller_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 344-347
            
            
            Returns
            -------
            this : Supercontroller_Data
            	Object to be constructed
            
            
            Automatically generated constructor for supercontroller_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_supercontroller_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Supercontroller_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 344-347
            
            Parameters
            ----------
            this : Supercontroller_Data
            	Object to be destructed
            
            
            Automatically generated destructor for supercontroller_data
            """
            if self._alloc:
                _openfast.w_supercontroller_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("SubDyn_Data")
    class SubDyn_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=subdyn_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 351-361
        
        """
        def __init__(self, handle=None):
            """
            self = Subdyn_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 351-361
            
            
            Returns
            -------
            this : Subdyn_Data
            	Object to be constructed
            
            
            Automatically generated constructor for subdyn_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_subdyn_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Subdyn_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 351-361
            
            Parameters
            ----------
            this : Subdyn_Data
            	Object to be destructed
            
            
            Automatically generated destructor for subdyn_data
            """
            if self._alloc:
                _openfast.w_subdyn_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("ExtPtfm_Data")
    class ExtPtfm_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=extptfm_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 365-375
        
        """
        def __init__(self, handle=None):
            """
            self = Extptfm_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 365-375
            
            
            Returns
            -------
            this : Extptfm_Data
            	Object to be constructed
            
            
            Automatically generated constructor for extptfm_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_extptfm_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Extptfm_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 365-375
            
            Parameters
            ----------
            this : Extptfm_Data
            	Object to be destructed
            
            
            Automatically generated destructor for extptfm_data
            """
            if self._alloc:
                _openfast.w_extptfm_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("HydroDyn_Data")
    class HydroDyn_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=hydrodyn_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 379-389
        
        """
        def __init__(self, handle=None):
            """
            self = Hydrodyn_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 379-389
            
            
            Returns
            -------
            this : Hydrodyn_Data
            	Object to be constructed
            
            
            Automatically generated constructor for hydrodyn_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_hydrodyn_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Hydrodyn_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 379-389
            
            Parameters
            ----------
            this : Hydrodyn_Data
            	Object to be destructed
            
            
            Automatically generated destructor for hydrodyn_data
            """
            if self._alloc:
                _openfast.w_hydrodyn_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("IceFloe_Data")
    class IceFloe_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=icefloe_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 393-403
        
        """
        def __init__(self, handle=None):
            """
            self = Icefloe_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 393-403
            
            
            Returns
            -------
            this : Icefloe_Data
            	Object to be constructed
            
            
            Automatically generated constructor for icefloe_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_icefloe_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Icefloe_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 393-403
            
            Parameters
            ----------
            this : Icefloe_Data
            	Object to be destructed
            
            
            Automatically generated destructor for icefloe_data
            """
            if self._alloc:
                _openfast.w_icefloe_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("MAP_Data")
    class MAP_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=map_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 407-417
        
        """
        def __init__(self, handle=None):
            """
            self = Map_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 407-417
            
            
            Returns
            -------
            this : Map_Data
            	Object to be constructed
            
            
            Automatically generated constructor for map_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_map_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Map_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 407-417
            
            Parameters
            ----------
            this : Map_Data
            	Object to be destructed
            
            
            Automatically generated destructor for map_data
            """
            if self._alloc:
                _openfast.w_map_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FEAMooring_Data")
    class FEAMooring_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=feamooring_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 421-431
        
        """
        def __init__(self, handle=None):
            """
            self = Feamooring_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 421-431
            
            
            Returns
            -------
            this : Feamooring_Data
            	Object to be constructed
            
            
            Automatically generated constructor for feamooring_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_feamooring_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Feamooring_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 421-431
            
            Parameters
            ----------
            this : Feamooring_Data
            	Object to be destructed
            
            
            Automatically generated destructor for feamooring_data
            """
            if self._alloc:
                _openfast.w_feamooring_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("MoorDyn_Data")
    class MoorDyn_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=moordyn_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 435-445
        
        """
        def __init__(self, handle=None):
            """
            self = Moordyn_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 435-445
            
            
            Returns
            -------
            this : Moordyn_Data
            	Object to be constructed
            
            
            Automatically generated constructor for moordyn_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_moordyn_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Moordyn_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 435-445
            
            Parameters
            ----------
            this : Moordyn_Data
            	Object to be destructed
            
            
            Automatically generated destructor for moordyn_data
            """
            if self._alloc:
                _openfast.w_moordyn_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("OrcaFlex_Data")
    class OrcaFlex_Data(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=orcaflex_data)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 449-459
        
        """
        def __init__(self, handle=None):
            """
            self = Orcaflex_Data()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 449-459
            
            
            Returns
            -------
            this : Orcaflex_Data
            	Object to be constructed
            
            
            Automatically generated constructor for orcaflex_data
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_orcaflex_data_initialise()
        
        def __del__(self):
            """
            Destructor for class Orcaflex_Data
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 449-459
            
            Parameters
            ----------
            this : Orcaflex_Data
            	Object to be destructed
            
            
            Automatically generated destructor for orcaflex_data
            """
            if self._alloc:
                _openfast.w_orcaflex_data_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_ModuleMapType")
    class FAST_ModuleMapType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_modulemaptype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 463-512
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Modulemaptype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 463-512
            
            
            Returns
            -------
            this : Fast_Modulemaptype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_modulemaptype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_modulemaptype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Modulemaptype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 463-512
            
            Parameters
            ----------
            this : Fast_Modulemaptype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_modulemaptype
            """
            if self._alloc:
                _openfast.w_fast_modulemaptype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_ExternInputType")
    class FAST_ExternInputType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_externinputtype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 516-523
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Externinputtype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 516-523
            
            
            Returns
            -------
            this : Fast_Externinputtype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_externinputtype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_externinputtype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Externinputtype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 516-523
            
            Parameters
            ----------
            this : Fast_Externinputtype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_externinputtype
            """
            if self._alloc:
                _openfast.w_fast_externinputtype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_MiscVarType")
    class FAST_MiscVarType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_miscvartype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 527-538
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Miscvartype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 527-538
            
            
            Returns
            -------
            this : Fast_Miscvartype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_miscvartype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_miscvartype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Miscvartype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 527-538
            
            Parameters
            ----------
            this : Fast_Miscvartype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_miscvartype
            """
            if self._alloc:
                _openfast.w_fast_miscvartype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_ExternInitType")
    class FAST_ExternInitType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_externinittype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 542-556
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Externinittype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 542-556
            
            
            Returns
            -------
            this : Fast_Externinittype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_externinittype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_externinittype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Externinittype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 542-556
            
            Parameters
            ----------
            this : Fast_Externinittype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_externinittype
            """
            if self._alloc:
                _openfast.w_fast_externinittype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("FAST_TurbineType")
    class FAST_TurbineType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=fast_turbinetype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 560-582
        
        """
        def __init__(self, handle=None):
            """
            self = Fast_Turbinetype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 560-582
            
            
            Returns
            -------
            this : Fast_Turbinetype
            	Object to be constructed
            
            
            Automatically generated constructor for fast_turbinetype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_fast_turbinetype_initialise()
        
        def __del__(self):
            """
            Destructor for class Fast_Turbinetype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
                lines 560-582
            
            Parameters
            ----------
            this : Fast_Turbinetype
            	Object to be destructed
            
            
            Automatically generated destructor for fast_turbinetype
            """
            if self._alloc:
                _openfast.w_fast_turbinetype_finalise(this=self._handle)
        
        _dt_array_initialisers = []
        
    
    @staticmethod
    def fast_copyvtk_blsurfacetype(self, dstvtk_blsurfacetypedata, ctrlcode, \
        errstat, errmsg):
        """
        fast_copyvtk_blsurfacetype(self, dstvtk_blsurfacetypedata, ctrlcode, errstat, \
            errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 586-619
        
        Parameters
        ----------
        srcvtk_blsurfacetypedata : Fast_Vtk_Blsurfacetype
        dstvtk_blsurfacetypedata : Fast_Vtk_Blsurfacetype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyvtk_blsurfacetype(srcvtk_blsurfacetypedata=self._handle, \
            dstvtk_blsurfacetypedata=dstvtk_blsurfacetypedata._handle, \
            ctrlcode=ctrlcode, errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyvtk_blsurfacetype(self, errstat, errmsg):
        """
        fast_destroyvtk_blsurfacetype(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 621-633
        
        Parameters
        ----------
        vtk_blsurfacetypedata : Fast_Vtk_Blsurfacetype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyvtk_blsurfacetype(vtk_blsurfacetypedata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyvtk_surfacetype(self, dstvtk_surfacetypedata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyvtk_surfacetype(self, dstvtk_surfacetypedata, ctrlcode, errstat, \
            errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 789-878
        
        Parameters
        ----------
        srcvtk_surfacetypedata : Fast_Vtk_Surfacetype
        dstvtk_surfacetypedata : Fast_Vtk_Surfacetype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyvtk_surfacetype(srcvtk_surfacetypedata=self._handle, \
            dstvtk_surfacetypedata=dstvtk_surfacetypedata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyvtk_surfacetype(self, errstat, errmsg):
        """
        fast_destroyvtk_surfacetype(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 880-907
        
        Parameters
        ----------
        vtk_surfacetypedata : Fast_Vtk_Surfacetype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyvtk_surfacetype(vtk_surfacetypedata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyparam(self, dstparamdata, ctrlcode, errstat, errmsg):
        """
        fast_copyparam(self, dstparamdata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 1351-1446
        
        Parameters
        ----------
        srcparamdata : Fast_Parametertype
        dstparamdata : Fast_Parametertype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyparam(srcparamdata=self._handle, \
            dstparamdata=dstparamdata._handle, ctrlcode=ctrlcode, errstat=errstat, \
            errmsg=errmsg)
    
    @staticmethod
    def fast_destroyparam(self, errstat, errmsg):
        """
        fast_destroyparam(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 1448-1461
        
        Parameters
        ----------
        paramdata : Fast_Parametertype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyparam(paramdata=self._handle, errstat=errstat, \
            errmsg=errmsg)
    
    @staticmethod
    def fast_copylintype(self, dstlintypedata, ctrlcode, errstat, errmsg):
        """
        fast_copylintype(self, dstlintypedata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 2159-2435
        
        Parameters
        ----------
        srclintypedata : Fast_Lintype
        dstlintypedata : Fast_Lintype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copylintype(srclintypedata=self._handle, \
            dstlintypedata=dstlintypedata._handle, ctrlcode=ctrlcode, errstat=errstat, \
            errmsg=errmsg)
    
    @staticmethod
    def fast_destroylintype(self, errstat, errmsg):
        """
        fast_destroylintype(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 2437-2509
        
        Parameters
        ----------
        lintypedata : Fast_Lintype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroylintype(lintypedata=self._handle, errstat=errstat, \
            errmsg=errmsg)
    
    @staticmethod
    def fast_copylinfiletype(self, dstlinfiletypedata, ctrlcode, errstat, errmsg):
        """
        fast_copylinfiletype(self, dstlinfiletypedata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 3536-3561
        
        Parameters
        ----------
        srclinfiletypedata : Fast_Linfiletype
        dstlinfiletypedata : Fast_Linfiletype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copylinfiletype(srclinfiletypedata=self._handle, \
            dstlinfiletypedata=dstlinfiletypedata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroylinfiletype(self, errstat, errmsg):
        """
        fast_destroylinfiletype(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 3563-3576
        
        Parameters
        ----------
        linfiletypedata : Fast_Linfiletype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroylinfiletype(linfiletypedata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyoutputfiletype(self, dstoutputfiletypedata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyoutputfiletype(self, dstoutputfiletypedata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 3866-3950
        
        Parameters
        ----------
        srcoutputfiletypedata : Fast_Outputfiletype
        dstoutputfiletypedata : Fast_Outputfiletype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyoutputfiletype(srcoutputfiletypedata=self._handle, \
            dstoutputfiletypedata=dstoutputfiletypedata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyoutputfiletype(self, errstat, errmsg):
        """
        fast_destroyoutputfiletype(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 3952-3977
        
        Parameters
        ----------
        outputfiletypedata : Fast_Outputfiletype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyoutputfiletype(outputfiletypedata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyicedyn_data(self, dsticedyn_datadata, ctrlcode, errstat, errmsg):
        """
        fast_copyicedyn_data(self, dsticedyn_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 4537-4731
        
        Parameters
        ----------
        srcicedyn_datadata : Icedyn_Data
        dsticedyn_datadata : Icedyn_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyicedyn_data(srcicedyn_datadata=self._handle, \
            dsticedyn_datadata=dsticedyn_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyicedyn_data(self, errstat, errmsg):
        """
        fast_destroyicedyn_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 4733-4809
        
        Parameters
        ----------
        icedyn_datadata : Icedyn_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyicedyn_data(icedyn_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copybeamdyn_data(self, dstbeamdyn_datadata, ctrlcode, errstat, errmsg):
        """
        fast_copybeamdyn_data(self, dstbeamdyn_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 6099-6293
        
        Parameters
        ----------
        srcbeamdyn_datadata : Beamdyn_Data
        dstbeamdyn_datadata : Beamdyn_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copybeamdyn_data(srcbeamdyn_datadata=self._handle, \
            dstbeamdyn_datadata=dstbeamdyn_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroybeamdyn_data(self, errstat, errmsg):
        """
        fast_destroybeamdyn_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 6295-6371
        
        Parameters
        ----------
        beamdyn_datadata : Beamdyn_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroybeamdyn_data(beamdyn_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyelastodyn_data(self, dstelastodyn_datadata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyelastodyn_data(self, dstelastodyn_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 7661-7752
        
        Parameters
        ----------
        srcelastodyn_datadata : Elastodyn_Data
        dstelastodyn_datadata : Elastodyn_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyelastodyn_data(srcelastodyn_datadata=self._handle, \
            dstelastodyn_datadata=dstelastodyn_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyelastodyn_data(self, errstat, errmsg):
        """
        fast_destroyelastodyn_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 7754-7794
        
        Parameters
        ----------
        elastodyn_datadata : Elastodyn_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyelastodyn_data(elastodyn_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyservodyn_data(self, dstservodyn_datadata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyservodyn_data(self, dstservodyn_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 8889-8964
        
        Parameters
        ----------
        srcservodyn_datadata : Servodyn_Data
        dstservodyn_datadata : Servodyn_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyservodyn_data(srcservodyn_datadata=self._handle, \
            dstservodyn_datadata=dstservodyn_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyservodyn_data(self, errstat, errmsg):
        """
        fast_destroyservodyn_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 8966-9000
        
        Parameters
        ----------
        servodyn_datadata : Servodyn_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyservodyn_data(servodyn_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyaerodyn14_data(self, dstaerodyn14_datadata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyaerodyn14_data(self, dstaerodyn14_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 9975-10050
        
        Parameters
        ----------
        srcaerodyn14_datadata : Aerodyn14_Data
        dstaerodyn14_datadata : Aerodyn14_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyaerodyn14_data(srcaerodyn14_datadata=self._handle, \
            dstaerodyn14_datadata=dstaerodyn14_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyaerodyn14_data(self, errstat, errmsg):
        """
        fast_destroyaerodyn14_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 10052-10086
        
        Parameters
        ----------
        aerodyn14_datadata : Aerodyn14_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyaerodyn14_data(aerodyn14_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyaerodyn_data(self, dstaerodyn_datadata, ctrlcode, errstat, errmsg):
        """
        fast_copyaerodyn_data(self, dstaerodyn_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 11061-11136
        
        Parameters
        ----------
        srcaerodyn_datadata : Aerodyn_Data
        dstaerodyn_datadata : Aerodyn_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyaerodyn_data(srcaerodyn_datadata=self._handle, \
            dstaerodyn_datadata=dstaerodyn_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyaerodyn_data(self, errstat, errmsg):
        """
        fast_destroyaerodyn_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 11138-11172
        
        Parameters
        ----------
        aerodyn_datadata : Aerodyn_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyaerodyn_data(aerodyn_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyinflowwind_data(self, dstinflowwind_datadata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyinflowwind_data(self, dstinflowwind_datadata, ctrlcode, errstat, \
            errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 12147-12222
        
        Parameters
        ----------
        srcinflowwind_datadata : Inflowwind_Data
        dstinflowwind_datadata : Inflowwind_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyinflowwind_data(srcinflowwind_datadata=self._handle, \
            dstinflowwind_datadata=dstinflowwind_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyinflowwind_data(self, errstat, errmsg):
        """
        fast_destroyinflowwind_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 12224-12258
        
        Parameters
        ----------
        inflowwind_datadata : Inflowwind_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyinflowwind_data(inflowwind_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyopenfoam_data(self, dstopenfoam_datadata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyopenfoam_data(self, dstopenfoam_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 13233-13259
        
        Parameters
        ----------
        srcopenfoam_datadata : Openfoam_Data
        dstopenfoam_datadata : Openfoam_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyopenfoam_data(srcopenfoam_datadata=self._handle, \
            dstopenfoam_datadata=dstopenfoam_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyopenfoam_data(self, errstat, errmsg):
        """
        fast_destroyopenfoam_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 13261-13274
        
        Parameters
        ----------
        openfoam_datadata : Openfoam_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyopenfoam_data(openfoam_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copysupercontroller_data(self, dstsupercontroller_datadata, ctrlcode, \
        errstat, errmsg):
        """
        fast_copysupercontroller_data(self, dstsupercontroller_datadata, ctrlcode, \
            errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 13715-13738
        
        Parameters
        ----------
        srcsupercontroller_datadata : Supercontroller_Data
        dstsupercontroller_datadata : Supercontroller_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        \
            _openfast.w_fast_copysupercontroller_data(srcsupercontroller_datadata=self._handle, \
            dstsupercontroller_datadata=dstsupercontroller_datadata._handle, \
            ctrlcode=ctrlcode, errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroysupercontroller_data(self, errstat, errmsg):
        """
        fast_destroysupercontroller_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 13740-13752
        
        Parameters
        ----------
        supercontroller_datadata : Supercontroller_Data
        errstat : int
        errmsg : str
        
        """
        \
            _openfast.w_fast_destroysupercontroller_data(supercontroller_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copysubdyn_data(self, dstsubdyn_datadata, ctrlcode, errstat, errmsg):
        """
        fast_copysubdyn_data(self, dstsubdyn_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 14108-14183
        
        Parameters
        ----------
        srcsubdyn_datadata : Subdyn_Data
        dstsubdyn_datadata : Subdyn_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copysubdyn_data(srcsubdyn_datadata=self._handle, \
            dstsubdyn_datadata=dstsubdyn_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroysubdyn_data(self, errstat, errmsg):
        """
        fast_destroysubdyn_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 14185-14219
        
        Parameters
        ----------
        subdyn_datadata : Subdyn_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroysubdyn_data(subdyn_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyextptfm_data(self, dstextptfm_datadata, ctrlcode, errstat, errmsg):
        """
        fast_copyextptfm_data(self, dstextptfm_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 15194-15269
        
        Parameters
        ----------
        srcextptfm_datadata : Extptfm_Data
        dstextptfm_datadata : Extptfm_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyextptfm_data(srcextptfm_datadata=self._handle, \
            dstextptfm_datadata=dstextptfm_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyextptfm_data(self, errstat, errmsg):
        """
        fast_destroyextptfm_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 15271-15305
        
        Parameters
        ----------
        extptfm_datadata : Extptfm_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyextptfm_data(extptfm_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyhydrodyn_data(self, dsthydrodyn_datadata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyhydrodyn_data(self, dsthydrodyn_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 16280-16355
        
        Parameters
        ----------
        srchydrodyn_datadata : Hydrodyn_Data
        dsthydrodyn_datadata : Hydrodyn_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyhydrodyn_data(srchydrodyn_datadata=self._handle, \
            dsthydrodyn_datadata=dsthydrodyn_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyhydrodyn_data(self, errstat, errmsg):
        """
        fast_destroyhydrodyn_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 16357-16391
        
        Parameters
        ----------
        hydrodyn_datadata : Hydrodyn_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyhydrodyn_data(hydrodyn_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyicefloe_data(self, dsticefloe_datadata, ctrlcode, errstat, errmsg):
        """
        fast_copyicefloe_data(self, dsticefloe_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 17366-17441
        
        Parameters
        ----------
        srcicefloe_datadata : Icefloe_Data
        dsticefloe_datadata : Icefloe_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyicefloe_data(srcicefloe_datadata=self._handle, \
            dsticefloe_datadata=dsticefloe_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyicefloe_data(self, errstat, errmsg):
        """
        fast_destroyicefloe_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 17443-17477
        
        Parameters
        ----------
        icefloe_datadata : Icefloe_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyicefloe_data(icefloe_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copymap_data(self, dstmap_datadata, ctrlcode, errstat, errmsg):
        """
        fast_copymap_data(self, dstmap_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 18452-18525
        
        Parameters
        ----------
        srcmap_datadata : Map_Data
        dstmap_datadata : Map_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copymap_data(srcmap_datadata=self._handle, \
            dstmap_datadata=dstmap_datadata._handle, ctrlcode=ctrlcode, errstat=errstat, \
            errmsg=errmsg)
    
    @staticmethod
    def fast_destroymap_data(self, errstat, errmsg):
        """
        fast_destroymap_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 18527-18559
        
        Parameters
        ----------
        map_datadata : Map_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroymap_data(map_datadata=self._handle, errstat=errstat, \
            errmsg=errmsg)
    
    @staticmethod
    def fast_copyfeamooring_data(self, dstfeamooring_datadata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyfeamooring_data(self, dstfeamooring_datadata, ctrlcode, errstat, \
            errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 19526-19601
        
        Parameters
        ----------
        srcfeamooring_datadata : Feamooring_Data
        dstfeamooring_datadata : Feamooring_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyfeamooring_data(srcfeamooring_datadata=self._handle, \
            dstfeamooring_datadata=dstfeamooring_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyfeamooring_data(self, errstat, errmsg):
        """
        fast_destroyfeamooring_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 19603-19637
        
        Parameters
        ----------
        feamooring_datadata : Feamooring_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyfeamooring_data(feamooring_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copymoordyn_data(self, dstmoordyn_datadata, ctrlcode, errstat, errmsg):
        """
        fast_copymoordyn_data(self, dstmoordyn_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 20612-20687
        
        Parameters
        ----------
        srcmoordyn_datadata : Moordyn_Data
        dstmoordyn_datadata : Moordyn_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copymoordyn_data(srcmoordyn_datadata=self._handle, \
            dstmoordyn_datadata=dstmoordyn_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroymoordyn_data(self, errstat, errmsg):
        """
        fast_destroymoordyn_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 20689-20723
        
        Parameters
        ----------
        moordyn_datadata : Moordyn_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroymoordyn_data(moordyn_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyorcaflex_data(self, dstorcaflex_datadata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyorcaflex_data(self, dstorcaflex_datadata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 21698-21773
        
        Parameters
        ----------
        srcorcaflex_datadata : Orcaflex_Data
        dstorcaflex_datadata : Orcaflex_Data
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyorcaflex_data(srcorcaflex_datadata=self._handle, \
            dstorcaflex_datadata=dstorcaflex_datadata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyorcaflex_data(self, errstat, errmsg):
        """
        fast_destroyorcaflex_data(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 21775-21809
        
        Parameters
        ----------
        orcaflex_datadata : Orcaflex_Data
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyorcaflex_data(orcaflex_datadata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copymodulemaptype(self, dstmodulemaptypedata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copymodulemaptype(self, dstmodulemaptypedata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 22784-23121
        
        Parameters
        ----------
        srcmodulemaptypedata : Fast_Modulemaptype
        dstmodulemaptypedata : Fast_Modulemaptype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copymodulemaptype(srcmodulemaptypedata=self._handle, \
            dstmodulemaptypedata=dstmodulemaptypedata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroymodulemaptype(self, errstat, errmsg):
        """
        fast_destroymodulemaptype(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 23123-23242
        
        Parameters
        ----------
        modulemaptypedata : Fast_Modulemaptype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroymodulemaptype(modulemaptypedata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyexterninputtype(self, dstexterninputtypedata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyexterninputtype(self, dstexterninputtypedata, ctrlcode, errstat, \
            errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 27775-27797
        
        Parameters
        ----------
        srcexterninputtypedata : Fast_Externinputtype
        dstexterninputtypedata : Fast_Externinputtype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyexterninputtype(srcexterninputtypedata=self._handle, \
            dstexterninputtypedata=dstexterninputtypedata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyexterninputtype(self, errstat, errmsg):
        """
        fast_destroyexterninputtype(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 27799-27808
        
        Parameters
        ----------
        externinputtypedata : Fast_Externinputtype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyexterninputtype(externinputtypedata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copymisc(self, dstmiscdata, ctrlcode, errstat, errmsg):
        """
        fast_copymisc(self, dstmiscdata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 27962-27990
        
        Parameters
        ----------
        srcmiscdata : Fast_Miscvartype
        dstmiscdata : Fast_Miscvartype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copymisc(srcmiscdata=self._handle, \
            dstmiscdata=dstmiscdata._handle, ctrlcode=ctrlcode, errstat=errstat, \
            errmsg=errmsg)
    
    @staticmethod
    def fast_destroymisc(self, errstat, errmsg):
        """
        fast_destroymisc(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 27992-28002
        
        Parameters
        ----------
        miscdata : Fast_Miscvartype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroymisc(miscdata=self._handle, errstat=errstat, \
            errmsg=errmsg)
    
    @staticmethod
    def fast_copyexterninittype(self, dstexterninittypedata, ctrlcode, errstat, \
        errmsg):
        """
        fast_copyexterninittype(self, dstexterninittypedata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 28257-28286
        
        Parameters
        ----------
        srcexterninittypedata : Fast_Externinittype
        dstexterninittypedata : Fast_Externinittype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyexterninittype(srcexterninittypedata=self._handle, \
            dstexterninittypedata=dstexterninittypedata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyexterninittype(self, errstat, errmsg):
        """
        fast_destroyexterninittype(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 28288-28297
        
        Parameters
        ----------
        externinittypedata : Fast_Externinittype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyexterninittype(externinittypedata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_copyturbinetype(self, dstturbinetypedata, ctrlcode, errstat, errmsg):
        """
        fast_copyturbinetype(self, dstturbinetypedata, ctrlcode, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 28508-28586
        
        Parameters
        ----------
        srcturbinetypedata : Fast_Turbinetype
        dstturbinetypedata : Fast_Turbinetype
        ctrlcode : int
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_copyturbinetype(srcturbinetypedata=self._handle, \
            dstturbinetypedata=dstturbinetypedata._handle, ctrlcode=ctrlcode, \
            errstat=errstat, errmsg=errmsg)
    
    @staticmethod
    def fast_destroyturbinetype(self, errstat, errmsg):
        """
        fast_destroyturbinetype(self, errstat, errmsg)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            lines 28588-28618
        
        Parameters
        ----------
        turbinetypedata : Fast_Turbinetype
        errstat : int
        errmsg : str
        
        """
        _openfast.w_fast_destroyturbinetype(turbinetypedata=self._handle, \
            errstat=errstat, errmsg=errmsg)
    
    @property
    def module_unknown(self):
        """
        Element module_unknown ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 73
        
        """
        return _openfast.w_fast_types__get__module_unknown()
    
    @property
    def module_none(self):
        """
        Element module_none ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 74
        
        """
        return _openfast.w_fast_types__get__module_none()
    
    @property
    def module_ifw(self):
        """
        Element module_ifw ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 75
        
        """
        return _openfast.w_fast_types__get__module_ifw()
    
    @property
    def module_opfm(self):
        """
        Element module_opfm ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 76
        
        """
        return _openfast.w_fast_types__get__module_opfm()
    
    @property
    def module_ed(self):
        """
        Element module_ed ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 77
        
        """
        return _openfast.w_fast_types__get__module_ed()
    
    @property
    def module_bd(self):
        """
        Element module_bd ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 78
        
        """
        return _openfast.w_fast_types__get__module_bd()
    
    @property
    def module_ad14(self):
        """
        Element module_ad14 ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 79
        
        """
        return _openfast.w_fast_types__get__module_ad14()
    
    @property
    def module_ad(self):
        """
        Element module_ad ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 80
        
        """
        return _openfast.w_fast_types__get__module_ad()
    
    @property
    def module_srvd(self):
        """
        Element module_srvd ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 81
        
        """
        return _openfast.w_fast_types__get__module_srvd()
    
    @property
    def module_hd(self):
        """
        Element module_hd ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 82
        
        """
        return _openfast.w_fast_types__get__module_hd()
    
    @property
    def module_sd(self):
        """
        Element module_sd ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 83
        
        """
        return _openfast.w_fast_types__get__module_sd()
    
    @property
    def module_extptfm(self):
        """
        Element module_extptfm ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 84
        
        """
        return _openfast.w_fast_types__get__module_extptfm()
    
    @property
    def module_map(self):
        """
        Element module_map ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 85
        
        """
        return _openfast.w_fast_types__get__module_map()
    
    @property
    def module_feam(self):
        """
        Element module_feam ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 86
        
        """
        return _openfast.w_fast_types__get__module_feam()
    
    @property
    def module_md(self):
        """
        Element module_md ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 87
        
        """
        return _openfast.w_fast_types__get__module_md()
    
    @property
    def module_orca(self):
        """
        Element module_orca ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 88
        
        """
        return _openfast.w_fast_types__get__module_orca()
    
    @property
    def module_icef(self):
        """
        Element module_icef ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 89
        
        """
        return _openfast.w_fast_types__get__module_icef()
    
    @property
    def module_iced(self):
        """
        Element module_iced ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 90
        
        """
        return _openfast.w_fast_types__get__module_iced()
    
    @property
    def nummodules(self):
        """
        Element nummodules ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 91
        
        """
        return _openfast.w_fast_types__get__nummodules()
    
    @property
    def maxnblades(self):
        """
        Element maxnblades ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 92
        
        """
        return _openfast.w_fast_types__get__maxnblades()
    
    @property
    def iced_maxlegs(self):
        """
        Element iced_maxlegs ftype=integer(intki) pytype=int
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90 \
            line 93
        
        """
        return _openfast.w_fast_types__get__iced_maxlegs()
    
    def __str__(self):
        ret = ['<fast_types>{\n']
        ret.append('    module_unknown : ')
        ret.append(repr(self.module_unknown))
        ret.append(',\n    module_none : ')
        ret.append(repr(self.module_none))
        ret.append(',\n    module_ifw : ')
        ret.append(repr(self.module_ifw))
        ret.append(',\n    module_opfm : ')
        ret.append(repr(self.module_opfm))
        ret.append(',\n    module_ed : ')
        ret.append(repr(self.module_ed))
        ret.append(',\n    module_bd : ')
        ret.append(repr(self.module_bd))
        ret.append(',\n    module_ad14 : ')
        ret.append(repr(self.module_ad14))
        ret.append(',\n    module_ad : ')
        ret.append(repr(self.module_ad))
        ret.append(',\n    module_srvd : ')
        ret.append(repr(self.module_srvd))
        ret.append(',\n    module_hd : ')
        ret.append(repr(self.module_hd))
        ret.append(',\n    module_sd : ')
        ret.append(repr(self.module_sd))
        ret.append(',\n    module_extptfm : ')
        ret.append(repr(self.module_extptfm))
        ret.append(',\n    module_map : ')
        ret.append(repr(self.module_map))
        ret.append(',\n    module_feam : ')
        ret.append(repr(self.module_feam))
        ret.append(',\n    module_md : ')
        ret.append(repr(self.module_md))
        ret.append(',\n    module_orca : ')
        ret.append(repr(self.module_orca))
        ret.append(',\n    module_icef : ')
        ret.append(repr(self.module_icef))
        ret.append(',\n    module_iced : ')
        ret.append(repr(self.module_iced))
        ret.append(',\n    nummodules : ')
        ret.append(repr(self.nummodules))
        ret.append(',\n    maxnblades : ')
        ret.append(repr(self.maxnblades))
        ret.append(',\n    iced_maxlegs : ')
        ret.append(repr(self.iced_maxlegs))
        ret.append('}')
        return ''.join(ret)
    
    _dt_array_initialisers = []
    

fast_types = Fast_Types()

class Aerodyn_Types(f90wrap.runtime.FortranModule):
    """
    Module aerodyn_types
    
    
    Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 lines \
        32-8053
    
    """
    @f90wrap.runtime.register_class("AD_InitInputType")
    class AD_InitInputType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=ad_initinputtype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 lines \
            40-49
        
        """
        def __init__(self, handle=None):
            """
            self = Ad_Initinputtype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 lines \
                40-49
            
            
            Returns
            -------
            this : Ad_Initinputtype
            	Object to be constructed
            
            
            Automatically generated constructor for ad_initinputtype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_ad_initinputtype_initialise()
        
        def __del__(self):
            """
            Destructor for class Ad_Initinputtype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 lines \
                40-49
            
            Parameters
            ----------
            this : Ad_Initinputtype
            	Object to be destructed
            
            
            Automatically generated destructor for ad_initinputtype
            """
            if self._alloc:
                _openfast.w_ad_initinputtype_finalise(this=self._handle)
        
        @property
        def inputfile(self):
            """
            Element inputfile ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 line \
                41
            
            """
            return _openfast.w_ad_initinputtype__get__inputfile(self._handle)
        
        @inputfile.setter
        def inputfile(self, inputfile):
            _openfast.w_ad_initinputtype__set__inputfile(self._handle, inputfile)
        
        @property
        def linearize(self):
            """
            Element linearize ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 line \
                42
            
            """
            return _openfast.w_ad_initinputtype__get__linearize(self._handle)
        
        @linearize.setter
        def linearize(self, linearize):
            _openfast.w_ad_initinputtype__set__linearize(self._handle, linearize)
        
        @property
        def numblades(self):
            """
            Element numblades ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 line \
                43
            
            """
            return _openfast.w_ad_initinputtype__get__numblades(self._handle)
        
        @numblades.setter
        def numblades(self, numblades):
            _openfast.w_ad_initinputtype__set__numblades(self._handle, numblades)
        
        @property
        def gravity(self):
            """
            Element gravity ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 line \
                44
            
            """
            return _openfast.w_ad_initinputtype__get__gravity(self._handle)
        
        @gravity.setter
        def gravity(self, gravity):
            _openfast.w_ad_initinputtype__set__gravity(self._handle, gravity)
        
        @property
        def rootname(self):
            """
            Element rootname ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 line \
                45
            
            """
            return _openfast.w_ad_initinputtype__get__rootname(self._handle)
        
        @rootname.setter
        def rootname(self, rootname):
            _openfast.w_ad_initinputtype__set__rootname(self._handle, rootname)
        
        @property
        def hubposition(self):
            """
            Element hubposition ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 line \
                46
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_ad_initinputtype__array__hubposition(self._handle)
            if array_handle in self._arrays:
                hubposition = self._arrays[array_handle]
            else:
                hubposition = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_ad_initinputtype__array__hubposition)
                self._arrays[array_handle] = hubposition
            return hubposition
        
        @hubposition.setter
        def hubposition(self, hubposition):
            self.hubposition[...] = hubposition
        
        @property
        def huborientation(self):
            """
            Element huborientation ftype=real(r8ki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 line \
                47
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_ad_initinputtype__array__huborientation(self._handle)
            if array_handle in self._arrays:
                huborientation = self._arrays[array_handle]
            else:
                huborientation = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_ad_initinputtype__array__huborientation)
                self._arrays[array_handle] = huborientation
            return huborientation
        
        @huborientation.setter
        def huborientation(self, huborientation):
            self.huborientation[...] = huborientation
        
        @property
        def bladerootposition(self):
            """
            Element bladerootposition ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 line \
                48
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_ad_initinputtype__array__bladerootposition(self._handle)
            if array_handle in self._arrays:
                bladerootposition = self._arrays[array_handle]
            else:
                bladerootposition = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_ad_initinputtype__array__bladerootposition)
                self._arrays[array_handle] = bladerootposition
            return bladerootposition
        
        @bladerootposition.setter
        def bladerootposition(self, bladerootposition):
            self.bladerootposition[...] = bladerootposition
        
        @property
        def bladerootorientation(self):
            """
            Element bladerootorientation ftype=real(r8ki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90 line \
                49
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_ad_initinputtype__array__bladerootorientation(self._handle)
            if array_handle in self._arrays:
                bladerootorientation = self._arrays[array_handle]
            else:
                bladerootorientation = \
                    f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_ad_initinputtype__array__bladerootorientation)
                self._arrays[array_handle] = bladerootorientation
            return bladerootorientation
        
        @bladerootorientation.setter
        def bladerootorientation(self, bladerootorientation):
            self.bladerootorientation[...] = bladerootorientation
        
        def __str__(self):
            ret = ['<ad_initinputtype>{\n']
            ret.append('    inputfile : ')
            ret.append(repr(self.inputfile))
            ret.append(',\n    linearize : ')
            ret.append(repr(self.linearize))
            ret.append(',\n    numblades : ')
            ret.append(repr(self.numblades))
            ret.append(',\n    gravity : ')
            ret.append(repr(self.gravity))
            ret.append(',\n    rootname : ')
            ret.append(repr(self.rootname))
            ret.append(',\n    hubposition : ')
            ret.append(repr(self.hubposition))
            ret.append(',\n    huborientation : ')
            ret.append(repr(self.huborientation))
            ret.append(',\n    bladerootposition : ')
            ret.append(repr(self.bladerootposition))
            ret.append(',\n    bladerootorientation : ')
            ret.append(repr(self.bladerootorientation))
            ret.append('}')
            return ''.join(ret)
        
        _dt_array_initialisers = []
        
    
    _dt_array_initialisers = []
    

aerodyn_types = Aerodyn_Types()

class Elastodyn_Types(f90wrap.runtime.FortranModule):
    """
    Module elastodyn_types
    
    
    Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
        lines 32-25126
    
    """
    @f90wrap.runtime.register_class("ED_InitInputType")
    class ED_InitInputType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=ed_initinputtype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
            lines 38-43
        
        """
        def __init__(self, handle=None):
            """
            self = Ed_Initinputtype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                lines 38-43
            
            
            Returns
            -------
            this : Ed_Initinputtype
            	Object to be constructed
            
            
            Automatically generated constructor for ed_initinputtype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_ed_initinputtype_initialise()
        
        def __del__(self):
            """
            Destructor for class Ed_Initinputtype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                lines 38-43
            
            Parameters
            ----------
            this : Ed_Initinputtype
            	Object to be destructed
            
            
            Automatically generated destructor for ed_initinputtype
            """
            if self._alloc:
                _openfast.w_ed_initinputtype_finalise(this=self._handle)
        
        @property
        def inputfile(self):
            """
            Element inputfile ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                line 39
            
            """
            return _openfast.w_ed_initinputtype__get__inputfile(self._handle)
        
        @inputfile.setter
        def inputfile(self, inputfile):
            _openfast.w_ed_initinputtype__set__inputfile(self._handle, inputfile)
        
        @property
        def linearize(self):
            """
            Element linearize ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                line 40
            
            """
            return _openfast.w_ed_initinputtype__get__linearize(self._handle)
        
        @linearize.setter
        def linearize(self, linearize):
            _openfast.w_ed_initinputtype__set__linearize(self._handle, linearize)
        
        @property
        def adinputfile(self):
            """
            Element adinputfile ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                line 41
            
            """
            return _openfast.w_ed_initinputtype__get__adinputfile(self._handle)
        
        @adinputfile.setter
        def adinputfile(self, adinputfile):
            _openfast.w_ed_initinputtype__set__adinputfile(self._handle, adinputfile)
        
        @property
        def compelast(self):
            """
            Element compelast ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                line 42
            
            """
            return _openfast.w_ed_initinputtype__get__compelast(self._handle)
        
        @compelast.setter
        def compelast(self, compelast):
            _openfast.w_ed_initinputtype__set__compelast(self._handle, compelast)
        
        @property
        def rootname(self):
            """
            Element rootname ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                line 43
            
            """
            return _openfast.w_ed_initinputtype__get__rootname(self._handle)
        
        @rootname.setter
        def rootname(self, rootname):
            _openfast.w_ed_initinputtype__set__rootname(self._handle, rootname)
        
        def __str__(self):
            ret = ['<ed_initinputtype>{\n']
            ret.append('    inputfile : ')
            ret.append(repr(self.inputfile))
            ret.append(',\n    linearize : ')
            ret.append(repr(self.linearize))
            ret.append(',\n    adinputfile : ')
            ret.append(repr(self.adinputfile))
            ret.append(',\n    compelast : ')
            ret.append(repr(self.compelast))
            ret.append(',\n    rootname : ')
            ret.append(repr(self.rootname))
            ret.append('}')
            return ''.join(ret)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("ED_InputFile")
    class ED_InputFile(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=ed_inputfile)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
            lines 107-285
        
        """
        def __init__(self, handle=None):
            """
            self = Ed_Inputfile()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                lines 107-285
            
            
            Returns
            -------
            this : Ed_Inputfile
            	Object to be constructed
            
            
            Automatically generated constructor for ed_inputfile
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_ed_inputfile_initialise()
        
        def __del__(self):
            """
            Destructor for class Ed_Inputfile
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                lines 107-285
            
            Parameters
            ----------
            this : Ed_Inputfile
            	Object to be destructed
            
            
            Automatically generated destructor for ed_inputfile
            """
            if self._alloc:
                _openfast.w_ed_inputfile_finalise(this=self._handle)
        
        @property
        def dt(self):
            """
            Element dt ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                line 108
            
            """
            return _openfast.w_ed_inputfile__get__dt(self._handle)
        
        @dt.setter
        def dt(self, dt):
            _openfast.w_ed_inputfile__set__dt(self._handle, dt)
        
        @property
        def gravity(self):
            """
            Element gravity ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90 \
                line 109
            
            """
            return _openfast.w_ed_inputfile__get__gravity(self._handle)
        
        @gravity.setter
        def gravity(self, gravity):
            _openfast.w_ed_inputfile__set__gravity(self._handle, gravity)
        
        def __str__(self):
            ret = ['<ed_inputfile>{\n']
            ret.append('    dt : ')
            ret.append(repr(self.dt))
            ret.append(',\n    gravity : ')
            ret.append(repr(self.gravity))
            ret.append('}')
            return ''.join(ret)
        
        _dt_array_initialisers = []
        
    
    _dt_array_initialisers = []
    

elastodyn_types = Elastodyn_Types()

class Servodyn_Types(f90wrap.runtime.FortranModule):
    """
    Module servodyn_types
    
    
    Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
        lines 32-7697
    
    """
    @f90wrap.runtime.register_class("SrvD_InitInputType")
    class SrvD_InitInputType(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=srvd_initinputtype)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
            lines 38-51
        
        """
        def __init__(self, handle=None):
            """
            self = Srvd_Initinputtype()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                lines 38-51
            
            
            Returns
            -------
            this : Srvd_Initinputtype
            	Object to be constructed
            
            
            Automatically generated constructor for srvd_initinputtype
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_srvd_initinputtype_initialise()
        
        def __del__(self):
            """
            Destructor for class Srvd_Initinputtype
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                lines 38-51
            
            Parameters
            ----------
            this : Srvd_Initinputtype
            	Object to be destructed
            
            
            Automatically generated destructor for srvd_initinputtype
            """
            if self._alloc:
                _openfast.w_srvd_initinputtype_finalise(this=self._handle)
        
        @property
        def inputfile(self):
            """
            Element inputfile ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 39
            
            """
            return _openfast.w_srvd_initinputtype__get__inputfile(self._handle)
        
        @inputfile.setter
        def inputfile(self, inputfile):
            _openfast.w_srvd_initinputtype__set__inputfile(self._handle, inputfile)
        
        def __str__(self):
            ret = ['<srvd_initinputtype>{\n']
            ret.append('    inputfile : ')
            ret.append(repr(self.inputfile))
            ret.append('}')
            return ''.join(ret)
        
        _dt_array_initialisers = []
        
    
    @f90wrap.runtime.register_class("SrvD_InputFile")
    class SrvD_InputFile(f90wrap.runtime.FortranDerivedType):
        """
        Type(name=srvd_inputfile)
        
        
        Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
            lines 68-143
        
        """
        def __init__(self, handle=None):
            """
            self = Srvd_Inputfile()
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                lines 68-143
            
            
            Returns
            -------
            this : Srvd_Inputfile
            	Object to be constructed
            
            
            Automatically generated constructor for srvd_inputfile
            """
            f90wrap.runtime.FortranDerivedType.__init__(self)
            self._handle = _openfast.w_srvd_inputfile_initialise()
        
        def __del__(self):
            """
            Destructor for class Srvd_Inputfile
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                lines 68-143
            
            Parameters
            ----------
            this : Srvd_Inputfile
            	Object to be destructed
            
            
            Automatically generated destructor for srvd_inputfile
            """
            if self._alloc:
                _openfast.w_srvd_inputfile_finalise(this=self._handle)
        
        @property
        def dt(self):
            """
            Element dt ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 69
            
            """
            return _openfast.w_srvd_inputfile__get__dt(self._handle)
        
        @dt.setter
        def dt(self, dt):
            _openfast.w_srvd_inputfile__set__dt(self._handle, dt)
        
        @property
        def pcmode(self):
            """
            Element pcmode ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 70
            
            """
            return _openfast.w_srvd_inputfile__get__pcmode(self._handle)
        
        @pcmode.setter
        def pcmode(self, pcmode):
            _openfast.w_srvd_inputfile__set__pcmode(self._handle, pcmode)
        
        @property
        def tpcon(self):
            """
            Element tpcon ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 71
            
            """
            return _openfast.w_srvd_inputfile__get__tpcon(self._handle)
        
        @tpcon.setter
        def tpcon(self, tpcon):
            _openfast.w_srvd_inputfile__set__tpcon(self._handle, tpcon)
        
        @property
        def tpitmans(self):
            """
            Element tpitmans ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 72
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_srvd_inputfile__array__tpitmans(self._handle)
            if array_handle in self._arrays:
                tpitmans = self._arrays[array_handle]
            else:
                tpitmans = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_srvd_inputfile__array__tpitmans)
                self._arrays[array_handle] = tpitmans
            return tpitmans
        
        @tpitmans.setter
        def tpitmans(self, tpitmans):
            self.tpitmans[...] = tpitmans
        
        @property
        def pitmanrat(self):
            """
            Element pitmanrat ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 73
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_srvd_inputfile__array__pitmanrat(self._handle)
            if array_handle in self._arrays:
                pitmanrat = self._arrays[array_handle]
            else:
                pitmanrat = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_srvd_inputfile__array__pitmanrat)
                self._arrays[array_handle] = pitmanrat
            return pitmanrat
        
        @pitmanrat.setter
        def pitmanrat(self, pitmanrat):
            self.pitmanrat[...] = pitmanrat
        
        @property
        def blpitchf(self):
            """
            Element blpitchf ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 74
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_srvd_inputfile__array__blpitchf(self._handle)
            if array_handle in self._arrays:
                blpitchf = self._arrays[array_handle]
            else:
                blpitchf = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_srvd_inputfile__array__blpitchf)
                self._arrays[array_handle] = blpitchf
            return blpitchf
        
        @blpitchf.setter
        def blpitchf(self, blpitchf):
            self.blpitchf[...] = blpitchf
        
        @property
        def vscontrl(self):
            """
            Element vscontrl ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 75
            
            """
            return _openfast.w_srvd_inputfile__get__vscontrl(self._handle)
        
        @vscontrl.setter
        def vscontrl(self, vscontrl):
            _openfast.w_srvd_inputfile__set__vscontrl(self._handle, vscontrl)
        
        @property
        def genmodel(self):
            """
            Element genmodel ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 76
            
            """
            return _openfast.w_srvd_inputfile__get__genmodel(self._handle)
        
        @genmodel.setter
        def genmodel(self, genmodel):
            _openfast.w_srvd_inputfile__set__genmodel(self._handle, genmodel)
        
        @property
        def geneff(self):
            """
            Element geneff ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 77
            
            """
            return _openfast.w_srvd_inputfile__get__geneff(self._handle)
        
        @geneff.setter
        def geneff(self, geneff):
            _openfast.w_srvd_inputfile__set__geneff(self._handle, geneff)
        
        @property
        def gentistr(self):
            """
            Element gentistr ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 78
            
            """
            return _openfast.w_srvd_inputfile__get__gentistr(self._handle)
        
        @gentistr.setter
        def gentistr(self, gentistr):
            _openfast.w_srvd_inputfile__set__gentistr(self._handle, gentistr)
        
        @property
        def gentistp(self):
            """
            Element gentistp ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 79
            
            """
            return _openfast.w_srvd_inputfile__get__gentistp(self._handle)
        
        @gentistp.setter
        def gentistp(self, gentistp):
            _openfast.w_srvd_inputfile__set__gentistp(self._handle, gentistp)
        
        @property
        def spdgenon(self):
            """
            Element spdgenon ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 80
            
            """
            return _openfast.w_srvd_inputfile__get__spdgenon(self._handle)
        
        @spdgenon.setter
        def spdgenon(self, spdgenon):
            _openfast.w_srvd_inputfile__set__spdgenon(self._handle, spdgenon)
        
        @property
        def timgenon(self):
            """
            Element timgenon ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 81
            
            """
            return _openfast.w_srvd_inputfile__get__timgenon(self._handle)
        
        @timgenon.setter
        def timgenon(self, timgenon):
            _openfast.w_srvd_inputfile__set__timgenon(self._handle, timgenon)
        
        @property
        def timgenof(self):
            """
            Element timgenof ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 82
            
            """
            return _openfast.w_srvd_inputfile__get__timgenof(self._handle)
        
        @timgenof.setter
        def timgenof(self, timgenof):
            _openfast.w_srvd_inputfile__set__timgenof(self._handle, timgenof)
        
        @property
        def vs_rtgnsp(self):
            """
            Element vs_rtgnsp ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 83
            
            """
            return _openfast.w_srvd_inputfile__get__vs_rtgnsp(self._handle)
        
        @vs_rtgnsp.setter
        def vs_rtgnsp(self, vs_rtgnsp):
            _openfast.w_srvd_inputfile__set__vs_rtgnsp(self._handle, vs_rtgnsp)
        
        @property
        def vs_rttq(self):
            """
            Element vs_rttq ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 84
            
            """
            return _openfast.w_srvd_inputfile__get__vs_rttq(self._handle)
        
        @vs_rttq.setter
        def vs_rttq(self, vs_rttq):
            _openfast.w_srvd_inputfile__set__vs_rttq(self._handle, vs_rttq)
        
        @property
        def vs_rgn2k(self):
            """
            Element vs_rgn2k ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 85
            
            """
            return _openfast.w_srvd_inputfile__get__vs_rgn2k(self._handle)
        
        @vs_rgn2k.setter
        def vs_rgn2k(self, vs_rgn2k):
            _openfast.w_srvd_inputfile__set__vs_rgn2k(self._handle, vs_rgn2k)
        
        @property
        def vs_slpc(self):
            """
            Element vs_slpc ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 86
            
            """
            return _openfast.w_srvd_inputfile__get__vs_slpc(self._handle)
        
        @vs_slpc.setter
        def vs_slpc(self, vs_slpc):
            _openfast.w_srvd_inputfile__set__vs_slpc(self._handle, vs_slpc)
        
        @property
        def sig_slpc(self):
            """
            Element sig_slpc ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 87
            
            """
            return _openfast.w_srvd_inputfile__get__sig_slpc(self._handle)
        
        @sig_slpc.setter
        def sig_slpc(self, sig_slpc):
            _openfast.w_srvd_inputfile__set__sig_slpc(self._handle, sig_slpc)
        
        @property
        def sig_sysp(self):
            """
            Element sig_sysp ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 88
            
            """
            return _openfast.w_srvd_inputfile__get__sig_sysp(self._handle)
        
        @sig_sysp.setter
        def sig_sysp(self, sig_sysp):
            _openfast.w_srvd_inputfile__set__sig_sysp(self._handle, sig_sysp)
        
        @property
        def sig_rttq(self):
            """
            Element sig_rttq ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 89
            
            """
            return _openfast.w_srvd_inputfile__get__sig_rttq(self._handle)
        
        @sig_rttq.setter
        def sig_rttq(self, sig_rttq):
            _openfast.w_srvd_inputfile__set__sig_rttq(self._handle, sig_rttq)
        
        @property
        def sig_port(self):
            """
            Element sig_port ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 90
            
            """
            return _openfast.w_srvd_inputfile__get__sig_port(self._handle)
        
        @sig_port.setter
        def sig_port(self, sig_port):
            _openfast.w_srvd_inputfile__set__sig_port(self._handle, sig_port)
        
        @property
        def tec_freq(self):
            """
            Element tec_freq ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 91
            
            """
            return _openfast.w_srvd_inputfile__get__tec_freq(self._handle)
        
        @tec_freq.setter
        def tec_freq(self, tec_freq):
            _openfast.w_srvd_inputfile__set__tec_freq(self._handle, tec_freq)
        
        @property
        def tec_npol(self):
            """
            Element tec_npol ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 92
            
            """
            return _openfast.w_srvd_inputfile__get__tec_npol(self._handle)
        
        @tec_npol.setter
        def tec_npol(self, tec_npol):
            _openfast.w_srvd_inputfile__set__tec_npol(self._handle, tec_npol)
        
        @property
        def tec_sres(self):
            """
            Element tec_sres ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 93
            
            """
            return _openfast.w_srvd_inputfile__get__tec_sres(self._handle)
        
        @tec_sres.setter
        def tec_sres(self, tec_sres):
            _openfast.w_srvd_inputfile__set__tec_sres(self._handle, tec_sres)
        
        @property
        def tec_rres(self):
            """
            Element tec_rres ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 94
            
            """
            return _openfast.w_srvd_inputfile__get__tec_rres(self._handle)
        
        @tec_rres.setter
        def tec_rres(self, tec_rres):
            _openfast.w_srvd_inputfile__set__tec_rres(self._handle, tec_rres)
        
        @property
        def tec_vll(self):
            """
            Element tec_vll ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 95
            
            """
            return _openfast.w_srvd_inputfile__get__tec_vll(self._handle)
        
        @tec_vll.setter
        def tec_vll(self, tec_vll):
            _openfast.w_srvd_inputfile__set__tec_vll(self._handle, tec_vll)
        
        @property
        def tec_slr(self):
            """
            Element tec_slr ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 96
            
            """
            return _openfast.w_srvd_inputfile__get__tec_slr(self._handle)
        
        @tec_slr.setter
        def tec_slr(self, tec_slr):
            _openfast.w_srvd_inputfile__set__tec_slr(self._handle, tec_slr)
        
        @property
        def tec_rlr(self):
            """
            Element tec_rlr ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 97
            
            """
            return _openfast.w_srvd_inputfile__get__tec_rlr(self._handle)
        
        @tec_rlr.setter
        def tec_rlr(self, tec_rlr):
            _openfast.w_srvd_inputfile__set__tec_rlr(self._handle, tec_rlr)
        
        @property
        def tec_mr(self):
            """
            Element tec_mr ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 98
            
            """
            return _openfast.w_srvd_inputfile__get__tec_mr(self._handle)
        
        @tec_mr.setter
        def tec_mr(self, tec_mr):
            _openfast.w_srvd_inputfile__set__tec_mr(self._handle, tec_mr)
        
        @property
        def hssbrmode(self):
            """
            Element hssbrmode ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 99
            
            """
            return _openfast.w_srvd_inputfile__get__hssbrmode(self._handle)
        
        @hssbrmode.setter
        def hssbrmode(self, hssbrmode):
            _openfast.w_srvd_inputfile__set__hssbrmode(self._handle, hssbrmode)
        
        @property
        def thssbrdp(self):
            """
            Element thssbrdp ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 100
            
            """
            return _openfast.w_srvd_inputfile__get__thssbrdp(self._handle)
        
        @thssbrdp.setter
        def thssbrdp(self, thssbrdp):
            _openfast.w_srvd_inputfile__set__thssbrdp(self._handle, thssbrdp)
        
        @property
        def hssbrdt(self):
            """
            Element hssbrdt ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 101
            
            """
            return _openfast.w_srvd_inputfile__get__hssbrdt(self._handle)
        
        @hssbrdt.setter
        def hssbrdt(self, hssbrdt):
            _openfast.w_srvd_inputfile__set__hssbrdt(self._handle, hssbrdt)
        
        @property
        def hssbrtqf(self):
            """
            Element hssbrtqf ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 102
            
            """
            return _openfast.w_srvd_inputfile__get__hssbrtqf(self._handle)
        
        @hssbrtqf.setter
        def hssbrtqf(self, hssbrtqf):
            _openfast.w_srvd_inputfile__set__hssbrtqf(self._handle, hssbrtqf)
        
        @property
        def ycmode(self):
            """
            Element ycmode ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 103
            
            """
            return _openfast.w_srvd_inputfile__get__ycmode(self._handle)
        
        @ycmode.setter
        def ycmode(self, ycmode):
            _openfast.w_srvd_inputfile__set__ycmode(self._handle, ycmode)
        
        @property
        def tycon(self):
            """
            Element tycon ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 104
            
            """
            return _openfast.w_srvd_inputfile__get__tycon(self._handle)
        
        @tycon.setter
        def tycon(self, tycon):
            _openfast.w_srvd_inputfile__set__tycon(self._handle, tycon)
        
        @property
        def yawneut(self):
            """
            Element yawneut ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 105
            
            """
            return _openfast.w_srvd_inputfile__get__yawneut(self._handle)
        
        @yawneut.setter
        def yawneut(self, yawneut):
            _openfast.w_srvd_inputfile__set__yawneut(self._handle, yawneut)
        
        @property
        def yawspr(self):
            """
            Element yawspr ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 106
            
            """
            return _openfast.w_srvd_inputfile__get__yawspr(self._handle)
        
        @yawspr.setter
        def yawspr(self, yawspr):
            _openfast.w_srvd_inputfile__set__yawspr(self._handle, yawspr)
        
        @property
        def yawdamp(self):
            """
            Element yawdamp ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 107
            
            """
            return _openfast.w_srvd_inputfile__get__yawdamp(self._handle)
        
        @yawdamp.setter
        def yawdamp(self, yawdamp):
            _openfast.w_srvd_inputfile__set__yawdamp(self._handle, yawdamp)
        
        @property
        def tyawmans(self):
            """
            Element tyawmans ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 108
            
            """
            return _openfast.w_srvd_inputfile__get__tyawmans(self._handle)
        
        @tyawmans.setter
        def tyawmans(self, tyawmans):
            _openfast.w_srvd_inputfile__set__tyawmans(self._handle, tyawmans)
        
        @property
        def yawmanrat(self):
            """
            Element yawmanrat ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 109
            
            """
            return _openfast.w_srvd_inputfile__get__yawmanrat(self._handle)
        
        @yawmanrat.setter
        def yawmanrat(self, yawmanrat):
            _openfast.w_srvd_inputfile__set__yawmanrat(self._handle, yawmanrat)
        
        @property
        def nacyawf(self):
            """
            Element nacyawf ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 110
            
            """
            return _openfast.w_srvd_inputfile__get__nacyawf(self._handle)
        
        @nacyawf.setter
        def nacyawf(self, nacyawf):
            _openfast.w_srvd_inputfile__set__nacyawf(self._handle, nacyawf)
        
        @property
        def sumprint(self):
            """
            Element sumprint ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 111
            
            """
            return _openfast.w_srvd_inputfile__get__sumprint(self._handle)
        
        @sumprint.setter
        def sumprint(self, sumprint):
            _openfast.w_srvd_inputfile__set__sumprint(self._handle, sumprint)
        
        @property
        def outfile(self):
            """
            Element outfile ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 112
            
            """
            return _openfast.w_srvd_inputfile__get__outfile(self._handle)
        
        @outfile.setter
        def outfile(self, outfile):
            _openfast.w_srvd_inputfile__set__outfile(self._handle, outfile)
        
        @property
        def tabdelim(self):
            """
            Element tabdelim ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 113
            
            """
            return _openfast.w_srvd_inputfile__get__tabdelim(self._handle)
        
        @tabdelim.setter
        def tabdelim(self, tabdelim):
            _openfast.w_srvd_inputfile__set__tabdelim(self._handle, tabdelim)
        
        @property
        def outfmt(self):
            """
            Element outfmt ftype=character(20) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 114
            
            """
            return _openfast.w_srvd_inputfile__get__outfmt(self._handle)
        
        @outfmt.setter
        def outfmt(self, outfmt):
            _openfast.w_srvd_inputfile__set__outfmt(self._handle, outfmt)
        
        @property
        def tstart(self):
            """
            Element tstart ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 115
            
            """
            return _openfast.w_srvd_inputfile__get__tstart(self._handle)
        
        @tstart.setter
        def tstart(self, tstart):
            _openfast.w_srvd_inputfile__set__tstart(self._handle, tstart)
        
        @property
        def numouts(self):
            """
            Element numouts ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 116
            
            """
            return _openfast.w_srvd_inputfile__get__numouts(self._handle)
        
        @numouts.setter
        def numouts(self, numouts):
            _openfast.w_srvd_inputfile__set__numouts(self._handle, numouts)
        
        @property
        def outlist(self):
            """
            Element outlist ftype=character(chanlen) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 117
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_srvd_inputfile__array__outlist(self._handle)
            if array_handle in self._arrays:
                outlist = self._arrays[array_handle]
            else:
                outlist = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_srvd_inputfile__array__outlist)
                self._arrays[array_handle] = outlist
            return outlist
        
        @outlist.setter
        def outlist(self, outlist):
            self.outlist[...] = outlist
        
        @property
        def dll_filename(self):
            """
            Element dll_filename ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 118
            
            """
            return _openfast.w_srvd_inputfile__get__dll_filename(self._handle)
        
        @dll_filename.setter
        def dll_filename(self, dll_filename):
            _openfast.w_srvd_inputfile__set__dll_filename(self._handle, dll_filename)
        
        @property
        def dll_procname(self):
            """
            Element dll_procname ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 119
            
            """
            return _openfast.w_srvd_inputfile__get__dll_procname(self._handle)
        
        @dll_procname.setter
        def dll_procname(self, dll_procname):
            _openfast.w_srvd_inputfile__set__dll_procname(self._handle, dll_procname)
        
        @property
        def dll_infile(self):
            """
            Element dll_infile ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 120
            
            """
            return _openfast.w_srvd_inputfile__get__dll_infile(self._handle)
        
        @dll_infile.setter
        def dll_infile(self, dll_infile):
            _openfast.w_srvd_inputfile__set__dll_infile(self._handle, dll_infile)
        
        @property
        def dll_dt(self):
            """
            Element dll_dt ftype=real(dbki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 121
            
            """
            return _openfast.w_srvd_inputfile__get__dll_dt(self._handle)
        
        @dll_dt.setter
        def dll_dt(self, dll_dt):
            _openfast.w_srvd_inputfile__set__dll_dt(self._handle, dll_dt)
        
        @property
        def dll_ramp(self):
            """
            Element dll_ramp ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 122
            
            """
            return _openfast.w_srvd_inputfile__get__dll_ramp(self._handle)
        
        @dll_ramp.setter
        def dll_ramp(self, dll_ramp):
            _openfast.w_srvd_inputfile__set__dll_ramp(self._handle, dll_ramp)
        
        @property
        def bpcutoff(self):
            """
            Element bpcutoff ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 123
            
            """
            return _openfast.w_srvd_inputfile__get__bpcutoff(self._handle)
        
        @bpcutoff.setter
        def bpcutoff(self, bpcutoff):
            _openfast.w_srvd_inputfile__set__bpcutoff(self._handle, bpcutoff)
        
        @property
        def nacyaw_north(self):
            """
            Element nacyaw_north ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 124
            
            """
            return _openfast.w_srvd_inputfile__get__nacyaw_north(self._handle)
        
        @nacyaw_north.setter
        def nacyaw_north(self, nacyaw_north):
            _openfast.w_srvd_inputfile__set__nacyaw_north(self._handle, nacyaw_north)
        
        @property
        def ptch_cntrl(self):
            """
            Element ptch_cntrl ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 125
            
            """
            return _openfast.w_srvd_inputfile__get__ptch_cntrl(self._handle)
        
        @ptch_cntrl.setter
        def ptch_cntrl(self, ptch_cntrl):
            _openfast.w_srvd_inputfile__set__ptch_cntrl(self._handle, ptch_cntrl)
        
        @property
        def ptch_setpnt(self):
            """
            Element ptch_setpnt ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 126
            
            """
            return _openfast.w_srvd_inputfile__get__ptch_setpnt(self._handle)
        
        @ptch_setpnt.setter
        def ptch_setpnt(self, ptch_setpnt):
            _openfast.w_srvd_inputfile__set__ptch_setpnt(self._handle, ptch_setpnt)
        
        @property
        def ptch_min(self):
            """
            Element ptch_min ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 127
            
            """
            return _openfast.w_srvd_inputfile__get__ptch_min(self._handle)
        
        @ptch_min.setter
        def ptch_min(self, ptch_min):
            _openfast.w_srvd_inputfile__set__ptch_min(self._handle, ptch_min)
        
        @property
        def ptch_max(self):
            """
            Element ptch_max ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 128
            
            """
            return _openfast.w_srvd_inputfile__get__ptch_max(self._handle)
        
        @ptch_max.setter
        def ptch_max(self, ptch_max):
            _openfast.w_srvd_inputfile__set__ptch_max(self._handle, ptch_max)
        
        @property
        def ptchrate_min(self):
            """
            Element ptchrate_min ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 129
            
            """
            return _openfast.w_srvd_inputfile__get__ptchrate_min(self._handle)
        
        @ptchrate_min.setter
        def ptchrate_min(self, ptchrate_min):
            _openfast.w_srvd_inputfile__set__ptchrate_min(self._handle, ptchrate_min)
        
        @property
        def ptchrate_max(self):
            """
            Element ptchrate_max ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 130
            
            """
            return _openfast.w_srvd_inputfile__get__ptchrate_max(self._handle)
        
        @ptchrate_max.setter
        def ptchrate_max(self, ptchrate_max):
            _openfast.w_srvd_inputfile__set__ptchrate_max(self._handle, ptchrate_max)
        
        @property
        def gain_om(self):
            """
            Element gain_om ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 131
            
            """
            return _openfast.w_srvd_inputfile__get__gain_om(self._handle)
        
        @gain_om.setter
        def gain_om(self, gain_om):
            _openfast.w_srvd_inputfile__set__gain_om(self._handle, gain_om)
        
        @property
        def genspd_minom(self):
            """
            Element genspd_minom ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 132
            
            """
            return _openfast.w_srvd_inputfile__get__genspd_minom(self._handle)
        
        @genspd_minom.setter
        def genspd_minom(self, genspd_minom):
            _openfast.w_srvd_inputfile__set__genspd_minom(self._handle, genspd_minom)
        
        @property
        def genspd_maxom(self):
            """
            Element genspd_maxom ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 133
            
            """
            return _openfast.w_srvd_inputfile__get__genspd_maxom(self._handle)
        
        @genspd_maxom.setter
        def genspd_maxom(self, genspd_maxom):
            _openfast.w_srvd_inputfile__set__genspd_maxom(self._handle, genspd_maxom)
        
        @property
        def genspd_dem(self):
            """
            Element genspd_dem ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 134
            
            """
            return _openfast.w_srvd_inputfile__get__genspd_dem(self._handle)
        
        @genspd_dem.setter
        def genspd_dem(self, genspd_dem):
            _openfast.w_srvd_inputfile__set__genspd_dem(self._handle, genspd_dem)
        
        @property
        def gentrq_dem(self):
            """
            Element gentrq_dem ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 135
            
            """
            return _openfast.w_srvd_inputfile__get__gentrq_dem(self._handle)
        
        @gentrq_dem.setter
        def gentrq_dem(self, gentrq_dem):
            _openfast.w_srvd_inputfile__set__gentrq_dem(self._handle, gentrq_dem)
        
        @property
        def genpwr_dem(self):
            """
            Element genpwr_dem ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 136
            
            """
            return _openfast.w_srvd_inputfile__get__genpwr_dem(self._handle)
        
        @genpwr_dem.setter
        def genpwr_dem(self, genpwr_dem):
            _openfast.w_srvd_inputfile__set__genpwr_dem(self._handle, genpwr_dem)
        
        @property
        def dll_numtrq(self):
            """
            Element dll_numtrq ftype=integer(intki) pytype=int
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 137
            
            """
            return _openfast.w_srvd_inputfile__get__dll_numtrq(self._handle)
        
        @dll_numtrq.setter
        def dll_numtrq(self, dll_numtrq):
            _openfast.w_srvd_inputfile__set__dll_numtrq(self._handle, dll_numtrq)
        
        @property
        def genspd_tlu(self):
            """
            Element genspd_tlu ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 138
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_srvd_inputfile__array__genspd_tlu(self._handle)
            if array_handle in self._arrays:
                genspd_tlu = self._arrays[array_handle]
            else:
                genspd_tlu = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_srvd_inputfile__array__genspd_tlu)
                self._arrays[array_handle] = genspd_tlu
            return genspd_tlu
        
        @genspd_tlu.setter
        def genspd_tlu(self, genspd_tlu):
            self.genspd_tlu[...] = genspd_tlu
        
        @property
        def gentrq_tlu(self):
            """
            Element gentrq_tlu ftype=real(reki) pytype=float
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 139
            
            """
            array_ndim, array_type, array_shape, array_handle = \
                _openfast.w_srvd_inputfile__array__gentrq_tlu(self._handle)
            if array_handle in self._arrays:
                gentrq_tlu = self._arrays[array_handle]
            else:
                gentrq_tlu = f90wrap.runtime.get_array(f90wrap.runtime.sizeof_fortran_t,
                                        self._handle,
                                        _openfast.w_srvd_inputfile__array__gentrq_tlu)
                self._arrays[array_handle] = gentrq_tlu
            return gentrq_tlu
        
        @gentrq_tlu.setter
        def gentrq_tlu(self, gentrq_tlu):
            self.gentrq_tlu[...] = gentrq_tlu
        
        @property
        def compntmd(self):
            """
            Element compntmd ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 140
            
            """
            return _openfast.w_srvd_inputfile__get__compntmd(self._handle)
        
        @compntmd.setter
        def compntmd(self, compntmd):
            _openfast.w_srvd_inputfile__set__compntmd(self._handle, compntmd)
        
        @property
        def ntmdfile(self):
            """
            Element ntmdfile ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 141
            
            """
            return _openfast.w_srvd_inputfile__get__ntmdfile(self._handle)
        
        @ntmdfile.setter
        def ntmdfile(self, ntmdfile):
            _openfast.w_srvd_inputfile__set__ntmdfile(self._handle, ntmdfile)
        
        @property
        def compttmd(self):
            """
            Element compttmd ftype=logical   pytype=bool
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 142
            
            """
            return _openfast.w_srvd_inputfile__get__compttmd(self._handle)
        
        @compttmd.setter
        def compttmd(self, compttmd):
            _openfast.w_srvd_inputfile__set__compttmd(self._handle, compttmd)
        
        @property
        def ttmdfile(self):
            """
            Element ttmdfile ftype=character(1024) pytype=str
            
            
            Defined at F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90 \
                line 143
            
            """
            return _openfast.w_srvd_inputfile__get__ttmdfile(self._handle)
        
        @ttmdfile.setter
        def ttmdfile(self, ttmdfile):
            _openfast.w_srvd_inputfile__set__ttmdfile(self._handle, ttmdfile)
        
        def __str__(self):
            ret = ['<srvd_inputfile>{\n']
            ret.append('    dt : ')
            ret.append(repr(self.dt))
            ret.append(',\n    pcmode : ')
            ret.append(repr(self.pcmode))
            ret.append(',\n    tpcon : ')
            ret.append(repr(self.tpcon))
            ret.append(',\n    tpitmans : ')
            ret.append(repr(self.tpitmans))
            ret.append(',\n    pitmanrat : ')
            ret.append(repr(self.pitmanrat))
            ret.append(',\n    blpitchf : ')
            ret.append(repr(self.blpitchf))
            ret.append(',\n    vscontrl : ')
            ret.append(repr(self.vscontrl))
            ret.append(',\n    genmodel : ')
            ret.append(repr(self.genmodel))
            ret.append(',\n    geneff : ')
            ret.append(repr(self.geneff))
            ret.append(',\n    gentistr : ')
            ret.append(repr(self.gentistr))
            ret.append(',\n    gentistp : ')
            ret.append(repr(self.gentistp))
            ret.append(',\n    spdgenon : ')
            ret.append(repr(self.spdgenon))
            ret.append(',\n    timgenon : ')
            ret.append(repr(self.timgenon))
            ret.append(',\n    timgenof : ')
            ret.append(repr(self.timgenof))
            ret.append(',\n    vs_rtgnsp : ')
            ret.append(repr(self.vs_rtgnsp))
            ret.append(',\n    vs_rttq : ')
            ret.append(repr(self.vs_rttq))
            ret.append(',\n    vs_rgn2k : ')
            ret.append(repr(self.vs_rgn2k))
            ret.append(',\n    vs_slpc : ')
            ret.append(repr(self.vs_slpc))
            ret.append(',\n    sig_slpc : ')
            ret.append(repr(self.sig_slpc))
            ret.append(',\n    sig_sysp : ')
            ret.append(repr(self.sig_sysp))
            ret.append(',\n    sig_rttq : ')
            ret.append(repr(self.sig_rttq))
            ret.append(',\n    sig_port : ')
            ret.append(repr(self.sig_port))
            ret.append(',\n    tec_freq : ')
            ret.append(repr(self.tec_freq))
            ret.append(',\n    tec_npol : ')
            ret.append(repr(self.tec_npol))
            ret.append(',\n    tec_sres : ')
            ret.append(repr(self.tec_sres))
            ret.append(',\n    tec_rres : ')
            ret.append(repr(self.tec_rres))
            ret.append(',\n    tec_vll : ')
            ret.append(repr(self.tec_vll))
            ret.append(',\n    tec_slr : ')
            ret.append(repr(self.tec_slr))
            ret.append(',\n    tec_rlr : ')
            ret.append(repr(self.tec_rlr))
            ret.append(',\n    tec_mr : ')
            ret.append(repr(self.tec_mr))
            ret.append(',\n    hssbrmode : ')
            ret.append(repr(self.hssbrmode))
            ret.append(',\n    thssbrdp : ')
            ret.append(repr(self.thssbrdp))
            ret.append(',\n    hssbrdt : ')
            ret.append(repr(self.hssbrdt))
            ret.append(',\n    hssbrtqf : ')
            ret.append(repr(self.hssbrtqf))
            ret.append(',\n    ycmode : ')
            ret.append(repr(self.ycmode))
            ret.append(',\n    tycon : ')
            ret.append(repr(self.tycon))
            ret.append(',\n    yawneut : ')
            ret.append(repr(self.yawneut))
            ret.append(',\n    yawspr : ')
            ret.append(repr(self.yawspr))
            ret.append(',\n    yawdamp : ')
            ret.append(repr(self.yawdamp))
            ret.append(',\n    tyawmans : ')
            ret.append(repr(self.tyawmans))
            ret.append(',\n    yawmanrat : ')
            ret.append(repr(self.yawmanrat))
            ret.append(',\n    nacyawf : ')
            ret.append(repr(self.nacyawf))
            ret.append(',\n    sumprint : ')
            ret.append(repr(self.sumprint))
            ret.append(',\n    outfile : ')
            ret.append(repr(self.outfile))
            ret.append(',\n    tabdelim : ')
            ret.append(repr(self.tabdelim))
            ret.append(',\n    outfmt : ')
            ret.append(repr(self.outfmt))
            ret.append(',\n    tstart : ')
            ret.append(repr(self.tstart))
            ret.append(',\n    numouts : ')
            ret.append(repr(self.numouts))
            ret.append(',\n    outlist : ')
            ret.append(repr(self.outlist))
            ret.append(',\n    dll_filename : ')
            ret.append(repr(self.dll_filename))
            ret.append(',\n    dll_procname : ')
            ret.append(repr(self.dll_procname))
            ret.append(',\n    dll_infile : ')
            ret.append(repr(self.dll_infile))
            ret.append(',\n    dll_dt : ')
            ret.append(repr(self.dll_dt))
            ret.append(',\n    dll_ramp : ')
            ret.append(repr(self.dll_ramp))
            ret.append(',\n    bpcutoff : ')
            ret.append(repr(self.bpcutoff))
            ret.append(',\n    nacyaw_north : ')
            ret.append(repr(self.nacyaw_north))
            ret.append(',\n    ptch_cntrl : ')
            ret.append(repr(self.ptch_cntrl))
            ret.append(',\n    ptch_setpnt : ')
            ret.append(repr(self.ptch_setpnt))
            ret.append(',\n    ptch_min : ')
            ret.append(repr(self.ptch_min))
            ret.append(',\n    ptch_max : ')
            ret.append(repr(self.ptch_max))
            ret.append(',\n    ptchrate_min : ')
            ret.append(repr(self.ptchrate_min))
            ret.append(',\n    ptchrate_max : ')
            ret.append(repr(self.ptchrate_max))
            ret.append(',\n    gain_om : ')
            ret.append(repr(self.gain_om))
            ret.append(',\n    genspd_minom : ')
            ret.append(repr(self.genspd_minom))
            ret.append(',\n    genspd_maxom : ')
            ret.append(repr(self.genspd_maxom))
            ret.append(',\n    genspd_dem : ')
            ret.append(repr(self.genspd_dem))
            ret.append(',\n    gentrq_dem : ')
            ret.append(repr(self.gentrq_dem))
            ret.append(',\n    genpwr_dem : ')
            ret.append(repr(self.genpwr_dem))
            ret.append(',\n    dll_numtrq : ')
            ret.append(repr(self.dll_numtrq))
            ret.append(',\n    genspd_tlu : ')
            ret.append(repr(self.genspd_tlu))
            ret.append(',\n    gentrq_tlu : ')
            ret.append(repr(self.gentrq_tlu))
            ret.append(',\n    compntmd : ')
            ret.append(repr(self.compntmd))
            ret.append(',\n    ntmdfile : ')
            ret.append(repr(self.ntmdfile))
            ret.append(',\n    compttmd : ')
            ret.append(repr(self.compttmd))
            ret.append(',\n    ttmdfile : ')
            ret.append(repr(self.ttmdfile))
            ret.append('}')
            return ''.join(ret)
        
        _dt_array_initialisers = []
        
    
    _dt_array_initialisers = []
    

servodyn_types = Servodyn_Types()

