! This wrapper file was generated automatically by the GenDllWrappers program.
module AofDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes Aof dll for use in the program
function AofInit(apAddr) bind(C, name = "AofInit") result(errCode)
   integer :: errCode	! 0 if Aof.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function AofInit
!*******************************************************************************



! Returns information about the current version of Aof.dll. The information is placed in the string parameter you pass in
subroutine AofGetInfo(infoStr) bind(C, name = "AofGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Aof.dll.
end subroutine AofGetInfo
!*******************************************************************************



! Loads Aof-related parameters (1P/2P/3P cards, and Aof parameter free format) from an input text file
function AofLoadFile(aofInputFile) bind(C, name = "AofLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: aofInputFile(512)   ! The name of the file containing Aof-related parameters
end function AofLoadFile
!*******************************************************************************



! Loads Aof-related parameters from an input text file
function AofLoadFileAll(aofInputFile) bind(C, name = "AofLoadFileAll") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: aofInputFile(512)   ! The name of the file containing Aof-related parameters
end function AofLoadFileAll
!*******************************************************************************



! Loads a single Aof-typed card
function AofLoadCard(card) bind(C, name = "AofLoadCard") result(errCode)
   integer :: errCode	! 0 if the input card is read successfully, non-0 if there is an error
   character, intent(in) :: card(512)   ! Aof-type input card
end function AofLoadCard
!*******************************************************************************



! This function retrieves various AOF input data being entered from input flat files (and/or various AOF input cards)
subroutine AofGetDataFrInputFiles(xa_aofCtrl, numOfInpSats, aofInpSats, numOfMissions, xa_aofSen, numOfAreas, xa_aofArea) &
bind(C, name = "AofGetDataFrInputFiles")
   real(8), intent(out) :: xa_aofCtrl(16)   ! AOF control parameters, see XA_AOFCTRL_? for array arrangement
   integer, intent(out) :: numOfInpSats   ! Number of satellite numbers entered in AOF P-card and/or 8P-card
   integer, intent(out) :: aofInpSats(100)   ! Array of satellite numbers entered via AOF P-card and/or 8P-card
   integer, intent(out) :: numOfMissions   ! Number of satellite/mission records entered via Satellite/Mission (Satellite/Sensor) Data card
   real(8), intent(out) :: xa_aofSen(16, 100)   ! Array of mission records entered via Satellite/Mission (Satellite/Sensor) Data card, see XA_AOFSEN_? for array arrangement
   integer, intent(out) :: numOfAreas   ! Number of defended areas entered via Defended Area Data card
   real(8), intent(out) :: xa_aofArea(16, 100)   ! Array of defended areas entered via Defended Area Data card, see XA_AOFAREA_?
end subroutine AofGetDataFrInputFiles
!*******************************************************************************



! This function resets all Aof control parameters previously loaded from input text files
subroutine AofReset() bind(C, name = "AofReset")
end subroutine AofReset
!*******************************************************************************



! Computes entry/exit times of basic overflight satellite/sensor (cone) versus basic defended areas (box, circle, point)
! 
! Note:  for xa_aofArea type=4 (polygon), use the AofComplex method.
function AofBasic(xa_aofRun, satKey, xa_aofSen, xa_aofArea, numOfPasses, xa_entExitTimes) &
bind(C, name = "AofBasic") result(errCode)
   integer :: errCode	! 0 if successfully, non-0 if there is an error
   real(8), intent(in) :: xa_aofRun(8)   ! aof run parameters, see XA_AOFRUN_? for array arrangement
   integer(8), value :: satKey   ! the overflight satellite's unique key
   real(8), intent(in) :: xa_aofSen(16)   ! satellite/mission data, see XA_AOFSEN_? for array arrangement
   real(8), intent(in) :: xa_aofArea(16)   ! defended area data, see XA_AOFAREA_? for array arrangement
   integer, intent(out) :: numOfPasses   ! number of passes found
   real(8), intent(out) :: xa_entExitTimes(*)   ! array of entry/exit times
end function AofBasic
!*******************************************************************************



! Computes entry/exit times of overflight satellite/sensor having complex configurations (cone, donut, butterfly, leftButterly, rightButterfly)
! versus defended areas defined by multiple lat lon height points (polygon)
! For a description of the input parameter arrays xa_aofRun and xa_aofSen, see AofBasic.
! The input array llhArr is a zero-based array with latitude, longitude and altitude of each point in subsequent entries, e.g.:
! llhArr[0] = point 1 latitude, 
! llhArr[1] = point 1 longitude, 
! llhArr[2] = point 1 altitude, 
! llhArr[3] = point 2 latitude, etc.
function AofComplex(xa_aofRun, satKey, xa_aofSen, numOfLlhPts, llhArr, numOfPasses, xa_entExitTimes) &
bind(C, name = "AofComplex") result(errCode)
   integer :: errCode	! 0 if successfully, non-0 if there is an error
   real(8), intent(in) :: xa_aofRun(8)   ! aof run parameters, see XA_AOFRUN_? for array arrangement
   integer(8), value :: satKey   ! the overflight satellite's unique key
   real(8), intent(in) :: xa_aofSen(16)   ! satellite/mission data, see XA_AOFSEN_? for array arrangement
   integer, value :: numOfLlhPts   ! number of actual input lat-lon-height points (maximum 120 points) - lat+N (deg)/lon+E (deg)/height (m)
   real(8), intent(in) :: llhArr(360)   ! defended area defined by array of lat-lon-height points (maximum 120 points)
   integer, intent(out) :: numOfPasses   ! number of passes found
   real(8), intent(out) :: xa_entExitTimes(*)   ! array of entry/exit times
end function AofComplex
!*******************************************************************************



! This function returns a look angle from the llh point to the overfly satellite at the specified time
function AofGetLook(ds50TAI, llh, satKey, xa_look) bind(C, name = "AofGetLook") result(errCode)
   integer :: errCode	! 0 if successfully, non-0 if there is an error
   real(8), value :: ds50TAI   ! Time, in ds50TAI, for which to compute the look angle
   real(8), intent(in) :: llh(3)   ! lat +N -S (deg) /lon (+E) (deg) / height (m)
   integer(8), value :: satKey   ! the overflight satellite's unique key
   real(8), intent(out) :: xa_look(8)   ! look angle data, see XA_LOOK_? for array arrangement
end function AofGetLook
!*******************************************************************************



! This function returns a view angle from the overfly satellite to a llh point at the specified time
function AofGetView(ds50TAI, llh, satKey, xa_aofView) bind(C, name = "AofGetView") result(errCode)
   integer :: errCode	! 0 if successfully, non-0 if there is an error
   real(8), value :: ds50TAI   ! Time, in ds50TAI, for which to compute the view angle
   real(8), intent(in) :: llh(3)   ! lat +N -S (deg) /lon (+E) (deg) / height (m)
   integer(8), value :: satKey   ! the overflight satellite's unique key
   real(8), intent(out) :: xa_aofView(8)   ! view angle data, see XA_AOFVIEW_? for array arrangement
end function AofGetView
!*******************************************************************************



! Determines darkness level of the "defended" area at the specified time
! For a description of the input parameter array xa_aofArea, see AofBasic.
function AofGetDarknessLevel(ds50TAI, xa_aofArea) bind(C, name = "AofGetDarknessLevel") result(darkness)
   integer :: darkness	! darkness level, see DARKLEVEL_? for available values
   real(8), value :: ds50TAI   ! Time, in ds50TAI, for which to compute the darkness status of the defended area
   real(8), intent(in) :: xa_aofArea(16)   ! defended area data, see XA_AOFAREA_? for array arrangement
end function AofGetDarknessLevel
!*******************************************************************************

end interface




   
   ! AOF parameters
   integer, parameter :: &
      XA_AOFCTRL_TIMEFLG  =  0, & ! input start/stop time type: 1=minutes since epoch (MSE), 0=date time (DTG)
      XA_AOFCTRL_START    =  1, & ! start time of interest (either MSE or DTG)
      XA_AOFCTRL_STOP     =  2, & ! stop time of interest (either MSE or DTG)
      XA_AOFCTRL_INTERVAL =  3, & ! search interval (min)
      XA_AOFCTRL_PRTOPT   =  4, & ! print output control flag; 0=print penetrations only, 1=print penetrations and data description
      XA_AOFCTRL_SRCHMET  =  5, & ! search method: 0=use brute force method, 1=use analytical method
      XA_AOFCTRL_SRTTYPE  =  6, & ! output sort type: S=sort each area by sat#, then time, T=sort each area by time, then sat#
      
      XA_AOFCTRL_SIZE     = 16;
   
      
   ! Defended area types   
   integer, parameter :: &
      AREATYPE_I_BOX     =  1,  &  ! area box type
      AREATYPE_I_CIRCLE  =  2,  &  ! area circle type
      AREATYPE_I_POINT   =  3,  &  ! area point type
      AREATYPE_I_POLYGON =  4;     ! area polygon type
      
      
   ! AOF satellite/mission (satellite/sensor) data
   integer, parameter :: &
      XA_AOFSEN_SATNUM   =  0, & ! satellite number of sensor-bearing satellite
      XA_AOFSEN_TYPE     =  1, & ! reserved for future use
      XA_AOFSEN_MINEL    =  2, & ! off nadir minimum look angle (deg) (=0 for Cone)
      XA_AOFSEN_MAXEL    =  3, & ! off nadir maximum look angle (deg)
      XA_AOFSEN_MINAZ1   =  4, & ! minimum azimuth of first azimuth range (deg)
      XA_AOFSEN_MAXAZ1   =  5, & ! maximum azimuth of first azimuth range (deg)
      XA_AOFSEN_MINAZ2   =  6, & ! minimum azimuth of second azimuth range (deg)
      XA_AOFSEN_MAXAZ2   =  7, & ! maximum azimuth of second azimuth range (deg)
      XA_AOFSEN_ELEM7    =  8, & ! reserved for future use
      XA_AOFSEN_ELEM8    =  9, & ! reserved for future use
      XA_AOFSEN_ELEM9    = 10, & ! reserved for future use
      XA_AOFSEN_ELEM10   = 11, & ! reserved for future use
      
      XA_AOFSEN_SIZE     = 16;
   
   
   ! AOF satellite/sensor types   
   integer, parameter :: &
      AOFSENTYPE_CIRCLE = 0;  ! circle (specify only off-nadir maximum look angle)
   
   
   ! AOF run parameters
   integer, parameter :: &   
      XA_AOFRUN_MAXPASSES= 0,  &  ! Maximum number of passes that AOF returns in one start/stop time
      XA_AOFRUN_START    = 1,  &  ! AOF start time in days since 1950, UTC
      XA_AOFRUN_STOP     = 2,  &  ! AOF stop time in days since 1950, UTC
      XA_AOFRUN_INTERVAL = 3,  &  ! Search interval (min) 
      
      XA_AOFRUN_SIZE     = 8;      
      
      
   ! AOF defended area types   
   integer, parameter :: &
      AOF_AREATYPE_BOX     = 1, &  ! Defended area is a box
      AOF_AREATYPE_CIRCLE  = 2, &  ! Defended area is a circle
      AOF_AREATYPE_POINT   = 3, &  ! Defended area is a point
      AOF_AREATYPE_POLYGON = 4;    ! Defended area is a polygon
      
      
      
   ! AOF defended area data   
   integer, parameter :: &
      XA_AOFAREA_NUM   = 0, &    ! Area number
      XA_AOFAREA_TYPE  = 1, &    ! | 1 = BOX                       | 2 = CIRCLE              | 3 = POINT
      XA_AOFAREA_ELEM1 = 2, &    ! | N lat (deg) upper left corner | N lat (deg) center point| N lat (deg) center point
      XA_AOFAREA_ELEM2 = 3, &    ! | E lon (deg) upper left corner | E lon (deg) center point| E lon (deg) center point
      XA_AOFAREA_ELEM3 = 4, &    ! | N lat (deg) lower right corner| circle radius (km)      | height (km, above reference geoid)
      XA_AOFAREA_ELEM4 = 5, &    ! | E lon (deg) lower right corner|                         |            
      
      XA_AOFAREA_SIZE  = 16;
      
      
   ! Penetration-level darkness status   
   integer, parameter :: &
      DARKLEVEL_ALLLIT  = 0, & ! lit throughout penetration
      DARKLEVEL_ALLDARK = 1, & ! dark throughout penetration
      DARKLEVEL_PARTLIT = 2;   ! partly-lit during penetration
      
   ! View angle from overfly satellite to a llh point
   integer, parameter :: &
      XA_AOFVIEW_AZIM   = 0, & ! Azimuth (deg)
      XA_AOFVIEW_ELEV   = 1, & ! Elevation (deg)
      XA_AOFVIEW_HASLOS = 2, & ! Has line of sight to the point (1=Yes, 0=No-earth obstructs the view)
      
      XA_AOFVIEW_SIZE   = 8;
      
   integer, parameter :: MAX_LLHPOINTS = 120; ! maximum of number of lat-lon-height points that can be used to describe a defended area   
   
      
   
   
end module AofDll
! ========================= End of auto generated code ==========================
