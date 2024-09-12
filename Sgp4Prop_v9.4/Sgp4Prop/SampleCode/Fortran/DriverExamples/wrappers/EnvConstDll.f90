! This wrapper file was generated automatically by the GenDllWrappers program.
module EnvConstDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes the EnvInit DLL for use in the program.
! If this function returns an error, it is recommended that you stop the program immediately.
! 
! An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
! 
! When the function is called, the GEO model is set to WGS-72 and the FK model is set to FK5.  If the user plans to use the SGP4 propagator, do NOT change this default setting. Otherwise, SGP4 won't work
function EnvInit(apAddr) bind(C, name = "EnvInit") result(errCode)
   integer :: errCode	! Returns zero indicating the EnvConst DLL has been initialized successfully. Other values indicate an error.
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit, see the documentation for DllMain.dll for details.
end function EnvInit
!*******************************************************************************



! Returns information about the EnvConst DLL.
! The returned string provides information about the version number, build date, and the platform of the EnvConst DLL.
subroutine EnvGetInfo(infoStr) bind(C, name = "EnvGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about EnvConst.dll.
end subroutine EnvGetInfo
!*******************************************************************************



! Reads Earth constants (GEO) model and fundamental catalogue (FK) model settings from a file.
! The users can use NAME=VALUE pair to setup the GEO and FK models in the input file. 
! 
! For GEO model, the valid names are GEOCONST, BCONST and the valid values are WGS-72, WGS72,  72, WGS-84, WGS84, 84, EGM-96, EGM96, 96, EGM-08, EGM08, 08, JGM-2, JGM2, 2, SEM68R, 68, GEM5, 5, GEM9, and 9.
! 
! For FK model, the valid name is FKCONST and the valid values are: FK4, 4, FK5, 5.
! 
! All the string literals are case-insensitive.	
function EnvLoadFile(envFile) bind(C, name = "EnvLoadFile") result(errCode)
   integer :: errCode	! Returns zero indicating the input file has been loaded successfully. Other values indicate an error.
   character, intent(in) :: envFile(512)   ! The name of the input file.
end function EnvLoadFile
!*******************************************************************************



! Saves the current Earth constants (GEO) model and fundamental catalogue (FK) model settings to a file.
! Returns zero indicating the GEO and FK settings have been successfully saved to the file. Other values indicate an error.
function EnvSaveFile(envConstFile, saveMode, saveForm) bind(C, name = "EnvSaveFile") result(errCode)
   integer :: errCode	! Returns zero indicating the GEO and FK settings have been successfully saved to the file. Other values indicate an error.
   character, intent(in) :: envConstFile(512)   ! The name of the file in which to save the settings.
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one. (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file. (0 = text format, 1 = xml (not yet implemented, reserved for future))
end function EnvSaveFile
!*******************************************************************************



! Returns the current fundamental catalogue (FK) setting. 
! The FK model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program. 
function EnvGetFkIdx() bind(C, name = "EnvGetFkIdx") result(xf_FkMod)
   integer :: xf_FkMod	! Return the current FK setting as an integer. Valid values are: (4 = FK4, 5 = FK5)
end function EnvGetFkIdx
!*******************************************************************************



! Changes the fundamental catalogue (FK) setting to the specified value. 
! If the users enter an invalid value for the fkIdx, the program will continue to use the current setting. 
! 
! The FK model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
! The FK model must be set to FK5 to use the SGP4 propagator.
subroutine EnvSetFkIdx(xf_FkMod) bind(C, name = "EnvSetFkIdx")
   integer, value :: xf_FkMod   ! Specifies the FK model to use. The following values are accepted: xf_FkMod= 4: FK4, xf_FkMod= 5: FK5
end subroutine EnvSetFkIdx
!*******************************************************************************



! Returns the current Earth constants (GEO) setting. 
! 
! The GEO model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program.
! 
! The following table lists possible values of the return value GEO setting:
! 
! table
! 
! Value
! Value interpretation
! 
! 84WGS-84
! 96EGM-96
! 08EGM-08
! 72WGS-72 (default)
! 2JGM2
! 68STEM68R, SEM68R
! 5GEM5
! 9GEM9
! 
function EnvGetGeoIdx() bind(C, name = "EnvGetGeoIdx") result(xf_GeoMod)
   integer :: xf_GeoMod	! The current GEO setting, expressed as an integer.
end function EnvGetGeoIdx
!*******************************************************************************



! Changes the Earth constants (GEO) setting to the specified value.
! 
! If you specify an invalid value for xf_GeoMod, the program will continue to use the current setting. 
! 
! The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately
! 
! The following table lists possible values of the parameter value GEO setting:
! 
! table
! 
! Value
! Value interpretation
! 
! 84WGS-84
! 96EGM-96
! 08EGM-08
! 72WGS-72 (default)
! 2JGM2
! 68STEM68R, SEM68R
! 5GEM5
! 9GEM9
! 
! 
! The GEO model must be set to WGS-72 to use the SGP4 propagator.
subroutine EnvSetGeoIdx(xf_GeoMod) bind(C, name = "EnvSetGeoIdx")
   integer, value :: xf_GeoMod   ! Specifies the GEO model to use.
end subroutine EnvSetGeoIdx
!*******************************************************************************



! Returns the name of the current Earth constants (GEO) model. 
! 
! The geoStr parameter may contain one of the following values:
! 
! table
! WGS-84
! EGM-96
! EGM-08
! WGS-72
! JGM2
! SEM68R
! GEM5
! GEM9
! 
subroutine EnvGetGeoStr(geoStr) bind(C, name = "EnvGetGeoStr")
   character, intent(out) :: geoStr(6)   ! A string to store the name of the current GEO model.
end subroutine EnvGetGeoStr
!*******************************************************************************



! Changes the Earth constants (GEO) setting to the model specified by a string literal. 
! 
! If you specify an invalid value for geoStr, the program will continue to use the current setting.
! 
! The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
! 
! The following table lists possible values of the parameter value GEO setting:
! 
! table
! 
! geoStr (any string in the row)
! Interpretation
! 
! 'WGS-84', 'WGS84', '84'WGS-84
! 'EGM-96', 'EGM96', '96'EGM-96
! 'EGM-08', 'EGM08', '8'EGM-08
! 'WGS-72', 'WGS72', '72'WGS-72 (default)
! 'JGM-2, 'JGM2', '2'JGM-2
! 'SEM68R', '68'STEM68R, SEM68R
! 'GEM5', '5'GEM5
! 'GEM9', '9'GEM9
!    
! 
! The GEO model must be set to WGS-72 to use the SGP4 propagator.
subroutine EnvSetGeoStr(geoStr) bind(C, name = "EnvSetGeoStr")
   character, intent(in) :: geoStr(6)   ! The GEO model to use, expressed as a string.
end subroutine EnvSetGeoStr
!*******************************************************************************



! Retrieves the value of one of the constants from the current Earth constants (GEO) model. 
function EnvGetGeoConst(xf_GeoCon) bind(C, name = "EnvGetGeoConst") result(retVal)
   real(8) :: retVal	! Value of the requested GEO constant
   integer, value :: xf_GeoCon   ! An index specifying the constant you wish to retrieve, see XF_GEOCON_? for field specification
end function EnvGetGeoConst
!*******************************************************************************



! Retrieves the value of one of the constants from the current fundamental catalogue (FK) model.
function EnvGetFkConst(xf_FkCon) bind(C, name = "EnvGetFkConst") result(retVal)
   real(8) :: retVal	! Value of the requested FK constant
   integer, value :: xf_FkCon   ! An index specifying the constant you wish to retrieve, , see XF_FKCON_? for field specification
end function EnvGetFkConst
!*******************************************************************************



! Returns a handle that can be used to access the fundamental catalogue (FK) data structure. 
! 
! This function is needed when calling the ThetaGrnwch function from TimeFunc.dll.
! 
! The handle returned by this function is sometimes called a pointer for historical reasons. The name EnvGetFkPtr comes from the fact that the handle used to be called a pointer.
function EnvGetFkPtr() bind(C, name = "EnvGetFkPtr") result(fkPtr)
   integer(8) :: fkPtr	! A handle which can be used to access the FK data structure.
end function EnvGetFkPtr
!*******************************************************************************



! Specifies the shape of the earth that will be used by the Astro Standards software, either spherical earth or oblate earth
subroutine EnvSetEarthShape(earthShape) bind(C, name = "EnvSetEarthShape")
   integer, value :: earthShape   ! The value indicates the shape of the earth: 0=spherical earth, 1= oblate earth (default)
end subroutine EnvSetEarthShape
!*******************************************************************************



! Returns the value representing the shape of the earth being used by the Astro Standards software, either spherical earth or oblate earth
function EnvGetEarthShape() bind(C, name = "EnvGetEarthShape") result(earthShape)
   integer :: earthShape	! The value indicates the shape of the earth that is being used in the Astro Standards software: 0=spherical earth, 1= oblate earth
end function EnvGetEarthShape
!*******************************************************************************

end interface




   
   ! Indexes of Earth Constant fields
   integer, parameter :: &   
      XF_GEOCON_FF    = 1,       & ! Earth flattening (reciprocal; unitless)
      XF_GEOCON_J2    = 2,       & ! J2 (unitless)
      XF_GEOCON_J3    = 3,       & ! J3 (unitless)
      XF_GEOCON_J4    = 4,       & ! J4 (unitless)
      XF_GEOCON_KE    = 5,       & ! Ke (er**1.5/min)
      XF_GEOCON_KMPER = 6,       & ! Earth radius (km/er)
      XF_GEOCON_RPTIM = 7,       & ! Earth rotation rate w.r.t. fixed equinox (rad/min)
   
      XF_GEOCON_CK2   = 8,       & ! J2/2 (unitless)
      XF_GEOCON_CK4   = 9,       & ! -3/8 J4 (unitless)
      XF_GEOCON_KS2EK = 10,      & ! Converts km/sec to er/kem
      XF_GEOCON_THDOT = 11,      & ! Earth rotation rate w.r.t. fixed equinox (rad/kemin)
      XF_GEOCON_J5    = 12,      & ! J5 (unitless)
      XF_GEOCON_MU    = 13;        ! Gravitational parameter km^3/(solar s)^2
      
   
   ! Indexes of FK Constant fields
   integer, parameter :: &                   
      XF_FKCON_C1     = 1,       & ! Earth rotation rate w.r.t. moving equinox (rad/day) 
      XF_FKCON_C1DOT  = 2,       & ! Earth rotation acceleration(rad/day**2) 
      XF_FKCON_THGR70 = 3;         ! Greenwich angle (1970; rad) 
   
   ! Indexes represent geopotential models GEO
   integer, parameter :: &
      XF_GEOMOD_JGM2   =    2, &   ! Earth constants - JGM2
      XF_GEOMOD_GEM5   =    5, &   ! Earth constants - GEM5
      XF_GEOMOD_EGM08  =    8, &   ! Earth constants - EGM-08
      XF_GEOMOD_GEM9   =    9, &   ! Earth constants - GEM9
      XF_GEOMOD_STEM68 =   68, &   ! Earth constants - STEM68
      XF_GEOMOD_WGS72  =   72, &   ! Earth constants - WGS-72
      XF_GEOMOD_WGS84  =   84, &   ! Earth constants - WGS-84
      XF_GEOMOD_EGM96  =   96, &   ! Earth constants - EGM-96
      XF_GEOMOD_UNKNOWN=  100;     ! Invalid earth model
   
   !*******************************************************************************
   
   ! Indexes represent fundamental catalogue FK
   integer, parameter :: &
      XF_FKMOD_4 = 4, &  ! Fundamental Catalog - FK5
      XF_FKMOD_5 = 5;    ! Fundamental Catalog - FK4
   
   
end module EnvConstDll
! ========================= End of auto generated code ==========================
