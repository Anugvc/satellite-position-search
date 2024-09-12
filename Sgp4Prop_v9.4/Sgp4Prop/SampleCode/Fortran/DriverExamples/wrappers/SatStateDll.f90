! This wrapper file was generated automatically by the GenDllWrappers program.
module SatStateDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes SatState DLL for use in the program
! If this function returns an error, it is recommended that the users stop the program immediately. 
! The error occurs if the users forget to load and initialize all the prerequisite DLLs, 
! as listed in the DLL Prerequisite section, before using this DLL.
function SatStateInit(apAddr) bind(C, name = "SatStateInit") result(errCode)
   integer :: errCode	! 0 if SatState.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function SatStateInit
!*******************************************************************************



! Returns information about the current version of SatState DLL. 
! The information is placed in the string parameter passed in.
! The returned string provides information about the version number, build date, and the platform of the SatState DLL. 
subroutine SatStateGetInfo(infoStr) bind(C, name = "SatStateGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about SatState.dll
end subroutine SatStateGetInfo
!*******************************************************************************



! Loads any orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls from an input text file
! Internally, if taskMode = 1, this function calls SpProp.SpLoadFile(); 
! and if taskMode = 2, this function calls Tle.TleLoadFile(), SpVec.SpVecLoadFile(), Vcm.VcmLoadFile(), ExtEphem.ExtEphLoadFile(); 
! if taskMode = 3, both tasks (1 and 2) are executed.
function SatStateLoadFile(inputFile, xf_Task) bind(C, name = "SatStateLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: inputFile(512)   ! The name of the input file to load
   integer, value :: xf_Task   ! Specified task mode: 1=load SP control parameters, 2=load elsets only, 3=both 1 + 2
end function SatStateLoadFile
!*******************************************************************************



! Saves currently loaded orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls to a file
! The purpose of this function is to save the current SatState-related settings, usually used in GUI applications, for future use.
! 
! Internally, if taskMode = 1, this function calls SpProp.SpSaveFile(); 
! and if taskMode = 2, this function calls Tle.TleSaveFile(), SpVec.SpVecSavedFile(), Vcm.VcmSaveFile(), ExtEphem.ExtEphSaveFile(); 
! if taskMode = 3, both tasks (1 and 2) are executed.
function SatStateSaveFile(outFile, saveMode, saveForm, xf_Task) bind(C, name = "SatStateSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: outFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
   integer, value :: xf_Task   ! Specified task mode: 1=Only save propagator control parameters, 2=Only save orbital elements/external ephemeris data,	3=Save both 1 + 2
end function SatStateSaveFile
!*******************************************************************************



! Removes a satellite from the appropriate elset DLL's set of loaded satellites. 
! The function will automatically choose the proper set of elsets from which to remove the satellite. 
! The choices are: Tle.dll, SpVec.dll, Vcm.dll, or ExtEphem.dll   
! If the users enter an invalid satKey (a satKey that does not exist in memory), the function will return a non-zero value indicating an error.
function SatStateRemoveSat(satKey) bind(C, name = "SatStateRemoveSat") result(errCode)
   integer :: errCode	! 0 if the satellite is successfully removed from memory, non-0 if there is an error
   integer(8), value :: satKey   ! The unique key of the satellite to be removed
end function SatStateRemoveSat
!*******************************************************************************



! Removes a satellite from the appropriate sets of loaded satellites (elset dll and propagator dll). 
! The function will remove the satellite from the elset DLL's sets as in SatStateRemoveSat() and 
! from the appropriate propagator's set of initialized satellites if it exists there.
function SatStateRemoveSatAll(satKey) bind(C, name = "SatStateRemoveSatAll") result(errCode)
   integer :: errCode	! 0 if the satellite is successfully removed from memory, non-0 if there is an error
   integer(8), value :: satKey   ! The unique key of the satellite to be removed
end function SatStateRemoveSatAll
!*******************************************************************************



! Removes all satellites from all of the loaded data sets. 
! It will remove all satellites from the following sets: Tle, SpVec, Vcm, ExtEphem, Sgp4Prop, and SpProp
function SatStateRemoveAllSats() bind(C, name = "SatStateRemoveAllSats") result(errCode)
   integer :: errCode	! 0 if all of the data sets are cleared successfully, non-0 if there is an error
end function SatStateRemoveAllSats
!*******************************************************************************



! Resets propagator settings back to their default values
subroutine SatStateReset() bind(C, name = "SatStateReset")
end subroutine SatStateReset
!*******************************************************************************



! Returns the total number of satellites (TLE's, SPVEC's, VCM's, and EXTEPHEM's) currently loaded in memory
! See SatStateGetLoaded for example.
! This function is useful for dynamically allocating memory for the array that is passed to the function SatStateGetLoaded.
function SatStateGetCount() bind(C, name = "SatStateGetCount") result(numSats)
   integer :: numSats	! The total number of currently loaded satellites
end function SatStateGetCount
!*******************************************************************************



! Retrieves all of the currently loaded satKeys. 
! These satKeys can be used to access the internal data for the satellites.
! It is recommended that SatStateGetCount() is used to count how many satellites are currently loaded in memory. 
! The user can then use this number to dynamically allocate the satKeys array and pass it to this function.
! 
! If the user prefers to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
subroutine SatStateGetLoaded(order, satKeys) bind(C, name = "SatStateGetLoaded")
   integer, value :: order   ! Specifies the order in which the satKeys should be returned:	0=ascending order, 1=descending order, 2=order in which the satKeys were loaded in memory
   integer(8), intent(out) :: satKeys(*)   ! The array in which to store the satKeys
end subroutine SatStateGetLoaded
!*******************************************************************************



! Returns the first satKey that contains the specified satellite number in all sets of loaded satellites. 
! These sets will be searched: Tle, SpVec, Vcm, and ExtEphem.
! This function is useful when a satellite is used in applications that require only one record for one 
! satellite and the applications refer to that satellite by its satellite number. 
! However, the Astrodynamic Standard Shared library is only working with satKeys, this function helps to return the associated satKey of that satellite.
function SatStateNumToKey(satNum) bind(C, name = "SatStateNumToKey") result(satKey)
   integer(8) :: satKey	! The satKey of the matching satellite if one is found, a negative value indicating an error if not
   integer, value :: satNum   ! The satellite number to search for
end function SatStateNumToKey
!*******************************************************************************



! Retrieves the data which is common to all satellite types. 
! All common fields are retrieved with a single function call.
! The apogee height and perigee height are defined as the distance above an ellipsoid 
! created using the earth flattening factor from the selected geopotential model.
! Note:  When using SP elsets (TLE type 6, SPVEC, or VCM), calling SatStateGetSatDataAll 
! will implicitly call SpInit in order to extract the mu value from the GEO file the elset is tied to.  
! The elset must have a valid GEO directory available or an error will be returned.
function SatStateGetSatDataAll(satKey, satNum, satName, eltType, revNum, epochDs50UTC, bField, elsetNum, incli, node, eccen, omega, &
mnAnomaly, mnMotion, period, perigeeHt, apogeeHt, perigee, apogee, a) bind(C, name = "SatStateGetSatDataAll") result(errCode)
   integer :: errCode	! 0 if all satellite data fields are retrieved successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: satName(8)   ! Satellite international designator
   integer, intent(out) :: eltType   ! Element type (see ELTTYPE_? which is listed in DllMain for list of possible element types)
   integer, intent(out) :: revNum   ! Revolution number at epoch
   real(8), intent(out) :: epochDs50UTC   ! Epoch time time in days since 1950 UTC
   real(8), intent(out) :: bField   ! Ballistic coefficient (m^2/kg)
   integer, intent(out) :: elsetNum   ! Element set number
   real(8), intent(out) :: incli   ! Inclination (deg)
   real(8), intent(out) :: node   ! Right ascension of ascending node (deg)
   real(8), intent(out) :: eccen   ! Eccentricity
   real(8), intent(out) :: omega   ! Argument of perigee (deg)
   real(8), intent(out) :: mnAnomaly   ! Mean anomaly (deg)
   real(8), intent(out) :: mnMotion   ! Mean motion (rev/day)
   real(8), intent(out) :: period   ! Satellite period (min)
   real(8), intent(out) :: perigeeHt   ! Satellite perigee height (km) above the ellipsoid
   real(8), intent(out) :: apogeeHt   ! Satellite apogee height (km) above the ellipsoid
   real(8), intent(out) :: perigee   ! Satellite perigee height from the center of the earth (km)
   real(8), intent(out) :: apogee   ! Satellite apogee height from the center of the earth (km)
   real(8), intent(out) :: a   ! Semi-major axis (km)
end function SatStateGetSatDataAll
!*******************************************************************************



! Retrieves an individual field of a satellite. 
function SatStateGetSatDataField(satKey, xf_Sat, retVal) bind(C, name = "SatStateGetSatDataField") result(errCode)
   integer :: errCode	! 0 if the satellite data is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: xf_Sat   ! Predefined number specifying which field to retrieve, see XF_SAT_? for field specification
   character, intent(out) :: retVal(512)   ! A string to contain the value of the requested field
end function SatStateGetSatDataField
!*******************************************************************************



! Initializes a TLE, SPVEC, or VCM in preparation for propagation, or an EXTEPHEM in preparation for interpolation
function SatStateInitSat(satKey) bind(C, name = "SatStateInitSat") result(errCode)
   integer :: errCode	! 0 if the satellite is successfully initialized, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
end function SatStateInitSat
!*******************************************************************************



! Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
! The satellite is propagated/interpolated to the specified time calculated in minutes since the satellite's epoch time
function SatStateMse(satKey, mse, ds50UTC, revNum, pos, vel, llh) bind(C, name = "SatStateMse") result(errCode)
   integer :: errCode	! 0 if the satellite is propagated/interpolated successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: mse   ! The time to propagate to, specified in minutes since the satellite's epoch time
   real(8), intent(out) :: ds50UTC   ! Resulting time in days since 1950, UTC
   integer, intent(out) :: revNum   ! Revolution number
   real(8), intent(out) :: pos(3)   ! Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch
   real(8), intent(out) :: vel(3)   ! Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch
   real(8), intent(out) :: llh(3)   ! Resulting geodetic latitude (deg), longitude(deg), and height (km)
end function SatStateMse
!*******************************************************************************



! Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
! The satellite is propagated/interpolated to the specified time calculated in days since 1950, UTC.
function SatStateDs50UTC(satKey, ds50UTC, mse, revNum, pos, vel, llh) bind(C, name = "SatStateDs50UTC") result(errCode)
   integer :: errCode	! 0 if the satellite is propagated/interpolated successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! The time to propagate to, specified in days since 1950, UTC
   real(8), intent(out) :: mse   ! Resulting time in minutes since the satellite's epoch time
   integer, intent(out) :: revNum   ! Revolution number
   real(8), intent(out) :: pos(3)   ! Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch
   real(8), intent(out) :: vel(3)   ! Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch
   real(8), intent(out) :: llh(3)   ! Resulting geodetic latitude (deg), longitude(deg), and height (km)
end function SatStateDs50UTC
!*******************************************************************************



! Returns additional propagated/interpolated results (reserved for future implementation)
! Reserved for future implementation
! Use this function immediately after the call to SatStateMse or SatStateDs50UTC. 
function SatStateGetPropOut(satKey, index, destArr) bind(C, name = "SatStateGetPropOut") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! the satellite's unique key
   integer, value :: index   ! type of returned data
   real(8), intent(out) :: destArr(128)   ! the resulting array
end function SatStateGetPropOut
!*******************************************************************************



! Returns various ephemeris comparison results between two satellite states.
! 
! The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
! defined by the position vector (radial) and the angular momentum vector (cross-track).
function SatStateEphCom(primSatKey, secSatKey, ds50UTC, uvwFlag, xa_Delta) bind(C, name = "SatStateEphCom") result(errCode)
   integer :: errCode	! 0 if the comparison results are computed successfully, non-0 if there is an error
   integer(8), value :: primSatKey   ! The primary satellite's unique key
   integer(8), value :: secSatKey   ! The secondary satellite's unique key
   real(8), value :: ds50UTC   ! Requested time in days since 1950 UTC
   integer, value :: uvwFlag   ! UVW coordinate system flag: 0=use rotating UVW, 1=use inertial UVW
   real(8), intent(out) :: xa_Delta(100)   ! The resulting ephemeris comparison deltas, see XA_DELTA_? for array arrangement
end function SatStateEphCom
!*******************************************************************************



! Returns various ephemeris comparison results between two satellite states (_OS one step) .
! 
! The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
! defined by the position vector (radial) and the angular momentum vector (cross-track).
subroutine SatStateEphCom_OS(priPosVel, secPosVel, ds50UTC, uvwFlag, xa_Delta) bind(C, name = "SatStateEphCom_OS")
   real(8), intent(in) :: priPosVel(6)   ! The primary satellite's state (TEME of Date) in an array (position(1st-3rd, km), velocity(4th-6th, km/s))
   real(8), intent(in) :: secPosVel(6)   ! The secondary satellite's state (TEME of Date) in an array (position(1st-3rd, km), velocity(4th-6th, km/s))
   real(8), value :: ds50UTC   ! Requested time in days since 1950 UTC
   integer, value :: uvwFlag   ! UVW coordinate system flag: 0=use rotating UVW, 1=use inertial UVW
   real(8), intent(out) :: xa_Delta(100)   ! The resulting ephemeris comparison deltas, see XA_DELTA_? for array arrangement
end subroutine SatStateEphCom_OS
!*******************************************************************************



! Determines if a satellite contains covariance matrix. 
! 0=no, 1=yes
function SatStateHasCovMtx(satKey) bind(C, name = "SatStateHasCovMtx") result(satHasCovMtx)
   integer :: satHasCovMtx	! 0=sat doesn't have cov mtx, 1=sat has cov mtx
   integer(8), value :: satKey   ! the satellite's unique key
end function SatStateHasCovMtx
!*******************************************************************************



! Propagates/Interpolates UVW covariance matrix from VCM/External ephemeris to the time in days since 1950
function SatStateGetCovUVW(satKey, ds50UTC, covUVW) bind(C, name = "SatStateGetCovUVW") result(errCode)
   integer :: errCode	! 0 if the UVW covariance matrix is propagated/interpolated successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! The input time in days since 1950 UTC
   real(8), intent(out) :: covUVW(6, 6)   ! 6x6 UVW covariance matrix
end function SatStateGetCovUVW
!*******************************************************************************



! Generate external ephemeris file for the specified satellite (via its unique satKey) 
! Note: No need to initialize the satellite before this call. If it was intialized, it will be removed after this call
function SatStateGenEphFile(satKey, startDs50UTC, stopDs50UTC, stepSizeSecs, ephFileName, ephFileType) &
bind(C, name = "SatStateGenEphFile") result(errCode)
   integer :: errCode	! 0 if the external ephemeris file was generated successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: startDs50UTC   ! Start time in days since 1950 UTC
   real(8), value :: stopDs50UTC   ! Stop time in days since 1950 UTC
   real(8), value :: stepSizeSecs   ! Step size in seconds. Set to zero if natural integration step size (auto adjust) is desired for SP propagator
   character, intent(in) :: ephFileName(512)   ! The generated external ephemeris file name
   integer, value :: ephFileType   ! External ephemeris file type, see EPHFILETYPE_? for available options
end function SatStateGenEphFile
!*******************************************************************************



! Finds the time of ascending nodal crossing of the specified satellite prior to an input time in days since 1950 TAI
function GetNodalCrossingPriorToTime(satKey, ds50TAI) bind(C, name = "GetNodalCrossingPriorToTime") result(nodalXDs50TAI)
   real(8) :: nodalXDs50TAI	! Time at nodal crossing ds50TAI
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50TAI   ! Input time in ds50TAI
end function GetNodalCrossingPriorToTime
!*******************************************************************************



! Get the Gobs parameters for a TLE
subroutine GetGobsParams(satKey, ds50UTC, xa_gobs, errCode) bind(C, name = "GetGobsParams")
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! Propagation in days since 1950 UTC
   real(8), intent(out) :: xa_gobs(32)   ! See XA_GOBS? for array arrangement
   integer, intent(out) :: errCode   ! Error code
end subroutine GetGobsParams
!*******************************************************************************



! Does an XP GOBS comparison
function GobsCom(primSatKey, secSatKey, ds50UTC, xa_gobs_lim, xa_gobs_delta) bind(C, name = "GobsCom") result(errCode)
   integer :: errCode	! 0 if the comparison results are computed successfully, non-0 if there is an error
   integer(8), value :: primSatKey   ! The primary satellite's unique key
   integer(8), value :: secSatKey   ! The secondary satellite's unique key
   real(8), value :: ds50UTC   ! Common epoch to compare in days since 1950 UTC
   real(8), intent(in) :: xa_gobs_lim(16)   ! The gobs comparison limits, see XA_GOBS_LIM? for array arrangement
   real(8), intent(out) :: xa_gobs_delta(16)   ! The resulting gobs comparison deltas, see XA_GOBS_DELTA? for array arrangement
end function GobsCom
!*******************************************************************************



! Does an XP GOBS comparison using gobs arrays
subroutine GobsComArr(xa_gobs_prim, xa_gobs_sec, xa_gobs_lim, xa_gobs_delta) bind(C, name = "GobsComArr")
   real(8), intent(in) :: xa_gobs_prim(32)   ! Primary sat GOBS parameters, See XA_GOBS? for array arrangement
   real(8), intent(in) :: xa_gobs_sec(32)   ! Secondary sat GOBS parameters, See XA_GOBS? for array arrangement
   real(8), intent(in) :: xa_gobs_lim(16)   ! The gobs comparison limits, see XA_GOBS_LIM? for array arrangement
   real(8), intent(out) :: xa_gobs_delta(16)   ! The resulting gobs comparison deltas, see XA_GOBS_DELTA? for array arrangement
end subroutine GobsComArr
!*******************************************************************************

end interface




   
   ! Indexes of available satellite data fields
   integer, parameter :: &
      XF_SATFIELD_EPOCHUTC =  1, &  ! Satellite epoch time in days since 1950 UTC
      XF_SATFIELD_MNANOM   =  2, &  ! Mean anomaly (deg)
      XF_SATFIELD_NODE     =  3, &  ! Right ascension of asending node (deg) 
      XF_SATFIELD_OMEGA    =  4, &  ! Argument of perigee (deg)
      XF_SATFIELD_PERIOD   =  5, &  ! Satellite's period (min)
      XF_SATFIELD_ECCEN    =  6, &  ! Eccentricity
      XF_SATFIELD_INCLI    =  7, &  ! Orbit inclination (deg)
      XF_SATFIELD_MNMOTION =  8, &  ! Mean motion (rev/day)
      XF_SATFIELD_BFIELD   =  9, &  ! GP B* drag term (1/er)  or SP Radiation Pressure Coefficient
      XF_SATFIELD_PERIGEEHT= 10, &  ! Perigee height above the geoid (km)
      XF_SATFIELD_APOGEEHT = 11, &  ! Apogee height above the geoid (km)
      XF_SATFIELD_PERIGEE  = 12, &  ! Perigee height above the center of the earth (km)
      XF_SATFIELD_APOGEE   = 13, &  ! Apogee height above the center of the earth (km)
      XF_SATFIELD_A        = 14, &  ! Semimajor axis (km)
      XF_SATFIELD_NDOT     = 15, &  ! Mean motion derivative (rev/day /2)
      XF_SATFIELD_SATCAT   = 16, &  ! Satellite category (Synchronous, Deep space, Decaying, Routine)
      XF_SATFIELD_HTM3     = 17, &  ! Astat 3 Height multiplier
      XF_SATFIELD_CMOFFSET = 18, &  ! Center of mass offset (m)
      XF_SATFIELD_N2DOT    = 19, &  ! Unused
      XF_SATFIELD_NODEDOT  = 20, &  ! GP node dot (deg/s)
      XF_SATFIELD_ERRORTIME= 21, &  ! GP only - the last time when propagation has error
      XF_SATFIELD_MU       = 22;    ! value of mu
   
     
   !*******************************************************************************
   
   ! Indexes of available deltas
   integer, parameter :: &
      XA_DELTA_POS         =  0, &   ! delta position (km)
      XA_DELTA_TIME        =  1, &   ! delta time (sec)
      XA_DELTA_PRADIAL     =  2, &   ! delta position in radial direction (km)
      XA_DELTA_PINTRCK     =  3, &   ! delta position in in-track direction (km)
      XA_DELTA_PCRSSTRCK   =  4, &   ! delta position in cross-track direction (km)
      XA_DELTA_VEL         =  5, &   ! delta velocity (km/sec)
      XA_DELTA_VRADIAL     =  6, &   ! delta velocity in radial direction (km/sec)
      XA_DELTA_VINTRCK     =  7, &   ! delta velocity in in-track direction (km/sec)
      XA_DELTA_VCRSSTRCK   =  8, &   ! delta velocity in cross-track direction (km/sec)
      XA_DELTA_BETA        =  9, &   ! delta Beta (deg)
      XA_DELTA_HEIGHT      = 10, &   ! delta height (km)
      XA_DELTA_ANGMOM      = 11, &   ! delta angular momentum (deg)
      XA_DELTA_MHLNBS_UVW  = 12, &   ! 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on)
      XA_DELTA_MHLNBS_HTB  = 13, &   ! 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on)
      
      XA_DELTA_SIZE        =100; 
      
   ! Indexes of Satellite data fields
   integer, parameter :: &
      XF_SAT_NUM      =  1, &    ! Satellite number I5
      XF_SAT_NAME     =  2, &    ! Satellite international designator A8
      XF_SAT_ELTTYPE  =  3, &    ! Element type I1 (old name XF_SAT_EPHTYPE)
      XF_SAT_EPHTYPE  =  3, &    ! Obsolete - should use new name XF_SAT_ELTTYPE instead
      XF_SAT_REVNUM   =  4, &    ! Epoch revolution number I6
      XF_SAT_EPOCH    =  5, &    ! Epoch time in days since 1950
      XF_SAT_BFIELD   =  6, &    ! BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg)
      XF_SAT_ELSETNUM =  7, &    ! Element set number
      XF_SAT_INCLI    =  8, &    ! Inclination (deg)
      XF_SAT_NODE     =  9, &    ! Right ascension of ascending node (deg)
      XF_SAT_ECCEN    = 10, &    ! Eccentricity
      XF_SAT_OMEGA    = 11, &    ! Argument of perigee (deg)
      XF_SAT_MNANOM   = 12, &    ! Mean anomaly (deg)
      XF_SAT_MNMOTN   = 13, &    ! Mean motion (revs/day)
      XF_SAT_PERIOD   = 14, &    ! Satellite period (min)
      XF_SAT_PERIGEEHT= 15, &    ! Perigee Height(km)
      XF_SAT_APOGEEHT = 16, &    ! Apogee Height (km)
      XF_SAT_PERIGEE  = 17, &    ! Perigee(km)
      XF_SAT_APOGEE   = 18, &    ! Apogee (km)
      XF_SAT_A        = 19;      ! Semi-major axis (km)
   
   
   ! Indexes of SatState's load/save file task mode
   integer, parameter :: &
      XF_TASK_CTRLONLY = 1, &   ! Only load/save propagator control parameters
      XF_TASK_SATONLY  = 2, &   ! Only load/save orbital elements/external ephemeris data
      XF_TASK_BOTH     = 3;     ! Load/Save both 1 and 2
      
   
   ! Different external ephemeris file types
   integer, parameter :: &
      EPHFILETYPE_ITC         =  1, &   ! ITC file format
      EPHFILETYPE_ITC_WOCOV   =  2;     ! ITC compact (without covariance matrix) file format
      
   
   ! Gobs records
   integer, parameter :: &
      XA_GOBS_SATNUM    =  0, & ! Satellite number
      XA_GOBS_LONE      =  1, & ! East Longitude
      XA_GOBS_DRIFT     =  2, & ! Longitude Drift Rate
      XA_GOBS_RELENERGY =  3, & ! satellite's relative energy (deg^2/sec^2) - only for GOBS
      XA_GOBS_WX        =  4, & ! sin(incl)*sin(r.a. node)
      XA_GOBS_WY        =  5, & ! -sin(incl)*cos(r.a. node)
      XA_GOBS_WZ        =  6, & ! cos(incl)
      XA_GOBS_AF        =  7, & ! af
      XA_GOBS_AG        =  8, & ! ag
      XA_GOBS_AGOM      =  9, & ! AGOM
      XA_GOBS_TROUGH    = 10, & ! Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   
      XA_GOBS_SIZE      = 32; 
   
   
   ! Indexes of GOBS limits
   integer, parameter :: &
      XA_GOBS_LIM_TROUGH      =  0, &   ! 0 - ignore trough logic, 1 - implement trough logic
      XA_GOBS_LIM_PCP         =  1, &   ! Primary satellite is plane changer
      XA_GOBS_LIM_PCS         =  2, &   ! Secondary satellite is plane changer
      XA_GOBS_LIM_ACTIVEP     =  3, &   ! Primary satellite is plane changer
      XA_GOBS_LIM_ACTIVES     =  4, &   ! Secondary satellite is plane changer
      XA_GOBS_LIM_LONGMIN     =  5, &   ! Min Longitude of sat
      XA_GOBS_LIM_LONGMAX     =  6, &   ! Max Longitude of sat
      XA_GOBS_LIM_AGOMMIN     =  7, &   ! Min Agom of sat
      XA_GOBS_LIM_AGOMMAX     =  8, &   ! Max Agom of sat
   
      XA_GOBS_LIM_SIZE        = 16; 
   
   
   ! Indexes of available deltas
   integer, parameter :: &
      XA_GOBS_DELTA_PRIMESAT     =  0, &   ! Primary satellite number 
      XA_GOBS_DELTA_SECONDARYSAT =  1, &   ! Secondary satellite number 
      XA_GOBS_DELTA_ASTAT        =  2, &   ! GOBS correlation score
      XA_GOBS_DELTA_DOP          =  3, &   ! delta orbital plane
      XA_GOBS_DELTA_DSHAPE       =  4, &   ! delta shape
      XA_GOBS_DELTA_DRELENERGY   =  5, &   ! delta Relative Energy (deg^2/day^2)
      XA_GOBS_DELTA_LONGP        =  6, &   ! Longitude of Primary
      XA_GOBS_DELTA_LONGMIN      =  7, &   ! Minimum Longitude of Secondary
      XA_GOBS_DELTA_LONGMAX      =  8, &   ! Maximum Longitude of Secondary
      XA_GOBS_DELTA_TROUGH       =  9, &   ! 0 - opposite throughs or drift rates, 1 - trough or drift rates match
      XA_GOBS_DELTA_PLANE        = 10, &   ! 0|1    Plane Match Flag
      XA_GOBS_DELTA_SHAPE        = 11, &   ! 0|1    Shape Match Flag
      XA_GOBS_DELTA_ENERGY       = 12, &   ! 0|1    Energy Match Flag
      XA_GOBS_DELTA_LONG         = 13, &   ! 0|1|2  Longitude Match Flag (2 is fuzzy match)
      XA_GOBS_DELTA_AGOM         = 14, &   ! 0|1    Agom Match Flag
   
      XA_GOBS_DELTA_SIZE         = 16; 
   
   
   !*******************************************************************************
   
end module SatStateDll
! ========================= End of auto generated code ==========================
