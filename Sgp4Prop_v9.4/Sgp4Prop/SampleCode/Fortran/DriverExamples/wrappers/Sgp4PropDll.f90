! This wrapper file was generated automatically by the GenDllWrappers program.
module Sgp4PropDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes the Sgp4 DLL for use in the program.
! 
! If this function returns an error, it is recommended that you stop the program immediately.
! 
! An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
function Sgp4Init(apAddr) bind(C, name = "Sgp4Init") result(errCode)
   integer :: errCode	! 0 if Sgp4Prop.dll is initialized successfully, non-0 if there is an error.
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit(). See the documentation for DllMain.dll for details.
end function Sgp4Init
!*******************************************************************************



! Returns information about the current version of Sgp4Prop.dll. The information is placed in the string parameter you pass in.
! The returned string provides information about the version number, build date, and platform.
subroutine Sgp4GetInfo(infoStr) bind(C, name = "Sgp4GetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Sgp4Prop.dll.
end subroutine Sgp4GetInfo
!*******************************************************************************



! Loads SGP4-related parameters (prediction controls, JPL settings) and SGP4 elsets from a text file
function Sgp4LoadFileAll(sgp4InputFile) bind(C, name = "Sgp4LoadFileAll") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: sgp4InputFile(512)   ! The name of the file containing SGP4-related parameters and SGP4 elsets
end function Sgp4LoadFileAll
!*******************************************************************************



! Saves currently loaded SGP4-related parameters (SGP4 application controls, prediction controls, integration controls) to a file
! The purpose of this function is to save the current SGP4-related settings, usually used in GUI applications, for future use.
function Sgp4SaveFile(sgp4File, saveMode, saveForm) bind(C, name = "Sgp4SaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: sgp4File(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Sgp4ecifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Sgp4ecifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function Sgp4SaveFile
!*******************************************************************************



! Initializes an SGP4 satellite from an SGP or SGP4 TLE.
! Internally, when this function is called, Tle.dll's set of TLEs is searched for the provided satKey. If found, the associated TLE data will be used to create an SGP4 satellite which then will be added to Sgp4Prop.dll's set of satellites. Subsequent calls to propagate this satellite will use the data in this set to compute the satellite's new state.
! 
! This routine should be called once for each satellite you wish to propagate before propagation begins, or any time the associated data that is stored by Tle.dll is changed.
! 
! The call to this routine needs to be placed before any calls to the SGP4 propagator routines (Sgp4PropMse(), Sgp4PropDs50UTC(), etc.).
function Sgp4InitSat(satKey) bind(C, name = "Sgp4InitSat") result(errCode)
   integer :: errCode	! 0 if the satellite is successfully initialized and added to Sgp4Prop.dll's set of satellites, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key. This key will have been returned by one of the routines in Tle.dll.
end function Sgp4InitSat
!*******************************************************************************



! Removing a satellite from the propagator's set of satellites does not affect the corresponding TLE data loaded by calls to routines in Tle.dll.
function Sgp4RemoveSat(satKey) bind(C, name = "Sgp4RemoveSat") result(errCode)
   integer :: errCode	! 0 if the satellite is removed successfully, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key.
end function Sgp4RemoveSat
!*******************************************************************************



! Removes all currently loaded satellites from memory.
! Calling this function removes all satellites from the set maintained by Sgp4Prop.dll. However, the TLE data loaded by Tle.dll is unaffected by this function.
function Sgp4RemoveAllSats() bind(C, name = "Sgp4RemoveAllSats") result(errCode)
   integer :: errCode	! 0 if all satellites are removed successfully from memory, non-0 if there is an error.
end function Sgp4RemoveAllSats
!*******************************************************************************



! Returns the number of GP objects currently created. 
function Sgp4GetCount() bind(C, name = "Sgp4GetCount") result(numSats)
   integer :: numSats	! The number of GP objects currently created.
end function Sgp4GetCount
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in minutes since the satellite's epoch time. 
! The resulting data about the satellite is placed in the various reference parameters.
! It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
! 
! This function can be called in random time requests.
! The following cases will result in an error:
! 
! Semi major axis A 1.0D6
! Eccentricity E >= 1.0 or E 
! Mean anomaly MA>=1.0D10
! Hyperbolic orbit E2>= 1.0
! satKey doesn't exist in the set of loaded satellites
! FK model not set to FK5
! 
function Sgp4PropMse(satKey, mse, ds50UTC, pos, vel, llh) bind(C, name = "Sgp4PropMse") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   integer(8), value :: satKey   ! The satellite's unique key.
   real(8), value :: mse   ! The time to propagate to, specified in minutes since the satellite's epoch time.
   real(8), intent(out) :: ds50UTC   ! Resulting time in days since 1950, UTC.
   real(8), intent(out) :: pos(3)   ! Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch.
   real(8), intent(out) :: vel(3)   ! Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch.
   real(8), intent(out) :: llh(3)   ! Resulting geodetic latitude (deg), longitude(deg), and height (km).
end function Sgp4PropMse
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
! The resulting data about the satellite is placed in the pos (position), vel (velocity), and llh (Lat/Lon/Height) parameters.
! It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
! The following cases will result in an error:
! 
! Semi major axis A 1.0D6
! Eccentricity E >= 1.0 or E 
! Mean anomaly MA>=1.0D10
! Hyperbolic orbit E2>= 1.0
! satKey doesn't exist in the set of loaded satellites
! GEO model not set to WGS-72 and/or FK model not set to FK5
! 
function Sgp4PropDs50UTC(satKey, ds50UTC, mse, pos, vel, llh) bind(C, name = "Sgp4PropDs50UTC") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   integer(8), value :: satKey   ! The unique key of the satellite to propagate.
   real(8), value :: ds50UTC   ! The time to propagate to, expressed in days since 1950, UTC.
   real(8), intent(out) :: mse   ! Resulting time in minutes since the satellite's epoch time.
   real(8), intent(out) :: pos(3)   ! Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch.
   real(8), intent(out) :: vel(3)   ! Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch.
   real(8), intent(out) :: llh(3)   ! Resulting geodetic latitude (deg), longitude(deg), and height (km).
end function Sgp4PropDs50UTC
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
! The resulting data about the satellite is placed in the pos (position), vel (velocity) parameters.
function Sgp4PropDs50UtcPosVel(satKey, ds50UTC, pos, vel) bind(C, name = "Sgp4PropDs50UtcPosVel") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   integer(8), value :: satKey   ! The unique key of the satellite to propagate.
   real(8), value :: ds50UTC   ! The time to propagate to, expressed in days since 1950, UTC.
   real(8), intent(out) :: pos(3)   ! Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch.
   real(8), intent(out) :: vel(3)   ! Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch.
end function Sgp4PropDs50UtcPosVel
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
! Only the geodetic information is returned by this function.
! It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
! 
! This function is similar to Sgp4PropDs50UTC but returns only LLH.  This function is designed especially for applications which plot ground traces.
! The following cases will result in an error:
! 
! Semi major axis A 1.0D6
! Eccentricity E >= 1.0 or E 
! Mean anomaly MA>=1.0D10
! Hyperbolic orbit E2>= 1.0
! satKey doesn't exist in the set of loaded satellites
! GEO model not set to WGS-72 and/or FK model not set to FK5
! 
function Sgp4PropDs50UtcLLH(satKey, ds50UTC, llh) bind(C, name = "Sgp4PropDs50UtcLLH") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   integer(8), value :: satKey   ! The unique key of the satellite to propagate.
   real(8), value :: ds50UTC   ! The time to propagate to, expressed in days since 1950, UTC.
   real(8), intent(out) :: llh(3)   ! Resulting geodetic latitude (deg), longitude(deg), and height (km).
end function Sgp4PropDs50UtcLLH
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
! Only the ECI position vector is returned by this function.
! It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
! 
! This function is similar to Sgp4PropDs50UTC but returns only ECI position vector.  This function is designed especially for applications which plot satellite position in 3D.
! The following cases will result in an error:
! 
! Semi major axis A 1.0D6
! Eccentricity E >= 1.0 or E 
! Mean anomaly MA>=1.0D10
! Hyperbolic orbit E2>= 1.0
! satKey doesn't exist in the set of loaded satellites
! GEO model not set to WGS-72 and/or FK model not set to FK5
! 
function Sgp4PropDs50UtcPos(satKey, ds50UTC, pos) bind(C, name = "Sgp4PropDs50UtcPos") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   integer(8), value :: satKey   ! The unique key of the satellite to propagate.
   real(8), value :: ds50UTC   ! The time to propagate to, expressed in days since 1950, UTC.
   real(8), intent(out) :: pos(3)   ! Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch.
end function Sgp4PropDs50UtcPos
!*******************************************************************************



! Retrieves propagator's precomputed results. This function can be used to obtain results from 
! a propagation which are not made available through calls to the propagation functions themselves.
! 
! See example in Sgp4PropMse or Sgp4PropDs50UTC.
! 
! This function should be called immediately after a successful call to Sgp4PropMse() or Sgp4PropDs50UTC() to retrieve the desired values.
! 
! It is the caller's responsibility to ensure that the array passed in the destArray parameter is large enough to hold the requested values. The required size can be found by looking at the destArray size column of the table below describing valid index values.
! 
! The destArray Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element. In other programming languages, the subscript of the first element is 1.
! 
! Note: This function is not thread safe, please use Sgp4PropAll() instead 
! 
! The table below shows the values for the xf_Sgp4Out parameter:
! 
! table
! 
! Index
! Index Interpretation
! DestArray size
! DestArray Arrangement
! 
! 1Revolution number1Revolution number (based on the Osculating Keplerian
! Elements)
! 2Nodal Apogee Perigee3nodal period (minutes)apogee
! (km)perigee (km)
! 3Mean Keplerian Elements6semi-major axis (km)eccentricity
! (unitless)inclination (degree)mean anomaly (degree)right ascension of the ascending node
! (degree)argument of perigee (degree)
! 4Osculating Keplerian Elements6Same as Mean Keplerian Elements
! 
function Sgp4GetPropOut(satKey, xf_Sgp4Out, destArr) bind(C, name = "Sgp4GetPropOut") result(errCode)
   integer :: errCode	! 0 if the requested information is retrieved successfully, non-0 if there is an error.
   integer(8), value :: satKey   ! The unique key of the satellite for which to retrieve results.
   integer, value :: xf_Sgp4Out   ! Specifies which propagator outputs to retrieve.
   real(8), intent(out) :: destArr(*)   ! Array to receive the resulting propagator outputs.
end function Sgp4GetPropOut
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
! All propagation data is returned by this function.
function Sgp4PropAll(satKey, timeType, timeIn, xa_Sgp4Out) bind(C, name = "Sgp4PropAll") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   integer(8), value :: satKey   ! The unique key of the satellite to propagate.
   integer, value :: timeType   ! The propagation time type: 0 = minutes since epoch, 1 = days since 1950, UTC
   real(8), value :: timeIn   ! The time to propagate to, expressed in either minutes since epoch or days since 1950, UTC.
   real(8), intent(out) :: xa_Sgp4Out(64)   ! The array that stores all Sgp4 propagation data, see XA_SGP4OUT_? for array arrangement
end function Sgp4PropAll
!*******************************************************************************



! Converts osculating position and velocity vectors to a set of mean Keplerian SGP4 elements.
! The new position and velocity vectors are the results of using SGP4 propagator to propagate the computed sgp4MeanKep to the time specified in year and day of epoch time. 
! They should be closely matched with the input osculating position and velocity vectors.
! 
! The mean Keplerian elements are SGP4's Brouwer mean motion not SGP's Kozai mean motion.
! Notes: Even if the function fails, the less acurate results may still be availalbe 
function Sgp4PosVelToKep(yr, day, pos, vel, posNew, velNew, xa_kep) bind(C, name = "Sgp4PosVelToKep") result(errCode)
   integer :: errCode	! 0 if the conversion is successful, non-0 if there is an error.
   integer, value :: yr   ! 2 or 4 digit year of the epoch time.
   real(8), value :: day   ! Day of year of the epoch time.
   real(8), intent(in) :: pos(3)   ! Input osculating position vector (km).
   real(8), intent(in) :: vel(3)   ! Input osculating velocity vector (km/s).
   real(8), intent(out) :: posNew(3)   ! Resulting position vector (km) propagated from the input xa_kep.
   real(8), intent(out) :: velNew(3)   ! Resulting velocity vector (km/s) propagated from the input xa_kep.
   real(8), intent(out) :: xa_kep(6)   ! Resulting set of Sgp4 mean Keplerian elements, see XA_KEP_? for array arrangement.
end function Sgp4PosVelToKep
!*******************************************************************************



! Converts osculating position and velocity vectors to TLE array - allows bstar/bterm, drag values to be used in the conversion if desired
! The function is similar to Sgp4PosVelToKep but allows the user to specify agom (XP mode) and bstar/bterm values, if desired, to be used in solving for the new Keplerian elements.
! 
! The updated elements returned in the xa_tle array is of type SGP and the mean motion is Kozai mean motion.
! Notes: Even if the function fails, the less acurate results may still be availalbe 
function Sgp4PosVelToTleArr(pos, vel, xa_tle) bind(C, name = "Sgp4PosVelToTleArr") result(errCode)
   integer :: errCode	! 0 if the conversion is successful, non-0 if there is an error.
   real(8), intent(in) :: pos(3)   ! Input osculating position vector (km).
   real(8), intent(in) :: vel(3)   ! Input osculating velocity vector (km/s).
   real(8), intent(inout) :: xa_tle(64)   ! Input/Output array containing TLE's numerical fields, see XA_TLE_? for array arrangement; required data include epoch, ephemType, drag, bstar/bterm
end function Sgp4PosVelToTleArr
!*******************************************************************************



! Reepochs a loaded TLE, represented by the satKey, to a new epoch.
function Sgp4ReepochTLE(satKey, reEpochDs50UTC, line1Out, line2Out) bind(C, name = "Sgp4ReepochTLE") result(errCode)
   integer :: errCode	! 0 if the reepoch is successful, non-0 if there is an error.
   integer(8), value :: satKey   ! The unique key of the satellite to reepoch.
   real(8), value :: reEpochDs50UTC   ! The new epoch, express in days since 1950, UTC.
   character, intent(out) :: line1Out(512)   ! A string to hold the first line of the reepoched TLE.
   character, intent(out) :: line2Out(512)   ! A string to hold the second line of the reepoched TLE.
end function Sgp4ReepochTLE
!*******************************************************************************



! Reepochs a loaded TLE, represented by the satKey, to a new epoch in Csv format.
function Sgp4ReepochCsv(satKey, reEpochDs50UTC, csvLine) bind(C, name = "Sgp4ReepochCsv") result(errCode)
   integer :: errCode	! 0 if the reepoch is successful, non-0 if there is an error.
   integer(8), value :: satKey   ! The unique key of the satellite to reepoch.
   real(8), value :: reEpochDs50UTC   ! The new epoch, express in days since 1950, UTC.
   character, intent(out) :: csvLine(512)   ! A string to hold the reepoched CSV.
end function Sgp4ReepochCsv
!*******************************************************************************



! This function has been deprecated since v8.2
! Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
subroutine Sgp4SetLicFilePath(licFilePath) bind(C, name = "Sgp4SetLicFilePath")
   character, intent(in) :: licFilePath(512)   ! The file path to the Sgp4 Open License file
end subroutine Sgp4SetLicFilePath
!*******************************************************************************



! This function has been deprecated since v8.2
! Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
subroutine Sgp4GetLicFilePath(licFilePath) bind(C, name = "Sgp4GetLicFilePath")
   character, intent(out) :: licFilePath(512)   ! The file path to the Sgp4 Open License file
end subroutine Sgp4GetLicFilePath
!*******************************************************************************



! Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
! Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
! that many points (arrSize) and the errCode is set to IDX_ERR_WARN
function Sgp4GenEphems(satKey, startTime, endTime, stepSize, sgp4_ephem, arrSize, ephemArr, genEphemPts) &
bind(C, name = "Sgp4GenEphems") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   integer(8), value :: satKey   ! The unique key of the satellite to generate ephemerides.
   real(8), value :: startTime   ! Start time expressed in days since 1950, UTC.
   real(8), value :: endTime   ! End time expressed in days since 1950, UTC.
   real(8), value :: stepSize   ! Step size in minutes (static); enter predefine negative values (DYN_SS_?) to request dynamic step size
   integer, value :: sgp4_ephem   ! Output ephemeris type 1=ECI, 2=J2K.
   integer, value :: arrSize   ! Size of input ephemArr
   real(8), intent(out) :: ephemArr(7, *)   ! Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   integer, intent(out) :: genEphemPts   ! Actual number of ephemeris points generated (always &le; arrSize)
end function Sgp4GenEphems
!*******************************************************************************



! Generates ephemerides for the input TLE - in an array format - for the specified time span and step size (OS - in One Step)
! Notes: 
! - This function takes in TLE data directly and doesn't need to go through loading/geting satKey/initializing steps
! - if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
!   that many points (arrSize) and the errCode is set to IDX_ERR_WARN
function Sgp4GenEphems_OS(xa_tle, startTime, endTime, stepSize, sgp4_ephem, arrSize, ephemArr, genEphemPts) &
bind(C, name = "Sgp4GenEphems_OS") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   real(8), intent(in) :: xa_tle(64)   ! Input array containing TLE's numerical fields, see XA_TLE_? for array arrangement
   real(8), value :: startTime   ! Start time expressed in days since 1950, UTC.
   real(8), value :: endTime   ! End time expressed in days since 1950, UTC.
   real(8), value :: stepSize   ! Step size in minutes (static); enter predefine negative values (DYN_SS_?) to request dynamic step size
   integer, value :: sgp4_ephem   ! Output ephemeris type 1=ECI, 2=J2K.
   integer, value :: arrSize   ! Size of input ephemArr
   real(8), intent(out) :: ephemArr(7, *)   ! Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   integer, intent(out) :: genEphemPts   ! Actual number of ephemeris points generated (always &le; arrSize)
end function Sgp4GenEphems_OS
!*******************************************************************************



! Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
function Sgp4PropAllSats(satKeys, numOfSats, ds50UTC, ephemArr) bind(C, name = "Sgp4PropAllSats") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error.
   integer(8), intent(in) :: satKeys(*)   ! The satellite keys of all input satellites
   integer, value :: numOfSats   ! The total number of satellites
   real(8), value :: ds50UTC   ! The time to propagate all satelllites to, expressed in days since 1950, UTC.
   real(8), intent(out) :: ephemArr(6, *)   ! 0-2: pos (km), 3-5: vel (km/sec)
end function Sgp4PropAllSats
!*******************************************************************************



! Provides the native XP equinoctial elements and rates at given time
function XpGetNativeElts(satKey, ds50UTC, xa_eqnx, xa_eqnx_dot) bind(C, name = "XpGetNativeElts") result(errCode)
   integer :: errCode	! 0 if the reepoch is successful, non-0 if there is an error.
   integer(8), value :: satKey   ! The unique key of the satellite to reepoch.
   real(8), value :: ds50UTC   ! The new epoch, express in days since 1950, UTC.
   real(8), intent(out) :: xa_eqnx(6)   ! Equinoctial Elements (subtract thetaG from Longitude) at reEpoch time
   real(8), intent(out) :: xa_eqnx_dot(6)   ! Equinoctial Element rates (subtract earth rotation rate from Longitude Rate) at reEpoch time
end function XpGetNativeElts
!*******************************************************************************



! Reepochs to a csv and provides the native XP equinoctial elements and rates
function XpReepochGetNativeElts(satKey, reEpochDs50UTC, csvLine, xa_eqnx, xa_eqnx_dot) &
bind(C, name = "XpReepochGetNativeElts") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error.
   integer(8), value :: satKey   ! Input satKey
   real(8), value :: reEpochDs50UTC   ! The new epoch, express in days since 1950, UTC.
   character, intent(out) :: csvLine(512)   ! A string to hold the reepoched CSV.
   real(8), intent(out) :: xa_eqnx(6)   ! Equinoctial Elements (subtract thetaG from Longitude) at reEpoch time
   real(8), intent(out) :: xa_eqnx_dot(6)   ! Equinoctial Element rates (subtract earth rotation rate from Longitude Rate) at reEpoch time
end function XpReepochGetNativeElts
!*******************************************************************************

end interface




   ! Different return values of errCode from Sgp4 propagation
   integer, parameter :: &
      GP_ERR_NONE        = 0, &  ! SGP4 propagates successfully
      GP_ERR_BADFK       = 1, &  ! Bad FK model (FK5 must be selected)
      GP_ERR_ANEGATIVE   = 2, &  ! A is negative
      GP_ERR_ATOOLARGE   = 3, &  ! A is to large
      GP_ERR_EHYPERPOLIC = 4, &  ! Eccentricity is hyperbolic
      GP_ERR_ENEGATIVE   = 5, &  ! Eccentricity is negative
      GP_ERR_MATOOLARGE  = 6, &  ! Mean anomaly is too large
      GP_ERR_E2TOOLARGE  = 7;    ! e**2 is too large
   
   ! Different time types for passing to Sgp4PropAll
   integer, parameter :: &
      SGP4_TIMETYPE_MSE      = 0, & ! propagation time is in minutes since epoch
      SGP4_TIMETYPE_DS50UTC  = 1;   ! propagation time is in days since 1950, UTC
      
   ! Sgp4 propagated output fields
   integer, parameter :: &
      XF_SGP4OUT_REVNUM       = 1,  & ! Revolution number
      XF_SGP4OUT_NODAL_AP_PER = 2,  & ! Nodal period, apogee, perigee
      XF_SGP4OUT_MEAN_KEP     = 3,  & ! Mean Keplerian
      XF_SGP4OUT_OSC_KEP      = 4;    ! Osculating Keplerian
      
   ! Sgp4 propagated data
   integer, parameter :: &
      XA_SGP4OUT_DS50UTC      =  0, & ! Propagation time in days since 1950, UTC
      XA_SGP4OUT_MSE          =  1, & ! Propagation time in minutes since the satellite's epoch time
      XA_SGP4OUT_POSX         =  2, & ! ECI X position (km) in True Equator and Mean Equinox of Epoch
      XA_SGP4OUT_POSY         =  3, & ! ECI Y position (km) in True Equator and Mean Equinox of Epoch
      XA_SGP4OUT_POSZ         =  4, & ! ECI Z position (km) in True Equator and Mean Equinox of Epoch
      XA_SGP4OUT_VELX         =  5, & ! ECI X velocity (km/s) in True Equator and Mean Equinox of Epoch
      XA_SGP4OUT_VELY         =  6, & ! ECI Y velocity (km/s) in True Equator and Mean Equinox of Epoch
      XA_SGP4OUT_VELZ         =  7, & ! ECI Z velocity (km/s) in True Equator and Mean Equinox of Epoch
      XA_SGP4OUT_LAT          =  8, & ! Geodetic latitude (deg)
      XA_SGP4OUT_LON          =  9, & ! Geodetic longitude (deg)
      XA_SGP4OUT_HEIGHT       = 10, & ! Height above geoid (km)
      XA_SGP4OUT_REVNUM       = 11, & ! Revolution number
      XA_SGP4OUT_NODALPER     = 12, & ! Nodal period (min)
      XA_SGP4OUT_APOGEE       = 13, & ! Apogee (km)
      XA_SGP4OUT_PERIGEE      = 14, & ! Perigee (km)
      XA_SGP4OUT_MN_A         = 15, & ! Mean semi-major axis (km)
      XA_SGP4OUT_MN_E         = 16, & ! Mean eccentricity (unitless)
      XA_SGP4OUT_MN_INCLI     = 17, & ! Mean inclination (deg)
      XA_SGP4OUT_MN_MA        = 18, & ! Mean mean anomaly (deg)
      XA_SGP4OUT_MN_NODE      = 19, & ! Mean right ascension of the asending node (deg)
      XA_SGP4OUT_MN_OMEGA     = 20, & ! Mean argument of perigee (deg)
      XA_SGP4OUT_OSC_A        = 21, & ! Osculating semi-major axis (km)  
      XA_SGP4OUT_OSC_E        = 22, & ! Osculating eccentricity (unitless)
      XA_SGP4OUT_OSC_INCLI    = 23, & ! Osculating inclination (deg)
      XA_SGP4OUT_OSC_MA       = 24, & ! Osculating mean anomaly (deg)
      XA_SGP4OUT_OSC_NODE     = 25, & ! Osculating right ascension of the asending node (deg)
      XA_SGP4OUT_OSC_OMEGA    = 26, & ! Osculating argument of perigee (deg)
   
      XA_SGP4OUT_SIZE         = 64;
      
   ! Different options for generating ephemerides from SGP4
   integer, parameter :: &
      SGP4_EPHEM_ECI   = 1,    &  ! ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
      SGP4_EPHEM_J2K   = 2;       ! MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) 
      
   
   ! Different dynamic step size options
   integer, parameter :: &   
      DYN_SS_BASIC  = -1   ; ! Use a simple algorithm to determine step size based on satellite's current position
      
   !*******************************************************************************
      
end module Sgp4PropDll
! ========================= End of auto generated code ==========================
