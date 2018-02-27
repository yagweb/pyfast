! Module fast_types defined in file F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90

subroutine w_fast_vtk_blsurfacetype_initialise(this)
    use fast_types, only: type_fast_vtk_blsurfacetype=>fast_vtk_blsurfacetype
    implicit none
    
    type fast_vtk_blsurfacetype_ptr_type
        type(type_fast_vtk_blsurfacetype), pointer :: p => NULL()
    end type fast_vtk_blsurfacetype_ptr_type
    type(fast_vtk_blsurfacetype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_vtk_blsurfacetype_initialise

subroutine w_fast_vtk_blsurfacetype_finalise(this)
    use fast_types, only: type_fast_vtk_blsurfacetype=>fast_vtk_blsurfacetype
    implicit none
    
    type fast_vtk_blsurfacetype_ptr_type
        type(type_fast_vtk_blsurfacetype), pointer :: p => NULL()
    end type fast_vtk_blsurfacetype_ptr_type
    type(fast_vtk_blsurfacetype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_vtk_blsurfacetype_finalise

subroutine w_fast_vtk_surfacetype_initialise(this)
    use fast_types, only: type_fast_vtk_surfacetype=>fast_vtk_surfacetype
    implicit none
    
    type fast_vtk_surfacetype_ptr_type
        type(type_fast_vtk_surfacetype), pointer :: p => NULL()
    end type fast_vtk_surfacetype_ptr_type
    type(fast_vtk_surfacetype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_vtk_surfacetype_initialise

subroutine w_fast_vtk_surfacetype_finalise(this)
    use fast_types, only: type_fast_vtk_surfacetype=>fast_vtk_surfacetype
    implicit none
    
    type fast_vtk_surfacetype_ptr_type
        type(type_fast_vtk_surfacetype), pointer :: p => NULL()
    end type fast_vtk_surfacetype_ptr_type
    type(fast_vtk_surfacetype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_vtk_surfacetype_finalise

subroutine w_fast_parametertype_initialise(this)
    use fast_types, only: type_fast_parametertype=>fast_parametertype
    implicit none
    
    type fast_parametertype_ptr_type
        type(type_fast_parametertype), pointer :: p => NULL()
    end type fast_parametertype_ptr_type
    type(fast_parametertype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_parametertype_initialise

subroutine w_fast_parametertype_finalise(this)
    use fast_types, only: type_fast_parametertype=>fast_parametertype
    implicit none
    
    type fast_parametertype_ptr_type
        type(type_fast_parametertype), pointer :: p => NULL()
    end type fast_parametertype_ptr_type
    type(fast_parametertype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_parametertype_finalise

subroutine w_fast_lintype_initialise(this)
    use fast_types, only: type_fast_lintype=>fast_lintype
    implicit none
    
    type fast_lintype_ptr_type
        type(type_fast_lintype), pointer :: p => NULL()
    end type fast_lintype_ptr_type
    type(fast_lintype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_lintype_initialise

subroutine w_fast_lintype_finalise(this)
    use fast_types, only: type_fast_lintype=>fast_lintype
    implicit none
    
    type fast_lintype_ptr_type
        type(type_fast_lintype), pointer :: p => NULL()
    end type fast_lintype_ptr_type
    type(fast_lintype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_lintype_finalise

subroutine w_fast_linfiletype_initialise(this)
    use fast_types, only: type_fast_linfiletype=>fast_linfiletype
    implicit none
    
    type fast_linfiletype_ptr_type
        type(type_fast_linfiletype), pointer :: p => NULL()
    end type fast_linfiletype_ptr_type
    type(fast_linfiletype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_linfiletype_initialise

subroutine w_fast_linfiletype_finalise(this)
    use fast_types, only: type_fast_linfiletype=>fast_linfiletype
    implicit none
    
    type fast_linfiletype_ptr_type
        type(type_fast_linfiletype), pointer :: p => NULL()
    end type fast_linfiletype_ptr_type
    type(fast_linfiletype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_linfiletype_finalise

subroutine w_fast_outputfiletype_initialise(this)
    use fast_types, only: type_fast_outputfiletype=>fast_outputfiletype
    implicit none
    
    type fast_outputfiletype_ptr_type
        type(type_fast_outputfiletype), pointer :: p => NULL()
    end type fast_outputfiletype_ptr_type
    type(fast_outputfiletype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_outputfiletype_initialise

subroutine w_fast_outputfiletype_finalise(this)
    use fast_types, only: type_fast_outputfiletype=>fast_outputfiletype
    implicit none
    
    type fast_outputfiletype_ptr_type
        type(type_fast_outputfiletype), pointer :: p => NULL()
    end type fast_outputfiletype_ptr_type
    type(fast_outputfiletype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_outputfiletype_finalise

subroutine w_icedyn_data_initialise(this)
    use fast_types, only: type_icedyn_data=>icedyn_data
    implicit none
    
    type icedyn_data_ptr_type
        type(type_icedyn_data), pointer :: p => NULL()
    end type icedyn_data_ptr_type
    type(icedyn_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_icedyn_data_initialise

subroutine w_icedyn_data_finalise(this)
    use fast_types, only: type_icedyn_data=>icedyn_data
    implicit none
    
    type icedyn_data_ptr_type
        type(type_icedyn_data), pointer :: p => NULL()
    end type icedyn_data_ptr_type
    type(icedyn_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_icedyn_data_finalise

subroutine w_beamdyn_data_initialise(this)
    use fast_types, only: type_beamdyn_data=>beamdyn_data
    implicit none
    
    type beamdyn_data_ptr_type
        type(type_beamdyn_data), pointer :: p => NULL()
    end type beamdyn_data_ptr_type
    type(beamdyn_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_beamdyn_data_initialise

subroutine w_beamdyn_data_finalise(this)
    use fast_types, only: type_beamdyn_data=>beamdyn_data
    implicit none
    
    type beamdyn_data_ptr_type
        type(type_beamdyn_data), pointer :: p => NULL()
    end type beamdyn_data_ptr_type
    type(beamdyn_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_beamdyn_data_finalise

subroutine w_elastodyn_data_initialise(this)
    use fast_types, only: type_elastodyn_data=>elastodyn_data
    implicit none
    
    type elastodyn_data_ptr_type
        type(type_elastodyn_data), pointer :: p => NULL()
    end type elastodyn_data_ptr_type
    type(elastodyn_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_elastodyn_data_initialise

subroutine w_elastodyn_data_finalise(this)
    use fast_types, only: type_elastodyn_data=>elastodyn_data
    implicit none
    
    type elastodyn_data_ptr_type
        type(type_elastodyn_data), pointer :: p => NULL()
    end type elastodyn_data_ptr_type
    type(elastodyn_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_elastodyn_data_finalise

subroutine w_servodyn_data_initialise(this)
    use fast_types, only: type_servodyn_data=>servodyn_data
    implicit none
    
    type servodyn_data_ptr_type
        type(type_servodyn_data), pointer :: p => NULL()
    end type servodyn_data_ptr_type
    type(servodyn_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_servodyn_data_initialise

subroutine w_servodyn_data_finalise(this)
    use fast_types, only: type_servodyn_data=>servodyn_data
    implicit none
    
    type servodyn_data_ptr_type
        type(type_servodyn_data), pointer :: p => NULL()
    end type servodyn_data_ptr_type
    type(servodyn_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_servodyn_data_finalise

subroutine w_aerodyn14_data_initialise(this)
    use fast_types, only: type_aerodyn14_data=>aerodyn14_data
    implicit none
    
    type aerodyn14_data_ptr_type
        type(type_aerodyn14_data), pointer :: p => NULL()
    end type aerodyn14_data_ptr_type
    type(aerodyn14_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_aerodyn14_data_initialise

subroutine w_aerodyn14_data_finalise(this)
    use fast_types, only: type_aerodyn14_data=>aerodyn14_data
    implicit none
    
    type aerodyn14_data_ptr_type
        type(type_aerodyn14_data), pointer :: p => NULL()
    end type aerodyn14_data_ptr_type
    type(aerodyn14_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_aerodyn14_data_finalise

subroutine w_aerodyn_data_initialise(this)
    use fast_types, only: type_aerodyn_data=>aerodyn_data
    implicit none
    
    type aerodyn_data_ptr_type
        type(type_aerodyn_data), pointer :: p => NULL()
    end type aerodyn_data_ptr_type
    type(aerodyn_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_aerodyn_data_initialise

subroutine w_aerodyn_data_finalise(this)
    use fast_types, only: type_aerodyn_data=>aerodyn_data
    implicit none
    
    type aerodyn_data_ptr_type
        type(type_aerodyn_data), pointer :: p => NULL()
    end type aerodyn_data_ptr_type
    type(aerodyn_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_aerodyn_data_finalise

subroutine w_inflowwind_data_initialise(this)
    use fast_types, only: type_inflowwind_data=>inflowwind_data
    implicit none
    
    type inflowwind_data_ptr_type
        type(type_inflowwind_data), pointer :: p => NULL()
    end type inflowwind_data_ptr_type
    type(inflowwind_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_inflowwind_data_initialise

subroutine w_inflowwind_data_finalise(this)
    use fast_types, only: type_inflowwind_data=>inflowwind_data
    implicit none
    
    type inflowwind_data_ptr_type
        type(type_inflowwind_data), pointer :: p => NULL()
    end type inflowwind_data_ptr_type
    type(inflowwind_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_inflowwind_data_finalise

subroutine w_openfoam_data_initialise(this)
    use fast_types, only: type_openfoam_data=>openfoam_data
    implicit none
    
    type openfoam_data_ptr_type
        type(type_openfoam_data), pointer :: p => NULL()
    end type openfoam_data_ptr_type
    type(openfoam_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_openfoam_data_initialise

subroutine w_openfoam_data_finalise(this)
    use fast_types, only: type_openfoam_data=>openfoam_data
    implicit none
    
    type openfoam_data_ptr_type
        type(type_openfoam_data), pointer :: p => NULL()
    end type openfoam_data_ptr_type
    type(openfoam_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_openfoam_data_finalise

subroutine w_supercontroller_data_initialise(this)
    use fast_types, only: type_supercontroller_data=>supercontroller_data
    implicit none
    
    type supercontroller_data_ptr_type
        type(type_supercontroller_data), pointer :: p => NULL()
    end type supercontroller_data_ptr_type
    type(supercontroller_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_supercontroller_data_initialise

subroutine w_supercontroller_data_finalise(this)
    use fast_types, only: type_supercontroller_data=>supercontroller_data
    implicit none
    
    type supercontroller_data_ptr_type
        type(type_supercontroller_data), pointer :: p => NULL()
    end type supercontroller_data_ptr_type
    type(supercontroller_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_supercontroller_data_finalise

subroutine w_subdyn_data_initialise(this)
    use fast_types, only: type_subdyn_data=>subdyn_data
    implicit none
    
    type subdyn_data_ptr_type
        type(type_subdyn_data), pointer :: p => NULL()
    end type subdyn_data_ptr_type
    type(subdyn_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_subdyn_data_initialise

subroutine w_subdyn_data_finalise(this)
    use fast_types, only: type_subdyn_data=>subdyn_data
    implicit none
    
    type subdyn_data_ptr_type
        type(type_subdyn_data), pointer :: p => NULL()
    end type subdyn_data_ptr_type
    type(subdyn_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_subdyn_data_finalise

subroutine w_extptfm_data_initialise(this)
    use fast_types, only: type_extptfm_data=>extptfm_data
    implicit none
    
    type extptfm_data_ptr_type
        type(type_extptfm_data), pointer :: p => NULL()
    end type extptfm_data_ptr_type
    type(extptfm_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_extptfm_data_initialise

subroutine w_extptfm_data_finalise(this)
    use fast_types, only: type_extptfm_data=>extptfm_data
    implicit none
    
    type extptfm_data_ptr_type
        type(type_extptfm_data), pointer :: p => NULL()
    end type extptfm_data_ptr_type
    type(extptfm_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_extptfm_data_finalise

subroutine w_hydrodyn_data_initialise(this)
    use fast_types, only: type_hydrodyn_data=>hydrodyn_data
    implicit none
    
    type hydrodyn_data_ptr_type
        type(type_hydrodyn_data), pointer :: p => NULL()
    end type hydrodyn_data_ptr_type
    type(hydrodyn_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_hydrodyn_data_initialise

subroutine w_hydrodyn_data_finalise(this)
    use fast_types, only: type_hydrodyn_data=>hydrodyn_data
    implicit none
    
    type hydrodyn_data_ptr_type
        type(type_hydrodyn_data), pointer :: p => NULL()
    end type hydrodyn_data_ptr_type
    type(hydrodyn_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_hydrodyn_data_finalise

subroutine w_icefloe_data_initialise(this)
    use fast_types, only: type_icefloe_data=>icefloe_data
    implicit none
    
    type icefloe_data_ptr_type
        type(type_icefloe_data), pointer :: p => NULL()
    end type icefloe_data_ptr_type
    type(icefloe_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_icefloe_data_initialise

subroutine w_icefloe_data_finalise(this)
    use fast_types, only: type_icefloe_data=>icefloe_data
    implicit none
    
    type icefloe_data_ptr_type
        type(type_icefloe_data), pointer :: p => NULL()
    end type icefloe_data_ptr_type
    type(icefloe_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_icefloe_data_finalise

subroutine w_map_data_initialise(this)
    use fast_types, only: type_map_data=>map_data
    implicit none
    
    type map_data_ptr_type
        type(type_map_data), pointer :: p => NULL()
    end type map_data_ptr_type
    type(map_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_map_data_initialise

subroutine w_map_data_finalise(this)
    use fast_types, only: type_map_data=>map_data
    implicit none
    
    type map_data_ptr_type
        type(type_map_data), pointer :: p => NULL()
    end type map_data_ptr_type
    type(map_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_map_data_finalise

subroutine w_feamooring_data_initialise(this)
    use fast_types, only: type_feamooring_data=>feamooring_data
    implicit none
    
    type feamooring_data_ptr_type
        type(type_feamooring_data), pointer :: p => NULL()
    end type feamooring_data_ptr_type
    type(feamooring_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_feamooring_data_initialise

subroutine w_feamooring_data_finalise(this)
    use fast_types, only: type_feamooring_data=>feamooring_data
    implicit none
    
    type feamooring_data_ptr_type
        type(type_feamooring_data), pointer :: p => NULL()
    end type feamooring_data_ptr_type
    type(feamooring_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_feamooring_data_finalise

subroutine w_moordyn_data_initialise(this)
    use fast_types, only: type_moordyn_data=>moordyn_data
    implicit none
    
    type moordyn_data_ptr_type
        type(type_moordyn_data), pointer :: p => NULL()
    end type moordyn_data_ptr_type
    type(moordyn_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_moordyn_data_initialise

subroutine w_moordyn_data_finalise(this)
    use fast_types, only: type_moordyn_data=>moordyn_data
    implicit none
    
    type moordyn_data_ptr_type
        type(type_moordyn_data), pointer :: p => NULL()
    end type moordyn_data_ptr_type
    type(moordyn_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_moordyn_data_finalise

subroutine w_orcaflex_data_initialise(this)
    use fast_types, only: type_orcaflex_data=>orcaflex_data
    implicit none
    
    type orcaflex_data_ptr_type
        type(type_orcaflex_data), pointer :: p => NULL()
    end type orcaflex_data_ptr_type
    type(orcaflex_data_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_orcaflex_data_initialise

subroutine w_orcaflex_data_finalise(this)
    use fast_types, only: type_orcaflex_data=>orcaflex_data
    implicit none
    
    type orcaflex_data_ptr_type
        type(type_orcaflex_data), pointer :: p => NULL()
    end type orcaflex_data_ptr_type
    type(orcaflex_data_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_orcaflex_data_finalise

subroutine w_fast_modulemaptype_initialise(this)
    use fast_types, only: type_fast_modulemaptype=>fast_modulemaptype
    implicit none
    
    type fast_modulemaptype_ptr_type
        type(type_fast_modulemaptype), pointer :: p => NULL()
    end type fast_modulemaptype_ptr_type
    type(fast_modulemaptype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_modulemaptype_initialise

subroutine w_fast_modulemaptype_finalise(this)
    use fast_types, only: type_fast_modulemaptype=>fast_modulemaptype
    implicit none
    
    type fast_modulemaptype_ptr_type
        type(type_fast_modulemaptype), pointer :: p => NULL()
    end type fast_modulemaptype_ptr_type
    type(fast_modulemaptype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_modulemaptype_finalise

subroutine w_fast_externinputtype_initialise(this)
    use fast_types, only: type_fast_externinputtype=>fast_externinputtype
    implicit none
    
    type fast_externinputtype_ptr_type
        type(type_fast_externinputtype), pointer :: p => NULL()
    end type fast_externinputtype_ptr_type
    type(fast_externinputtype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_externinputtype_initialise

subroutine w_fast_externinputtype_finalise(this)
    use fast_types, only: type_fast_externinputtype=>fast_externinputtype
    implicit none
    
    type fast_externinputtype_ptr_type
        type(type_fast_externinputtype), pointer :: p => NULL()
    end type fast_externinputtype_ptr_type
    type(fast_externinputtype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_externinputtype_finalise

subroutine w_fast_miscvartype_initialise(this)
    use fast_types, only: type_fast_miscvartype=>fast_miscvartype
    implicit none
    
    type fast_miscvartype_ptr_type
        type(type_fast_miscvartype), pointer :: p => NULL()
    end type fast_miscvartype_ptr_type
    type(fast_miscvartype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_miscvartype_initialise

subroutine w_fast_miscvartype_finalise(this)
    use fast_types, only: type_fast_miscvartype=>fast_miscvartype
    implicit none
    
    type fast_miscvartype_ptr_type
        type(type_fast_miscvartype), pointer :: p => NULL()
    end type fast_miscvartype_ptr_type
    type(fast_miscvartype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_miscvartype_finalise

subroutine w_fast_externinittype_initialise(this)
    use fast_types, only: type_fast_externinittype=>fast_externinittype
    implicit none
    
    type fast_externinittype_ptr_type
        type(type_fast_externinittype), pointer :: p => NULL()
    end type fast_externinittype_ptr_type
    type(fast_externinittype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_externinittype_initialise

subroutine w_fast_externinittype_finalise(this)
    use fast_types, only: type_fast_externinittype=>fast_externinittype
    implicit none
    
    type fast_externinittype_ptr_type
        type(type_fast_externinittype), pointer :: p => NULL()
    end type fast_externinittype_ptr_type
    type(fast_externinittype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_externinittype_finalise

subroutine w_fast_turbinetype_initialise(this)
    use fast_types, only: type_fast_turbinetype=>fast_turbinetype
    implicit none
    
    type fast_turbinetype_ptr_type
        type(type_fast_turbinetype), pointer :: p => NULL()
    end type fast_turbinetype_ptr_type
    type(fast_turbinetype_ptr_type) :: this_ptr
    integer, intent(out), dimension(2) :: this
    allocate(this_ptr%p)
    this = transfer(this_ptr, this)
end subroutine w_fast_turbinetype_initialise

subroutine w_fast_turbinetype_finalise(this)
    use fast_types, only: type_fast_turbinetype=>fast_turbinetype
    implicit none
    
    type fast_turbinetype_ptr_type
        type(type_fast_turbinetype), pointer :: p => NULL()
    end type fast_turbinetype_ptr_type
    type(fast_turbinetype_ptr_type) :: this_ptr
    integer, intent(in), dimension(2) :: this
    this_ptr = transfer(this, this_ptr)
    deallocate(this_ptr%p)
end subroutine w_fast_turbinetype_finalise

subroutine w_fast_copyvtk_blsurfacetype(srcvtk_blsurfacetypedata, dstvtk_blsurfacetypedata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyvtk_blsurfacetype, type_fast_vtk_blsurfacetype=>fast_vtk_blsurfacetype
    implicit none
    
    type fast_vtk_blsurfacetype_ptr_type
        type(type_fast_vtk_blsurfacetype), pointer :: p => NULL()
    end type fast_vtk_blsurfacetype_ptr_type
    type(fast_vtk_blsurfacetype_ptr_type) :: srcvtk_blsurfacetypedata_ptr
    integer, intent(in), dimension(2) :: srcvtk_blsurfacetypedata
    type(fast_vtk_blsurfacetype_ptr_type) :: dstvtk_blsurfacetypedata_ptr
    integer, intent(in), dimension(2) :: dstvtk_blsurfacetypedata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcvtk_blsurfacetypedata_ptr = transfer(srcvtk_blsurfacetypedata, srcvtk_blsurfacetypedata_ptr)
    dstvtk_blsurfacetypedata_ptr = transfer(dstvtk_blsurfacetypedata, dstvtk_blsurfacetypedata_ptr)
    call fast_copyvtk_blsurfacetype(SrcVTK_BLSurfaceTypeData=srcvtk_blsurfacetypedata_ptr%p, DstVTK_BLSurfaceTypeData=dstvtk_blsurfacetypedata_ptr%p, &
        CtrlCode=ctrlcode, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyvtk_blsurfacetype

subroutine w_fast_destroyvtk_blsurfacetype(vtk_blsurfacetypedata, errstat, errmsg)
    use fast_types, only: fast_destroyvtk_blsurfacetype, type_fast_vtk_blsurfacetype=>fast_vtk_blsurfacetype
    implicit none
    
    type fast_vtk_blsurfacetype_ptr_type
        type(type_fast_vtk_blsurfacetype), pointer :: p => NULL()
    end type fast_vtk_blsurfacetype_ptr_type
    type(fast_vtk_blsurfacetype_ptr_type) :: vtk_blsurfacetypedata_ptr
    integer, intent(in), dimension(2) :: vtk_blsurfacetypedata
    integer(4) :: errstat
    character(*) :: errmsg
    vtk_blsurfacetypedata_ptr = transfer(vtk_blsurfacetypedata, vtk_blsurfacetypedata_ptr)
    call fast_destroyvtk_blsurfacetype(VTK_BLSurfaceTypeData=vtk_blsurfacetypedata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyvtk_blsurfacetype

subroutine w_fast_copyvtk_surfacetype(srcvtk_surfacetypedata, dstvtk_surfacetypedata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_fast_vtk_surfacetype=>fast_vtk_surfacetype, fast_copyvtk_surfacetype
    implicit none
    
    type fast_vtk_surfacetype_ptr_type
        type(type_fast_vtk_surfacetype), pointer :: p => NULL()
    end type fast_vtk_surfacetype_ptr_type
    type(fast_vtk_surfacetype_ptr_type) :: srcvtk_surfacetypedata_ptr
    integer, intent(in), dimension(2) :: srcvtk_surfacetypedata
    type(fast_vtk_surfacetype_ptr_type) :: dstvtk_surfacetypedata_ptr
    integer, intent(in), dimension(2) :: dstvtk_surfacetypedata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcvtk_surfacetypedata_ptr = transfer(srcvtk_surfacetypedata, srcvtk_surfacetypedata_ptr)
    dstvtk_surfacetypedata_ptr = transfer(dstvtk_surfacetypedata, dstvtk_surfacetypedata_ptr)
    call fast_copyvtk_surfacetype(SrcVTK_SurfaceTypeData=srcvtk_surfacetypedata_ptr%p, DstVTK_SurfaceTypeData=dstvtk_surfacetypedata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyvtk_surfacetype

subroutine w_fast_destroyvtk_surfacetype(vtk_surfacetypedata, errstat, errmsg)
    use fast_types, only: type_fast_vtk_surfacetype=>fast_vtk_surfacetype, fast_destroyvtk_surfacetype
    implicit none
    
    type fast_vtk_surfacetype_ptr_type
        type(type_fast_vtk_surfacetype), pointer :: p => NULL()
    end type fast_vtk_surfacetype_ptr_type
    type(fast_vtk_surfacetype_ptr_type) :: vtk_surfacetypedata_ptr
    integer, intent(in), dimension(2) :: vtk_surfacetypedata
    integer(4) :: errstat
    character(*) :: errmsg
    vtk_surfacetypedata_ptr = transfer(vtk_surfacetypedata, vtk_surfacetypedata_ptr)
    call fast_destroyvtk_surfacetype(VTK_SurfaceTypeData=vtk_surfacetypedata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyvtk_surfacetype

subroutine w_fast_copyparam(srcparamdata, dstparamdata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyparam, type_fast_parametertype=>fast_parametertype
    implicit none
    
    type fast_parametertype_ptr_type
        type(type_fast_parametertype), pointer :: p => NULL()
    end type fast_parametertype_ptr_type
    type(fast_parametertype_ptr_type) :: srcparamdata_ptr
    integer, intent(in), dimension(2) :: srcparamdata
    type(fast_parametertype_ptr_type) :: dstparamdata_ptr
    integer, intent(in), dimension(2) :: dstparamdata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcparamdata_ptr = transfer(srcparamdata, srcparamdata_ptr)
    dstparamdata_ptr = transfer(dstparamdata, dstparamdata_ptr)
    call fast_copyparam(SrcParamData=srcparamdata_ptr%p, DstParamData=dstparamdata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyparam

subroutine w_fast_destroyparam(paramdata, errstat, errmsg)
    use fast_types, only: fast_destroyparam, type_fast_parametertype=>fast_parametertype
    implicit none
    
    type fast_parametertype_ptr_type
        type(type_fast_parametertype), pointer :: p => NULL()
    end type fast_parametertype_ptr_type
    type(fast_parametertype_ptr_type) :: paramdata_ptr
    integer, intent(in), dimension(2) :: paramdata
    integer(4) :: errstat
    character(*) :: errmsg
    paramdata_ptr = transfer(paramdata, paramdata_ptr)
    call fast_destroyparam(ParamData=paramdata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyparam

subroutine w_fast_copylintype(srclintypedata, dstlintypedata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_fast_lintype=>fast_lintype, fast_copylintype
    implicit none
    
    type fast_lintype_ptr_type
        type(type_fast_lintype), pointer :: p => NULL()
    end type fast_lintype_ptr_type
    type(fast_lintype_ptr_type) :: srclintypedata_ptr
    integer, intent(in), dimension(2) :: srclintypedata
    type(fast_lintype_ptr_type) :: dstlintypedata_ptr
    integer, intent(in), dimension(2) :: dstlintypedata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srclintypedata_ptr = transfer(srclintypedata, srclintypedata_ptr)
    dstlintypedata_ptr = transfer(dstlintypedata, dstlintypedata_ptr)
    call fast_copylintype(SrcLinTypeData=srclintypedata_ptr%p, DstLinTypeData=dstlintypedata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copylintype

subroutine w_fast_destroylintype(lintypedata, errstat, errmsg)
    use fast_types, only: type_fast_lintype=>fast_lintype, fast_destroylintype
    implicit none
    
    type fast_lintype_ptr_type
        type(type_fast_lintype), pointer :: p => NULL()
    end type fast_lintype_ptr_type
    type(fast_lintype_ptr_type) :: lintypedata_ptr
    integer, intent(in), dimension(2) :: lintypedata
    integer(4) :: errstat
    character(*) :: errmsg
    lintypedata_ptr = transfer(lintypedata, lintypedata_ptr)
    call fast_destroylintype(LinTypeData=lintypedata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroylintype

subroutine w_fast_copylinfiletype(srclinfiletypedata, dstlinfiletypedata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copylinfiletype, type_fast_linfiletype=>fast_linfiletype
    implicit none
    
    type fast_linfiletype_ptr_type
        type(type_fast_linfiletype), pointer :: p => NULL()
    end type fast_linfiletype_ptr_type
    type(fast_linfiletype_ptr_type) :: srclinfiletypedata_ptr
    integer, intent(in), dimension(2) :: srclinfiletypedata
    type(fast_linfiletype_ptr_type) :: dstlinfiletypedata_ptr
    integer, intent(in), dimension(2) :: dstlinfiletypedata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srclinfiletypedata_ptr = transfer(srclinfiletypedata, srclinfiletypedata_ptr)
    dstlinfiletypedata_ptr = transfer(dstlinfiletypedata, dstlinfiletypedata_ptr)
    call fast_copylinfiletype(SrcLinFileTypeData=srclinfiletypedata_ptr%p, DstLinFileTypeData=dstlinfiletypedata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, &
        ErrMsg=errmsg)
end subroutine w_fast_copylinfiletype

subroutine w_fast_destroylinfiletype(linfiletypedata, errstat, errmsg)
    use fast_types, only: fast_destroylinfiletype, type_fast_linfiletype=>fast_linfiletype
    implicit none
    
    type fast_linfiletype_ptr_type
        type(type_fast_linfiletype), pointer :: p => NULL()
    end type fast_linfiletype_ptr_type
    type(fast_linfiletype_ptr_type) :: linfiletypedata_ptr
    integer, intent(in), dimension(2) :: linfiletypedata
    integer(4) :: errstat
    character(*) :: errmsg
    linfiletypedata_ptr = transfer(linfiletypedata, linfiletypedata_ptr)
    call fast_destroylinfiletype(LinFileTypeData=linfiletypedata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroylinfiletype

subroutine w_fast_copyoutputfiletype(srcoutputfiletypedata, dstoutputfiletypedata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_fast_outputfiletype=>fast_outputfiletype, fast_copyoutputfiletype
    implicit none
    
    type fast_outputfiletype_ptr_type
        type(type_fast_outputfiletype), pointer :: p => NULL()
    end type fast_outputfiletype_ptr_type
    type(fast_outputfiletype_ptr_type) :: srcoutputfiletypedata_ptr
    integer, intent(in), dimension(2) :: srcoutputfiletypedata
    type(fast_outputfiletype_ptr_type) :: dstoutputfiletypedata_ptr
    integer, intent(in), dimension(2) :: dstoutputfiletypedata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcoutputfiletypedata_ptr = transfer(srcoutputfiletypedata, srcoutputfiletypedata_ptr)
    dstoutputfiletypedata_ptr = transfer(dstoutputfiletypedata, dstoutputfiletypedata_ptr)
    call fast_copyoutputfiletype(SrcOutputFileTypeData=srcoutputfiletypedata_ptr%p, DstOutputFileTypeData=dstoutputfiletypedata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyoutputfiletype

subroutine w_fast_destroyoutputfiletype(outputfiletypedata, errstat, errmsg)
    use fast_types, only: fast_destroyoutputfiletype, type_fast_outputfiletype=>fast_outputfiletype
    implicit none
    
    type fast_outputfiletype_ptr_type
        type(type_fast_outputfiletype), pointer :: p => NULL()
    end type fast_outputfiletype_ptr_type
    type(fast_outputfiletype_ptr_type) :: outputfiletypedata_ptr
    integer, intent(in), dimension(2) :: outputfiletypedata
    integer(4) :: errstat
    character(*) :: errmsg
    outputfiletypedata_ptr = transfer(outputfiletypedata, outputfiletypedata_ptr)
    call fast_destroyoutputfiletype(OutputFileTypeData=outputfiletypedata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyoutputfiletype

subroutine w_fast_copyicedyn_data(srcicedyn_datadata, dsticedyn_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_icedyn_data=>icedyn_data, fast_copyicedyn_data
    implicit none
    
    type icedyn_data_ptr_type
        type(type_icedyn_data), pointer :: p => NULL()
    end type icedyn_data_ptr_type
    type(icedyn_data_ptr_type) :: srcicedyn_datadata_ptr
    integer, intent(in), dimension(2) :: srcicedyn_datadata
    type(icedyn_data_ptr_type) :: dsticedyn_datadata_ptr
    integer, intent(in), dimension(2) :: dsticedyn_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcicedyn_datadata_ptr = transfer(srcicedyn_datadata, srcicedyn_datadata_ptr)
    dsticedyn_datadata_ptr = transfer(dsticedyn_datadata, dsticedyn_datadata_ptr)
    call fast_copyicedyn_data(SrcIceDyn_DataData=srcicedyn_datadata_ptr%p, DstIceDyn_DataData=dsticedyn_datadata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, &
        ErrMsg=errmsg)
end subroutine w_fast_copyicedyn_data

subroutine w_fast_destroyicedyn_data(icedyn_datadata, errstat, errmsg)
    use fast_types, only: type_icedyn_data=>icedyn_data, fast_destroyicedyn_data
    implicit none
    
    type icedyn_data_ptr_type
        type(type_icedyn_data), pointer :: p => NULL()
    end type icedyn_data_ptr_type
    type(icedyn_data_ptr_type) :: icedyn_datadata_ptr
    integer, intent(in), dimension(2) :: icedyn_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    icedyn_datadata_ptr = transfer(icedyn_datadata, icedyn_datadata_ptr)
    call fast_destroyicedyn_data(IceDyn_DataData=icedyn_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyicedyn_data

subroutine w_fast_copybeamdyn_data(srcbeamdyn_datadata, dstbeamdyn_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copybeamdyn_data, type_beamdyn_data=>beamdyn_data
    implicit none
    
    type beamdyn_data_ptr_type
        type(type_beamdyn_data), pointer :: p => NULL()
    end type beamdyn_data_ptr_type
    type(beamdyn_data_ptr_type) :: srcbeamdyn_datadata_ptr
    integer, intent(in), dimension(2) :: srcbeamdyn_datadata
    type(beamdyn_data_ptr_type) :: dstbeamdyn_datadata_ptr
    integer, intent(in), dimension(2) :: dstbeamdyn_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcbeamdyn_datadata_ptr = transfer(srcbeamdyn_datadata, srcbeamdyn_datadata_ptr)
    dstbeamdyn_datadata_ptr = transfer(dstbeamdyn_datadata, dstbeamdyn_datadata_ptr)
    call fast_copybeamdyn_data(SrcBeamDyn_DataData=srcbeamdyn_datadata_ptr%p, DstBeamDyn_DataData=dstbeamdyn_datadata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, &
        ErrMsg=errmsg)
end subroutine w_fast_copybeamdyn_data

subroutine w_fast_destroybeamdyn_data(beamdyn_datadata, errstat, errmsg)
    use fast_types, only: fast_destroybeamdyn_data, type_beamdyn_data=>beamdyn_data
    implicit none
    
    type beamdyn_data_ptr_type
        type(type_beamdyn_data), pointer :: p => NULL()
    end type beamdyn_data_ptr_type
    type(beamdyn_data_ptr_type) :: beamdyn_datadata_ptr
    integer, intent(in), dimension(2) :: beamdyn_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    beamdyn_datadata_ptr = transfer(beamdyn_datadata, beamdyn_datadata_ptr)
    call fast_destroybeamdyn_data(BeamDyn_DataData=beamdyn_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroybeamdyn_data

subroutine w_fast_copyelastodyn_data(srcelastodyn_datadata, dstelastodyn_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyelastodyn_data, type_elastodyn_data=>elastodyn_data
    implicit none
    
    type elastodyn_data_ptr_type
        type(type_elastodyn_data), pointer :: p => NULL()
    end type elastodyn_data_ptr_type
    type(elastodyn_data_ptr_type) :: srcelastodyn_datadata_ptr
    integer, intent(in), dimension(2) :: srcelastodyn_datadata
    type(elastodyn_data_ptr_type) :: dstelastodyn_datadata_ptr
    integer, intent(in), dimension(2) :: dstelastodyn_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcelastodyn_datadata_ptr = transfer(srcelastodyn_datadata, srcelastodyn_datadata_ptr)
    dstelastodyn_datadata_ptr = transfer(dstelastodyn_datadata, dstelastodyn_datadata_ptr)
    call fast_copyelastodyn_data(SrcElastoDyn_DataData=srcelastodyn_datadata_ptr%p, DstElastoDyn_DataData=dstelastodyn_datadata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyelastodyn_data

subroutine w_fast_destroyelastodyn_data(elastodyn_datadata, errstat, errmsg)
    use fast_types, only: fast_destroyelastodyn_data, type_elastodyn_data=>elastodyn_data
    implicit none
    
    type elastodyn_data_ptr_type
        type(type_elastodyn_data), pointer :: p => NULL()
    end type elastodyn_data_ptr_type
    type(elastodyn_data_ptr_type) :: elastodyn_datadata_ptr
    integer, intent(in), dimension(2) :: elastodyn_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    elastodyn_datadata_ptr = transfer(elastodyn_datadata, elastodyn_datadata_ptr)
    call fast_destroyelastodyn_data(ElastoDyn_DataData=elastodyn_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyelastodyn_data

subroutine w_fast_copyservodyn_data(srcservodyn_datadata, dstservodyn_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyservodyn_data, type_servodyn_data=>servodyn_data
    implicit none
    
    type servodyn_data_ptr_type
        type(type_servodyn_data), pointer :: p => NULL()
    end type servodyn_data_ptr_type
    type(servodyn_data_ptr_type) :: srcservodyn_datadata_ptr
    integer, intent(in), dimension(2) :: srcservodyn_datadata
    type(servodyn_data_ptr_type) :: dstservodyn_datadata_ptr
    integer, intent(in), dimension(2) :: dstservodyn_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcservodyn_datadata_ptr = transfer(srcservodyn_datadata, srcservodyn_datadata_ptr)
    dstservodyn_datadata_ptr = transfer(dstservodyn_datadata, dstservodyn_datadata_ptr)
    call fast_copyservodyn_data(SrcServoDyn_DataData=srcservodyn_datadata_ptr%p, DstServoDyn_DataData=dstservodyn_datadata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyservodyn_data

subroutine w_fast_destroyservodyn_data(servodyn_datadata, errstat, errmsg)
    use fast_types, only: fast_destroyservodyn_data, type_servodyn_data=>servodyn_data
    implicit none
    
    type servodyn_data_ptr_type
        type(type_servodyn_data), pointer :: p => NULL()
    end type servodyn_data_ptr_type
    type(servodyn_data_ptr_type) :: servodyn_datadata_ptr
    integer, intent(in), dimension(2) :: servodyn_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    servodyn_datadata_ptr = transfer(servodyn_datadata, servodyn_datadata_ptr)
    call fast_destroyservodyn_data(ServoDyn_DataData=servodyn_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyservodyn_data

subroutine w_fast_copyaerodyn14_data(srcaerodyn14_datadata, dstaerodyn14_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_aerodyn14_data=>aerodyn14_data, fast_copyaerodyn14_data
    implicit none
    
    type aerodyn14_data_ptr_type
        type(type_aerodyn14_data), pointer :: p => NULL()
    end type aerodyn14_data_ptr_type
    type(aerodyn14_data_ptr_type) :: srcaerodyn14_datadata_ptr
    integer, intent(in), dimension(2) :: srcaerodyn14_datadata
    type(aerodyn14_data_ptr_type) :: dstaerodyn14_datadata_ptr
    integer, intent(in), dimension(2) :: dstaerodyn14_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcaerodyn14_datadata_ptr = transfer(srcaerodyn14_datadata, srcaerodyn14_datadata_ptr)
    dstaerodyn14_datadata_ptr = transfer(dstaerodyn14_datadata, dstaerodyn14_datadata_ptr)
    call fast_copyaerodyn14_data(SrcAeroDyn14_DataData=srcaerodyn14_datadata_ptr%p, DstAeroDyn14_DataData=dstaerodyn14_datadata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyaerodyn14_data

subroutine w_fast_destroyaerodyn14_data(aerodyn14_datadata, errstat, errmsg)
    use fast_types, only: fast_destroyaerodyn14_data, type_aerodyn14_data=>aerodyn14_data
    implicit none
    
    type aerodyn14_data_ptr_type
        type(type_aerodyn14_data), pointer :: p => NULL()
    end type aerodyn14_data_ptr_type
    type(aerodyn14_data_ptr_type) :: aerodyn14_datadata_ptr
    integer, intent(in), dimension(2) :: aerodyn14_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    aerodyn14_datadata_ptr = transfer(aerodyn14_datadata, aerodyn14_datadata_ptr)
    call fast_destroyaerodyn14_data(AeroDyn14_DataData=aerodyn14_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyaerodyn14_data

subroutine w_fast_copyaerodyn_data(srcaerodyn_datadata, dstaerodyn_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyaerodyn_data, type_aerodyn_data=>aerodyn_data
    implicit none
    
    type aerodyn_data_ptr_type
        type(type_aerodyn_data), pointer :: p => NULL()
    end type aerodyn_data_ptr_type
    type(aerodyn_data_ptr_type) :: srcaerodyn_datadata_ptr
    integer, intent(in), dimension(2) :: srcaerodyn_datadata
    type(aerodyn_data_ptr_type) :: dstaerodyn_datadata_ptr
    integer, intent(in), dimension(2) :: dstaerodyn_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcaerodyn_datadata_ptr = transfer(srcaerodyn_datadata, srcaerodyn_datadata_ptr)
    dstaerodyn_datadata_ptr = transfer(dstaerodyn_datadata, dstaerodyn_datadata_ptr)
    call fast_copyaerodyn_data(SrcAeroDyn_DataData=srcaerodyn_datadata_ptr%p, DstAeroDyn_DataData=dstaerodyn_datadata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, &
        ErrMsg=errmsg)
end subroutine w_fast_copyaerodyn_data

subroutine w_fast_destroyaerodyn_data(aerodyn_datadata, errstat, errmsg)
    use fast_types, only: fast_destroyaerodyn_data, type_aerodyn_data=>aerodyn_data
    implicit none
    
    type aerodyn_data_ptr_type
        type(type_aerodyn_data), pointer :: p => NULL()
    end type aerodyn_data_ptr_type
    type(aerodyn_data_ptr_type) :: aerodyn_datadata_ptr
    integer, intent(in), dimension(2) :: aerodyn_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    aerodyn_datadata_ptr = transfer(aerodyn_datadata, aerodyn_datadata_ptr)
    call fast_destroyaerodyn_data(AeroDyn_DataData=aerodyn_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyaerodyn_data

subroutine w_fast_copyinflowwind_data(srcinflowwind_datadata, dstinflowwind_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_inflowwind_data=>inflowwind_data, fast_copyinflowwind_data
    implicit none
    
    type inflowwind_data_ptr_type
        type(type_inflowwind_data), pointer :: p => NULL()
    end type inflowwind_data_ptr_type
    type(inflowwind_data_ptr_type) :: srcinflowwind_datadata_ptr
    integer, intent(in), dimension(2) :: srcinflowwind_datadata
    type(inflowwind_data_ptr_type) :: dstinflowwind_datadata_ptr
    integer, intent(in), dimension(2) :: dstinflowwind_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcinflowwind_datadata_ptr = transfer(srcinflowwind_datadata, srcinflowwind_datadata_ptr)
    dstinflowwind_datadata_ptr = transfer(dstinflowwind_datadata, dstinflowwind_datadata_ptr)
    call fast_copyinflowwind_data(SrcInflowWind_DataData=srcinflowwind_datadata_ptr%p, DstInflowWind_DataData=dstinflowwind_datadata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyinflowwind_data

subroutine w_fast_destroyinflowwind_data(inflowwind_datadata, errstat, errmsg)
    use fast_types, only: type_inflowwind_data=>inflowwind_data, fast_destroyinflowwind_data
    implicit none
    
    type inflowwind_data_ptr_type
        type(type_inflowwind_data), pointer :: p => NULL()
    end type inflowwind_data_ptr_type
    type(inflowwind_data_ptr_type) :: inflowwind_datadata_ptr
    integer, intent(in), dimension(2) :: inflowwind_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    inflowwind_datadata_ptr = transfer(inflowwind_datadata, inflowwind_datadata_ptr)
    call fast_destroyinflowwind_data(InflowWind_DataData=inflowwind_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyinflowwind_data

subroutine w_fast_copyopenfoam_data(srcopenfoam_datadata, dstopenfoam_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_openfoam_data=>openfoam_data, fast_copyopenfoam_data
    implicit none
    
    type openfoam_data_ptr_type
        type(type_openfoam_data), pointer :: p => NULL()
    end type openfoam_data_ptr_type
    type(openfoam_data_ptr_type) :: srcopenfoam_datadata_ptr
    integer, intent(in), dimension(2) :: srcopenfoam_datadata
    type(openfoam_data_ptr_type) :: dstopenfoam_datadata_ptr
    integer, intent(in), dimension(2) :: dstopenfoam_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcopenfoam_datadata_ptr = transfer(srcopenfoam_datadata, srcopenfoam_datadata_ptr)
    dstopenfoam_datadata_ptr = transfer(dstopenfoam_datadata, dstopenfoam_datadata_ptr)
    call fast_copyopenfoam_data(SrcOpenFOAM_DataData=srcopenfoam_datadata_ptr%p, DstOpenFOAM_DataData=dstopenfoam_datadata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyopenfoam_data

subroutine w_fast_destroyopenfoam_data(openfoam_datadata, errstat, errmsg)
    use fast_types, only: fast_destroyopenfoam_data, type_openfoam_data=>openfoam_data
    implicit none
    
    type openfoam_data_ptr_type
        type(type_openfoam_data), pointer :: p => NULL()
    end type openfoam_data_ptr_type
    type(openfoam_data_ptr_type) :: openfoam_datadata_ptr
    integer, intent(in), dimension(2) :: openfoam_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    openfoam_datadata_ptr = transfer(openfoam_datadata, openfoam_datadata_ptr)
    call fast_destroyopenfoam_data(OpenFOAM_DataData=openfoam_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyopenfoam_data

subroutine w_fast_copysupercontroller_data(srcsupercontroller_datadata, dstsupercontroller_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_supercontroller_data=>supercontroller_data, fast_copysupercontroller_data
    implicit none
    
    type supercontroller_data_ptr_type
        type(type_supercontroller_data), pointer :: p => NULL()
    end type supercontroller_data_ptr_type
    type(supercontroller_data_ptr_type) :: srcsupercontroller_datadata_ptr
    integer, intent(in), dimension(2) :: srcsupercontroller_datadata
    type(supercontroller_data_ptr_type) :: dstsupercontroller_datadata_ptr
    integer, intent(in), dimension(2) :: dstsupercontroller_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcsupercontroller_datadata_ptr = transfer(srcsupercontroller_datadata, srcsupercontroller_datadata_ptr)
    dstsupercontroller_datadata_ptr = transfer(dstsupercontroller_datadata, dstsupercontroller_datadata_ptr)
    call fast_copysupercontroller_data(SrcSuperController_DataData=srcsupercontroller_datadata_ptr%p, &
        DstSuperController_DataData=dstsupercontroller_datadata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copysupercontroller_data

subroutine w_fast_destroysupercontroller_data(supercontroller_datadata, errstat, errmsg)
    use fast_types, only: fast_destroysupercontroller_data, type_supercontroller_data=>supercontroller_data
    implicit none
    
    type supercontroller_data_ptr_type
        type(type_supercontroller_data), pointer :: p => NULL()
    end type supercontroller_data_ptr_type
    type(supercontroller_data_ptr_type) :: supercontroller_datadata_ptr
    integer, intent(in), dimension(2) :: supercontroller_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    supercontroller_datadata_ptr = transfer(supercontroller_datadata, supercontroller_datadata_ptr)
    call fast_destroysupercontroller_data(SuperController_DataData=supercontroller_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroysupercontroller_data

subroutine w_fast_copysubdyn_data(srcsubdyn_datadata, dstsubdyn_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_subdyn_data=>subdyn_data, fast_copysubdyn_data
    implicit none
    
    type subdyn_data_ptr_type
        type(type_subdyn_data), pointer :: p => NULL()
    end type subdyn_data_ptr_type
    type(subdyn_data_ptr_type) :: srcsubdyn_datadata_ptr
    integer, intent(in), dimension(2) :: srcsubdyn_datadata
    type(subdyn_data_ptr_type) :: dstsubdyn_datadata_ptr
    integer, intent(in), dimension(2) :: dstsubdyn_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcsubdyn_datadata_ptr = transfer(srcsubdyn_datadata, srcsubdyn_datadata_ptr)
    dstsubdyn_datadata_ptr = transfer(dstsubdyn_datadata, dstsubdyn_datadata_ptr)
    call fast_copysubdyn_data(SrcSubDyn_DataData=srcsubdyn_datadata_ptr%p, DstSubDyn_DataData=dstsubdyn_datadata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, &
        ErrMsg=errmsg)
end subroutine w_fast_copysubdyn_data

subroutine w_fast_destroysubdyn_data(subdyn_datadata, errstat, errmsg)
    use fast_types, only: fast_destroysubdyn_data, type_subdyn_data=>subdyn_data
    implicit none
    
    type subdyn_data_ptr_type
        type(type_subdyn_data), pointer :: p => NULL()
    end type subdyn_data_ptr_type
    type(subdyn_data_ptr_type) :: subdyn_datadata_ptr
    integer, intent(in), dimension(2) :: subdyn_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    subdyn_datadata_ptr = transfer(subdyn_datadata, subdyn_datadata_ptr)
    call fast_destroysubdyn_data(SubDyn_DataData=subdyn_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroysubdyn_data

subroutine w_fast_copyextptfm_data(srcextptfm_datadata, dstextptfm_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyextptfm_data, type_extptfm_data=>extptfm_data
    implicit none
    
    type extptfm_data_ptr_type
        type(type_extptfm_data), pointer :: p => NULL()
    end type extptfm_data_ptr_type
    type(extptfm_data_ptr_type) :: srcextptfm_datadata_ptr
    integer, intent(in), dimension(2) :: srcextptfm_datadata
    type(extptfm_data_ptr_type) :: dstextptfm_datadata_ptr
    integer, intent(in), dimension(2) :: dstextptfm_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcextptfm_datadata_ptr = transfer(srcextptfm_datadata, srcextptfm_datadata_ptr)
    dstextptfm_datadata_ptr = transfer(dstextptfm_datadata, dstextptfm_datadata_ptr)
    call fast_copyextptfm_data(SrcExtPtfm_DataData=srcextptfm_datadata_ptr%p, DstExtPtfm_DataData=dstextptfm_datadata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, &
        ErrMsg=errmsg)
end subroutine w_fast_copyextptfm_data

subroutine w_fast_destroyextptfm_data(extptfm_datadata, errstat, errmsg)
    use fast_types, only: fast_destroyextptfm_data, type_extptfm_data=>extptfm_data
    implicit none
    
    type extptfm_data_ptr_type
        type(type_extptfm_data), pointer :: p => NULL()
    end type extptfm_data_ptr_type
    type(extptfm_data_ptr_type) :: extptfm_datadata_ptr
    integer, intent(in), dimension(2) :: extptfm_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    extptfm_datadata_ptr = transfer(extptfm_datadata, extptfm_datadata_ptr)
    call fast_destroyextptfm_data(ExtPtfm_DataData=extptfm_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyextptfm_data

subroutine w_fast_copyhydrodyn_data(srchydrodyn_datadata, dsthydrodyn_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_hydrodyn_data=>hydrodyn_data, fast_copyhydrodyn_data
    implicit none
    
    type hydrodyn_data_ptr_type
        type(type_hydrodyn_data), pointer :: p => NULL()
    end type hydrodyn_data_ptr_type
    type(hydrodyn_data_ptr_type) :: srchydrodyn_datadata_ptr
    integer, intent(in), dimension(2) :: srchydrodyn_datadata
    type(hydrodyn_data_ptr_type) :: dsthydrodyn_datadata_ptr
    integer, intent(in), dimension(2) :: dsthydrodyn_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srchydrodyn_datadata_ptr = transfer(srchydrodyn_datadata, srchydrodyn_datadata_ptr)
    dsthydrodyn_datadata_ptr = transfer(dsthydrodyn_datadata, dsthydrodyn_datadata_ptr)
    call fast_copyhydrodyn_data(SrcHydroDyn_DataData=srchydrodyn_datadata_ptr%p, DstHydroDyn_DataData=dsthydrodyn_datadata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyhydrodyn_data

subroutine w_fast_destroyhydrodyn_data(hydrodyn_datadata, errstat, errmsg)
    use fast_types, only: fast_destroyhydrodyn_data, type_hydrodyn_data=>hydrodyn_data
    implicit none
    
    type hydrodyn_data_ptr_type
        type(type_hydrodyn_data), pointer :: p => NULL()
    end type hydrodyn_data_ptr_type
    type(hydrodyn_data_ptr_type) :: hydrodyn_datadata_ptr
    integer, intent(in), dimension(2) :: hydrodyn_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    hydrodyn_datadata_ptr = transfer(hydrodyn_datadata, hydrodyn_datadata_ptr)
    call fast_destroyhydrodyn_data(HydroDyn_DataData=hydrodyn_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyhydrodyn_data

subroutine w_fast_copyicefloe_data(srcicefloe_datadata, dsticefloe_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_icefloe_data=>icefloe_data, fast_copyicefloe_data
    implicit none
    
    type icefloe_data_ptr_type
        type(type_icefloe_data), pointer :: p => NULL()
    end type icefloe_data_ptr_type
    type(icefloe_data_ptr_type) :: srcicefloe_datadata_ptr
    integer, intent(in), dimension(2) :: srcicefloe_datadata
    type(icefloe_data_ptr_type) :: dsticefloe_datadata_ptr
    integer, intent(in), dimension(2) :: dsticefloe_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcicefloe_datadata_ptr = transfer(srcicefloe_datadata, srcicefloe_datadata_ptr)
    dsticefloe_datadata_ptr = transfer(dsticefloe_datadata, dsticefloe_datadata_ptr)
    call fast_copyicefloe_data(SrcIceFloe_DataData=srcicefloe_datadata_ptr%p, DstIceFloe_DataData=dsticefloe_datadata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, &
        ErrMsg=errmsg)
end subroutine w_fast_copyicefloe_data

subroutine w_fast_destroyicefloe_data(icefloe_datadata, errstat, errmsg)
    use fast_types, only: type_icefloe_data=>icefloe_data, fast_destroyicefloe_data
    implicit none
    
    type icefloe_data_ptr_type
        type(type_icefloe_data), pointer :: p => NULL()
    end type icefloe_data_ptr_type
    type(icefloe_data_ptr_type) :: icefloe_datadata_ptr
    integer, intent(in), dimension(2) :: icefloe_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    icefloe_datadata_ptr = transfer(icefloe_datadata, icefloe_datadata_ptr)
    call fast_destroyicefloe_data(IceFloe_DataData=icefloe_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyicefloe_data

subroutine w_fast_copymap_data(srcmap_datadata, dstmap_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copymap_data, type_map_data=>map_data
    implicit none
    
    type map_data_ptr_type
        type(type_map_data), pointer :: p => NULL()
    end type map_data_ptr_type
    type(map_data_ptr_type) :: srcmap_datadata_ptr
    integer, intent(in), dimension(2) :: srcmap_datadata
    type(map_data_ptr_type) :: dstmap_datadata_ptr
    integer, intent(in), dimension(2) :: dstmap_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcmap_datadata_ptr = transfer(srcmap_datadata, srcmap_datadata_ptr)
    dstmap_datadata_ptr = transfer(dstmap_datadata, dstmap_datadata_ptr)
    call fast_copymap_data(SrcMAP_DataData=srcmap_datadata_ptr%p, DstMAP_DataData=dstmap_datadata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copymap_data

subroutine w_fast_destroymap_data(map_datadata, errstat, errmsg)
    use fast_types, only: fast_destroymap_data, type_map_data=>map_data
    implicit none
    
    type map_data_ptr_type
        type(type_map_data), pointer :: p => NULL()
    end type map_data_ptr_type
    type(map_data_ptr_type) :: map_datadata_ptr
    integer, intent(in), dimension(2) :: map_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    map_datadata_ptr = transfer(map_datadata, map_datadata_ptr)
    call fast_destroymap_data(MAP_DataData=map_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroymap_data

subroutine w_fast_copyfeamooring_data(srcfeamooring_datadata, dstfeamooring_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyfeamooring_data, type_feamooring_data=>feamooring_data
    implicit none
    
    type feamooring_data_ptr_type
        type(type_feamooring_data), pointer :: p => NULL()
    end type feamooring_data_ptr_type
    type(feamooring_data_ptr_type) :: srcfeamooring_datadata_ptr
    integer, intent(in), dimension(2) :: srcfeamooring_datadata
    type(feamooring_data_ptr_type) :: dstfeamooring_datadata_ptr
    integer, intent(in), dimension(2) :: dstfeamooring_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcfeamooring_datadata_ptr = transfer(srcfeamooring_datadata, srcfeamooring_datadata_ptr)
    dstfeamooring_datadata_ptr = transfer(dstfeamooring_datadata, dstfeamooring_datadata_ptr)
    call fast_copyfeamooring_data(SrcFEAMooring_DataData=srcfeamooring_datadata_ptr%p, DstFEAMooring_DataData=dstfeamooring_datadata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyfeamooring_data

subroutine w_fast_destroyfeamooring_data(feamooring_datadata, errstat, errmsg)
    use fast_types, only: type_feamooring_data=>feamooring_data, fast_destroyfeamooring_data
    implicit none
    
    type feamooring_data_ptr_type
        type(type_feamooring_data), pointer :: p => NULL()
    end type feamooring_data_ptr_type
    type(feamooring_data_ptr_type) :: feamooring_datadata_ptr
    integer, intent(in), dimension(2) :: feamooring_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    feamooring_datadata_ptr = transfer(feamooring_datadata, feamooring_datadata_ptr)
    call fast_destroyfeamooring_data(FEAMooring_DataData=feamooring_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyfeamooring_data

subroutine w_fast_copymoordyn_data(srcmoordyn_datadata, dstmoordyn_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copymoordyn_data, type_moordyn_data=>moordyn_data
    implicit none
    
    type moordyn_data_ptr_type
        type(type_moordyn_data), pointer :: p => NULL()
    end type moordyn_data_ptr_type
    type(moordyn_data_ptr_type) :: srcmoordyn_datadata_ptr
    integer, intent(in), dimension(2) :: srcmoordyn_datadata
    type(moordyn_data_ptr_type) :: dstmoordyn_datadata_ptr
    integer, intent(in), dimension(2) :: dstmoordyn_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcmoordyn_datadata_ptr = transfer(srcmoordyn_datadata, srcmoordyn_datadata_ptr)
    dstmoordyn_datadata_ptr = transfer(dstmoordyn_datadata, dstmoordyn_datadata_ptr)
    call fast_copymoordyn_data(SrcMoorDyn_DataData=srcmoordyn_datadata_ptr%p, DstMoorDyn_DataData=dstmoordyn_datadata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, &
        ErrMsg=errmsg)
end subroutine w_fast_copymoordyn_data

subroutine w_fast_destroymoordyn_data(moordyn_datadata, errstat, errmsg)
    use fast_types, only: type_moordyn_data=>moordyn_data, fast_destroymoordyn_data
    implicit none
    
    type moordyn_data_ptr_type
        type(type_moordyn_data), pointer :: p => NULL()
    end type moordyn_data_ptr_type
    type(moordyn_data_ptr_type) :: moordyn_datadata_ptr
    integer, intent(in), dimension(2) :: moordyn_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    moordyn_datadata_ptr = transfer(moordyn_datadata, moordyn_datadata_ptr)
    call fast_destroymoordyn_data(MoorDyn_DataData=moordyn_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroymoordyn_data

subroutine w_fast_copyorcaflex_data(srcorcaflex_datadata, dstorcaflex_datadata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyorcaflex_data, type_orcaflex_data=>orcaflex_data
    implicit none
    
    type orcaflex_data_ptr_type
        type(type_orcaflex_data), pointer :: p => NULL()
    end type orcaflex_data_ptr_type
    type(orcaflex_data_ptr_type) :: srcorcaflex_datadata_ptr
    integer, intent(in), dimension(2) :: srcorcaflex_datadata
    type(orcaflex_data_ptr_type) :: dstorcaflex_datadata_ptr
    integer, intent(in), dimension(2) :: dstorcaflex_datadata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcorcaflex_datadata_ptr = transfer(srcorcaflex_datadata, srcorcaflex_datadata_ptr)
    dstorcaflex_datadata_ptr = transfer(dstorcaflex_datadata, dstorcaflex_datadata_ptr)
    call fast_copyorcaflex_data(SrcOrcaFlex_DataData=srcorcaflex_datadata_ptr%p, DstOrcaFlex_DataData=dstorcaflex_datadata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyorcaflex_data

subroutine w_fast_destroyorcaflex_data(orcaflex_datadata, errstat, errmsg)
    use fast_types, only: fast_destroyorcaflex_data, type_orcaflex_data=>orcaflex_data
    implicit none
    
    type orcaflex_data_ptr_type
        type(type_orcaflex_data), pointer :: p => NULL()
    end type orcaflex_data_ptr_type
    type(orcaflex_data_ptr_type) :: orcaflex_datadata_ptr
    integer, intent(in), dimension(2) :: orcaflex_datadata
    integer(4) :: errstat
    character(*) :: errmsg
    orcaflex_datadata_ptr = transfer(orcaflex_datadata, orcaflex_datadata_ptr)
    call fast_destroyorcaflex_data(OrcaFlex_DataData=orcaflex_datadata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyorcaflex_data

subroutine w_fast_copymodulemaptype(srcmodulemaptypedata, dstmodulemaptypedata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copymodulemaptype, type_fast_modulemaptype=>fast_modulemaptype
    implicit none
    
    type fast_modulemaptype_ptr_type
        type(type_fast_modulemaptype), pointer :: p => NULL()
    end type fast_modulemaptype_ptr_type
    type(fast_modulemaptype_ptr_type) :: srcmodulemaptypedata_ptr
    integer, intent(in), dimension(2) :: srcmodulemaptypedata
    type(fast_modulemaptype_ptr_type) :: dstmodulemaptypedata_ptr
    integer, intent(in), dimension(2) :: dstmodulemaptypedata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcmodulemaptypedata_ptr = transfer(srcmodulemaptypedata, srcmodulemaptypedata_ptr)
    dstmodulemaptypedata_ptr = transfer(dstmodulemaptypedata, dstmodulemaptypedata_ptr)
    call fast_copymodulemaptype(SrcModuleMapTypeData=srcmodulemaptypedata_ptr%p, DstModuleMapTypeData=dstmodulemaptypedata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copymodulemaptype

subroutine w_fast_destroymodulemaptype(modulemaptypedata, errstat, errmsg)
    use fast_types, only: fast_destroymodulemaptype, type_fast_modulemaptype=>fast_modulemaptype
    implicit none
    
    type fast_modulemaptype_ptr_type
        type(type_fast_modulemaptype), pointer :: p => NULL()
    end type fast_modulemaptype_ptr_type
    type(fast_modulemaptype_ptr_type) :: modulemaptypedata_ptr
    integer, intent(in), dimension(2) :: modulemaptypedata
    integer(4) :: errstat
    character(*) :: errmsg
    modulemaptypedata_ptr = transfer(modulemaptypedata, modulemaptypedata_ptr)
    call fast_destroymodulemaptype(ModuleMapTypeData=modulemaptypedata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroymodulemaptype

subroutine w_fast_copyexterninputtype(srcexterninputtypedata, dstexterninputtypedata, ctrlcode, errstat, errmsg)
    use fast_types, only: type_fast_externinputtype=>fast_externinputtype, fast_copyexterninputtype
    implicit none
    
    type fast_externinputtype_ptr_type
        type(type_fast_externinputtype), pointer :: p => NULL()
    end type fast_externinputtype_ptr_type
    type(fast_externinputtype_ptr_type) :: srcexterninputtypedata_ptr
    integer, intent(in), dimension(2) :: srcexterninputtypedata
    type(fast_externinputtype_ptr_type) :: dstexterninputtypedata_ptr
    integer, intent(in), dimension(2) :: dstexterninputtypedata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcexterninputtypedata_ptr = transfer(srcexterninputtypedata, srcexterninputtypedata_ptr)
    dstexterninputtypedata_ptr = transfer(dstexterninputtypedata, dstexterninputtypedata_ptr)
    call fast_copyexterninputtype(SrcExternInputTypeData=srcexterninputtypedata_ptr%p, DstExternInputTypeData=dstexterninputtypedata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyexterninputtype

subroutine w_fast_destroyexterninputtype(externinputtypedata, errstat, errmsg)
    use fast_types, only: type_fast_externinputtype=>fast_externinputtype, fast_destroyexterninputtype
    implicit none
    
    type fast_externinputtype_ptr_type
        type(type_fast_externinputtype), pointer :: p => NULL()
    end type fast_externinputtype_ptr_type
    type(fast_externinputtype_ptr_type) :: externinputtypedata_ptr
    integer, intent(in), dimension(2) :: externinputtypedata
    integer(4) :: errstat
    character(*) :: errmsg
    externinputtypedata_ptr = transfer(externinputtypedata, externinputtypedata_ptr)
    call fast_destroyexterninputtype(ExternInputTypeData=externinputtypedata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyexterninputtype

subroutine w_fast_copymisc(srcmiscdata, dstmiscdata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copymisc, type_fast_miscvartype=>fast_miscvartype
    implicit none
    
    type fast_miscvartype_ptr_type
        type(type_fast_miscvartype), pointer :: p => NULL()
    end type fast_miscvartype_ptr_type
    type(fast_miscvartype_ptr_type) :: srcmiscdata_ptr
    integer, intent(in), dimension(2) :: srcmiscdata
    type(fast_miscvartype_ptr_type) :: dstmiscdata_ptr
    integer, intent(in), dimension(2) :: dstmiscdata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcmiscdata_ptr = transfer(srcmiscdata, srcmiscdata_ptr)
    dstmiscdata_ptr = transfer(dstmiscdata, dstmiscdata_ptr)
    call fast_copymisc(SrcMiscData=srcmiscdata_ptr%p, DstMiscData=dstmiscdata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copymisc

subroutine w_fast_destroymisc(miscdata, errstat, errmsg)
    use fast_types, only: type_fast_miscvartype=>fast_miscvartype, fast_destroymisc
    implicit none
    
    type fast_miscvartype_ptr_type
        type(type_fast_miscvartype), pointer :: p => NULL()
    end type fast_miscvartype_ptr_type
    type(fast_miscvartype_ptr_type) :: miscdata_ptr
    integer, intent(in), dimension(2) :: miscdata
    integer(4) :: errstat
    character(*) :: errmsg
    miscdata_ptr = transfer(miscdata, miscdata_ptr)
    call fast_destroymisc(MiscData=miscdata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroymisc

subroutine w_fast_copyexterninittype(srcexterninittypedata, dstexterninittypedata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyexterninittype, type_fast_externinittype=>fast_externinittype
    implicit none
    
    type fast_externinittype_ptr_type
        type(type_fast_externinittype), pointer :: p => NULL()
    end type fast_externinittype_ptr_type
    type(fast_externinittype_ptr_type) :: srcexterninittypedata_ptr
    integer, intent(in), dimension(2) :: srcexterninittypedata
    type(fast_externinittype_ptr_type) :: dstexterninittypedata_ptr
    integer, intent(in), dimension(2) :: dstexterninittypedata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcexterninittypedata_ptr = transfer(srcexterninittypedata, srcexterninittypedata_ptr)
    dstexterninittypedata_ptr = transfer(dstexterninittypedata, dstexterninittypedata_ptr)
    call fast_copyexterninittype(SrcExternInitTypeData=srcexterninittypedata_ptr%p, DstExternInitTypeData=dstexterninittypedata_ptr%p, CtrlCode=ctrlcode, &
        ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_copyexterninittype

subroutine w_fast_destroyexterninittype(externinittypedata, errstat, errmsg)
    use fast_types, only: type_fast_externinittype=>fast_externinittype, fast_destroyexterninittype
    implicit none
    
    type fast_externinittype_ptr_type
        type(type_fast_externinittype), pointer :: p => NULL()
    end type fast_externinittype_ptr_type
    type(fast_externinittype_ptr_type) :: externinittypedata_ptr
    integer, intent(in), dimension(2) :: externinittypedata
    integer(4) :: errstat
    character(*) :: errmsg
    externinittypedata_ptr = transfer(externinittypedata, externinittypedata_ptr)
    call fast_destroyexterninittype(ExternInitTypeData=externinittypedata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyexterninittype

subroutine w_fast_copyturbinetype(srcturbinetypedata, dstturbinetypedata, ctrlcode, errstat, errmsg)
    use fast_types, only: fast_copyturbinetype, type_fast_turbinetype=>fast_turbinetype
    implicit none
    
    type fast_turbinetype_ptr_type
        type(type_fast_turbinetype), pointer :: p => NULL()
    end type fast_turbinetype_ptr_type
    type(fast_turbinetype_ptr_type) :: srcturbinetypedata_ptr
    integer, intent(in), dimension(2) :: srcturbinetypedata
    type(fast_turbinetype_ptr_type) :: dstturbinetypedata_ptr
    integer, intent(in), dimension(2) :: dstturbinetypedata
    integer(4) :: ctrlcode
    integer(4) :: errstat
    character(*) :: errmsg
    srcturbinetypedata_ptr = transfer(srcturbinetypedata, srcturbinetypedata_ptr)
    dstturbinetypedata_ptr = transfer(dstturbinetypedata, dstturbinetypedata_ptr)
    call fast_copyturbinetype(SrcTurbineTypeData=srcturbinetypedata_ptr%p, DstTurbineTypeData=dstturbinetypedata_ptr%p, CtrlCode=ctrlcode, ErrStat=errstat, &
        ErrMsg=errmsg)
end subroutine w_fast_copyturbinetype

subroutine w_fast_destroyturbinetype(turbinetypedata, errstat, errmsg)
    use fast_types, only: fast_destroyturbinetype, type_fast_turbinetype=>fast_turbinetype
    implicit none
    
    type fast_turbinetype_ptr_type
        type(type_fast_turbinetype), pointer :: p => NULL()
    end type fast_turbinetype_ptr_type
    type(fast_turbinetype_ptr_type) :: turbinetypedata_ptr
    integer, intent(in), dimension(2) :: turbinetypedata
    integer(4) :: errstat
    character(*) :: errmsg
    turbinetypedata_ptr = transfer(turbinetypedata, turbinetypedata_ptr)
    call fast_destroyturbinetype(TurbineTypeData=turbinetypedata_ptr%p, ErrStat=errstat, ErrMsg=errmsg)
end subroutine w_fast_destroyturbinetype

subroutine w_fast_types__get__Module_Unknown(w_Module_Unknown)
    use fast_types, only: fast_types_Module_Unknown => Module_Unknown
    implicit none
    integer(4), intent(out) :: w_Module_Unknown
    
    w_Module_Unknown = fast_types_Module_Unknown
end subroutine w_fast_types__get__Module_Unknown

subroutine w_fast_types__get__Module_None(w_Module_None)
    use fast_types, only: fast_types_Module_None => Module_None
    implicit none
    integer(4), intent(out) :: w_Module_None
    
    w_Module_None = fast_types_Module_None
end subroutine w_fast_types__get__Module_None

subroutine w_fast_types__get__Module_IfW(w_Module_IfW)
    use fast_types, only: fast_types_Module_IfW => Module_IfW
    implicit none
    integer(4), intent(out) :: w_Module_IfW
    
    w_Module_IfW = fast_types_Module_IfW
end subroutine w_fast_types__get__Module_IfW

subroutine w_fast_types__get__Module_OpFM(w_Module_OpFM)
    use fast_types, only: fast_types_Module_OpFM => Module_OpFM
    implicit none
    integer(4), intent(out) :: w_Module_OpFM
    
    w_Module_OpFM = fast_types_Module_OpFM
end subroutine w_fast_types__get__Module_OpFM

subroutine w_fast_types__get__Module_ED(w_Module_ED)
    use fast_types, only: fast_types_Module_ED => Module_ED
    implicit none
    integer(4), intent(out) :: w_Module_ED
    
    w_Module_ED = fast_types_Module_ED
end subroutine w_fast_types__get__Module_ED

subroutine w_fast_types__get__Module_BD(w_Module_BD)
    use fast_types, only: fast_types_Module_BD => Module_BD
    implicit none
    integer(4), intent(out) :: w_Module_BD
    
    w_Module_BD = fast_types_Module_BD
end subroutine w_fast_types__get__Module_BD

subroutine w_fast_types__get__Module_AD14(w_Module_AD14)
    use fast_types, only: fast_types_Module_AD14 => Module_AD14
    implicit none
    integer(4), intent(out) :: w_Module_AD14
    
    w_Module_AD14 = fast_types_Module_AD14
end subroutine w_fast_types__get__Module_AD14

subroutine w_fast_types__get__Module_AD(w_Module_AD)
    use fast_types, only: fast_types_Module_AD => Module_AD
    implicit none
    integer(4), intent(out) :: w_Module_AD
    
    w_Module_AD = fast_types_Module_AD
end subroutine w_fast_types__get__Module_AD

subroutine w_fast_types__get__Module_SrvD(w_Module_SrvD)
    use fast_types, only: fast_types_Module_SrvD => Module_SrvD
    implicit none
    integer(4), intent(out) :: w_Module_SrvD
    
    w_Module_SrvD = fast_types_Module_SrvD
end subroutine w_fast_types__get__Module_SrvD

subroutine w_fast_types__get__Module_HD(w_Module_HD)
    use fast_types, only: fast_types_Module_HD => Module_HD
    implicit none
    integer(4), intent(out) :: w_Module_HD
    
    w_Module_HD = fast_types_Module_HD
end subroutine w_fast_types__get__Module_HD

subroutine w_fast_types__get__Module_SD(w_Module_SD)
    use fast_types, only: fast_types_Module_SD => Module_SD
    implicit none
    integer(4), intent(out) :: w_Module_SD
    
    w_Module_SD = fast_types_Module_SD
end subroutine w_fast_types__get__Module_SD

subroutine w_fast_types__get__Module_ExtPtfm(w_Module_ExtPtfm)
    use fast_types, only: fast_types_Module_ExtPtfm => Module_ExtPtfm
    implicit none
    integer(4), intent(out) :: w_Module_ExtPtfm
    
    w_Module_ExtPtfm = fast_types_Module_ExtPtfm
end subroutine w_fast_types__get__Module_ExtPtfm

subroutine w_fast_types__get__Module_MAP(w_Module_MAP)
    use fast_types, only: fast_types_Module_MAP => Module_MAP
    implicit none
    integer(4), intent(out) :: w_Module_MAP
    
    w_Module_MAP = fast_types_Module_MAP
end subroutine w_fast_types__get__Module_MAP

subroutine w_fast_types__get__Module_FEAM(w_Module_FEAM)
    use fast_types, only: fast_types_Module_FEAM => Module_FEAM
    implicit none
    integer(4), intent(out) :: w_Module_FEAM
    
    w_Module_FEAM = fast_types_Module_FEAM
end subroutine w_fast_types__get__Module_FEAM

subroutine w_fast_types__get__Module_MD(w_Module_MD)
    use fast_types, only: fast_types_Module_MD => Module_MD
    implicit none
    integer(4), intent(out) :: w_Module_MD
    
    w_Module_MD = fast_types_Module_MD
end subroutine w_fast_types__get__Module_MD

subroutine w_fast_types__get__Module_Orca(w_Module_Orca)
    use fast_types, only: fast_types_Module_Orca => Module_Orca
    implicit none
    integer(4), intent(out) :: w_Module_Orca
    
    w_Module_Orca = fast_types_Module_Orca
end subroutine w_fast_types__get__Module_Orca

subroutine w_fast_types__get__Module_IceF(w_Module_IceF)
    use fast_types, only: fast_types_Module_IceF => Module_IceF
    implicit none
    integer(4), intent(out) :: w_Module_IceF
    
    w_Module_IceF = fast_types_Module_IceF
end subroutine w_fast_types__get__Module_IceF

subroutine w_fast_types__get__Module_IceD(w_Module_IceD)
    use fast_types, only: fast_types_Module_IceD => Module_IceD
    implicit none
    integer(4), intent(out) :: w_Module_IceD
    
    w_Module_IceD = fast_types_Module_IceD
end subroutine w_fast_types__get__Module_IceD

subroutine w_fast_types__get__NumModules(w_NumModules)
    use fast_types, only: fast_types_NumModules => NumModules
    implicit none
    integer(4), intent(out) :: w_NumModules
    
    w_NumModules = fast_types_NumModules
end subroutine w_fast_types__get__NumModules

subroutine w_fast_types__get__MaxNBlades(w_MaxNBlades)
    use fast_types, only: fast_types_MaxNBlades => MaxNBlades
    implicit none
    integer(4), intent(out) :: w_MaxNBlades
    
    w_MaxNBlades = fast_types_MaxNBlades
end subroutine w_fast_types__get__MaxNBlades

subroutine w_fast_types__get__IceD_MaxLegs(w_IceD_MaxLegs)
    use fast_types, only: fast_types_IceD_MaxLegs => IceD_MaxLegs
    implicit none
    integer(4), intent(out) :: w_IceD_MaxLegs
    
    w_IceD_MaxLegs = fast_types_IceD_MaxLegs
end subroutine w_fast_types__get__IceD_MaxLegs

! End of module fast_types defined in file F:/cyPHM/openfast/build/modules-local/fast-library/FAST_Types.f90

