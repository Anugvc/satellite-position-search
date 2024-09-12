! This wrapper file was generated automatically by the GenDllWrappers program.
module LamodDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes Lamod dll for use in the program
! If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
function LamodInit(apAddr) bind(C, name = "LamodInit") result(errCode)
   integer :: errCode	! 0 if Lamod.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function LamodInit
!*******************************************************************************



! Returns information about the current version of Lamod.dll. The information is placed in the string parameter you pass in
! The returned string provides information about the version number, build date, and the platform of the Lamod DLL. 
subroutine LamodGetInfo(infoStr) bind(C, name = "LamodGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Lamod.dll.
end subroutine LamodGetInfo
!*******************************************************************************



! Loads Lamod-related parameters (1P/2P/3P cards, and Lamod parameter free format) from an input text file
! Returns zero indicating the file has been read successfully. Other values indicate an error.
function LamodLoadFile(lamodInputFile) bind(C, name = "LamodLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: lamodInputFile(512)   ! The name of the file containing Lamod-related parameters
end function LamodLoadFile
!*******************************************************************************



! Loads Lamod control parameters and all Lamod related data (environment, time, elsets, sensors) from an input text file
function LamodLoadFileAll(lamodInputFile) bind(C, name = "LamodLoadFileAll") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: lamodInputFile(512)   ! The name of the file containing Lamod control parameters and all Lamod related data
end function LamodLoadFileAll
!*******************************************************************************



! Loads a single Lamod-typed card
function LamodLoadCard(card) bind(C, name = "LamodLoadCard") result(errCode)
   integer :: errCode	! 0 if the input card is read successfully, non-0 if there is an error
   character, intent(in) :: card(512)   ! Lamod-type input card
end function LamodLoadCard
!*******************************************************************************



! Saves any currently loaded Lamod-related settings to a file
! The purpose of this function is to save the current Lamod-related settings, usually used in GUI applications, for future use.
function LamodSaveFile(lamodFile, saveMode, saveForm) bind(C, name = "LamodSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: lamodFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function LamodSaveFile
!*******************************************************************************



! Returns number of sensors/satellites entered via 1P/2P cards
! See LamodGetSenNums for example.
subroutine LamodGetNumOfSensSats(numSens, numSats) bind(C, name = "LamodGetNumOfSensSats")
   integer, intent(out) :: numSens   ! The number of sensors that were entered via 1P/2P cards
   integer, intent(out) :: numSats   ! number of satellites that were entered via 1P/2P cards
end subroutine LamodGetNumOfSensSats
!*******************************************************************************



! Retrieves all of the input sensor numbers that were entered via 1P-card  (column 38-44), 2P-card, or Lamod parameter free format (SENNO=)
subroutine LamodGetSenNums(senNums) bind(C, name = "LamodGetSenNums")
   integer, intent(out) :: senNums(*)   ! The array in which to store the list of input sensors that were entered via 1P/2P cards or Lamod parameter free format
end subroutine LamodGetSenNums
!*******************************************************************************



! Retrieves all of the input satellite numbers that were entered via 1P-card (column 40-62), 2P-card, or Lamod parameter free format (SATNO=)
! See LamodGetSenNums for example.
subroutine LamodGetSatNums(satNums) bind(C, name = "LamodGetSatNums")
   integer, intent(out) :: satNums(*)   ! The array in which to store the list of input satellites that were entered via 1P/2P cards or Lamod parameter free format
end subroutine LamodGetSatNums
!*******************************************************************************



! Builds and returns the Lamod parameter card (1P-Card) from the current Lamod settings
subroutine LamodGet1pCard(lamod1PCard) bind(C, name = "LamodGet1pCard")
   character, intent(out) :: lamod1PCard(512)   ! the resulting Lamod 1P card
end subroutine LamodGet1pCard
!*******************************************************************************



! Retrieves all Lamod control parameters with a single function call
subroutine LamodGet1pAll(timeFlg, startTime, stopTime, interval, prtOpt, punchObs, visFlg, stepMode, schedMode, diagMode, &
solAspAngle) bind(C, name = "LamodGet1pAll")
   integer, intent(out) :: timeFlg   ! Time format:0 = minutes since epoch (MSE), 1 = days since 1950, UTC
   real(8), intent(out) :: startTime   ! Begin time in ds50UTC or MSE depending on timeFlg
   real(8), intent(out) :: stopTime   ! End time  in ds50UTC or MSE depending on timeFlg
   real(8), intent(out) :: interval   ! Output interval (min)
   integer, intent(out) :: prtOpt   ! Print options
   integer, intent(out) :: punchObs   ! Flag to generate obs from look angles: 0=Do not form obs, 1=Form B3 obs from look angles, 2=Form TTY obs from look angles
   integer, intent(out) :: visFlg   ! Optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use sensor's limits record
   integer, intent(out) :: stepMode   ! Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   character, intent(out) :: schedMode   ! Processing mode:'O' = OBSCHED mode (all sensors vs all sats), 'P' = PASCHED mode (all satellites vs all sensors)
   integer, intent(out) :: diagMode   ! Pass by pass diagnostic flag: 0=None, 1=Print sensor/sat position at each look, 2=Print pass-by-pass diagnostics, 3=1+2 combined
   real(8), intent(out) :: solAspAngle   ! Max solar aspect angle (deg) for optical sites
end subroutine LamodGet1pAll
!*******************************************************************************



! Sets all Lamod control parameters with a single function call
! The values of visFlg have been changed to match those of sensor limits. VisFlg = 9 now means using limits record value (from V5.4.2 and earlier versions, this used to be visFlg = 0).
! 
! There are cases when the program switches to step mode even though the users have requested culmination mode:
! 
! When the sensor is an orbiting sensor
! When the target satellite orbit has large period (> 960 minutes)
! When the last pass's culmination time passes the requested stopTime (culmination time == 0 and setTime == 0)
! When a pass has multiple maximum elevations (culmination time == -1.0)
! 
subroutine LamodSet1pAll(timeFlg, startTime, stopTime, interval, prtOpt, punchObs, visFlg, stepMode, schedMode, diagMode, &
solAspAngle) bind(C, name = "LamodSet1pAll")
   integer, value :: timeFlg   ! Time format:0 = minutes since epoch (MSE), 1 = days since 1950, UTC
   real(8), value :: startTime   ! Begin time in ds50UTC or MSE depending on timeFlg
   real(8), value :: stopTime   ! End time  in ds50UTC or MSE depending on timeFlg
   real(8), value :: interval   ! Output interval (min)
   integer, value :: prtOpt   ! Print options
   integer, value :: punchObs   ! Flag to generate obs from look angles: 0=Do not form obs, 1=Form B3 obs from look angles, 2=Form TTY obs from look angles
   integer, value :: visFlg   ! Optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use sensor's limits record
   integer, value :: stepMode   ! Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   character, value :: schedMode   ! Processing mode:'O' = OBSCHED mode (all sensors vs all sats), 'P' = PASCHED mode (all satellites vs all sensors)
   integer, value :: diagMode   ! Pass by pass diagnostic flag: 0=None, 1=Print sensor/sat position at each look, 2=Print pass-by-pass diagnostics, 3=1+2 combined
   real(8), value :: solAspAngle   ! Max solar aspect angle (deg) for optical sites
end subroutine LamodSet1pAll
!*******************************************************************************



! Retrieves the value of a specified Lamod control parameter (1P-card field) 
! 
! Remember to convert valueStr to the correct data type that it represents.
! 
! The table below shows the values for the xf_1P parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
! 1   Input time format : 0: Minutes since epoch, 1: UTC
! 2   Begin time
! 3   End time
! 4   Ouput interval
! 5   Print options: 0: print look angles, 1: print look angle and initial conditions
! 6   Generate obs from look angles flag
! 7   Compute optical visibility flag: 0: use limits record value, 1: output optically visible passes only,
! 2: output pass only if solar aspect angle 
! 8   Step mode flag: 0: use culmination mode; 1: use step mode
! 9   Processing mode: 'O': obsched mode; 'P':P ASCHED mode
! 10  Diagnostic mode: 0: none, 1: print sensor/sat position at each look, 2: print pass by pass diagnostics,
! 3: both 1 and 2
! 11  Max solar aspect for optical sites   
! 	
subroutine LamodGet1pField(xf_1P, retVal) bind(C, name = "LamodGet1pField")
   integer, value :: xf_1P   ! Predefined number specifying which Lamod control parameter  to retrieve
   character, intent(out) :: retVal(512)   ! A string to hold the value of the requested Lamod parameter
end subroutine LamodGet1pField
!*******************************************************************************



! Sets the value of a specified Lamod control parameter (1P-card field)
! See LamodGet1pField for description of the xf_1P parameter values.
subroutine LamodSet1pField(xf_1P, valueStr) bind(C, name = "LamodSet1pField")
   integer, value :: xf_1P   ! Predefined number specifying which Lamod control parameter to set
   character, intent(in) :: valueStr(512)   ! The new value of the specified field, expressed as a string
end subroutine LamodSet1pField
!*******************************************************************************



! Retrieves the concurrent viewing options read from the input 3P Parameter card
! The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
subroutine LamodGet3pAll(concurrFlg, concurrSens) bind(C, name = "LamodGet3pAll")
   integer, intent(out) :: concurrFlg   ! Concurrent view option: 0=Normal looks (1 sen + 1 sat), 1/4=2 or 3 sens viewing the same target sat, 2/3=1 orbiting sen viewing the target sat as 2nd/3rd site(s) viewing the orbiting sen
   integer, intent(out) :: concurrSens(3)   ! Concurrent sensor numbers (maximum 3 sensors)
end subroutine LamodGet3pAll
!*******************************************************************************



! Sets concurrent viewing options similar to what is entered in the input 3P Parameter card
! The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
subroutine LamodSet3pAll(concurrFlg, concurrSens) bind(C, name = "LamodSet3pAll")
   integer, value :: concurrFlg   ! Concurrent view option: 0=Normal looks (1 sen + 1 sat), 1/4=2 or 3 sens viewing the same target sat, 2/3=1 orbiting sen viewing the target sat as 2nd/3rd site(s) viewing the orbiting sen
   integer, intent(in) :: concurrSens(3)   ! Concurrent sensor numbers (maximum 3 sensors)
end subroutine LamodSet3pAll
!*******************************************************************************



! Returns the full file name of the output obs file that was specified using "OBSOUT = " in the main input file or using the LamodSetObsFileName() function call
! The users need to make sure they have turned on the flag to generate obs from look angles. Otherwise, this function will return an empty string to the obsFile.
subroutine LamodGetObsFileName(obsFile) bind(C, name = "LamodGetObsFileName")
   character, intent(out) :: obsFile(512)   ! The output obs file name
end subroutine LamodGetObsFileName
!*******************************************************************************



! Sets the full file name of the output obs file which will be used to store the generated obs data
! Another way to set the output obs file name is entering "OBSOUT = obsFileName" in the input file. 
! 
! The users need to make sure they have also turned on the flag to generate obs from look angles.
subroutine LamodSetObsFileName(obsFile) bind(C, name = "LamodSetObsFileName")
   character, intent(in) :: obsFile(512)   ! The new output obs file name
end subroutine LamodSetObsFileName
!*******************************************************************************



! Checks to see whether the input satellite will ever be viewable to the input sensor
! This function is for the initial visibility check which screens out sensors that can't possibly acquire the satellite. Internally, the LamodInitSenSat() also calls this function to do the screening.
! 
! If the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
function LamodSenSatVisible(senKey, satKey) bind(C, name = "LamodSenSatVisible") result(senSatVisible)
   integer :: senSatVisible	! 1 if the input satellite is viewable to the input sensor, 0 if not
   integer(8), value :: senKey   ! The sensor's unique key (sensor number)
   integer(8), value :: satKey   ! The satellite's unique key
end function LamodSenSatVisible
!*******************************************************************************



! Initializes a sensor/satellite pair in preparation for computing look angles
! It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
! 
! The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
! 
! Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
function LamodInitSenSat(senKey, satKey) bind(C, name = "LamodInitSenSat") result(senSatKey)
   integer(8) :: senSatKey	! Returns a senSatKey: gt 0: Success, = 0: Warning, lt 0: Error
   integer(8), value :: senKey   ! The sensor's unique key (sensor number)
   integer(8), value :: satKey   ! The satellite's unique key
end function LamodInitSenSat
!*******************************************************************************



! Initializes a sensor/satellite pair in preparation for computing look angles using its own LAMOD parameters - suitable for multithread application
! This function is similar to LamodInitSenSat but allows the user to enter separate LAMOD parameters for each call which is suitable for multithread application
! It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
! 
! The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
! 
! Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
function LamodInitSenSat_MT(xa_la_parms, senKey, satKey) bind(C, name = "LamodInitSenSat_MT") result(senSatKey)
   integer(8) :: senSatKey	! Returns a senSatKey: gt 0: Success, = 0: Warning, lt 0: Error
   real(8), intent(in) :: xa_la_parms(16)   ! LAMOD control parameters - see XA_LA_PARMS_? for array arrangement
   integer(8), value :: senKey   ! The sensor's unique key (sensor number)
   integer(8), value :: satKey   ! The satellite's unique key
end function LamodInitSenSat_MT
!*******************************************************************************



! Retrieves all of the data for an initialized sensor/satellite pair with a single function call
function LamodGetSenSatDataAll(senSatKey, stepMode, optVisFlg, startDs50TAI, stopDs50TAI, interval, period) &
bind(C, name = "LamodGetSenSatDataAll") result(errCode)
   integer :: errCode	! 0 if the computation data is retrieved successfully, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   integer, intent(out) :: stepMode   ! Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   integer, intent(out) :: optVisFlg   ! Optical visibility flag
   real(8), intent(out) :: startDs50TAI   ! Start time in ds50TAI
   real(8), intent(out) :: stopDs50TAI   ! Stop time in ds50TAI
   real(8), intent(out) :: interval   ! Output interval (min)
   real(8), intent(out) :: period   ! Satellite's period (min)
end function LamodGetSenSatDataAll
!*******************************************************************************



! Retrieves an individual field of data for an initialized sensor/satellite pair
! 
! Remember to convert valueStr to the correct data type that it represents.
! 
! The table below shows the values for the xf_SenSat parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
!  1  Step mode
!  2  Optical visibility flag
!  3  Begin time in ds50TAI
!  4  End time in ds50TAI
!  5  Print interval 
!  6  Satellite's period
! 
function LamodGetSenSatDataField(senSatKey, xf_SenSat, retVal) bind(C, name = "LamodGetSenSatDataField") result(errCode)
   integer :: errCode	! 0 if the data is successfully retrieved, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   integer, value :: xf_SenSat   ! Predefined number specifying which data field to retrieve
   character, intent(out) :: retVal(512)   ! A string to contain the value of the requested field
end function LamodGetSenSatDataField
!*******************************************************************************



! Retrieves all data fields belonging to the sensor/satellite pair via its senSatKey and store them in the passing array xa_senSat
function LamodSenSatDataToArray(senSatKey, xa_senSat) bind(C, name = "LamodSenSatDataToArray") result(errCode)
   integer :: errCode	! 0 if the sensor/satellite data is retrieved successfully, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   real(8), intent(out) :: xa_senSat(32)   ! Array containing sensor/satellite data fields, see XA_SENSAT_? for array arrangement
end function LamodSenSatDataToArray
!*******************************************************************************



! Returns the number of possible passes of the sensor/satellite pair in the requested time span which pass 
! the horizontal limit test. This function only applies when the culmination mode was selected
! This is an estimated number of passes. Each pass might not return any valid look angles due to the sensor limits settings.
function LamodGetNumPasses(senSatKey) bind(C, name = "LamodGetNumPasses") result(numPasses)
   integer :: numPasses	! The number of possible passes. Special values: -1: The senSatKey is invalid, 0: culmination mode wasn't selected
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
end function LamodGetNumPasses
!*******************************************************************************



! Returns an array of rise, culmination, and set times of all possible passes of a sensor/satellite pair during the requested time span
! See LamodGetNumPasses for example.
! If a possible culmination time of the last pass is after the requested stop time, only the rise time is returned. The culmination and set times are set to zeros. Since there is no culmination time in this case, the host program should switch to step mode to compute look angles.
! There are cases when multiple maximum elevations are detected in one pass. In these cases, the culmination times will be set to -1.0. The users need to check for this condition and switch to step mode.
! For external ephemeris files, if the provided ephemerides don't cover the requested time span, the possible rise and set times will not be available and will be set to -1.0.
! Note: For Fence/Fan typed sensors this function returns enter/penetration-cross/exit times in place of rise/culmination/set times
function LamodGetRiseCulmSetTimes(senSatKey, rcsTimeArr) bind(C, name = "LamodGetRiseCulmSetTimes") result(errCode)
   integer :: errCode	! 0 if the computation is successful, non-0 if there is an error
   integer(8), value :: senSatKey   ! sensor/satellite pair's unique key
   real(8), intent(out) :: rcsTimeArr(3, *)   ! array of rise/culmination/set times in days since 1950 TAI of the possible passes
end function LamodGetRiseCulmSetTimes
!*******************************************************************************



! Computes a single look angle of the sensor/satellite pair at the specified time
function LamodComputeLookAngle(senSatKey, currDs50TAI, lookCode, xa_look, senElts, satElts) &
bind(C, name = "LamodComputeLookAngle") result(errCode)
   integer :: errCode	! 0 if the look angle is computed successfully, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   real(8), value :: currDs50TAI   ! Time, in ds50TAI, for which to compute the look angle
   integer, intent(out) :: lookCode   ! lookCode: 0=valid look; 1=Fail horizon break test; 2=Fail sensor's limit tests
   real(8), intent(out) :: xa_look(6)   ! look output data, see XA_LOOK_? for array arrangement
   real(8), intent(out) :: senElts(9)   ! sensor's state (ECI TEME of Date): position (1st-3rd), velocity (4th-6th), llh (7th-9th)
   real(8), intent(out) :: satElts(9)   ! satellite's state (ECI TEME of Date): position (1st-3rd), velocity (4th-6th), llh (7th-9th)
end function LamodComputeLookAngle
!*******************************************************************************



! Computes at once look and view data of the sensor/satellite pair at the specified time
! 
! Note: This function is a thread safe alternative to LamodComputeLookAngle(), LamodGetOrbSenViewdata(), and LamodGetViewDataField()
function LamodComputeLookView(senSatKey, currDs50TAI, xa_lv) bind(C, name = "LamodComputeLookView") result(errCode)
   integer :: errCode	! 0 if the look angle is computed successfully, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   real(8), value :: currDs50TAI   ! Time, in ds50TAI, for which to compute the look angle
   real(8), intent(out) :: xa_lv(128)   ! The array that stores resulting look and view data, see XA_LV_? for array arrangement
end function LamodComputeLookView
!*******************************************************************************



! Finds exact time when satellite is IN or OUT of sensor's coverage
! 
! Note: The start and end times must have different look values (valid and invalid looks or vice versa)
function LamodFindExactIOTime(senSatKey, t1Ds50TAI, t2Ds50TAI) bind(C, name = "LamodFindExactIOTime") result(ioDs50TAI)
   real(8) :: ioDs50TAI	! The exact time when satellite is IN or OUT of sensor's coverage (= 0 if none exists)
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   real(8), value :: t1Ds50TAI   ! The bracket start time when satellite changes its coverage status, in ds50TAI
   real(8), value :: t2Ds50TAI   ! The bracket end time when satellite changes its coverage status, in ds50TAI
end function LamodFindExactIOTime
!*******************************************************************************



! Returns viewing and geometric data for orbiting sensors
! 
! Note: This function is not thread safe, please use LamodComputeLookView() instead   
function LamodGetOrbSenViewdata(senSatKey, uvSun, uvMoon, xa_angle, nBore1, nBore2, xa_offBore) &
bind(C, name = "LamodGetOrbSenViewdata") result(errCode)
   integer :: errCode	! 0 if the viewing data is retrieved successfully, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   real(8), intent(out) :: uvSun(3)   ! unit vector to the sun
   real(8), intent(out) :: uvMoon(3)   ! unit vector to the moon
   real(8), intent(out) :: xa_angle(5)   ! array of various angle data, see XA_ANGLE_? for array arrangement
   integer, intent(out) :: nBore1   ! Orbiting sensor boresight vector (U, V, W) for limits interval #1
   integer, intent(out) :: nBore2   ! Orbiting sensor boresight vector (U, V, W) for limits interval #2
   real(8), intent(out) :: xa_offBore(4)   ! Array of off-boresight angle data, see XA_OFFBORE_? for array arrangement
end function LamodGetOrbSenViewdata
!*******************************************************************************



! Retrieves a single field of look angle viewing data
! 
! See LamodCompRaDec for an example.
! 
! Note: This function is not thread safe, please use LamodComputeLookView() instead    
! 
! When the users pass the retArray to this function, make sure it has the proper size as shown in the retArray size column.
! 
! The retArray Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element.
! 
! The table below shows the values for the xf_View parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
!  1  computed U-vector to object
!  2  range unit vector
!  3  topocentric L unit vector
!  4  station zenith vector
!  5  computed range vector (km)
!  6  computed range-rate vector/relative velocity vector (er/kem)
!  7  vector to sun  (km)
!  8  vector to moon (km)
!  9  angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect
! angle)
! 10  illumination result
! 11  Relative velocity (km/sec)
! 12  sensor position EFG
! 13  limit check flags
! 14  azimuth and elevation rates (deg/sec)
! 15  moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
! 	
! 
! The table below shows the values for the limit check flags (xf_View = 13):
! 
! table
! 
! Index
! Index Interpretation
! 
!   0 az limits test flag
!   1 el limits test flag
!   2 earth in background flag
!   3 earth obstructed flag
!   4 lunar exclusion angle fl
!   5 max range test flag
!   6 min range test flag
!   7 penumb eclipse test flag
!   8 relative velocity test fl
!   9 solar aspect angle test
!  10 solar exclusion angle fl
!  11 umbral eclipse test flag
! 	
function LamodGetViewDataField(senSatKey, xf_View, retVal) bind(C, name = "LamodGetViewDataField") result(errCode)
   integer :: errCode	! 0 if the viewing data is retrieved successfully, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   integer, value :: xf_View   ! Predefined value specifying which field to retrieve
   real(8), intent(out) :: retVal(*)   ! An array to store the retrieved result
end function LamodGetViewDataField
!*******************************************************************************



! Computes right-ascension and declination from the input sensor's range unit vector (also called local horizon vector)
! The users need to be careful when -1 < decDeg < 0 because they might easily display it incorrectly (missing the negative sign of its value).
subroutine LamodCompRaDec(xlPos, rasc, decl, raHr, raMin, raSec, decDeg, decMin, decSec) bind(C, name = "LamodCompRaDec")
   real(8), intent(in) :: xlPos(3)   ! sensor local horizon vector (range unit vector)
   real(8), intent(out) :: rasc   ! computed right ascension (deg)
   real(8), intent(out) :: decl   ! computed declination (deg)
   integer, intent(out) :: raHr   ! Right-ascension hour
   integer, intent(out) :: raMin   ! Right-ascension minute
   real(8), intent(out) :: raSec   ! Right-ascension second
   integer, intent(out) :: decDeg   ! Declination hour
   integer, intent(out) :: decMin   ! Declination minute
   real(8), intent(out) :: decSec   ! Declination second
end subroutine LamodCompRaDec
!*******************************************************************************



! Retrieves the formatted observation strings, either in B3 or transmission format, generated from the most recent look angle data
! Note: This function is not thread safe, please use LamodGenObsAtTime() instead 
! The function returns one-line or two-line formatted obs string depending on the input punchObs and the sensor's observation type.  The users need to check the returned value of numLines to see what type of the output strings they are.
function LamodGenObs(senSatKey, punchObs, obsClass, obsLine1, obsLine2, numLines) bind(C, name = "LamodGenObs") result(errCode)
   integer :: errCode	! 0 if the generated obs strings are retrieved successfully, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   integer, value :: punchObs   ! Generate obs from look angles flag: 1/11=Form B3 obs, 2/12=Form transmission, 3/13=SP Tasker (11/12/13 is for LTC), 4=CSV format
   character, value :: obsClass   ! Input character specifying the classification of the generated obs
   character, intent(out) :: obsLine1(512)   ! First line of the formatted obs strings
   character, intent(out) :: obsLine2(512)   ! Second line, if available, of the formatted obs strings
   integer, intent(out) :: numLines   ! Number of lines of the output strings
end function LamodGenObs
!*******************************************************************************



! Generates formatted observation strings, either in B3 or transmission format, from a VALID look angle obtained at the requested time 
! Note: This is a thread-safe version of the LamodGenObs
function LamodGenObsAtTime(senSatKey, currDs50TAI, punchObs, obsClass, obsLine1, obsLine2, numLines) &
bind(C, name = "LamodGenObsAtTime") result(errCode)
   integer :: errCode	! 0 if the generated obs strings are retrieved successfully, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
   real(8), value :: currDs50TAI   ! Time, in ds50TAI, for which to compute the look angle
   integer, value :: punchObs   ! Generate obs from look angles flag: 1=Form B3 obs, 2=Form transmission, 3=SP Tasker, 4=CSV format
   character, value :: obsClass   ! Input character specifying the classification of the generated obs
   character, intent(out) :: obsLine1(512)   ! First line of the formatted obs strings
   character, intent(out) :: obsLine2(512)   ! Second line, if available, of the formatted obs strings
   integer, intent(out) :: numLines   ! Number of lines of the output strings
end function LamodGenObsAtTime
!*******************************************************************************



! Removes a sensor/satellite pair from Lamod.dll's set of loaded sensor/satellite pairs
function LamodRemoveSenSat(senSatKey) bind(C, name = "LamodRemoveSenSat") result(errCode)
   integer :: errCode	! 0 if the sensor/satellite pair is removed successfully, non-0 if there is an error
   integer(8), value :: senSatKey   ! The sensor/satellite pair's unique key
end function LamodRemoveSenSat
!*******************************************************************************



! Removes all sensor/satellite pairs from Lamod.dll's set of sensor/satellite pairs
function LamodRemoveAllSenSats() bind(C, name = "LamodRemoveAllSenSats") result(errCode)
   integer :: errCode	! 0 if all sensor/satellite pairs are removed successfully, non-0 if there is an error
end function LamodRemoveAllSenSats
!*******************************************************************************



! Resets all Lamod-related parameters back to their default values
! See LamodRemoveAllSenSats for example.
subroutine LamodReset() bind(C, name = "LamodReset")
end subroutine LamodReset
!*******************************************************************************



! Computes all look and view data of the input sensor/satellite at the specified time using their input data directly (no need to provide senSatKey)
! 
! Note: This function doesn't check for sensor limits so all limit flags are returned as passed
! 
subroutine LamodSenSatDirect_OS(ds50TAI, xa_locSen, xa_pvSat, xa_lv) bind(C, name = "LamodSenSatDirect_OS")
   real(8), value :: ds50TAI   ! Time, in ds50TAI, for which to compute the look angle
   real(8), intent(in) :: xa_locSen(16)   ! Input array contains sensor location data - different sensor location types can be used, see XA_LOCSEN_? for array arrangement
   real(8), intent(in) :: xa_pvSat(6)   ! Input array contains satellite's state data, see XA_PVSAT_? for array arrangement
   real(8), intent(out) :: xa_lv(128)   ! The array that stores resulting look and view data, see XA_LV_? for array arrangement
end subroutine LamodSenSatDirect_OS
!*******************************************************************************

end interface




   
   ! Indexes of SenSatData fields
   integer, parameter :: &
      XF_SENSAT_STEPMODE     = 1,   &  ! Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
      XF_SENSAT_OPTVISFLAG   = 2,   &  ! Optical visibility flag (old name XF_SENSAT_VISPASSONLY)
      XF_SENSAT_VISPASSONLY  = 2,   &  ! Obsolete - should use new name XF_SENSAT_OPTVISFLAG instead
      XF_SENSAT_BEGDS50TAI   = 3,   &  ! Begin time in ds50TAI
      XF_SENSAT_ENDDS50TAI   = 4,   &  ! End time in ds50TAI
      XF_SENSAT_INTERVAL     = 5,   &  ! Print interval 
      XF_SENSAT_PERIOD       = 6;      ! Satellite's period 
   
   
   !*******************************************************************************
   ! Indexes of lookCode
   integer, parameter :: &
      LOOK_VALID   = 0,   &         ! Valid look 
      LOOK_HTEST   = 1,   &         ! Failed horizon break test
      LOOK_SENLIMS = 2;             ! Failed limit tests
   
   !*******************************************************************************
   
   ! Indexes of look angle data output
   integer, parameter :: &
      XA_LOOK_DS50UTC= 0,    &     ! Look time in ds50UTC
      XA_LOOK_MSE    = 1,    &     ! Look time in minutes since epoch
      XA_LOOK_ELEV   = 2,    &     ! Elevation (deg)
      XA_LOOK_AZIM   = 3,    &     ! Azimuth (deg)
      XA_LOOK_RNG    = 4,    &     ! Range (km) or ? for optical sensor
      XA_LOOK_RNGRT  = 5,    &     ! Range rate (km/sec) or ? for optical sensor
      XA_LOOK_SIZE   = 6;
      
   !*******************************************************************************   
   
   ! Indexes of viewing data output
   integer, parameter :: &
      XF_VIEW_UVEC      =  1,    &    ! computed U-vector to object
      XF_VIEW_RUVEC     =  2,    &    ! range unit vector
      XF_VIEW_LVEC      =  3,    &    ! topocentric L unit vector
      XF_VIEW_ZVEC      =  4,    &    ! station zenith vector
      XF_VIEW_RNGVEC    =  5,    &    ! computed range vector (km)
      XF_VIEW_RRTVEC    =  6,    &    ! computed range-rate vector/relative velocity vector (km/sec)
      XF_VIEW_SUNVEC    =  7,    &    ! unit vector of sun 
      XF_VIEW_MOONVEC   =  8,    &    ! unit vector of moon
      XF_VIEW_ANGARR    =  9,    &    ! angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect angle)
      XF_VIEW_CVIS      = 10,    &    ! illumination result
      XF_VIEW_RELVEL    = 11,    &    ! Relative velocity (km/sec)
      XF_VIEW_SENEFG    = 12,    &    ! sensor position EFG
      XF_VIEW_LIMFLGS   = 13,    &    ! limit check flags
      XF_VIEW_AZELRATES = 14,    &    ! azimuth and elevation rates (deg/sec)
      XF_VIEW_MOONANGLES= 15;         ! moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
      
      
   !*******************************************************************************   
   
   ! Indexes of angle array
   integer, parameter :: &
      XA_ANGLE_MOONSENSAT  = 0, &      !  moon/sen/sat angle (deg)
      XA_ANGLE_SUNEARTHSAT = 1, &      !  sun/earth/sat angle (deg)
      XA_ANGLE_SUNEARTHSEN = 2, &      !  sun/earth/sen angle (deg)
      XA_ANGLE_SUNSENSAT   = 3, &      !  sun/sen/sat angle (deg) - solar exclusion angle
      XA_ANGLE_SOLARASPECT = 4, &      !  earth/sat/sun angle (deg) - solar aspect angle/solar phase angle
      XA_ANGLE_SIZE        = 5;
   
   ! Indexes of moon angle array
   integer, parameter :: &
      ! DHN 18Jan13 - Add moon/earth/sat, moon/earth/sen  angles
      XA_ANGLE_MOONEARTHSAT = 0, &     !  moon/earth/sat angle (deg)
      XA_ANGLE_MOONEARTHSEN = 1;       !  moon/earth/sen angle (deg)
   
      
   !*******************************************************************************   
   
   ! Indexes of orbiting sensor's off-boresight/clock  array
   integer, parameter :: &
      XA_OFFBORE_EL1 = 0, &            !  off-boresight angle 1 
      XA_OFFBORE_AZ1 = 1, &            !  off-boresight clock 1
      XA_OFFBORE_EL2 = 2, &            !  off-boresight angle 2 
      XA_OFFBORE_AZ2 = 3, &            !  off-boresight clock 2
      XA_OFFBORE_SIZE= 4;
      
   !*******************************************************************************   
   
   ! Indexes of LAMOD 1P-card data
   integer, parameter :: &
      XF_1P_TIMEFRM = 1,     &  ! Input time format: 0=Minutes since epoch, 1=UTC
      XF_1P_BEGTIME = 2,     &  ! Begin time
      XF_1P_ENDTIME = 3,     &  ! End time
      XF_1P_INTERVAL= 4,     &  ! Ouput interval
      XF_1P_PRTOPT  = 5,     &  ! Print options: 0: print look angles, 1: print look angle and initial conditions
      XF_1P_GENOBS  = 6,     &  ! Generate obs from look angles flag
      XF_1P_VISFLG  = 7,     &  ! Compute optical visibility flag: 0: use sen limits,  1: optically visible passes only, 2: output pass only if SAA less than max SAA
      XF_1P_STEPMODE = 8,    &  ! Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
      XF_1P_PROCMODE = 9,    &  ! Processing mode: 'O': obsched mode; 'P': P ASCHED mode
      XF_1P_DIAGNOST = 10,   &  ! Diagnostic mode: 0: none, 1: print sen/sat pos at each look, 2: print pass by pass diagnostics, 3: both 1 and 2
      XF_1P_MAXSAA   = 11;      ! Max solar aspect for optical sites
      
   !*******************************************************************************  
      
   ! Indexes of limit test flags in the returned array 
   integer, parameter :: &
      XA_LIMFLG_AZLIM    =  0,   &  !  az limits/off-boresight (constant azimuth fan) test flag (0=failed, 1=passed)
      XA_LIMFLG_ELLIM    =  1,   &  !  el limits test flag (0=failed, 1=passed)
      XA_LIMFLG_EARTHBK  =  2,   &  !  earth in background flag (0=failed, 1=passed)
      XA_LIMFLG_EARTHOB  =  3,   &  !  earth obstructed flag (0=failed, 1=passed)
      XA_LIMFLG_LUNEXCL  =  4,   &  !  lunar exclusion angle flag (0=failed, 1=passed)
      XA_LIMFLG_MAXRANGE =  5,   &  !  max range test flag (0=failed, 1=passed)
      XA_LIMFLG_MINRANGE =  6,   &  !  min range test flag (0=failed, 1=passed)
      XA_LIMFLG_PENECLIP =  7,   &  !  penumb eclipse test flag (0=failed, 1=passed)
      XA_LIMFLG_RVELLIM  =  8,   &  !  relative velocity test flag (0=failed, 1=passed)
      XA_LIMFLG_SAALIM   =  9,   &  !  solar aspect angle test flag (0=failed, 1=passed)
      XA_LIMFLG_SOLEXCL  = 10,   &  !  solar exclusion angle flag (0=failed, 1=passed)
      XA_LIMFLG_UMBECLIP = 11,   &  !  umbral eclipse test flag (0=failed, 1=passed)
      XA_LIMFLG_SIZE     = 12;
      
   
   ! Generate obs options
   integer, parameter :: &
      GENOBS_NONE      =  0, &   ! Don't generate obs
      GENOBS_B3        =  1, &   ! Generate B3 obs
      GENOBS_TTY       =  2, &   ! Generate TYY obs
      GENOBS_SPTASKER  =  3, &   ! Generate SP TASKER V obsType
      GENOBS_CSV       =  4;     ! Generate CSV obs
      
   
   ! indexes of look and view data in an array
   integer, parameter :: &
      XA_LV_LOOKCODE =   0, &  ! look code: 0=valid look; 1=Fail horizon break test; 2=Fail sensor's limit tests
      XA_LV_DS50UTC  =   1, &  ! time in ds50UTC when the look angle is computed    
      XA_LV_MSE      =   2, &  ! time mse when the look angle is computed
      XA_LV_ELEV     =   3, &  ! elevation (deg)
      XA_LV_AZIM     =   4, &  ! azimuth (deg)
      XA_LV_RNG      =   5, &  ! range (km) 
      XA_LV_RNGRT    =   6, &  ! range rate (km/s) 
      XA_LV_RA       =   7, &  ! right ascension (deg)
      XA_LV_DEC      =   8, &  ! declination (deg)
      XA_LV_AZRATE   =   9, &  ! azimuth rate (deg/s)
      XA_LV_ELRATE   =  10, &  ! elevation rate (deg/s)
   
      XA_LV_SENPOSX  =  11, &  ! sensor ECI position (X) (km) 
      XA_LV_SENPOSY  =  12, &  ! sensor ECI position (Y) (km) 
      XA_LV_SENPOSZ  =  13, &  ! sensor ECI position (Z) (km) 
      XA_LV_SENVELX  =  14, &  ! sensor ECI velocity (X) (km/s)
      XA_LV_SENVELY  =  15, &  ! sensor ECI velocity (Y) (km/s)
      XA_LV_SENVELZ  =  16, &  ! sensor ECI velocity (Z) (km/s)
      XA_LV_SENLAT   =  17, &  ! sensor latitude (deg)
      XA_LV_SENLON   =  18, &  ! sensor longitude (deg) 
      XA_LV_SENHEIGHT=  19, &  ! sensor height (km)
   
      XA_LV_SATPOSX  =  20, &  ! satellite ECI position (X) (km) 
      XA_LV_SATPOSY  =  21, &  ! satellite ECI position (Y) (km) 
      XA_LV_SATPOSZ  =  22, &  ! satellite ECI position (Z) (km) 
      XA_LV_SATVELX  =  23, &  ! satellite ECI velocity (X) (km/s) 
      XA_LV_SATVELY  =  24, &  ! satellite ECI velocity (Y) (km/s) 
      XA_LV_SATVELZ  =  25, &  ! satellite ECI velocity (Z) (km/s) 
      XA_LV_SATLAT   =  26, &  ! satellite latitude (deg)
      XA_LV_SATLON   =  27, &  ! satellite longitude (deg)
      XA_LV_SATHEIGHT=  28, &  ! satellite height (km)
   
      XA_LV_UVECX    =  31, &  ! computed U-vector to object (X)
      XA_LV_UVECY    =  32, &  ! computed U-vector to object (Y)
      XA_LV_UVECZ    =  33, &  ! computed U-vector to object (Z)
      XA_LV_RUVECX   =  34, &  ! slant range unit vector (X)- vector from the sensor to the satellite 
      XA_LV_RUVECY   =  35, &  ! slant range unit vector (Y)- vector from the sensor to the satellite  
      XA_LV_RUVECZ   =  36, &  ! slant range unit vector (Z)- vector from the sensor to the satellite  
      XA_LV_LVECX    =  37, &  ! station unit vector (X) - vector directed from the center of the earth to the sensor
      XA_LV_LVECY    =  38, &  ! station unit vector (Y) - vector directed from the center of the earth to the sensor
      XA_LV_LVECZ    =  39, &  ! station unit vector (Z) - vector directed from the center of the earth to the sensor
      XA_LV_ZVECX    =  40, &  ! station zenith vector (X)  
      XA_LV_ZVECY    =  41, &  ! station zenith vector (Y)
      XA_LV_ZVECZ    =  42, &  ! station zenith vector (Z) 
      XA_LV_RNGVECX  =  43, &  ! slant range vector (X) (km) - vector from the sensor to the satellite 
      XA_LV_RNGVECY  =  44, &  ! slant range vector (Y) (km) - vector from the sensor to the satellite 
      XA_LV_RNGVECZ  =  45, &  ! slant range vector (Z) (km) - vector from the sensor to the satellite 
      XA_LV_RRTVECX  =  46, &  ! range-rate vector - relative velocity vector (X) (km/s)
      XA_LV_RRTVECY  =  47, &  ! range-rate vector - relative velocity vector (Y) (km/s)
      XA_LV_RRTVECZ  =  48, &  ! range-rate vector - relative velocity vector (Z) (km/s)
      XA_LV_USUNX    =  49, &  ! unit vector to sun (X)
      XA_LV_USUNY    =  50, &  ! unit vector to sun (Y) 
      XA_LV_USUNZ    =  51, &  ! unit vector to sun (Z) 
      XA_LV_UMOONX   =  52, &  ! unit vector to moon (X) 
      XA_LV_UMOONY   =  53, &  ! unit vector to moon (Y) 
      XA_LV_UMOONZ   =  54, &  ! unit vector to moon (Z) 
      XA_LV_MOSESA   =  55, &  ! moon/sensor/satellite angle (deg)    
      XA_LV_MOEASA   =  56, &  ! moon/earth/satellite angle (deg)     
      XA_LV_MOEASE   =  57, &  ! moon/earth/sensor angle (deg)     
      XA_LV_SUSESA   =  58, &  ! sun/sensor/satellite angle (deg)   
      XA_LV_SUEASA   =  59, &  ! sun/earth/satellite angle (deg) 
      XA_LV_SUEASE   =  60, &  ! sun/earth/sensor angle (deg)  
      XA_LV_SOLAA    =  61, &  ! solar aspect angle (deg)
      XA_LV_VIS      =  62, &  ! illumination result
      XA_LV_RELVEL   =  63, &  ! relative velocity (km/s)
      XA_LV_OBSANGLE =  64, &  ! off-boresight angle (deg) - constant azimuth fan only
      XA_LV_ANG2FAN  =  65, &  ! angle to fan (deg) - constant azimuth fan only
   
      XA_LV_AZLIM    =  70, &  ! pass azimuth check (0=failed, 1=passed)
      XA_LV_ELLIM    =  71, &  ! pass elevation check (0=failed, 1=passed) 
      XA_LV_EARTHBK  =  72, &  ! pass earth in background check (0=failed, 1=passed) 
      XA_LV_EARTHOB  =  73, &  ! pass earth obstruction check (0=failed, 1=passed) 
      XA_LV_LUNEXCL  =  74, &  ! pass lunar exclusion check (0=failed, 1=passed)
      XA_LV_MAXRANGE =  75, &  ! pass maximum range check (0=failed, 1=passed)
      XA_LV_MINRANGE =  76, &  ! pass minimum range check (0=failed, 1=passed)
      XA_LV_PENECLIP =  77, &  ! pass penum eclipse check (0=failed, 1=passed)
      XA_LV_RVELLIM  =  78, &  ! pass relative velocity check (0=failed, 1=passed)
      XA_LV_SAALIM   =  79, &  ! pass solar aspect angle check (0=failed, 1=passed)
      XA_LV_SOLEXCL  =  80, &  ! pass solar exclusion angle check (0=failed, 1=passed)
      XA_LV_UMBECLIP =  81, &  ! pass umbral eclipse check (0=failed, 1=passed)
      XA_LV_OPTVIS   =  82, &  ! pass visibility check for optical sensor (0=failed, 1=passed)
   
      XA_LV_SENPOSE  =  90, &  ! orbiting sensor EFG position (X) (km)
      XA_LV_SENPOSF  =  91, &  ! orbiting sensor EFG position (Y) (km)
      XA_LV_SENPOSG  =  92, &  ! orbiting sensor EFG position (Z) (km)
      XA_LV_NBORE1   =  93, &  ! orbiting sensor boresight vector #1 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
      XA_LV_NBORE2   =  94, &  ! orbiting sensor boresight vector #2 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
      XA_LV_OBEL1    =  95, &  ! orbiting sensor off boresight elevation #1 (deg)
      XA_LV_OBAZ1    =  96, &  ! orbiting sensor off boresight azimuth #1 (deg)
      XA_LV_OBAZ2    =  97, &  ! orbiting sensor off boresight elevation #2 (deg)
      XA_LV_OBEL2    =  98, &  ! orbiting sensor off boresight azimuth #2 (deg)
   
      XA_LV_SIZE     = 128;
   
   
   ! indexes of sensor/satellite data in an array
   integer, parameter :: &
      XA_SENSAT_SENNUM     =  0,    &  ! Sensor number
      XA_SENSAT_SATNUM     =  1,    &  ! Satellite number
      XA_SENSAT_VIEWTYPE   =  2,    &  ! Sensor view type
      XA_SENSAT_OBSTYPE    =  3,    &  ! Sensor observation type
      XA_SENSAT_PTSPERPAS  =  4,    &  ! Max number of points per pass
      XA_SENSAT_STEPMODE   =  5,    &  ! Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
      XA_SENSAT_OPTVISFLAG =  6,    &  ! Optical visibility flag (old name XA_SENSAT_VISPASSONLY)
      XA_SENSAT_VISPASSONLY=  6,    &  ! Obsolete - should use new name XA_SENSAT_OPTVISFLAG instead
      XA_SENSAT_STARTAI    =  7,    &  ! Start time in ds50TAI
      XA_SENSAT_STOPTAI    =  8,    &  ! Stop time in ds50TAI
      XA_SENSAT_INTERVAL   =  9,    &  ! Output interval (min)
      XA_SENSAT_PERIOD     = 10,    &  ! Satellite's period (min)
      XA_SENSAT_SENKEY     = 11,    &  ! Sensor number
   
      XA_SENSAT_SIZE       = 32;        
   
   
   ! LAMOD control parameters in input array xa_la_parms that is used in LamodInitSenSat_MT()
   integer, parameter :: &
      XA_LA_PARMS_TIMEFLG     =  1, & ! input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
      XA_LA_PARMS_STARTTIME   =  2, & ! begin time
      XA_LA_PARMS_STOPTIME    =  3, & ! end time
      XA_LA_PARMS_STEPMODE    =  4, & ! Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
      XA_LA_PARMS_VISFLG      =  5, & ! optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use limits record
      XA_LA_PARMS_XMSAA       =  6, & ! max solar aspect angle (deg) for optical sites
      
      XA_LA_PARMS_SIZE        = 16;
   
   ! Different sensor location types 
   integer, parameter :: &
      SENLOC_TYPE_ECI =  4;     ! Sensor location is in ECI - specific to LAMOD
      
   ! Sensor location - for use in LamodSenSatDirect_OS() all ground-based sensor types and also orbiting
   integer, parameter :: &   
      XA_LOCSEN_LOCTYPE   =  0, &  ! location type (see SENLOC_TYPE_? for available types) 
      XA_LOCSEN_POS1      =  1, &  ! sensor location ECR/EFG X component (km) or LLH/Lat (deg) / orbiting sensor ECI/X component (km) (SENLOC_TYPE_ECI)
      XA_LOCSEN_POS2      =  2, &  ! sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg) / orbiting sensor ECI/Y component (km) (SENLOC_TYPE_ECI)
      XA_LOCSEN_POS3      =  3, &  ! sensor location ECR/EFG Z component (km) or LLH/Height (km) / or orbiting sensor ECI/Z component (km) (SENLOC_TYPE_ECI)
      
      ! for ground sensor
      XA_LOCSEN_ASTROLAT  =  4, &  ! astronomical latitude (deg) (+: North, -: South)
      XA_LOCSEN_ASTROLON  =  5, &  ! astronomical longitude (deg) (+: West, -: East) 
   
      ! for orbiting sensor
      XA_LOCSEN_VEL1      =  4, &  ! orbiting sensor velocity in ECI/X component (km/s)
      XA_LOCSEN_VEL2      =  5, &  ! orbiting sensor velocity in ECI/Y component (km/s)
      XA_LOCSEN_VEL3      =  6, &  ! orbiting sensor velocity in ECI/Z component (km/s)
      
      XA_LOCSEN_SIZE      = 16;
      
         
   ! Satellite state data
   integer, parameter :: &
      XA_PVSAT_POSX    =  0, &    ! satellite ECI position X (km) in TEME of Date
      XA_PVSAT_POSY    =  1, &    ! satellite ECI position Y (km) in TEME of Date
      XA_PVSAT_POSZ    =  2, &    ! satellite ECI position Z (km) in TEME of Date
      XA_PVSAT_VELX    =  3, &    ! satellite ECI velocity X (km/sec) in TEME of Date
      XA_PVSAT_VELY    =  4, &    ! satellite ECI velocity Y (km/sec) in TEME of Date
      XA_PVSAT_VELZ    =  5, &    ! satellite ECI velocity Z (km/sec) in TEME of Date
      
      XA_PVSAT_SIZE    = 6;
      
end module LamodDll
! ========================= End of auto generated code ==========================
