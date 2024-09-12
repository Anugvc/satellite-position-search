! This wrapper file was generated automatically by the GenDllWrappers program.
module FovDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes Fov dll for use in the program
function FovInit(apAddr) bind(C, name = "FovInit") result(errCode)
   integer :: errCode	! 0 if Fov.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function FovInit
!*******************************************************************************



! Returns information about the current version of Fov.dll. The information is placed in the string parameter you pass in
subroutine FovGetInfo(infoStr) bind(C, name = "FovGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Fov.dll.
end subroutine FovGetInfo
!*******************************************************************************



! Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
function FovLoadFile(fovInputFile) bind(C, name = "FovLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: fovInputFile(512)   ! The name of the file containing Fov-related parameters
end function FovLoadFile
!*******************************************************************************



! Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
function FovLoadFileAll(fovInputFile) bind(C, name = "FovLoadFileAll") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: fovInputFile(512)   ! The name of the file containing Fov-related parameters
end function FovLoadFileAll
!*******************************************************************************



! Loads a single Fov-typed card
function FovLoadCard(card) bind(C, name = "FovLoadCard") result(errCode)
   integer :: errCode	! 0 if the input card is read successfully, non-0 if there is an error
   character, intent(in) :: card(512)   ! Fov-type input card
end function FovLoadCard
!*******************************************************************************



! Saves any currently loaded Fov-related settings to a file
function FovSaveFile(fovFile, saveMode, saveForm) bind(C, name = "FovSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: fovFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function FovSaveFile
!*******************************************************************************



! This function retrieves various FOV input data being entered from input flat files (various FOV cards)
subroutine FovGetDataFrInputFiles(xa_fovCtrl, numOfWindows, startStopTimes, numOfSources, xa_fovSrc_Arr, numOfTargets, &
xa_fovTgt_Arr, numVicSats, vicSatNums) bind(C, name = "FovGetDataFrInputFiles")
   real(8), intent(out) :: xa_fovCtrl(8)   ! FOV control parameters, see XA_FOVCTRL_? for array arrangement
   integer, intent(out) :: numOfWindows   ! Number of specified start/stop windows
   real(8), intent(out) :: startStopTimes(256)   ! Array of start/stop times in days since 1950 UTC (even idxs=start times, odd idxs=stop times)
   integer, intent(out) :: numOfSources   ! Number of sources
   real(8), intent(out) :: xa_fovSrc_Arr(8, 128)   ! Array of source records, see XA_FOVSRC_? for array arrangement
   integer, intent(out) :: numOfTargets   ! Number of targets
   real(8), intent(out) :: xa_fovTgt_Arr(8, 128)   ! Array of target records, see XA_FOVTGT_? for array arrangement
   integer, intent(out) :: numVicSats   ! Number of specified potential victims
   integer, intent(out) :: vicSatNums(128)   ! Array of satellite numbers of the specified potential victims
end subroutine FovGetDataFrInputFiles
!*******************************************************************************



! This function screens the specified start/end time window and returns passes when the target satellite can be seen (passed all limit checks) by the source 
function FovFindTargetPasses(startTimeDs50UTC, stopTimeDs50UTC, srcSenKey, tgtSatKey, tgtPassesArr, numOfPasses) &
bind(C, name = "FovFindTargetPasses") result(errCode)
   integer :: errCode	! 0 if successfully, non-0 if there is an error
   real(8), value :: startTimeDs50UTC   ! window start time in days since 1950 UTC
   real(8), value :: stopTimeDs50UTC   ! window stop time in days since 1950 UTC
   integer(8), value :: srcSenKey   ! the source sensor key
   integer(8), value :: tgtSatKey   ! the targeted satellite's unique key
   real(8), intent(out) :: tgtPassesArr(2, *)   ! array of entry/exit times (in Ds50TAI) of each pass; the size of the array should match the specified value in XA_FOVRUN_MAXPASSES
   integer, intent(out) :: numOfPasses   ! number of passes that target satellite can be seen (passed all limit checks) by the source sensor
end function FovFindTargetPasses
!*******************************************************************************



! This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is an elset).
! 
! The xa_emeDat array size is [numObs, 3].  The penetration time indexes are:
! 
! table
! 
! Name
! Index
! Index Interpretation
! 
!  0 entry time (ds50UTC)
!  1 minimum time (ds50UTC)
!  2 exit time (ds50UTC)
! 
! 
! See FovGetDataFrInputFiles for a description of the XA_FOVSRC parameter values.
function FovTargetElset(xa_fovRun, xa_fovSrc, tgtSatKey, vicSatKey, xa_emeDat, numOfPasses) &
bind(C, name = "FovTargetElset") result(errCode)
   integer :: errCode	! 0 if successfully, non-0 if there is an error
   real(8), intent(in) :: xa_fovRun(8)   ! fov run parameters, see XA_FOVRUN_? for array arrangement
   real(8), intent(in) :: xa_fovSrc(8)   ! source data, see XA_FOVSRC_? for array arrangement
   integer(8), value :: tgtSatKey   ! the targeted satellite's unique key
   integer(8), value :: vicSatKey   ! the victim satellite's unique key
   real(8), intent(out) :: xa_emeDat(3, *)   ! array of entry/minimum/exit (in Ds50TAI) times of each pass
   integer, intent(out) :: numOfPasses   ! number of passes found
end function FovTargetElset
!*******************************************************************************



! This function returns a look angle from the source to the potential victim satellite at the specified time (target is an elset)
! 
! If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid.
function FovTargetElsetLook(currDs50TAI, xa_fovSrc, vicSatKey, xa_look) bind(C, name = "FovTargetElsetLook") result(errCode)
   integer :: errCode	! 0 if successfully, non-0 if there is an error
   real(8), value :: currDs50TAI   ! Time, in ds50TAI, for which to compute the look angle
   real(8), intent(in) :: xa_fovSrc(8)   ! source data, see XA_FOVSRC_? for array arrangement
   integer(8), value :: vicSatKey   ! the victim satellite's unique key
   real(8), intent(out) :: xa_look(8)   ! look angle data, see XA_LOOK_? for array arrangement
end function FovTargetElsetLook
!*******************************************************************************



! This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is a vector: AZ/EL or RA/DEC).
! See FovTargetElset for a description of the xa_emeDat array.
! If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid 
function FovTargetVec(xa_fovRun, xa_fovSrc, xa_fovTgt, vicSatKey, xa_emeDat, numOfPasses) &
bind(C, name = "FovTargetVec") result(errCode)
   integer :: errCode	! 0 if successfully, non-0 if there is an error
   real(8), intent(in) :: xa_fovRun(8)   ! fov run parameters, see XA_FOVRUN_? for array arrangement
   real(8), intent(in) :: xa_fovSrc(8)   ! source data, see XA_FOVSRC_? for array arrangement
   real(8), intent(in) :: xa_fovTgt(8)   ! target data, see XA_FOVTGT_? for array arrangement
   integer(8), value :: vicSatKey   ! the victim satellite's unique key
   real(8), intent(out) :: xa_emeDat(3, *)   ! array of entry/minimum/exit (in Ds50TAI) times of each pass
   integer, intent(out) :: numOfPasses   ! number of passes found
end function FovTargetVec
!*******************************************************************************



! This function returns a look angle from the source to the potential victim satellite at the specified time (target is a vector: AZ/EL or RA/DEC).
! See FovGetDataFrInputFiles for a description of the XA_FOVSRC and XA_FOVTGT parameter values.
! See FovTargetElsetLook for a description of the XA_LOOK parameter values.
function FovTargetVecLook(currDs50TAI, xa_fovSrc, xa_fovTgt, vicSatKey, xa_look) bind(C, name = "FovTargetVecLook") result(errCode)
   integer :: errCode	! 0 if successfully, non-0 if there is an error
   real(8), value :: currDs50TAI   ! Time, in ds50TAI, for which to compute the look angle
   real(8), intent(in) :: xa_fovSrc(8)   ! source data, see XA_FOVSRC_? for array arrangement
   real(8), intent(in) :: xa_fovTgt(8)   ! target data, see XA_FOVTGT_? for array arrangement
   integer(8), value :: vicSatKey   ! the victim satellite's unique key
   real(8), intent(out) :: xa_look(8)   ! look angle data, see XA_LOOK_? for array arrangement
end function FovTargetVecLook
!*******************************************************************************



! Resets all FOV control parameters back to their default values
subroutine FovReset() bind(C, name = "FovReset")
end subroutine FovReset
!*******************************************************************************

end interface




      
   ! Fov run parameters
   integer, parameter :: &   
      XA_FOVRUN_MAXPASSES= 0,  &  ! Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
      XA_FOVRUN_START    = 1,  &  ! FOV start time in days since 1950, UTC
      XA_FOVRUN_STOP     = 2,  &  ! FOV stop time in days since 1950, UTC
      XA_FOVRUN_HALFCONE = 3,  &  ! Cone half angle (deg) (0=auto) (0-45)
      XA_FOVRUN_INTERVAL = 4,  &  ! Search interval (min) 
      
      XA_FOVRUN_SIZE     = 8;      
   
   ! FOV source types   
   integer, parameter :: &
      FOV_SRCTYPE_SEN = 1, &  ! Source is sensor
      FOV_SRCTYPE_LLH = 2, &  ! Source is lat lon height
      FOV_SRCTYPE_EFG = 3, &  ! Source is EFG 
      FOV_SRCTYPE_XYZ = 4;    ! Source is XYZ
      
   ! FOV source types   
   integer, parameter :: &
      FOV_TGTTYPE_ELSET = 1, &  ! Target is elset
      FOV_TGTTYPE_AZEL  = 2, &  ! Target is constant Az/El
      FOV_TGTTYPE_RADEC = 3;    ! Target is RA/Dec (STAR)
      
   ! FOV source specification
   integer, parameter :: &
      XA_FOVSRC_TYPE  = 0, & ! 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
      XA_FOVSRC_ID    = 1, & ! Sensor# | Source ID   | Source ID  | Source ID                            
      XA_FOVSRC_ELEM1 = 2, & !         | N lat (deg) | EFG: E (m) | X (m)
      XA_FOVSRC_ELEM2 = 3, & !         | E lon (deg) | EFG: F (m) | Y (m)
      XA_FOVSRC_ELEM3 = 4, & !         | height (m)  | EFG: G (m) | Z (m)
      XA_FOVSRC_ELEM4 = 5, & !         |             |            | time of position in Ds50UTC
      
      XA_FOVSRC_SIZE  = 8;
      
   
   ! FOV target specification
   integer, parameter :: &
      XA_FOVTGT_TYPE  = 0, & ! 1=ELSET | 2=AZEL    | 3=RADEC
      XA_FOVTGT_ID    = 1, & ! Elset#  | Target ID | Target ID
      XA_FOVTGT_ELEM1 = 2, & !         | az (deg)  | RA (deg)
      XA_FOVTGT_ELEM2 = 3, & !         | el (deg)  | Dec (deg)
      XA_FOVTGT_ELEM3 = 4, & !         |           | equinox indicator 
      
      XA_FOVTGT_SIZE  = 8;
      
   ! entry/minimum/exit time data   
   integer, parameter :: &
      XA_EMEDAT_ENTRY = 0, & ! entry time (ds50UTC)
      XA_EMEDAT_MIN   = 1, & ! minimum time (ds50UTC)
      XA_EMEDAT_EXIT  = 2, & ! exit time (ds50UTC)
      
      XA_EMEDAT_SIZE  = 3;
   
   ! FOV parameters   
   integer, parameter :: &
      XA_FOVCTRL_HALFCONE = 0,  &  ! Cone half angle (deg) (0=auto) (0-45)
      XA_FOVCTRL_INTERVAL = 1,  &  ! Search interval (min) 
      XA_FOVCTRL_PRTOPT   = 2,  &  ! Print option
      
      XA_FOVCTRL_SIZE     = 8;     
      
      
   integer, parameter :: FOVMAXNUM = 128;  ! maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
      
end module FovDll
! ========================= End of auto generated code ==========================
