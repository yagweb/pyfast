! Module servodyn_types defined in file F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90

subroutine w_srvd_initinputtype__get__InputFile(this, w_InputFile)
    use servodyn_types, only: type_srvd_initinputtype=>srvd_initinputtype
    implicit none
    type srvd_initinputtype_ptr_type
        type(type_srvd_initinputtype), pointer :: p => NULL()
    end type srvd_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_InputFile
    
    this_ptr = transfer(this, this_ptr)
    w_InputFile = this_ptr%p%InputFile
end subroutine w_srvd_initinputtype__get__InputFile

subroutine w_srvd_initinputtype__set__InputFile(this, w_InputFile)
    use servodyn_types, only: type_srvd_initinputtype=>srvd_initinputtype
    implicit none
    type srvd_initinputtype_ptr_type
        type(type_srvd_initinputtype), pointer :: p => NULL()
    end type srvd_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_InputFile
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%InputFile = w_InputFile
end subroutine w_srvd_initinputtype__set__InputFile

subroutine w_srvd_initinputtype_initialise(this)
    use servodyn_types, only: type_srvd_initinputtype=>srvd_initinputtype
    implicit none
    
    type srvd_initinputtype_ptr_type
        type(type_srvd_initinputtype), pointer :: p => NULL()
    end type srvd_initinputtype_ptr_type
    type(srvd_initinputtype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_srvd_initinputtype_initialise

subroutine w_srvd_initinputtype_finalise(this)
    use servodyn_types, only: type_srvd_initinputtype=>srvd_initinputtype
    implicit none
    
    type srvd_initinputtype_ptr_type
        type(type_srvd_initinputtype), pointer :: p => NULL()
    end type srvd_initinputtype_ptr_type
    type(srvd_initinputtype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_srvd_initinputtype_finalise

subroutine w_srvd_inputfile__get__DT(this, w_DT)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_DT
    
    this_ptr = transfer(this, this_ptr)
    w_DT = this_ptr%p%DT
end subroutine w_srvd_inputfile__get__DT

subroutine w_srvd_inputfile__set__DT(this, w_DT)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_DT
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%DT = w_DT
end subroutine w_srvd_inputfile__set__DT

subroutine w_srvd_inputfile__get__PCMode(this, w_PCMode)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_PCMode
    
    this_ptr = transfer(this, this_ptr)
    w_PCMode = this_ptr%p%PCMode
end subroutine w_srvd_inputfile__get__PCMode

subroutine w_srvd_inputfile__set__PCMode(this, w_PCMode)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_PCMode
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%PCMode = w_PCMode
end subroutine w_srvd_inputfile__set__PCMode

subroutine w_srvd_inputfile__get__TPCOn(this, w_TPCOn)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_TPCOn
    
    this_ptr = transfer(this, this_ptr)
    w_TPCOn = this_ptr%p%TPCOn
end subroutine w_srvd_inputfile__get__TPCOn

subroutine w_srvd_inputfile__set__TPCOn(this, w_TPCOn)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_TPCOn
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TPCOn = w_TPCOn
end subroutine w_srvd_inputfile__set__TPCOn

subroutine w_srvd_inputfile__array__tpitmans(this, nd, dtype, dshape, dloc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in) :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    dshape(1:1) = shape(this_ptr%p%tpitmans)
    dloc = loc(this_ptr%p%tpitmans)
end subroutine w_srvd_inputfile__array__tpitmans

subroutine w_srvd_inputfile__array__pitmanrat(this, nd, dtype, dshape, dloc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in) :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 11
    this_ptr = transfer(this, this_ptr)
    dshape(1:1) = shape(this_ptr%p%pitmanrat)
    dloc = loc(this_ptr%p%pitmanrat)
end subroutine w_srvd_inputfile__array__pitmanrat

subroutine w_srvd_inputfile__array__blpitchf(this, nd, dtype, dshape, dloc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in) :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 11
    this_ptr = transfer(this, this_ptr)
    dshape(1:1) = shape(this_ptr%p%blpitchf)
    dloc = loc(this_ptr%p%blpitchf)
end subroutine w_srvd_inputfile__array__blpitchf

subroutine w_srvd_inputfile__get__VSContrl(this, w_VSContrl)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_VSContrl
    
    this_ptr = transfer(this, this_ptr)
    w_VSContrl = this_ptr%p%VSContrl
end subroutine w_srvd_inputfile__get__VSContrl

subroutine w_srvd_inputfile__set__VSContrl(this, w_VSContrl)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_VSContrl
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%VSContrl = w_VSContrl
end subroutine w_srvd_inputfile__set__VSContrl

subroutine w_srvd_inputfile__get__GenModel(this, w_GenModel)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_GenModel
    
    this_ptr = transfer(this, this_ptr)
    w_GenModel = this_ptr%p%GenModel
end subroutine w_srvd_inputfile__get__GenModel

subroutine w_srvd_inputfile__set__GenModel(this, w_GenModel)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_GenModel
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%GenModel = w_GenModel
end subroutine w_srvd_inputfile__set__GenModel

subroutine w_srvd_inputfile__get__GenEff(this, w_GenEff)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_GenEff
    
    this_ptr = transfer(this, this_ptr)
    w_GenEff = this_ptr%p%GenEff
end subroutine w_srvd_inputfile__get__GenEff

subroutine w_srvd_inputfile__set__GenEff(this, w_GenEff)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_GenEff
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%GenEff = w_GenEff
end subroutine w_srvd_inputfile__set__GenEff

subroutine w_srvd_inputfile__get__GenTiStr(this, w_GenTiStr)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(out) :: w_GenTiStr
    
    this_ptr = transfer(this, this_ptr)
    w_GenTiStr = this_ptr%p%GenTiStr
end subroutine w_srvd_inputfile__get__GenTiStr

subroutine w_srvd_inputfile__set__GenTiStr(this, w_GenTiStr)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(in) :: w_GenTiStr
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%GenTiStr = w_GenTiStr
end subroutine w_srvd_inputfile__set__GenTiStr

subroutine w_srvd_inputfile__get__GenTiStp(this, w_GenTiStp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(out) :: w_GenTiStp
    
    this_ptr = transfer(this, this_ptr)
    w_GenTiStp = this_ptr%p%GenTiStp
end subroutine w_srvd_inputfile__get__GenTiStp

subroutine w_srvd_inputfile__set__GenTiStp(this, w_GenTiStp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(in) :: w_GenTiStp
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%GenTiStp = w_GenTiStp
end subroutine w_srvd_inputfile__set__GenTiStp

subroutine w_srvd_inputfile__get__SpdGenOn(this, w_SpdGenOn)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_SpdGenOn
    
    this_ptr = transfer(this, this_ptr)
    w_SpdGenOn = this_ptr%p%SpdGenOn
end subroutine w_srvd_inputfile__get__SpdGenOn

subroutine w_srvd_inputfile__set__SpdGenOn(this, w_SpdGenOn)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_SpdGenOn
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%SpdGenOn = w_SpdGenOn
end subroutine w_srvd_inputfile__set__SpdGenOn

subroutine w_srvd_inputfile__get__TimGenOn(this, w_TimGenOn)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_TimGenOn
    
    this_ptr = transfer(this, this_ptr)
    w_TimGenOn = this_ptr%p%TimGenOn
end subroutine w_srvd_inputfile__get__TimGenOn

subroutine w_srvd_inputfile__set__TimGenOn(this, w_TimGenOn)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_TimGenOn
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TimGenOn = w_TimGenOn
end subroutine w_srvd_inputfile__set__TimGenOn

subroutine w_srvd_inputfile__get__TimGenOf(this, w_TimGenOf)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_TimGenOf
    
    this_ptr = transfer(this, this_ptr)
    w_TimGenOf = this_ptr%p%TimGenOf
end subroutine w_srvd_inputfile__get__TimGenOf

subroutine w_srvd_inputfile__set__TimGenOf(this, w_TimGenOf)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_TimGenOf
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TimGenOf = w_TimGenOf
end subroutine w_srvd_inputfile__set__TimGenOf

subroutine w_srvd_inputfile__get__VS_RtGnSp(this, w_VS_RtGnSp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_VS_RtGnSp
    
    this_ptr = transfer(this, this_ptr)
    w_VS_RtGnSp = this_ptr%p%VS_RtGnSp
end subroutine w_srvd_inputfile__get__VS_RtGnSp

subroutine w_srvd_inputfile__set__VS_RtGnSp(this, w_VS_RtGnSp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_VS_RtGnSp
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%VS_RtGnSp = w_VS_RtGnSp
end subroutine w_srvd_inputfile__set__VS_RtGnSp

subroutine w_srvd_inputfile__get__VS_RtTq(this, w_VS_RtTq)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_VS_RtTq
    
    this_ptr = transfer(this, this_ptr)
    w_VS_RtTq = this_ptr%p%VS_RtTq
end subroutine w_srvd_inputfile__get__VS_RtTq

subroutine w_srvd_inputfile__set__VS_RtTq(this, w_VS_RtTq)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_VS_RtTq
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%VS_RtTq = w_VS_RtTq
end subroutine w_srvd_inputfile__set__VS_RtTq

subroutine w_srvd_inputfile__get__VS_Rgn2K(this, w_VS_Rgn2K)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_VS_Rgn2K
    
    this_ptr = transfer(this, this_ptr)
    w_VS_Rgn2K = this_ptr%p%VS_Rgn2K
end subroutine w_srvd_inputfile__get__VS_Rgn2K

subroutine w_srvd_inputfile__set__VS_Rgn2K(this, w_VS_Rgn2K)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_VS_Rgn2K
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%VS_Rgn2K = w_VS_Rgn2K
end subroutine w_srvd_inputfile__set__VS_Rgn2K

subroutine w_srvd_inputfile__get__VS_SlPc(this, w_VS_SlPc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_VS_SlPc
    
    this_ptr = transfer(this, this_ptr)
    w_VS_SlPc = this_ptr%p%VS_SlPc
end subroutine w_srvd_inputfile__get__VS_SlPc

subroutine w_srvd_inputfile__set__VS_SlPc(this, w_VS_SlPc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_VS_SlPc
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%VS_SlPc = w_VS_SlPc
end subroutine w_srvd_inputfile__set__VS_SlPc

subroutine w_srvd_inputfile__get__SIG_SlPc(this, w_SIG_SlPc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_SIG_SlPc
    
    this_ptr = transfer(this, this_ptr)
    w_SIG_SlPc = this_ptr%p%SIG_SlPc
end subroutine w_srvd_inputfile__get__SIG_SlPc

subroutine w_srvd_inputfile__set__SIG_SlPc(this, w_SIG_SlPc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_SIG_SlPc
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%SIG_SlPc = w_SIG_SlPc
end subroutine w_srvd_inputfile__set__SIG_SlPc

subroutine w_srvd_inputfile__get__SIG_SySp(this, w_SIG_SySp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_SIG_SySp
    
    this_ptr = transfer(this, this_ptr)
    w_SIG_SySp = this_ptr%p%SIG_SySp
end subroutine w_srvd_inputfile__get__SIG_SySp

subroutine w_srvd_inputfile__set__SIG_SySp(this, w_SIG_SySp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_SIG_SySp
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%SIG_SySp = w_SIG_SySp
end subroutine w_srvd_inputfile__set__SIG_SySp

subroutine w_srvd_inputfile__get__SIG_RtTq(this, w_SIG_RtTq)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_SIG_RtTq
    
    this_ptr = transfer(this, this_ptr)
    w_SIG_RtTq = this_ptr%p%SIG_RtTq
end subroutine w_srvd_inputfile__get__SIG_RtTq

subroutine w_srvd_inputfile__set__SIG_RtTq(this, w_SIG_RtTq)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_SIG_RtTq
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%SIG_RtTq = w_SIG_RtTq
end subroutine w_srvd_inputfile__set__SIG_RtTq

subroutine w_srvd_inputfile__get__SIG_PORt(this, w_SIG_PORt)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_SIG_PORt
    
    this_ptr = transfer(this, this_ptr)
    w_SIG_PORt = this_ptr%p%SIG_PORt
end subroutine w_srvd_inputfile__get__SIG_PORt

subroutine w_srvd_inputfile__set__SIG_PORt(this, w_SIG_PORt)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_SIG_PORt
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%SIG_PORt = w_SIG_PORt
end subroutine w_srvd_inputfile__set__SIG_PORt

subroutine w_srvd_inputfile__get__TEC_Freq(this, w_TEC_Freq)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_TEC_Freq
    
    this_ptr = transfer(this, this_ptr)
    w_TEC_Freq = this_ptr%p%TEC_Freq
end subroutine w_srvd_inputfile__get__TEC_Freq

subroutine w_srvd_inputfile__set__TEC_Freq(this, w_TEC_Freq)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_TEC_Freq
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TEC_Freq = w_TEC_Freq
end subroutine w_srvd_inputfile__set__TEC_Freq

subroutine w_srvd_inputfile__get__TEC_NPol(this, w_TEC_NPol)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_TEC_NPol
    
    this_ptr = transfer(this, this_ptr)
    w_TEC_NPol = this_ptr%p%TEC_NPol
end subroutine w_srvd_inputfile__get__TEC_NPol

subroutine w_srvd_inputfile__set__TEC_NPol(this, w_TEC_NPol)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_TEC_NPol
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TEC_NPol = w_TEC_NPol
end subroutine w_srvd_inputfile__set__TEC_NPol

subroutine w_srvd_inputfile__get__TEC_SRes(this, w_TEC_SRes)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_TEC_SRes
    
    this_ptr = transfer(this, this_ptr)
    w_TEC_SRes = this_ptr%p%TEC_SRes
end subroutine w_srvd_inputfile__get__TEC_SRes

subroutine w_srvd_inputfile__set__TEC_SRes(this, w_TEC_SRes)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_TEC_SRes
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TEC_SRes = w_TEC_SRes
end subroutine w_srvd_inputfile__set__TEC_SRes

subroutine w_srvd_inputfile__get__TEC_RRes(this, w_TEC_RRes)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_TEC_RRes
    
    this_ptr = transfer(this, this_ptr)
    w_TEC_RRes = this_ptr%p%TEC_RRes
end subroutine w_srvd_inputfile__get__TEC_RRes

subroutine w_srvd_inputfile__set__TEC_RRes(this, w_TEC_RRes)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_TEC_RRes
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TEC_RRes = w_TEC_RRes
end subroutine w_srvd_inputfile__set__TEC_RRes

subroutine w_srvd_inputfile__get__TEC_VLL(this, w_TEC_VLL)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_TEC_VLL
    
    this_ptr = transfer(this, this_ptr)
    w_TEC_VLL = this_ptr%p%TEC_VLL
end subroutine w_srvd_inputfile__get__TEC_VLL

subroutine w_srvd_inputfile__set__TEC_VLL(this, w_TEC_VLL)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_TEC_VLL
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TEC_VLL = w_TEC_VLL
end subroutine w_srvd_inputfile__set__TEC_VLL

subroutine w_srvd_inputfile__get__TEC_SLR(this, w_TEC_SLR)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_TEC_SLR
    
    this_ptr = transfer(this, this_ptr)
    w_TEC_SLR = this_ptr%p%TEC_SLR
end subroutine w_srvd_inputfile__get__TEC_SLR

subroutine w_srvd_inputfile__set__TEC_SLR(this, w_TEC_SLR)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_TEC_SLR
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TEC_SLR = w_TEC_SLR
end subroutine w_srvd_inputfile__set__TEC_SLR

subroutine w_srvd_inputfile__get__TEC_RLR(this, w_TEC_RLR)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_TEC_RLR
    
    this_ptr = transfer(this, this_ptr)
    w_TEC_RLR = this_ptr%p%TEC_RLR
end subroutine w_srvd_inputfile__get__TEC_RLR

subroutine w_srvd_inputfile__set__TEC_RLR(this, w_TEC_RLR)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_TEC_RLR
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TEC_RLR = w_TEC_RLR
end subroutine w_srvd_inputfile__set__TEC_RLR

subroutine w_srvd_inputfile__get__TEC_MR(this, w_TEC_MR)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_TEC_MR
    
    this_ptr = transfer(this, this_ptr)
    w_TEC_MR = this_ptr%p%TEC_MR
end subroutine w_srvd_inputfile__get__TEC_MR

subroutine w_srvd_inputfile__set__TEC_MR(this, w_TEC_MR)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_TEC_MR
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TEC_MR = w_TEC_MR
end subroutine w_srvd_inputfile__set__TEC_MR

subroutine w_srvd_inputfile__get__HSSBrMode(this, w_HSSBrMode)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_HSSBrMode
    
    this_ptr = transfer(this, this_ptr)
    w_HSSBrMode = this_ptr%p%HSSBrMode
end subroutine w_srvd_inputfile__get__HSSBrMode

subroutine w_srvd_inputfile__set__HSSBrMode(this, w_HSSBrMode)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_HSSBrMode
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%HSSBrMode = w_HSSBrMode
end subroutine w_srvd_inputfile__set__HSSBrMode

subroutine w_srvd_inputfile__get__THSSBrDp(this, w_THSSBrDp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_THSSBrDp
    
    this_ptr = transfer(this, this_ptr)
    w_THSSBrDp = this_ptr%p%THSSBrDp
end subroutine w_srvd_inputfile__get__THSSBrDp

subroutine w_srvd_inputfile__set__THSSBrDp(this, w_THSSBrDp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_THSSBrDp
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%THSSBrDp = w_THSSBrDp
end subroutine w_srvd_inputfile__set__THSSBrDp

subroutine w_srvd_inputfile__get__HSSBrDT(this, w_HSSBrDT)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_HSSBrDT
    
    this_ptr = transfer(this, this_ptr)
    w_HSSBrDT = this_ptr%p%HSSBrDT
end subroutine w_srvd_inputfile__get__HSSBrDT

subroutine w_srvd_inputfile__set__HSSBrDT(this, w_HSSBrDT)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_HSSBrDT
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%HSSBrDT = w_HSSBrDT
end subroutine w_srvd_inputfile__set__HSSBrDT

subroutine w_srvd_inputfile__get__HSSBrTqF(this, w_HSSBrTqF)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_HSSBrTqF
    
    this_ptr = transfer(this, this_ptr)
    w_HSSBrTqF = this_ptr%p%HSSBrTqF
end subroutine w_srvd_inputfile__get__HSSBrTqF

subroutine w_srvd_inputfile__set__HSSBrTqF(this, w_HSSBrTqF)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_HSSBrTqF
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%HSSBrTqF = w_HSSBrTqF
end subroutine w_srvd_inputfile__set__HSSBrTqF

subroutine w_srvd_inputfile__get__YCMode(this, w_YCMode)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_YCMode
    
    this_ptr = transfer(this, this_ptr)
    w_YCMode = this_ptr%p%YCMode
end subroutine w_srvd_inputfile__get__YCMode

subroutine w_srvd_inputfile__set__YCMode(this, w_YCMode)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_YCMode
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%YCMode = w_YCMode
end subroutine w_srvd_inputfile__set__YCMode

subroutine w_srvd_inputfile__get__TYCOn(this, w_TYCOn)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_TYCOn
    
    this_ptr = transfer(this, this_ptr)
    w_TYCOn = this_ptr%p%TYCOn
end subroutine w_srvd_inputfile__get__TYCOn

subroutine w_srvd_inputfile__set__TYCOn(this, w_TYCOn)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_TYCOn
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TYCOn = w_TYCOn
end subroutine w_srvd_inputfile__set__TYCOn

subroutine w_srvd_inputfile__get__YawNeut(this, w_YawNeut)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_YawNeut
    
    this_ptr = transfer(this, this_ptr)
    w_YawNeut = this_ptr%p%YawNeut
end subroutine w_srvd_inputfile__get__YawNeut

subroutine w_srvd_inputfile__set__YawNeut(this, w_YawNeut)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_YawNeut
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%YawNeut = w_YawNeut
end subroutine w_srvd_inputfile__set__YawNeut

subroutine w_srvd_inputfile__get__YawSpr(this, w_YawSpr)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_YawSpr
    
    this_ptr = transfer(this, this_ptr)
    w_YawSpr = this_ptr%p%YawSpr
end subroutine w_srvd_inputfile__get__YawSpr

subroutine w_srvd_inputfile__set__YawSpr(this, w_YawSpr)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_YawSpr
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%YawSpr = w_YawSpr
end subroutine w_srvd_inputfile__set__YawSpr

subroutine w_srvd_inputfile__get__YawDamp(this, w_YawDamp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_YawDamp
    
    this_ptr = transfer(this, this_ptr)
    w_YawDamp = this_ptr%p%YawDamp
end subroutine w_srvd_inputfile__get__YawDamp

subroutine w_srvd_inputfile__set__YawDamp(this, w_YawDamp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_YawDamp
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%YawDamp = w_YawDamp
end subroutine w_srvd_inputfile__set__YawDamp

subroutine w_srvd_inputfile__get__TYawManS(this, w_TYawManS)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_TYawManS
    
    this_ptr = transfer(this, this_ptr)
    w_TYawManS = this_ptr%p%TYawManS
end subroutine w_srvd_inputfile__get__TYawManS

subroutine w_srvd_inputfile__set__TYawManS(this, w_TYawManS)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_TYawManS
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TYawManS = w_TYawManS
end subroutine w_srvd_inputfile__set__TYawManS

subroutine w_srvd_inputfile__get__YawManRat(this, w_YawManRat)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_YawManRat
    
    this_ptr = transfer(this, this_ptr)
    w_YawManRat = this_ptr%p%YawManRat
end subroutine w_srvd_inputfile__get__YawManRat

subroutine w_srvd_inputfile__set__YawManRat(this, w_YawManRat)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_YawManRat
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%YawManRat = w_YawManRat
end subroutine w_srvd_inputfile__set__YawManRat

subroutine w_srvd_inputfile__get__NacYawF(this, w_NacYawF)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_NacYawF
    
    this_ptr = transfer(this, this_ptr)
    w_NacYawF = this_ptr%p%NacYawF
end subroutine w_srvd_inputfile__get__NacYawF

subroutine w_srvd_inputfile__set__NacYawF(this, w_NacYawF)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_NacYawF
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%NacYawF = w_NacYawF
end subroutine w_srvd_inputfile__set__NacYawF

subroutine w_srvd_inputfile__get__SumPrint(this, w_SumPrint)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(out) :: w_SumPrint
    
    this_ptr = transfer(this, this_ptr)
    w_SumPrint = this_ptr%p%SumPrint
end subroutine w_srvd_inputfile__get__SumPrint

subroutine w_srvd_inputfile__set__SumPrint(this, w_SumPrint)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(in) :: w_SumPrint
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%SumPrint = w_SumPrint
end subroutine w_srvd_inputfile__set__SumPrint

subroutine w_srvd_inputfile__get__OutFile(this, w_OutFile)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_OutFile
    
    this_ptr = transfer(this, this_ptr)
    w_OutFile = this_ptr%p%OutFile
end subroutine w_srvd_inputfile__get__OutFile

subroutine w_srvd_inputfile__set__OutFile(this, w_OutFile)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_OutFile
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%OutFile = w_OutFile
end subroutine w_srvd_inputfile__set__OutFile

subroutine w_srvd_inputfile__get__TabDelim(this, w_TabDelim)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(out) :: w_TabDelim
    
    this_ptr = transfer(this, this_ptr)
    w_TabDelim = this_ptr%p%TabDelim
end subroutine w_srvd_inputfile__get__TabDelim

subroutine w_srvd_inputfile__set__TabDelim(this, w_TabDelim)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(in) :: w_TabDelim
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TabDelim = w_TabDelim
end subroutine w_srvd_inputfile__set__TabDelim

subroutine w_srvd_inputfile__get__OutFmt(this, w_OutFmt)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(20), intent(out) :: w_OutFmt
    
    this_ptr = transfer(this, this_ptr)
    w_OutFmt = this_ptr%p%OutFmt
end subroutine w_srvd_inputfile__get__OutFmt

subroutine w_srvd_inputfile__set__OutFmt(this, w_OutFmt)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(20), intent(in) :: w_OutFmt
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%OutFmt = w_OutFmt
end subroutine w_srvd_inputfile__set__OutFmt

subroutine w_srvd_inputfile__get__Tstart(this, w_Tstart)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_Tstart
    
    this_ptr = transfer(this, this_ptr)
    w_Tstart = this_ptr%p%Tstart
end subroutine w_srvd_inputfile__get__Tstart

subroutine w_srvd_inputfile__set__Tstart(this, w_Tstart)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_Tstart
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Tstart = w_Tstart
end subroutine w_srvd_inputfile__set__Tstart

subroutine w_srvd_inputfile__get__NumOuts(this, w_NumOuts)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_NumOuts
    
    this_ptr = transfer(this, this_ptr)
    w_NumOuts = this_ptr%p%NumOuts
end subroutine w_srvd_inputfile__get__NumOuts

subroutine w_srvd_inputfile__set__NumOuts(this, w_NumOuts)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_NumOuts
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%NumOuts = w_NumOuts
end subroutine w_srvd_inputfile__set__NumOuts

subroutine w_srvd_inputfile__array__outlist(this, nd, dtype, dshape, dloc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in) :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 2
    dtype = 2
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%outlist)) then
        dshape(1:2) = (/len(this_ptr%p%outlist(1)), shape(this_ptr%p%outlist)/)
        dloc = loc(this_ptr%p%outlist)
    else
        dloc = 0
    end if
end subroutine w_srvd_inputfile__array__outlist

subroutine w_srvd_inputfile__get__DLL_FileName(this, w_DLL_FileName)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_DLL_FileName
    
    this_ptr = transfer(this, this_ptr)
    w_DLL_FileName = this_ptr%p%DLL_FileName
end subroutine w_srvd_inputfile__get__DLL_FileName

subroutine w_srvd_inputfile__set__DLL_FileName(this, w_DLL_FileName)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_DLL_FileName
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%DLL_FileName = w_DLL_FileName
end subroutine w_srvd_inputfile__set__DLL_FileName

subroutine w_srvd_inputfile__get__DLL_ProcName(this, w_DLL_ProcName)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_DLL_ProcName
    
    this_ptr = transfer(this, this_ptr)
    w_DLL_ProcName = this_ptr%p%DLL_ProcName
end subroutine w_srvd_inputfile__get__DLL_ProcName

subroutine w_srvd_inputfile__set__DLL_ProcName(this, w_DLL_ProcName)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_DLL_ProcName
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%DLL_ProcName = w_DLL_ProcName
end subroutine w_srvd_inputfile__set__DLL_ProcName

subroutine w_srvd_inputfile__get__DLL_InFile(this, w_DLL_InFile)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_DLL_InFile
    
    this_ptr = transfer(this, this_ptr)
    w_DLL_InFile = this_ptr%p%DLL_InFile
end subroutine w_srvd_inputfile__get__DLL_InFile

subroutine w_srvd_inputfile__set__DLL_InFile(this, w_DLL_InFile)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_DLL_InFile
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%DLL_InFile = w_DLL_InFile
end subroutine w_srvd_inputfile__set__DLL_InFile

subroutine w_srvd_inputfile__get__DLL_DT(this, w_DLL_DT)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_DLL_DT
    
    this_ptr = transfer(this, this_ptr)
    w_DLL_DT = this_ptr%p%DLL_DT
end subroutine w_srvd_inputfile__get__DLL_DT

subroutine w_srvd_inputfile__set__DLL_DT(this, w_DLL_DT)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_DLL_DT
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%DLL_DT = w_DLL_DT
end subroutine w_srvd_inputfile__set__DLL_DT

subroutine w_srvd_inputfile__get__DLL_Ramp(this, w_DLL_Ramp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(out) :: w_DLL_Ramp
    
    this_ptr = transfer(this, this_ptr)
    w_DLL_Ramp = this_ptr%p%DLL_Ramp
end subroutine w_srvd_inputfile__get__DLL_Ramp

subroutine w_srvd_inputfile__set__DLL_Ramp(this, w_DLL_Ramp)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(in) :: w_DLL_Ramp
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%DLL_Ramp = w_DLL_Ramp
end subroutine w_srvd_inputfile__set__DLL_Ramp

subroutine w_srvd_inputfile__get__BPCutoff(this, w_BPCutoff)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_BPCutoff
    
    this_ptr = transfer(this, this_ptr)
    w_BPCutoff = this_ptr%p%BPCutoff
end subroutine w_srvd_inputfile__get__BPCutoff

subroutine w_srvd_inputfile__set__BPCutoff(this, w_BPCutoff)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_BPCutoff
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%BPCutoff = w_BPCutoff
end subroutine w_srvd_inputfile__set__BPCutoff

subroutine w_srvd_inputfile__get__NacYaw_North(this, w_NacYaw_North)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_NacYaw_North
    
    this_ptr = transfer(this, this_ptr)
    w_NacYaw_North = this_ptr%p%NacYaw_North
end subroutine w_srvd_inputfile__get__NacYaw_North

subroutine w_srvd_inputfile__set__NacYaw_North(this, w_NacYaw_North)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_NacYaw_North
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%NacYaw_North = w_NacYaw_North
end subroutine w_srvd_inputfile__set__NacYaw_North

subroutine w_srvd_inputfile__get__Ptch_Cntrl(this, w_Ptch_Cntrl)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_Ptch_Cntrl
    
    this_ptr = transfer(this, this_ptr)
    w_Ptch_Cntrl = this_ptr%p%Ptch_Cntrl
end subroutine w_srvd_inputfile__get__Ptch_Cntrl

subroutine w_srvd_inputfile__set__Ptch_Cntrl(this, w_Ptch_Cntrl)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_Ptch_Cntrl
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Ptch_Cntrl = w_Ptch_Cntrl
end subroutine w_srvd_inputfile__set__Ptch_Cntrl

subroutine w_srvd_inputfile__get__Ptch_SetPnt(this, w_Ptch_SetPnt)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_Ptch_SetPnt
    
    this_ptr = transfer(this, this_ptr)
    w_Ptch_SetPnt = this_ptr%p%Ptch_SetPnt
end subroutine w_srvd_inputfile__get__Ptch_SetPnt

subroutine w_srvd_inputfile__set__Ptch_SetPnt(this, w_Ptch_SetPnt)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_Ptch_SetPnt
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Ptch_SetPnt = w_Ptch_SetPnt
end subroutine w_srvd_inputfile__set__Ptch_SetPnt

subroutine w_srvd_inputfile__get__Ptch_Min(this, w_Ptch_Min)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_Ptch_Min
    
    this_ptr = transfer(this, this_ptr)
    w_Ptch_Min = this_ptr%p%Ptch_Min
end subroutine w_srvd_inputfile__get__Ptch_Min

subroutine w_srvd_inputfile__set__Ptch_Min(this, w_Ptch_Min)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_Ptch_Min
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Ptch_Min = w_Ptch_Min
end subroutine w_srvd_inputfile__set__Ptch_Min

subroutine w_srvd_inputfile__get__Ptch_Max(this, w_Ptch_Max)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_Ptch_Max
    
    this_ptr = transfer(this, this_ptr)
    w_Ptch_Max = this_ptr%p%Ptch_Max
end subroutine w_srvd_inputfile__get__Ptch_Max

subroutine w_srvd_inputfile__set__Ptch_Max(this, w_Ptch_Max)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_Ptch_Max
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Ptch_Max = w_Ptch_Max
end subroutine w_srvd_inputfile__set__Ptch_Max

subroutine w_srvd_inputfile__get__PtchRate_Min(this, w_PtchRate_Min)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_PtchRate_Min
    
    this_ptr = transfer(this, this_ptr)
    w_PtchRate_Min = this_ptr%p%PtchRate_Min
end subroutine w_srvd_inputfile__get__PtchRate_Min

subroutine w_srvd_inputfile__set__PtchRate_Min(this, w_PtchRate_Min)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_PtchRate_Min
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%PtchRate_Min = w_PtchRate_Min
end subroutine w_srvd_inputfile__set__PtchRate_Min

subroutine w_srvd_inputfile__get__PtchRate_Max(this, w_PtchRate_Max)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_PtchRate_Max
    
    this_ptr = transfer(this, this_ptr)
    w_PtchRate_Max = this_ptr%p%PtchRate_Max
end subroutine w_srvd_inputfile__get__PtchRate_Max

subroutine w_srvd_inputfile__set__PtchRate_Max(this, w_PtchRate_Max)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_PtchRate_Max
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%PtchRate_Max = w_PtchRate_Max
end subroutine w_srvd_inputfile__set__PtchRate_Max

subroutine w_srvd_inputfile__get__Gain_OM(this, w_Gain_OM)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_Gain_OM
    
    this_ptr = transfer(this, this_ptr)
    w_Gain_OM = this_ptr%p%Gain_OM
end subroutine w_srvd_inputfile__get__Gain_OM

subroutine w_srvd_inputfile__set__Gain_OM(this, w_Gain_OM)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_Gain_OM
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Gain_OM = w_Gain_OM
end subroutine w_srvd_inputfile__set__Gain_OM

subroutine w_srvd_inputfile__get__GenSpd_MinOM(this, w_GenSpd_MinOM)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_GenSpd_MinOM
    
    this_ptr = transfer(this, this_ptr)
    w_GenSpd_MinOM = this_ptr%p%GenSpd_MinOM
end subroutine w_srvd_inputfile__get__GenSpd_MinOM

subroutine w_srvd_inputfile__set__GenSpd_MinOM(this, w_GenSpd_MinOM)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_GenSpd_MinOM
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%GenSpd_MinOM = w_GenSpd_MinOM
end subroutine w_srvd_inputfile__set__GenSpd_MinOM

subroutine w_srvd_inputfile__get__GenSpd_MaxOM(this, w_GenSpd_MaxOM)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_GenSpd_MaxOM
    
    this_ptr = transfer(this, this_ptr)
    w_GenSpd_MaxOM = this_ptr%p%GenSpd_MaxOM
end subroutine w_srvd_inputfile__get__GenSpd_MaxOM

subroutine w_srvd_inputfile__set__GenSpd_MaxOM(this, w_GenSpd_MaxOM)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_GenSpd_MaxOM
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%GenSpd_MaxOM = w_GenSpd_MaxOM
end subroutine w_srvd_inputfile__set__GenSpd_MaxOM

subroutine w_srvd_inputfile__get__GenSpd_Dem(this, w_GenSpd_Dem)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_GenSpd_Dem
    
    this_ptr = transfer(this, this_ptr)
    w_GenSpd_Dem = this_ptr%p%GenSpd_Dem
end subroutine w_srvd_inputfile__get__GenSpd_Dem

subroutine w_srvd_inputfile__set__GenSpd_Dem(this, w_GenSpd_Dem)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_GenSpd_Dem
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%GenSpd_Dem = w_GenSpd_Dem
end subroutine w_srvd_inputfile__set__GenSpd_Dem

subroutine w_srvd_inputfile__get__GenTrq_Dem(this, w_GenTrq_Dem)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_GenTrq_Dem
    
    this_ptr = transfer(this, this_ptr)
    w_GenTrq_Dem = this_ptr%p%GenTrq_Dem
end subroutine w_srvd_inputfile__get__GenTrq_Dem

subroutine w_srvd_inputfile__set__GenTrq_Dem(this, w_GenTrq_Dem)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_GenTrq_Dem
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%GenTrq_Dem = w_GenTrq_Dem
end subroutine w_srvd_inputfile__set__GenTrq_Dem

subroutine w_srvd_inputfile__get__GenPwr_Dem(this, w_GenPwr_Dem)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_GenPwr_Dem
    
    this_ptr = transfer(this, this_ptr)
    w_GenPwr_Dem = this_ptr%p%GenPwr_Dem
end subroutine w_srvd_inputfile__get__GenPwr_Dem

subroutine w_srvd_inputfile__set__GenPwr_Dem(this, w_GenPwr_Dem)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_GenPwr_Dem
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%GenPwr_Dem = w_GenPwr_Dem
end subroutine w_srvd_inputfile__set__GenPwr_Dem

subroutine w_srvd_inputfile__get__DLL_NumTrq(this, w_DLL_NumTrq)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_DLL_NumTrq
    
    this_ptr = transfer(this, this_ptr)
    w_DLL_NumTrq = this_ptr%p%DLL_NumTrq
end subroutine w_srvd_inputfile__get__DLL_NumTrq

subroutine w_srvd_inputfile__set__DLL_NumTrq(this, w_DLL_NumTrq)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_DLL_NumTrq
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%DLL_NumTrq = w_DLL_NumTrq
end subroutine w_srvd_inputfile__set__DLL_NumTrq

subroutine w_srvd_inputfile__array__genspd_tlu(this, nd, dtype, dshape, dloc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in) :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 11
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%genspd_tlu)) then
        dshape(1:1) = shape(this_ptr%p%genspd_tlu)
        dloc = loc(this_ptr%p%genspd_tlu)
    else
        dloc = 0
    end if
end subroutine w_srvd_inputfile__array__genspd_tlu

subroutine w_srvd_inputfile__array__gentrq_tlu(this, nd, dtype, dshape, dloc)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in) :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 11
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%gentrq_tlu)) then
        dshape(1:1) = shape(this_ptr%p%gentrq_tlu)
        dloc = loc(this_ptr%p%gentrq_tlu)
    else
        dloc = 0
    end if
end subroutine w_srvd_inputfile__array__gentrq_tlu

subroutine w_srvd_inputfile__get__CompNTMD(this, w_CompNTMD)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(out) :: w_CompNTMD
    
    this_ptr = transfer(this, this_ptr)
    w_CompNTMD = this_ptr%p%CompNTMD
end subroutine w_srvd_inputfile__get__CompNTMD

subroutine w_srvd_inputfile__set__CompNTMD(this, w_CompNTMD)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(in) :: w_CompNTMD
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%CompNTMD = w_CompNTMD
end subroutine w_srvd_inputfile__set__CompNTMD

subroutine w_srvd_inputfile__get__NTMDfile(this, w_NTMDfile)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_NTMDfile
    
    this_ptr = transfer(this, this_ptr)
    w_NTMDfile = this_ptr%p%NTMDfile
end subroutine w_srvd_inputfile__get__NTMDfile

subroutine w_srvd_inputfile__set__NTMDfile(this, w_NTMDfile)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_NTMDfile
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%NTMDfile = w_NTMDfile
end subroutine w_srvd_inputfile__set__NTMDfile

subroutine w_srvd_inputfile__get__CompTTMD(this, w_CompTTMD)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(out) :: w_CompTTMD
    
    this_ptr = transfer(this, this_ptr)
    w_CompTTMD = this_ptr%p%CompTTMD
end subroutine w_srvd_inputfile__get__CompTTMD

subroutine w_srvd_inputfile__set__CompTTMD(this, w_CompTTMD)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    logical, intent(in) :: w_CompTTMD
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%CompTTMD = w_CompTTMD
end subroutine w_srvd_inputfile__set__CompTTMD

subroutine w_srvd_inputfile__get__TTMDfile(this, w_TTMDfile)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_TTMDfile
    
    this_ptr = transfer(this, this_ptr)
    w_TTMDfile = this_ptr%p%TTMDfile
end subroutine w_srvd_inputfile__get__TTMDfile

subroutine w_srvd_inputfile__set__TTMDfile(this, w_TTMDfile)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(srvd_inputfile_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_TTMDfile
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%TTMDfile = w_TTMDfile
end subroutine w_srvd_inputfile__set__TTMDfile

subroutine w_srvd_inputfile_initialise(this)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_srvd_inputfile_initialise

subroutine w_srvd_inputfile_finalise(this)
    use servodyn_types, only: type_srvd_inputfile=>srvd_inputfile
    implicit none
    
    type srvd_inputfile_ptr_type
        type(type_srvd_inputfile), pointer :: p => NULL()
    end type srvd_inputfile_ptr_type
    type(srvd_inputfile_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_srvd_inputfile_finalise

! End of module servodyn_types defined in file F:/cyPHM/openfast/build/modules-local/servodyn/ServoDyn_Types.f90

