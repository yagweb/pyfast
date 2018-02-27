! Module elastodyn_types defined in file F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90

subroutine w_ed_initinputtype__get__InputFile(this, w_InputFile)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_InputFile
    
    this_ptr = transfer(this, this_ptr)
    w_InputFile = this_ptr%p%InputFile
end subroutine w_ed_initinputtype__get__InputFile

subroutine w_ed_initinputtype__set__InputFile(this, w_InputFile)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_InputFile
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%InputFile = w_InputFile
end subroutine w_ed_initinputtype__set__InputFile

subroutine w_ed_initinputtype__get__Linearize(this, w_Linearize)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    logical, intent(out) :: w_Linearize
    
    this_ptr = transfer(this, this_ptr)
    w_Linearize = this_ptr%p%Linearize
end subroutine w_ed_initinputtype__get__Linearize

subroutine w_ed_initinputtype__set__Linearize(this, w_Linearize)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    logical, intent(in) :: w_Linearize
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Linearize = w_Linearize
end subroutine w_ed_initinputtype__set__Linearize

subroutine w_ed_initinputtype__get__ADInputFile(this, w_ADInputFile)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_ADInputFile
    
    this_ptr = transfer(this, this_ptr)
    w_ADInputFile = this_ptr%p%ADInputFile
end subroutine w_ed_initinputtype__get__ADInputFile

subroutine w_ed_initinputtype__set__ADInputFile(this, w_ADInputFile)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_ADInputFile
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%ADInputFile = w_ADInputFile
end subroutine w_ed_initinputtype__set__ADInputFile

subroutine w_ed_initinputtype__get__CompElast(this, w_CompElast)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    logical, intent(out) :: w_CompElast
    
    this_ptr = transfer(this, this_ptr)
    w_CompElast = this_ptr%p%CompElast
end subroutine w_ed_initinputtype__get__CompElast

subroutine w_ed_initinputtype__set__CompElast(this, w_CompElast)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    logical, intent(in) :: w_CompElast
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%CompElast = w_CompElast
end subroutine w_ed_initinputtype__set__CompElast

subroutine w_ed_initinputtype__get__RootName(this, w_RootName)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(out) :: w_RootName
    
    this_ptr = transfer(this, this_ptr)
    w_RootName = this_ptr%p%RootName
end subroutine w_ed_initinputtype__get__RootName

subroutine w_ed_initinputtype__set__RootName(this, w_RootName)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_initinputtype_ptr_type) :: this_ptr
    character(1024), intent(in) :: w_RootName
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%RootName = w_RootName
end subroutine w_ed_initinputtype__set__RootName

subroutine w_ed_initinputtype_initialise(this)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    type(ed_initinputtype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_ed_initinputtype_initialise

subroutine w_ed_initinputtype_finalise(this)
    use elastodyn_types, only: type_ed_initinputtype=>ed_initinputtype
    implicit none
    
    type ed_initinputtype_ptr_type
        type(type_ed_initinputtype), pointer :: p => NULL()
    end type ed_initinputtype_ptr_type
    type(ed_initinputtype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_ed_initinputtype_finalise

subroutine w_ed_inputfile__get__DT(this, w_DT)
    use elastodyn_types, only: type_ed_inputfile=>ed_inputfile
    implicit none
    type ed_inputfile_ptr_type
        type(type_ed_inputfile), pointer :: p => NULL()
    end type ed_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_inputfile_ptr_type) :: this_ptr
    real(8), intent(out) :: w_DT
    
    this_ptr = transfer(this, this_ptr)
    w_DT = this_ptr%p%DT
end subroutine w_ed_inputfile__get__DT

subroutine w_ed_inputfile__set__DT(this, w_DT)
    use elastodyn_types, only: type_ed_inputfile=>ed_inputfile
    implicit none
    type ed_inputfile_ptr_type
        type(type_ed_inputfile), pointer :: p => NULL()
    end type ed_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_inputfile_ptr_type) :: this_ptr
    real(8), intent(in) :: w_DT
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%DT = w_DT
end subroutine w_ed_inputfile__set__DT

subroutine w_ed_inputfile__get__Gravity(this, w_Gravity)
    use elastodyn_types, only: type_ed_inputfile=>ed_inputfile
    implicit none
    type ed_inputfile_ptr_type
        type(type_ed_inputfile), pointer :: p => NULL()
    end type ed_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_inputfile_ptr_type) :: this_ptr
    real(4), intent(out) :: w_Gravity
    
    this_ptr = transfer(this, this_ptr)
    w_Gravity = this_ptr%p%Gravity
end subroutine w_ed_inputfile__get__Gravity

subroutine w_ed_inputfile__set__Gravity(this, w_Gravity)
    use elastodyn_types, only: type_ed_inputfile=>ed_inputfile
    implicit none
    type ed_inputfile_ptr_type
        type(type_ed_inputfile), pointer :: p => NULL()
    end type ed_inputfile_ptr_type
    integer, intent(in)   :: this(2)
    type(ed_inputfile_ptr_type) :: this_ptr
    real(4), intent(in) :: w_Gravity
    
    this_ptr = transfer(this, this_ptr)
    this_ptr%p%Gravity = w_Gravity
end subroutine w_ed_inputfile__set__Gravity

subroutine w_ed_inputfile_initialise(this)
    use elastodyn_types, only: type_ed_inputfile=>ed_inputfile
    implicit none
    
    type ed_inputfile_ptr_type
        type(type_ed_inputfile), pointer :: p => NULL()
    end type ed_inputfile_ptr_type
    type(ed_inputfile_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_ed_inputfile_initialise

subroutine w_ed_inputfile_finalise(this)
    use elastodyn_types, only: type_ed_inputfile=>ed_inputfile
    implicit none
    
    type ed_inputfile_ptr_type
        type(type_ed_inputfile), pointer :: p => NULL()
    end type ed_inputfile_ptr_type
    type(ed_inputfile_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_ed_inputfile_finalise

! End of module elastodyn_types defined in file F:/cyPHM/openfast/build/modules-local/elastodyn/ElastoDyn_Types.f90

