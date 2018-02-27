! Module aerodyn_types defined in file F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90

subroutine w_ad_initinputtype__get__InputFile(this, w_InputFile)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_InputFile
    
    this_ptr = transfer(this, this_ptr)
    w_InputFile = this_ptr%p%InputFile
end subroutine w_ad_initinputtype__get__InputFile

subroutine w_ad_initinputtype__set__InputFile(this, w_InputFile)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_InputFile
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%InputFile = w_InputFile
end subroutine w_ad_initinputtype__set__InputFile

subroutine w_ad_initinputtype__get__Linearize(this, w_Linearize)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    logical, intent(out) :: w_Linearize
    
    this_ptr = transfer(this, this_ptr)
    w_Linearize = this_ptr%p%Linearize
end subroutine w_ad_initinputtype__get__Linearize

subroutine w_ad_initinputtype__set__Linearize(this, w_Linearize)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    logical, intent(in) :: w_Linearize
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Linearize = w_Linearize
end subroutine w_ad_initinputtype__set__Linearize

subroutine w_ad_initinputtype__get__NumBlades(this, w_NumBlades)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    integer(4), intent(out) :: w_NumBlades
    
    this_ptr = transfer(this, this_ptr)
    w_NumBlades = this_ptr%p%NumBlades
end subroutine w_ad_initinputtype__get__NumBlades

subroutine w_ad_initinputtype__set__NumBlades(this, w_NumBlades)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    integer(4), intent(in) :: w_NumBlades
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%NumBlades = w_NumBlades
end subroutine w_ad_initinputtype__set__NumBlades

subroutine w_ad_initinputtype__get__Gravity(this, w_Gravity)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    real(4), intent(out) :: w_Gravity
    
    this_ptr = transfer(this, this_ptr)
    w_Gravity = this_ptr%p%Gravity
end subroutine w_ad_initinputtype__get__Gravity

subroutine w_ad_initinputtype__set__Gravity(this, w_Gravity)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    real(4), intent(in) :: w_Gravity
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Gravity = w_Gravity
end subroutine w_ad_initinputtype__set__Gravity

subroutine w_ad_initinputtype__get__RootName(this, w_RootName)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_RootName
    
    this_ptr = transfer(this, this_ptr)
    w_RootName = this_ptr%p%RootName
end subroutine w_ad_initinputtype__get__RootName

subroutine w_ad_initinputtype__set__RootName(this, w_RootName)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_RootName
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%RootName = w_RootName
end subroutine w_ad_initinputtype__set__RootName

subroutine w_ad_initinputtype__array__hubposition(this, nd, dtype, dshape, dloc)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in) :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 1
    dtype = 11
    this_ptr = transfer(this, this_ptr)
    dshape(1:1) = shape(this_ptr%p%hubposition)
    dloc = loc(this_ptr%p%hubposition)
end subroutine w_ad_initinputtype__array__hubposition

subroutine w_ad_initinputtype__array__huborientation(this, nd, dtype, dshape, dloc)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in) :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 2
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    dshape(1:2) = shape(this_ptr%p%huborientation)
    dloc = loc(this_ptr%p%huborientation)
end subroutine w_ad_initinputtype__array__huborientation

subroutine w_ad_initinputtype__array__bladerootposition(this, nd, dtype, dshape, dloc)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in) :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 2
    dtype = 11
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%bladerootposition)) then
        dshape(1:2) = shape(this_ptr%p%bladerootposition)
        dloc = loc(this_ptr%p%bladerootposition)
    else
        dloc = 0
    end if
end subroutine w_ad_initinputtype__array__bladerootposition

subroutine w_ad_initinputtype__array__bladerootorientation(this, nd, dtype, dshape, dloc)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    integer, intent(in) :: this(2)
    type(ad_initinputtype_ptr_type) :: this_ptr
    integer, intent(out) :: nd
    integer, intent(out) :: dtype
    integer, dimension(10), intent(out) :: dshape
    integer*8, intent(out) :: dloc
    
    nd = 3
    dtype = 12
    this_ptr = transfer(this, this_ptr)
    if (allocated(this_ptr%p%bladerootorientation)) then
        dshape(1:3) = shape(this_ptr%p%bladerootorientation)
        dloc = loc(this_ptr%p%bladerootorientation)
    else
        dloc = 0
    end if
end subroutine w_ad_initinputtype__array__bladerootorientation

subroutine w_ad_initinputtype_initialise(this)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    type(ad_initinputtype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_ad_initinputtype_initialise

subroutine w_ad_initinputtype_finalise(this)
    use aerodyn_types, only: type_ad_initinputtype=>ad_initinputtype
    implicit none
    
    type ad_initinputtype_ptr_type
        type(type_ad_initinputtype), pointer :: p => NULL()
    end type ad_initinputtype_ptr_type
    type(ad_initinputtype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_ad_initinputtype_finalise

! End of module aerodyn_types defined in file F:/cyPHM/openfast/build/modules-local/aerodyn/AeroDyn_Types.f90

