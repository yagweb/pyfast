! Module fast_data defined in file F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90

subroutine w_fast_allocateturbines(nturbines, errstat_c, errmsg_c, n0)
    use fast_data, only: fast_allocateturbines
    implicit none
    
    integer(4) :: nturbines
    integer(4) :: errstat_c
    character(1024), dimension(n0) :: errmsg_c
    integer :: n0
    !f2py intent(hide), depend(errmsg_c) :: n0 = shape(errmsg_c,0)
    call fast_allocateturbines(nTurbines=nturbines, ErrStat_c=errstat_c, ErrMsg_c=errmsg_c)
end subroutine w_fast_allocateturbines

subroutine w_fast_sizes(iturb, tmax, initinpary, inputfilename_c, aborterrlev_c, numouts_c, dt_c, errstat_c, errmsg_c, channelnames_c, n0, n1, n2, n3)
    use fast_data, only: fast_sizes
    implicit none
    
    integer(4) :: iturb
    real(8) :: tmax
    real(8), dimension(n0) :: initinpary
    character(1024), dimension(n1) :: inputfilename_c
    integer(4) :: aborterrlev_c
    integer(4) :: numouts_c
    real(8) :: dt_c
    integer(4) :: errstat_c
    character(1024), dimension(n2) :: errmsg_c
    character(1024), dimension(n3) :: channelnames_c
    integer :: n0
    !f2py intent(hide), depend(initinpary) :: n0 = shape(initinpary,0)
    integer :: n1
    !f2py intent(hide), depend(inputfilename_c) :: n1 = shape(inputfilename_c,0)
    integer :: n2
    !f2py intent(hide), depend(errmsg_c) :: n2 = shape(errmsg_c,0)
    integer :: n3
    !f2py intent(hide), depend(channelnames_c) :: n3 = shape(channelnames_c,0)
    call fast_sizes(iTurb=iturb, TMax=tmax, InitInpAry=initinpary, InputFileName_c=inputfilename_c, AbortErrLev_c=aborterrlev_c, NumOuts_c=numouts_c, dt_c=dt_c, &
        ErrStat_c=errstat_c, ErrMsg_c=errmsg_c, ChannelNames_c=channelnames_c)
end subroutine w_fast_sizes

subroutine w_fast_start(iturb, numinputs_c, numoutputs_c, inputary, outputary, errstat_c, errmsg_c, n0, n1, n2)
    use fast_data, only: fast_start
    implicit none
    
    integer(4) :: iturb
    integer(4) :: numinputs_c
    integer(4) :: numoutputs_c
    real(8), dimension(n0) :: inputary
    real(8), dimension(n1) :: outputary
    integer(4) :: errstat_c
    character(1024), dimension(n2) :: errmsg_c
    integer :: n0
    !f2py intent(hide), depend(inputary) :: n0 = shape(inputary,0)
    integer :: n1
    !f2py intent(hide), depend(outputary) :: n1 = shape(outputary,0)
    integer :: n2
    !f2py intent(hide), depend(errmsg_c) :: n2 = shape(errmsg_c,0)
    call fast_start(iTurb=iturb, NumInputs_c=numinputs_c, NumOutputs_c=numoutputs_c, InputAry=inputary, OutputAry=outputary, ErrStat_c=errstat_c, &
        ErrMsg_c=errmsg_c)
end subroutine w_fast_start

subroutine w_fast_update(iturb, numinputs_c, numoutputs_c, inputary, outputary, errstat_c, errmsg_c, n0, n1, n2)
    use fast_data, only: fast_update
    implicit none
    
    integer(4) :: iturb
    integer(4) :: numinputs_c
    integer(4) :: numoutputs_c
    real(8), dimension(n0) :: inputary
    real(8), dimension(n1) :: outputary
    integer(4) :: errstat_c
    character(1024), dimension(n2) :: errmsg_c
    integer :: n0
    !f2py intent(hide), depend(inputary) :: n0 = shape(inputary,0)
    integer :: n1
    !f2py intent(hide), depend(outputary) :: n1 = shape(outputary,0)
    integer :: n2
    !f2py intent(hide), depend(errmsg_c) :: n2 = shape(errmsg_c,0)
    call fast_update(iTurb=iturb, NumInputs_c=numinputs_c, NumOutputs_c=numoutputs_c, InputAry=inputary, OutputAry=outputary, ErrStat_c=errstat_c, &
        ErrMsg_c=errmsg_c)
end subroutine w_fast_update

subroutine w_fast_setexternalinputs(iturb, numinputs_c, inputary, m_fast, n0)
    use fast_data, only: fast_setexternalinputs
    use fast_types, only: type_fast_miscvartype=>fast_miscvartype
    implicit none
    
    type fast_miscvartype_ptr_type
        type(type_fast_miscvartype), pointer :: p => NULL()
    end type fast_miscvartype_ptr_type
    integer(4) :: iturb
    integer(4) :: numinputs_c
    real(8), dimension(n0) :: inputary
    type(fast_miscvartype_ptr_type) :: m_fast_ptr
    integer, intent(in), dimension(2) :: m_fast
    integer :: n0
    !f2py intent(hide), depend(inputary) :: n0 = shape(inputary,0)
    m_fast_ptr = transfer(m_fast, m_fast_ptr)
    call fast_setexternalinputs(iTurb=iturb, NumInputs_c=numinputs_c, InputAry=inputary, m_FAST=m_fast_ptr%p)
end subroutine w_fast_setexternalinputs

subroutine w_fast_end(iturb, stoptheprogram)
    use fast_data, only: fast_end
    implicit none
    
    integer(4) :: iturb
    logical(1), intent(in) :: stoptheprogram
    call fast_end(iTurb=iturb, StopTheProgram=stoptheprogram)
end subroutine w_fast_end

subroutine w_fast_createcheckpoint(iturb, checkpointrootname_c, errstat_c, errmsg_c, n0, n1)
    use fast_data, only: fast_createcheckpoint
    implicit none
    
    integer(4) :: iturb
    character(1024), dimension(n0) :: checkpointrootname_c
    integer(4) :: errstat_c
    character(1024), dimension(n1) :: errmsg_c
    integer :: n0
    !f2py intent(hide), depend(checkpointrootname_c) :: n0 = shape(checkpointrootname_c,0)
    integer :: n1
    !f2py intent(hide), depend(errmsg_c) :: n1 = shape(errmsg_c,0)
    call fast_createcheckpoint(iTurb=iturb, CheckpointRootName_c=checkpointrootname_c, ErrStat_c=errstat_c, ErrMsg_c=errmsg_c)
end subroutine w_fast_createcheckpoint

subroutine w_fast_restart(iturb, checkpointrootname_c, aborterrlev_c, numouts_c, dt_c, n_t_global_c, errstat_c, errmsg_c, n0, n1)
    use fast_data, only: fast_restart
    implicit none
    
    integer(4) :: iturb
    character(1024), dimension(n0) :: checkpointrootname_c
    integer(4) :: aborterrlev_c
    integer(4) :: numouts_c
    real(8) :: dt_c
    integer(4) :: n_t_global_c
    integer(4) :: errstat_c
    character(1024), dimension(n1) :: errmsg_c
    integer :: n0
    !f2py intent(hide), depend(checkpointrootname_c) :: n0 = shape(checkpointrootname_c,0)
    integer :: n1
    !f2py intent(hide), depend(errmsg_c) :: n1 = shape(errmsg_c,0)
    call fast_restart(iTurb=iturb, CheckpointRootName_c=checkpointrootname_c, AbortErrLev_c=aborterrlev_c, NumOuts_c=numouts_c, dt_c=dt_c, &
        n_t_global_c=n_t_global_c, ErrStat_c=errstat_c, ErrMsg_c=errmsg_c)
end subroutine w_fast_restart

subroutine w_fast_opfm_solution0(iturb, errstat_c, errmsg_c, n0)
    use fast_data, only: fast_opfm_solution0
    implicit none
    
    integer(4) :: iturb
    integer(4) :: errstat_c
    character(1024), dimension(n0) :: errmsg_c
    integer :: n0
    !f2py intent(hide), depend(errmsg_c) :: n0 = shape(errmsg_c,0)
    call fast_opfm_solution0(iTurb=iturb, ErrStat_c=errstat_c, ErrMsg_c=errmsg_c)
end subroutine w_fast_opfm_solution0

subroutine w_fast_opfm_step(iturb, errstat_c, errmsg_c, n0)
    use fast_data, only: fast_opfm_step
    implicit none
    
    integer(4) :: iturb
    integer(4) :: errstat_c
    character(1024), dimension(n0) :: errmsg_c
    integer :: n0
    !f2py intent(hide), depend(errmsg_c) :: n0 = shape(errmsg_c,0)
    call fast_opfm_step(iTurb=iturb, ErrStat_c=errstat_c, ErrMsg_c=errmsg_c)
end subroutine w_fast_opfm_step

subroutine w_fast_data__get__t_initial(w_t_initial)
    use fast_data, only: fast_data_t_initial => t_initial
    implicit none
    real(8), intent(out) :: w_t_initial
    
    w_t_initial = fast_data_t_initial
end subroutine w_fast_data__get__t_initial

subroutine w_fast_data__get__NumTurbines(w_NumTurbines)
    use fast_data, only: fast_data_NumTurbines => NumTurbines
    implicit none
    integer(4), intent(out) :: w_NumTurbines
    
    w_NumTurbines = fast_data_NumTurbines
end subroutine w_fast_data__get__NumTurbines

subroutine w_fast_data__set__NumTurbines(w_NumTurbines)
    use fast_data, only: fast_data_NumTurbines => NumTurbines
    implicit none
    integer(4), intent(in) :: w_NumTurbines
    
    fast_data_NumTurbines = w_NumTurbines
end subroutine w_fast_data__set__NumTurbines

subroutine w_fast_data__get__IntfStrLen(w_IntfStrLen)
    use fast_data, only: fast_data_IntfStrLen => IntfStrLen
    implicit none
    integer, intent(out) :: w_IntfStrLen
    
    w_IntfStrLen = fast_data_IntfStrLen
end subroutine w_fast_data__get__IntfStrLen

subroutine w_fast_data__get__MAXOUTPUTS(w_MAXOUTPUTS)
    use fast_data, only: fast_data_MAXOUTPUTS => MAXOUTPUTS
    implicit none
    integer(4), intent(out) :: w_MAXOUTPUTS
    
    w_MAXOUTPUTS = fast_data_MAXOUTPUTS
end subroutine w_fast_data__get__MAXOUTPUTS

subroutine w_fast_data__get__MAXInitINPUTS(w_MAXInitINPUTS)
    use fast_data, only: fast_data_MAXInitINPUTS => MAXInitINPUTS
    implicit none
    integer(4), intent(out) :: w_MAXInitINPUTS
    
    w_MAXInitINPUTS = fast_data_MAXInitINPUTS
end subroutine w_fast_data__get__MAXInitINPUTS

subroutine w_fast_data__get__NumFixedInputs(w_NumFixedInputs)
    use fast_data, only: fast_data_NumFixedInputs => NumFixedInputs
    implicit none
    integer(4), intent(out) :: w_NumFixedInputs
    
    w_NumFixedInputs = fast_data_NumFixedInputs
end subroutine w_fast_data__get__NumFixedInputs

subroutine w_fast_data__get__n_t_global(w_n_t_global)
    use fast_data, only: fast_data_n_t_global => n_t_global
    implicit none
    integer(4), intent(out) :: w_n_t_global
    
    w_n_t_global = fast_data_n_t_global
end subroutine w_fast_data__get__n_t_global

subroutine w_fast_data__set__n_t_global(w_n_t_global)
    use fast_data, only: fast_data_n_t_global => n_t_global
    implicit none
    integer(4), intent(in) :: w_n_t_global
    
    fast_data_n_t_global = w_n_t_global
end subroutine w_fast_data__set__n_t_global

subroutine w_fast_data__get__ErrStat(w_ErrStat)
    use fast_data, only: fast_data_ErrStat => ErrStat
    implicit none
    integer(4), intent(out) :: w_ErrStat
    
    w_ErrStat = fast_data_ErrStat
end subroutine w_fast_data__get__ErrStat

subroutine w_fast_data__set__ErrStat(w_ErrStat)
    use fast_data, only: fast_data_ErrStat => ErrStat
    implicit none
    integer(4), intent(in) :: w_ErrStat
    
    fast_data_ErrStat = w_ErrStat
end subroutine w_fast_data__set__ErrStat

subroutine w_fast_data__get__ErrMsg(w_ErrMsg)
    use fast_data, only: fast_data_ErrMsg => ErrMsg
    implicit none
    character(1024), intent(out) :: w_ErrMsg
    
    w_ErrMsg = fast_data_ErrMsg
end subroutine w_fast_data__get__ErrMsg

subroutine w_fast_data__set__ErrMsg(w_ErrMsg)
    use fast_data, only: fast_data_ErrMsg => ErrMsg
    implicit none
    character(1024), intent(in) :: w_ErrMsg
    
    fast_data_ErrMsg = w_ErrMsg
end subroutine w_fast_data__set__ErrMsg

! End of module fast_data defined in file F:/cyPHM/openfast/modules-local/fast-library/src/FAST_Library.f90

