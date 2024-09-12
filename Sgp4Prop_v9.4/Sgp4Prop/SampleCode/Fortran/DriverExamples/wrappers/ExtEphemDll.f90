! This wrapper file was generated automatically by the GenDllWrappers program.
module ExtEphemDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes ExtEphem DLL for use in the program
! If this function returns an error, it is recommended that the users stop the program immediately. 
! The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed 
! in the DLL Prerequisite section, before using this DLL.
function ExtEphInit(apAddr) bind(C, name = "ExtEphInit") result(errCode)
   integer :: errCode	! 0 if ExtEphem DLL is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function ExtEphInit
!*******************************************************************************



! Returns information about the current version of ExtEphem DLL. 
! The information is placed in the string parameter passed in.
! The returned string provides information about the version number, build date, and the platform of the ExtEphem DLL. 
subroutine ExtEphGetInfo(infoStr) bind(C, name = "ExtEphGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about ExtEphem.dll
end subroutine ExtEphGetInfo
!*******************************************************************************



! Loads a file containing EXTEPHEM's
! The users can use this function repeatedly to load EXTEPHEMs from different input files. 
! However, only unique satKeys are stored in the binary tree. Duplicated EXTEPHEMs 
! (determined by same file name, satellite number + epoch) won't be stored.
! 
! EXTEPHEMs can be included directly in the main input file or they can be read from a 
! separate file identified with "EPHFIL =[pathname\filename]".
! 
! This function only reads EXTEPHEMs from the main input file or EXTEPHEMs from the file 
! identified with EPHFIL in the input file. It won't read anything else.
function ExtEphLoadFile(extEphFile) bind(C, name = "ExtEphLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: extEphFile(512)   ! The name of the file containing external ephemeris data to be loaded
end function ExtEphLoadFile
!*******************************************************************************



! Saves the currently loaded EXTEPHEM's to a file (EPHFIL=input file name)
function ExtEphSaveFile(extEphFile, saveMode, saveForm) bind(C, name = "ExtEphSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: extEphFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function ExtEphSaveFile
!*******************************************************************************



! Removes an EXTEPHEM represented by the satKey from memory
! If the users enter an invalid satKey (the satKey does not exist in memory), the function will return a non-zero value indicating an error.
function ExtEphRemoveSat(satKey) bind(C, name = "ExtEphRemoveSat") result(errCode)
   integer :: errCode	! 0 if the satellite is removed successfully, non-0 if there is an error.
   integer(8), value :: satKey   ! The unique key of the satellite to be removed
end function ExtEphRemoveSat
!*******************************************************************************



! Removes all EXTEPHEMS from memory
function ExtEphRemoveAllSats() bind(C, name = "ExtEphRemoveAllSats") result(errCode)
   integer :: errCode	! 0 if all satellites are removed successfully from memory, non-0 if there is an error
end function ExtEphRemoveAllSats
!*******************************************************************************



! Returns the number of EXTEPHEM's currently loaded
! See ExtEphGetLoaded for example.
! This function is useful for dynamically allocating memory for the array that is passed to the function ExtEphGetLoaded().
function ExtEphGetCount() bind(C, name = "ExtEphGetCount") result(numSats)
   integer :: numSats	! The number of EXTEPHEM's currently loaded
end function ExtEphGetCount
!*******************************************************************************



! Retrieves all of the currently loaded satKeys. These satKeys can be used to access the external ephemeris data for the EXTEPHEM's
! It is recommended that ExtEphGetCount() is used to count how many satellites are currently loaded in the ExtEphem DLL's binary tree. 
! The users then use this number to dynamically allocate the satKeys array and pass it to this function.
! 
! If the users prefer to pass a static array to the function, ensure that it is big enough to store all the satKeys in memory.
subroutine ExtEphGetLoaded(order, satKeys) bind(C, name = "ExtEphGetLoaded")
   integer, value :: order   ! Specifies the order in which the satKeys should be returned: 0=ascending, 1=descending, 2=order as loaded
   integer(8), intent(out) :: satKeys(*)   ! The array in which to store the satKeys
end subroutine ExtEphGetLoaded
!*******************************************************************************



! Allows for an EXTEPHEM to be added to memory without using an input file. The function creates a place holder for an EXTEPHEM
! If the same satellite (same satNum and epochDs50UTC) was previously added to the ExtEphem DLL's binary tree, 
! the function will generate a new unique satKey. This is very useful when the users want to compare ephemerides 
! of the same satellite number and same epoch time from different sources. 
function ExtEphAddSat(satNum, epochDs50UTC, ae, ke, coordSys) bind(C, name = "ExtEphAddSat") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added EXTEPHEM on success, a negative value on error
   integer, value :: satNum   ! Satellite number
   real(8), value :: epochDs50UTC   ! Epoch time in ds50UTC
   real(8), value :: ae   ! Mean Earth radius (km)
   real(8), value :: ke   ! Earth gravitational constant
   integer, value :: coordSys   ! Ephemeris coordinate system, see COORD_? for avaialble coordinate sytems
end function ExtEphAddSat
!*******************************************************************************



! Adds an ephemeris point to the end of an EXTEPHEM's set of ephemeris points
! The new ephemeris point will only be added to the array if its time is greater than the times of all points already in the array. 
! Therefore, the array is always in sorted order (t1 < t2 <... < tn).
function ExtEphAddSatEphem(satKey, ds50UTC, pos, vel, revNum) bind(C, name = "ExtEphAddSatEphem") result(errCode)
   integer :: errCode	! 0 if the ephemeris point is added successfully to the requested satellite, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! Epoch time in ds50UTC
   real(8), intent(in) :: pos(3)   ! Position at cuurent time (km)
   real(8), intent(in) :: vel(3)   ! Velocity at current time (km/sec)
   integer, value :: revNum   ! The ephemeris point revolution number
end function ExtEphAddSatEphem
!*******************************************************************************



! Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
function ExtEphAddSatEphemCovMtx(satKey, ds50UTC, pos, vel, revNum, covUVW) &
bind(C, name = "ExtEphAddSatEphemCovMtx") result(errCode)
   integer :: errCode	! 0 if the ephemeris point is added successfully to the requested satellite, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! Epoch time in ds50UTC
   real(8), intent(in) :: pos(3)   ! Position at cuurent time (km)
   real(8), intent(in) :: vel(3)   ! Velocity at current time (km/sec)
   integer, value :: revNum   ! The ephemeris point revolution number
   real(8), intent(in) :: covUVW(21)   ! The covariance matrix in vector format (21 terms in one-dimensional array)
end function ExtEphAddSatEphemCovMtx
!*******************************************************************************



! Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
function ExtEphAddSatEphemExt(satKey, ds50UTC, pos, vel, revNum, extArr) bind(C, name = "ExtEphAddSatEphemExt") result(errCode)
   integer :: errCode	! 0 if the ephemeris point is added successfully to the requested satellite, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! Epoch time in ds50UTC
   real(8), intent(in) :: pos(3)   ! Position at cuurent time (km)
   real(8), intent(in) :: vel(3)   ! Velocity at current time (km/sec)
   integer, value :: revNum   ! The ephemeris point revolution number
   real(8), intent(in) :: extArr(128)   ! The extra array: 1-21=lower triangle matrix, 22-128=future use
end function ExtEphAddSatEphemExt
!*******************************************************************************



! Loads satellite data from an external ephemeris file (any valid external ephemeris file formats) and returns a satKey on success
function ExtEphAddSatFrFile(extEphFile) bind(C, name = "ExtEphAddSatFrFile") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added EXTEPHEM on success, a zero or negative value on error
   character, intent(in) :: extEphFile(512)   ! The name of the file containing external ephemeris data to be loaded
end function ExtEphAddSatFrFile
!*******************************************************************************



! Retrieves all data for an EXTEPHEM with a single function call
function ExtEphGetAllFields(satKey, satNum, satName, recName, epochDs50UTC, ae, ke, pos, vel, coordSys, numOfPts, fileLoc) &
bind(C, name = "ExtEphGetAllFields") result(errCode)
   integer :: errCode	! 0 if the data is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: satName(8)   ! Satellite international designator
   character, intent(out) :: recName(128)   ! Record name (default to source file path, fileLoc)
   real(8), intent(out) :: epochDs50UTC   ! Satellite epoch time in ds50UTC
   real(8), intent(out) :: ae   ! Mean Earth radius (km)
   real(8), intent(out) :: ke   ! Earth gravitational constant (er**3/2 per minute)
   real(8), intent(out) :: pos(3)   ! Position at epoch (km)
   real(8), intent(out) :: vel(3)   ! Velocity at epoch (km/s)
   integer, intent(out) :: coordSys   ! Ephemeris coordinate, see COORD_? for avaialble coordinate sytems
   integer, intent(out) :: numOfPts   ! Number of ephemeris points
   character, intent(out) :: fileLoc(512)   ! File location
end function ExtEphGetAllFields
!*******************************************************************************



! Retrieves the value of a specific field of an EXTEPHEM
! 
! When using xf_ExtEph = 11, the input coordinate system is returned as an integer value.  The table below shows the coordinate system values:
! 
! table
! 
! Value
! Coordinate System
! 
! 1  ECI TEME of DATE
! 2  MEME of J2K
! 3  Earth Fixed Greenwich (EFG)
! 4  Earch Centered Rotation (ECR)
! 100Invalid
!    
function ExtEphGetField(satKey, xf_ExtEph, valueStr) bind(C, name = "ExtEphGetField") result(errCode)
   integer :: errCode	! 0 if the EXTEPHEM data is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: xf_ExtEph   ! Predefined number specifying which field to retrieve, see XF_EXTEPH_? for field specification
   character, intent(out) :: valueStr(512)   ! A string to contain the value of the requested field
end function ExtEphGetField
!*******************************************************************************



! Updates the value of a specific field of an EXTEPHEM
function ExtEphSetField(satKey, xf_ExtEph, valueStr) bind(C, name = "ExtEphSetField") result(errCode)
   integer :: errCode	! 0 if the EXTEPHEM data is successfully updated, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: xf_ExtEph   ! Predefined number specifying which field to set, see XF_EXTEPH_? for field specification
   character, intent(in) :: valueStr(512)   ! The new value of the specified field, expressed as a string
end function ExtEphSetField
!*******************************************************************************



! Retrieves the times (in days since 1950 UTC) of the start and end ephemeris points of the EXTEPHEM  
function ExtEphStartEndTime(satKey, startDs50UTC, endDs50UTC) bind(C, name = "ExtEphStartEndTime") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(out) :: startDs50UTC   ! The ephemeris start time (first ephemeris point) in days since 1950, UTC
   real(8), intent(out) :: endDs50UTC   ! The ephemeris end time (last ephemeris point) in days since 1950, UTC
end function ExtEphStartEndTime
!*******************************************************************************



! Retrieves the data for a specific point within an EXTEPHEM
! It is important to know that the array subscript starts at one (not zero).
function ExtEphGetEphemeris(satKey, index, ds50UTC, pos, vel, revNum) bind(C, name = "ExtEphGetEphemeris") result(errCode)
   integer :: errCode	! 0 if the ephemeris data is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: index   ! The position number of the ephemeris point to be retrieved (1=first point)
   real(8), intent(out) :: ds50UTC   ! The resulting time in ds50UTC
   real(8), intent(out) :: pos(3)   ! The resulting position (km)
   real(8), intent(out) :: vel(3)   ! The resulting velocity (km/s)
   integer, intent(out) :: revNum   ! The resulting revolution number
end function ExtEphGetEphemeris
!*******************************************************************************



! Retrieves the data (including the covariance matrix) for a specific point within an EXTEPHEM
function ExtEphGetCovMtx(satKey, index, ds50UTC, pos, vel, revNum, covMtx) bind(C, name = "ExtEphGetCovMtx") result(errCode)
   integer :: errCode	! 0 if the ephemeris data is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: index   ! The position number of the ephemeris point to be retrieved (1=first point)
   real(8), intent(out) :: ds50UTC   ! The resulting time in ds50UTC
   real(8), intent(out) :: pos(3)   ! The resulting position (km)
   real(8), intent(out) :: vel(3)   ! The resulting velocity (km/s)
   integer, intent(out) :: revNum   ! The resulting revolution number
   real(8), intent(out) :: covMtx(6, 6)   ! The 6x6 covariance matrix
end function ExtEphGetCovMtx
!*******************************************************************************



! Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
! The coordinate system of the output position and velocity is the same as the input ephemerides.
function ExtEphMse(satKey, mse, ds50UTC, pos, vel, revNum) bind(C, name = "ExtEphMse") result(errCode)
   integer :: errCode	! 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: mse   ! The requested time in minutes since the satellite's epoch time
   real(8), intent(out) :: ds50UTC   ! The resulting time in ds50UTC
   real(8), intent(out) :: pos(3)   ! The resulting position (km)
   real(8), intent(out) :: vel(3)   ! The resulting velocity (km/s)
   integer, intent(out) :: revNum   ! The resulting revolution number
end function ExtEphMse
!*******************************************************************************



! Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
function ExtEphMseCovMtx(satKey, mse, ds50UTC, pos, vel, revNum, covMtx) bind(C, name = "ExtEphMseCovMtx") result(errCode)
   integer :: errCode	! 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: mse   ! The requested time in minutes since the satellite's epoch time
   real(8), intent(out) :: ds50UTC   ! The resulting time in ds50UTC
   real(8), intent(out) :: pos(3)   ! The resulting position (km)
   real(8), intent(out) :: vel(3)   ! The resulting velocity (km/s)
   integer, intent(out) :: revNum   ! The resulting revolution number
   real(8), intent(out) :: covMtx(6, 6)   ! The 6x6 covariance matrix
end function ExtEphMseCovMtx
!*******************************************************************************



! Interpolates the external ephemeris data to the requested time in days since 1950, UTC
! The coordinate system of the output position and velocity is the same as the input ephemerides.
function ExtEphDs50UTC(satKey, ds50UTC, mse, pos, vel, revNum) bind(C, name = "ExtEphDs50UTC") result(errCode)
   integer :: errCode	! 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! The requested time in ds50UTC
   real(8), intent(out) :: mse   ! The resulting time in minutes since the satellite's epoch time
   real(8), intent(out) :: pos(3)   ! The resulting position (km)
   real(8), intent(out) :: vel(3)   ! The resulting velocity (km/s)
   integer, intent(out) :: revNum   ! The resulting revolution number
end function ExtEphDs50UTC
!*******************************************************************************



! Interpolates the external ephemeris data to the requested time in days since 1950, UTC
function ExtEphDs50UTCCovMtx(satKey, ds50UTC, mse, pos, vel, revNum, covMtx) bind(C, name = "ExtEphDs50UTCCovMtx") result(errCode)
   integer :: errCode	! 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! The requested time in ds50UTC
   real(8), intent(out) :: mse   ! The resulting time in minutes since the satellite's epoch time
   real(8), intent(out) :: pos(3)   ! The resulting position (km)
   real(8), intent(out) :: vel(3)   ! The resulting velocity (km/s)
   integer, intent(out) :: revNum   ! The resulting revolution number
   real(8), intent(out) :: covMtx(6, 6)   ! The 6x6 covariance matrix
end function ExtEphDs50UTCCovMtx
!*******************************************************************************



! Extensible routine which retrieves/interpolates external ephemeris data based on user's request
function ExtEphXten(satKey, xf_getEph, inVal, extArr) bind(C, name = "ExtEphXten") result(errCode)
   integer :: errCode	! 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: xf_getEph   ! Input type: 1=using MSE, 2=using Ds50UTC, 3=using index (one-based)
   real(8), value :: inVal   ! Input value as indicated in the input type
   real(8), intent(out) :: extArr(128)   ! The resulting array: 1st=mse, 2=ds50UTC, 3-5=pos, 5-8=vel, 9=revNum, 10-30=6x6 covMtx lower triangle
end function ExtEphXten
!*******************************************************************************



! This function returns a string that represents the EXTFIL= directive used to read a particular EXTEPHEM
function ExtEphGetLine(satKey, line) bind(C, name = "ExtEphGetLine") result(errCode)
   integer :: errCode	! 0 if the line is retrieved successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   character, intent(out) :: line(512)   ! A string representing the directive used to read a particular EXTEPHEM
end function ExtEphGetLine
!*******************************************************************************



! Returns the first satKey that matches the satNum in the EXTEPHEM binary tree
! This function is useful when ExtEphem DLL is used in applications that requires only one record (one EXTEPHEM entry) 
! for one satellite and the applications refer to that EXTEPHEM by its satellite number. 
! However, the Astrodynamic Standard Shared library only uses satKeys; this function helps to return the associated satKey of that satellite.
function ExtEphGetSatKey(satNum) bind(C, name = "ExtEphGetSatKey") result(satKey)
   integer(8) :: satKey	! The satellite's unique key
   integer, value :: satNum   ! input satellite number
end function ExtEphGetSatKey
!*******************************************************************************



! Creates satKey from EXTEPHEM's satelite number and date time group string
! This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
function ExtEphFieldsToSatKey(satNum, epochDtg) bind(C, name = "ExtEphFieldsToSatKey") result(satKey)
   integer(8) :: satKey	! The satellite's unique key
   integer, value :: satNum   ! input satellite number
   character, intent(in) :: epochDtg(20)   ! input date time group string: [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20
end function ExtEphFieldsToSatKey
!*******************************************************************************

end interface




   
   ! Indexes of coordinate systems
   integer, parameter :: &
      COORD_ECI   = 1,       &  ! ECI TEME of DATE
      COORD_J2K   = 2,       &  ! MEME of J2K
      COORD_EFG   = 3,       &  ! Earth Fixed Greenwich (EFG)
      COORD_ECR   = 4,       &  ! Earch Centered Rotation (ECR)
      COORD_LLH   = 5,       &  ! Lat Lon Height and a vector offset (range, azimuth, elevation)
      COORD_SEN   = 6,       &  ! Sensor site (ECR) and a vector offset (range, azimuth, elevation)
      
      COORD_ECIFP = 11,      &  ! ECI TEME of DATE, fixed point
      COORD_J2KFP = 12,      &  ! MEME of J2K, fixed point
      COORD_EFGFP = 13,      &  ! Earth Fixed Greenwich (EFG), fixed point
      COORD_ECRFP = 14,      &  ! Earch Centered Rotation (ECR), fixed point
      COORD_LLHOV = 15,      &  ! Lat Lon Height and an offset vector (range, azimuth, elevation)
      COORD_SENOV = 16,      &  ! Sensor site (ECR) and an offset vector (range, azimuth, elevation)
      COORD_HCSRL = 17,      &  ! Current position (LLH), heading (azimuth), and constant speed of an mobile object that travels in a rhumb line course
      COORD_WPTRL = 18,      &  ! List of waypoints (LLH) that describes the movement of an object that travels in a rhumb line course
      COORD_HCSGC = 19,      &  ! Current position (LLH), initial heading (azimuth), and constant speed of an mobile object that travels in a great circle course
      COORD_WPTGC = 20,      &  ! List of waypoints (LLH) that describes the movement of an object that travels in a great circle course
      
      
      COORD_INVALID = 100;      ! Invalid coordinate system
   
   integer, parameter :: & 
      COVMTX_UVW_DATE  =  0, & ! UVW convariance matrix - TEME of DATE
      COVMTX_XYZ_DATE  = 10, & ! Cartesian covariance matrix - TEME of DATE 
      COVMTX_EQNX_DATE = 20, & ! Equinoctial covariance matrix - TEME of DATE
      COVMTX_UVW_J2K   = 30, & ! UVW convariance matrix - MEME of J2K
      COVMTX_XYZ_J2K   = 40, & ! Cartesian covariance matrix - MEME of J2K
      COVMTX_EQNX_J2K  = 50;   ! Equinoctial covariance matrix - MEME of J2K   
      
      
   integer, parameter :: &
      XF_GETEPH_MSE = 1, &   ! Get ephemeris data using time in minutes since epoch 
      XF_GETEPH_UTC = 2, &   ! Get ephemeris data using time in days since 1950 UTC
      XF_GETEPH_IDX = 3;     ! Get ephemeris data using index of the element in the array 
      
   ! Indexes of EXTEPH data fields
   integer, parameter :: &
      XF_EXTEPH_SATNUM    =  1, &    ! Satellite number I5
      XF_EXTEPH_EPOCH     =  2, &    ! Epoch YYDDDHHMMSS.SSS
      XF_EXTEPH_AE        =  3, &    ! Earth radius (km)
      XF_EXTEPH_KE        =  4, &    ! Ke
      XF_EXTEPH_POSX      =  5, &    ! position X (km) F16.8 
      XF_EXTEPH_POSY      =  6, &    ! position Y (km) F16.8 
      XF_EXTEPH_POSZ      =  7, &    ! position Z (km) F16.8   
      XF_EXTEPH_VELX      =  8, &    ! velocity X (km/s) F16.12
      XF_EXTEPH_VELY      =  9, &    ! velocity Y (km/s) F16.12
      XF_EXTEPH_VELZ      = 10, &    ! velocity Z (km/s) F16.12
      XF_EXTEPH_COORD     = 11, &    ! Input coordinate systems
      XF_EXTEPH_NUMOFPTS  = 12, &    ! Num of ephemeris points
      XF_EXTEPH_FILEPATH  = 13, &    ! Ephemeris file path
      XF_EXTEPH_SATNAME   = 14, &    ! International Designator
      XF_EXTEPH_RECNAME   = 15;      ! Record name
      
end module ExtEphemDll
! ========================= End of auto generated code ==========================
