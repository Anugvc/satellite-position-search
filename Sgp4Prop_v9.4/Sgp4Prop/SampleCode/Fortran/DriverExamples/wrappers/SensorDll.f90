! This wrapper file was generated automatically by the GenDllWrappers program.
module SensorDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes Sensor DLL for use in the program
! If this function returns an error, it is recommended that the users stop the program immediately. 
! The error occurs if the users forget to load and initialize all the prerequisite dlls, as listed 
! in the DLL Prerequisite section, before using this DLL.
function SensorInit(apAddr) bind(C, name = "SensorInit") result(errCode)
   integer :: errCode	! 0 if Sensor.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function SensorInit
!*******************************************************************************



! Returns information about the current version of Sensor DLL. 
! The information is placed in the string parameter passed in.
! The returned string provides information about the version number, build date, and the platform of the Sensor DLL.
subroutine SensorGetInfo(infoStr) bind(C, name = "SensorGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Sensor.dll
end subroutine SensorGetInfo
!*******************************************************************************



! Loads sensor data, contained in a text file, into the set of loaded sensors
! The users can use this function repeatedly to load sensor data from different input files. 
! However, only unique senKeys are stored in the binary tree.  New sensor data will overwrite the existing data. 
! 
! Sensor data can be included directly in the main input file or they can be read from a separate file 
! identified with "SENFIL=[pathname\filename]".
! 
! This function only reads sensor data from the main input file or the file identified with SENFIL in the input file. 
! It won't read anything else.
function SensorLoadFile(senFile) bind(C, name = "SensorLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: senFile(512)   ! The name of the file containing sensor data
end function SensorLoadFile
!*******************************************************************************



! Loads a single sensor-typed card
function SensorLoadCard(card) bind(C, name = "SensorLoadCard") result(errCode)
   integer :: errCode	! 0 if the input card is read successfully, non-0 if there is an error
   character, intent(in) :: card(512)   ! Any single sensor-typed card
end function SensorLoadCard
!*******************************************************************************



! Saves the currently loaded sensor data to a file
! If the users call this routine immediately after the SensorLoadFile(). 
! The sensor data contents in the two file should be the same (minus duplicated sensors or bad sensors).
! 
! The purpose of this function is to save the current state of the loaded sensors, usually used in GUI applications, for future use.
function SensorSaveFile(sensorFile, saveMode, saveForm) bind(C, name = "SensorSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: sensorFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function SensorSaveFile
!*******************************************************************************



! Removes a sensor, represented by the senKey, from the set of currently loaded sensors
! If the users enter an invalid senKey - a non-existing senKey, the function will return a non-zero value indicating an error.
function SensorRemove(senKey) bind(C, name = "SensorRemove") result(errCode)
   integer :: errCode	! 0 if the sensor is successfully removed, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
end function SensorRemove
!*******************************************************************************



! Removes all currently loaded sensors from memory
! The function returns zero if all the loaded sensors are removed successfully from the SENSOR DLL's binary tree. Other values indicate an error.
function SensorRemoveAll() bind(C, name = "SensorRemoveAll") result(errCode)
   integer :: errCode	! 0 if all the loaded sensors are removed successfully, non-0 if there is an error
end function SensorRemoveAll
!*******************************************************************************



! Returns the number of sensors currently loaded
! See SensorGetLoaded for example.
! This function is useful for dynamically allocating memory for the array that is passed to the function SensorGetLoaded().
function SensorGetCount() bind(C, name = "SensorGetCount") result(numSens)
   integer :: numSens	! the number of sensors currently loaded
end function SensorGetCount
!*******************************************************************************



! Retrieves all of the currently loaded senKeys. 
! These senKeys can be used to access the internal data for the sensors.
! It is recommended that SensorGetCount() is used to count how many sensors are currently loaded in the SENSOR DLL's binary tree. 
! The user can then use this number to dynamically allocate the senKeys array and pass it to this function. 
! 
! If the users prefer to pass a static array to the function, make sure it is big enough to store all the senKeys in memory.
subroutine SensorGetLoaded(order, senKeys) bind(C, name = "SensorGetLoaded")
   integer, value :: order   ! Specifies the order in which the senKeys should be returned:0=Sort in ascending order, 1=Sort in descending order, 2=Sort in the order in which the senKeys were loaded in memory
   integer(8), intent(out) :: senKeys(*)   ! The array in which to store the senKeys
end subroutine SensorGetLoaded
!*******************************************************************************



! Retrieves sensor location data for a sensor
function SensorGetLocAll(senKey, astroLat, astroLon, senPos, senDesc, orbSatNum, secClass) &
bind(C, name = "SensorGetLocAll") result(errCode)
   integer :: errCode	! 0 if all sensor location data fields are retrieved successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   real(8), intent(out) :: astroLat   ! Astronomical Latitude (deg): astroLat[-90, 90], (+ = North; - = South)
   real(8), intent(out) :: astroLon   ! Astronomical Longitude (deg): astroLon[-360, 360], (+ = West; - = East)
   real(8), intent(out) :: senPos(3)   ! Sensor XYZ geocentric position (meters)
   character, intent(out) :: senDesc(24)   ! Sensor location description
   integer, intent(out) :: orbSatNum   ! For orbiting sensors, this is the associated satellite number. For ground sensors, orbSatNum = 0
   character, intent(out) :: secClass   ! Sensor classification: U = Unclassified, C = Confidential, S = Secret
end function SensorGetLocAll
!*******************************************************************************



! Adds/updates sensor location data (non DMA) for a sensor using individually provided field values
! This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
! 
! If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
! 
! If it is an orbiting sensor, the users need to provide the associated satellite number.
function SensorSetLocAll(senKey, astroLat, astroLon, senPos, senDesc, orbSatNum, secClass) &
bind(C, name = "SensorSetLocAll") result(errCode)
   integer :: errCode	! 0 if the sensor location data is added/updated successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   real(8), value :: astroLat   ! Astronomical Latitude (deg): astroLat[-90, 90], (+ = North; - = South)
   real(8), value :: astroLon   ! Astronomical Longitude (deg): astroLon[-360, 360], (+ = West; - = East)
   real(8), intent(in) :: senPos(3)   ! Sensor XYZ geocentric position (meters)
   character, intent(in) :: senDesc(24)   ! Sensor location description
   integer, value :: orbSatNum   ! For orbiting sensors, this is the associated satellite number. For ground sensors, orbSatNum = 0
   character, value :: secClass   ! Sensor classification: U = Unclassified, C = Confidential, S = Secret
end function SensorSetLocAll
!*******************************************************************************



! Retrieves the value of an individual field of sensor location data
! 
! Make sure to use the appropriate field index for ground sensors and orbiting sensors.
! 
! The table below shows the values for the xf_SenLoc parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
! 1Sensor number
! 2Sensor astronomical latitude (deg)
! 3Sensor astronomical longitude (deg)
! 4Sensor position X (km)
! 5Sensor position Y (km)
! 6Sensor position Z (km)
! 7Sensor description
! 8Orbiting sensor's number (satNum)   
! 9Sensor classification    
!    
function SensorGetLocField(senKey, xf_SenLoc, strValue) bind(C, name = "SensorGetLocField") result(errCode)
   integer :: errCode	! 0 if the sensor location data is successfully retrieved, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer, value :: xf_SenLoc   ! Predefined number specifying which field to retrieve
   character, intent(out) :: strValue(512)   ! A string to contain the value of the requested field
end function SensorGetLocField
!*******************************************************************************



! Updates the value of an individual field of sensor location data
! See SensorGetLocField for a description of the xf_SenLoc values.
! The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
! 
! Make sure to use the appropriate field index for ground sensors and orbiting sensors.
function SensorSetLocField(senKey, xf_SenLoc, strValue) bind(C, name = "SensorSetLocField") result(errCode)
   integer :: errCode	! 0 if the sensor location data is successfully updated, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer, value :: xf_SenLoc   ! Predefined number specifying which field to retrieve
   character, intent(in) :: strValue(512)   ! The new value of the specified field, expressed as a string
end function SensorSetLocField
!*******************************************************************************



! Retrieves sensor limits data
! This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
function SensorGet1L(senKey, viewType, obsType, rngUnits, maxRngLim, boresight1, elLim1, elLim2, azLim1, azLim2, interval, visFlg, &
rngLimFlg, maxPPP, minRngLim, plntryRes, rrLim) bind(C, name = "SensorGet1L") result(errCode)
   integer :: errCode	! 0 if all sensor limits data fields are retrieved successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   character, intent(out) :: viewType   ! Sensor viewing type
   character, intent(out) :: obsType   ! Sensor observation type
   integer, intent(out) :: rngUnits   ! Units of range and range rate: 0=km, km/sec, 1=nm, nm/sec
   real(8), intent(out) :: maxRngLim   ! Maximum observable range limit (km)
   character, intent(out) :: boresight1   ! Orbiting sensor boresight1 vector
   real(8), intent(out) :: elLim1   ! Elevation limit #1 (low, deg) OR orbiting sensor off-boresight angle
   real(8), intent(out) :: elLim2   ! Elevation limit #2 (high, deg) OR orbiting sensor off-boresight angle
   real(8), intent(out) :: azLim1   ! Azimuth limit #1 (left, deg) OR orbiting sensor clock angle
   real(8), intent(out) :: azLim2   ! Azimuth limit #2 (right, deg) OR orbiting sensor clock angle
   real(8), intent(out) :: interval   ! ouput interval (min)
   integer, intent(out) :: visFlg   ! Visual pass control flag
   integer, intent(out) :: rngLimFlg   ! Range limits control flag
   integer, intent(out) :: maxPPP   ! Max number of points per pass (0=unlimited)
   real(8), intent(out) :: minRngLim   ! Minimum observable range limit (km)
   integer, intent(out) :: plntryRes   ! Orbiting sensor planetary restrictions
   real(8), intent(out) :: rrLim   ! Range rate/relative velocity limit (km/sec)
end function SensorGet1L
!*******************************************************************************



! Adds/updates sensor limits data (non DMA) via individually provided field values
! This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
! 
! If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
! 
! If it is an orbiting sensor, the users need to provide the associated satellite number.
function SensorSet1L(senKey, viewType, obsType, rngUnits, maxRngLim, boresight1, elLim1, elLim2, azLim1, azLim2, interval, visFlg, &
rngLimFlg, maxPPP, minRngLim, plntryRes, rrLim) bind(C, name = "SensorSet1L") result(errCode)
   integer :: errCode	! 0 if the sensor limits data is added/updated successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   character, value :: viewType   ! Sensor viewing type
   character, value :: obsType   ! Sensor observation type
   integer, value :: rngUnits   ! Units of range and range rate: 0=km, km/sec, 1=nm, nm/sec
   real(8), value :: maxRngLim   ! Maximum observable range limit (km)
   character, value :: boresight1   ! Orbiting sensor boresight1 vector
   real(8), value :: elLim1   ! Elevation limit #1 (low, deg) OR orbiting sensor off-boresight angle
   real(8), value :: elLim2   ! Elevation limit #2 (high, deg) OR orbiting sensor off-boresight angle
   real(8), value :: azLim1   ! Azimuth limit #1 (left, deg) OR orbiting sensor clock angle
   real(8), value :: azLim2   ! Azimuth limit #2 (right, deg) OR orbiting sensor clock angle
   real(8), value :: interval   ! ouput interval (min)
   integer, value :: visFlg   ! Visual pass control flag
   integer, value :: rngLimFlg   ! Range limits control flag
   integer, value :: maxPPP   ! Max number of points per pass (0=unlimited)
   real(8), value :: minRngLim   ! Minimum observable range limit (km)
   integer, value :: plntryRes   ! Orbiting sensor planetary restrictions
   real(8), value :: rrLim   ! Range rate/relative velocity limit (km/sec)
end function SensorSet1L
!*******************************************************************************



! Retrieves additional sensor limits data
! This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
function SensorGet2L(senKey, boresight2, elLim3, elLim4, azLim3, azLim4, earthBckgrnd, earthLimb, solarXAngle, lunarXAngle, &
minIllum, twilit) bind(C, name = "SensorGet2L") result(errCode)
   integer :: errCode	! 0 if all optional/additional sensor limits data fields are retrieved successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   character, intent(out) :: boresight2   ! Orbiting sensor boresight2 vector
   real(8), intent(out) :: elLim3   ! Elevation limit #3 (low, deg) OR orbiting sensor off-boresight angle
   real(8), intent(out) :: elLim4   ! Elevation limit #4 (high, deg) OR orbiting sensor off-boresight angle
   real(8), intent(out) :: azLim3   ! Azimuth limit #3 (left, deg) OR orbiting sensor clock angle
   real(8), intent(out) :: azLim4   ! Azimuth limit #4 (right, deg) OR orbiting sensor clock angle
   integer, intent(out) :: earthBckgrnd   ! Flag; if set, allow orb sensor to view satellite against earth background
   real(8), intent(out) :: earthLimb   ! Orbiting sensor earth limb exclusion distance (km)
   real(8), intent(out) :: solarXAngle   ! Orbiting sensor solar exclusion angle (deg)
   real(8), intent(out) :: lunarXAngle   ! Orbiting sensor lunar exclusion angle (deg)
   real(8), intent(out) :: minIllum   ! Orbiting sensor minimum illumination angle (deg)
   real(8), intent(out) :: twilit   ! Ground site twilight offset angle (deg)
end function SensorGet2L
!*******************************************************************************



! Adds/updates additional sensor limits data
! This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
! 
! If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.	
function SensorSet2L(senKey, boresight2, elLim3, elLim4, azLim3, azLim4, earthBckgrnd, earthLimb, solarXAngle, lunarXAngle, &
minIllum, twilit) bind(C, name = "SensorSet2L") result(errCode)
   integer :: errCode	! 0 if the optional/additional sensor limits data is added/updated successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   character, value :: boresight2   ! Orbiting sensor boresight2 vector
   real(8), value :: elLim3   ! Elevation limit #3 (low, deg) OR orbiting sensor off-boresight angle
   real(8), value :: elLim4   ! Elevation limit #4 (high, deg) OR orbiting sensor off-boresight angle
   real(8), value :: azLim3   ! Azimuth limit #3 (left, deg) OR orbiting sensor clock angle
   real(8), value :: azLim4   ! Azimuth limit #4 (right, deg) OR orbiting sensor clock angle
   integer, value :: earthBckgrnd   ! Flag; if set, allow orb sensor to view satellite against earth background
   real(8), value :: earthLimb   ! Orbiting sensor earth limb exclusion distance (km)
   real(8), value :: solarXAngle   ! Orbiting sensor solar exclusion angle (deg)
   real(8), value :: lunarXAngle   ! Orbiting sensor lunar exclusion angle (deg)
   real(8), value :: minIllum   ! Orbiting sensor minimum illumination angle (deg)
   real(8), value :: twilit   ! Ground site twilight offset angle (deg)
end function SensorSet2L
!*******************************************************************************



! Retrieves an individual field of sensor limits data
! 
! Make sure to use the appropriate field index for ground sensors and orbiting sensors.
! 
! The table below shows the values for the xf_SenLim parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
! 11 Sensor view type
! 12 Sensor observation type
! 13 Unit on range/range rate
! 14 Max observable range (km)
! 15 Min observable range (km)
! 16 Output interval (min)
! 17 Visual pass control flag
! 18 Range limit control flag 
! 19 Max number of points per pass
! 20 Range rate/relative velocity limit (km/sec)
! 31 Elevation limits (deg) 1, 2, 3, 4 or Sensor off-boresight angle (deg)
! 32 
! 33 
! 34 
! 35 Azimuth limits (deg) 1, 2,3, 4 or Sensor clock angle (deg)
! 36 
! 37 
! 38 
! 52 Orbiting sensor planetary restriction
! 53 Orbiting sensor boresight vector 1
! 54 Orbiting sensor boresight vector 2
! 55 Allow orbiting sensor to view sat against earth background
! 56 Orbiting sensor earth limb exclusion distance (km)
! 57 Orbiting sensor solar exclusion angle (deg)   
! 58 Orbiting sensor lunar exclusion angle (deg)
! 59 Orbiting sensor min illumination angle (deg)
! 60 Ground site twilight offset angle (deg)    
!    
function SensorGetLimField(senKey, xf_SenLim, strValue) bind(C, name = "SensorGetLimField") result(errCode)
   integer :: errCode	! 0 if the sensor limits data is retrieved successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer, value :: xf_SenLim   ! Predefined number specifying which field to retrieve
   character, intent(out) :: strValue(512)   ! A string to contain the value of the requested field
end function SensorGetLimField
!*******************************************************************************



! Updates an individual field of sensor limits data
! See SensorGetLimField for a description of the xf_SenLim parameter.
! The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
! 
! Make sure to use the appropriate field index for ground sensors and orbiting sensors.
function SensorSetLimField(senKey, xf_SenLim, strValue) bind(C, name = "SensorSetLimField") result(errCode)
   integer :: errCode	! Returns zero indicating the sensor limits data has been successfully updated. Other values indicate an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer, value :: xf_SenLim   ! Predefined number specifying which field to retrieve
   character, intent(in) :: strValue(512)   ! The new value of the specified field, expressed as a string
end function SensorSetLimField
!*******************************************************************************



! Retrieves sensor sigma/bias data
function SensorGetBS(senKey, xaf_senbs) bind(C, name = "SensorGetBS") result(errCode)
   integer :: errCode	! 0 if all sensor sigma/bias data fields are retrieved successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   real(8), intent(out) :: xaf_senbs(16)   ! sensor's sigma and biases, see XAF_SENBS_? for array arrangement
end function SensorGetBS
!*******************************************************************************



! Adds/updates sensor sigma/bias data (non DMA)
function SensorSetBS(senKey, xaf_senbs) bind(C, name = "SensorSetBS") result(errCode)
   integer :: errCode	! 0 if the sensor sigma/bias data is added/updated successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   real(8), intent(in) :: xaf_senbs(16)   ! sensor's sigmas and biases, see XAF_SENBS_? for array arrangement
end function SensorSetBS
!*******************************************************************************



! Retrieves an individual field of sensor sigma/bias data
function SensorGetBSField(senKey, xaf_senbs, strValue) bind(C, name = "SensorGetBSField") result(errCode)
   integer :: errCode	! 0 if the sensor sigma/bias data is retrieved successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer, value :: xaf_senbs   ! Index number of the field the user wants to retrieve, see XAF_SENBS_? for field arrangement
   character, intent(out) :: strValue(512)   ! A string to contain the value of the requested field
end function SensorGetBSField
!*******************************************************************************



! Updates an individual field of sensor sigma/bias data
function SensorSetBSField(senKey, xaf_senbs, strValue) bind(C, name = "SensorSetBSField") result(errCode)
   integer :: errCode	! Returns zero indicating the sensor sigma/bias data has been successfully updated. Other values indicate an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer, value :: xaf_senbs   ! Index number of the field the user wants to set, see XAF_SENBS_? for field arrangement
   character, intent(in) :: strValue(512)   ! The new value of the specified field, expressed as a string
end function SensorSetBSField
!*******************************************************************************



! Retrieves the sensor data in form of S-Card, L1-Card, and L2-Card of the sensor
function SensorGetLines(senKey, sCard, l1Card, l2Card) bind(C, name = "SensorGetLines") result(errCode)
   integer :: errCode	! 0 on success, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   character, intent(out) :: sCard(512)   ! S-Card string of the sensor
   character, intent(out) :: l1Card(512)   ! L1-Card string of the sensor
   character, intent(out) :: l2Card(512)   ! L2-Card string of the sensor
end function SensorGetLines
!*******************************************************************************



! Gets sensor's orbiting satellite's satKey
function SensorGetOrbSatKey(senKey, orbSatKey) bind(C, name = "SensorGetOrbSatKey") result(errCode)
   integer :: errCode	! 0 on success, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer(8), intent(out) :: orbSatKey   ! The orbiting satellite's unique key
end function SensorGetOrbSatKey
!*******************************************************************************



! Sets sensor's orbiting satellite's satKey
function SensorSetOrbSatKey(senKey, orbSatKey) bind(C, name = "SensorSetOrbSatKey") result(errCode)
   integer :: errCode	! 0 on success, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer(8), value :: orbSatKey   ! The orbiting satellite's unique key
end function SensorSetOrbSatKey
!*******************************************************************************



! Loads Space Fence's detailed azimuth-elevation definition table
function SensorLoadAzElTable(senKey, azElTableFile) bind(C, name = "SensorLoadAzElTable") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   character, intent(in) :: azElTableFile(512)   ! The name of the file containing Space Fence's az/el definition table
end function SensorLoadAzElTable
!*******************************************************************************



! Adds a new sensor segment whose limits defined by the input parameters - a cone or a dome portion 
function SensorAddSegment(senKey, segType, xa_seg) bind(C, name = "SensorAddSegment") result(errCode)
   integer :: errCode	! 0 if the new sensor segment is added successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer, value :: segType   ! Input segment type (bounded-cone = 1, dome = 2)
   real(8), intent(in) :: xa_seg(16)   ! sensor segment data.  see XA_SEG_DOME_? and see XA_SEG_BCONE_?
end function SensorAddSegment
!*******************************************************************************



! Retrieves sensor segment data of the specified segment (segNum)
function SensorGetSegment(senKey, segNum, segType, xa_seg) bind(C, name = "SensorGetSegment") result(errCode)
   integer :: errCode	! 0 if the sensor segment data is returned successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   integer, value :: segNum   ! The segment number of the sensor segment whose data is returned
   integer, intent(out) :: segType   ! The output segment type (bounded-cone = 1, dome = 2)
   real(8), intent(out) :: xa_seg(16)   ! The resulting sensor segment data.  see XA_SEG_DOME_? and see XA_SEG_BCONE_?
end function SensorGetSegment
!*******************************************************************************



! Sets sensor key mode
! This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_SEN_ON" -
! and is currently calling any of these methods: DllMainLoadFile(), or SenLoadFile()
function SetSenKeyMode(sen_keyMode) bind(C, name = "SetSenKeyMode") result(errCode)
   integer :: errCode	! 0 if the set is successful, non-0 if there is an error.
   integer, value :: sen_keyMode   ! Desired sen key mode (see SEN_KEYMODE_? for available modes)
end function SetSenKeyMode
!*******************************************************************************



! Gets current sensor key mode
function GetSenKeyMode() bind(C, name = "GetSenKeyMode") result(sen_keyMode)
   integer :: sen_keyMode	! Current sen key mode (see SEN_KEYMODE_? for available modes)
end function GetSenKeyMode
!*******************************************************************************



! Returs the sensor number associated with the input senKey
function SenNumOf(senKey) bind(C, name = "SenNumOf") result(senNum)
   integer :: senNum	! The sensor number associated with the input senKey (senNum = -1 if senKey doesn't exist)
   integer(8), value :: senKey   ! The input senKey
end function SenNumOf
!*******************************************************************************



! Returns the first senKey from the currently loaded set of sensors that contains the specified sensor number.
! A negative value will be returned if there is an error.
function SensorGetSenKey(senNum) bind(C, name = "SensorGetSenKey") result(senKey)
   integer(8) :: senKey	! The senellite's unique key
   integer, value :: senNum   ! Satellite number
end function SensorGetSenKey
!*******************************************************************************



! This function is similar to SensorGetSenKey but designed to be used in Matlab. 
! Matlab doesn't correctly return the 19-digit satellite key using SensorGetSenKey. This method is an alternative way to return the senKey output.
! A negative value will be returned in senKey if there is an error.
subroutine SensorGetSenKeyML(senNum, senKey) bind(C, name = "SensorGetSenKeyML")
   integer, value :: senNum   ! Senellite number
   integer(8), intent(out) :: senKey   ! The senKey of the sensor if a sensor with the requested number is found in the set of loaded sensor, a negative value if there is an error.
end subroutine SensorGetSenKeyML
!*******************************************************************************



! Adds a sensor (location, limits, sigmas/biases), using its data stored in the input arrays.
function SensorAddFrArray(xa_sen, xs_sen) bind(C, name = "SensorAddFrArray") result(senKey)
   integer(8) :: senKey	! The senKey of the newly added sensor on success, a negative value on error.
   real(8), intent(in) :: xa_sen(128)   ! Array containing sensor's numerical fields, see XA_SEN_? for array arrangement
   character, intent(in) :: xs_sen(512)   ! Input string that contains all sensor's text fields, see XS_SEN_? for column arrangement
end function SensorAddFrArray
!*******************************************************************************



! Retrieves sensor data (location, limits, sigmas/biases) and stores it in the passing arrays.
function SensorDataToArray(senKey, xa_sen, xs_sen) bind(C, name = "SensorDataToArray") result(errCode)
   integer :: errCode	! 0 if all values are retrieved successfully, non-0 if there is an error
   integer(8), value :: senKey   ! The sensor's unique key
   real(8), intent(out) :: xa_sen(128)   ! Array containing sensor's numerical fields, see XA_SEN_? for array arrangement
   character, intent(out) :: xs_sen(512)   ! Input string that contains all sensor's text fields, see XS_SEN_? for column arrangement
end function SensorDataToArray
!*******************************************************************************

end interface




      
   ! Sensor segment types
   integer, parameter :: &
      SEG_BCONE = 1, &    ! bounded-cone-typed limit: Boresight Az/El, Min/Max halfcone angle/Range, minimum cut-off elevation
      SEG_DOME  = 2;      ! dome-typed limit: Min/Max Az/El/Range
      
   
   
   ! Indexes of dome segment parameters
   integer, parameter :: &
      XA_SEG_DOME_AZFR   =  0, & ! start azimuth (deg)          
      XA_SEG_DOME_AZTO   =  1, & ! end azimuth (deg)            
      XA_SEG_DOME_ELFR   =  2, & ! lower-bound elevation (deg)  
      XA_SEG_DOME_ELTO   =  3, & ! higher-bound elevation (deg) 
      XA_SEG_DOME_MINRNG =  4, & ! minimum range (km)           
      XA_SEG_DOME_MAXRNG =  5, & ! maximum range (km)           
      
      XA_SEG_DOME_SIZE   = 16;
      
   
   ! Indexes of bounded-cone segment parameters
   integer, parameter :: &
      XA_SEG_BCONE_BSAZ   =  0, & ! boresight azimuth (deg)
      XA_SEG_BCONE_BSEL   =  1, & ! boresight elevation (deg)          
      XA_SEG_BCONE_ANGFR  =  2, & ! offboresight lower angle (deg)
      XA_SEG_BCONE_ANGTO  =  3, & ! offboresight higher angle (deg)
      XA_SEG_BCONE_MINRNG =  4, & ! minimum range (km)
      XA_SEG_BCONE_MAXRNG =  5, & ! maximum range (km)
      XA_SEG_BCONE_MINEL  =  6, & ! minimum cut-off elevation (deg)
      
      XA_SEG_BCONE_SIZE   = 16;
      
      
   ! Different key mode options for senKey
   integer, parameter :: &
      SEN_KEYMODE_NODUP  = 0, &  ! Default - duplicate sensor can not be loaded in binary tree                           
      SEN_KEYMODE_DMA    = 1;    ! Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)   
      
   ! sensor key possible errors
   integer, parameter :: &
      BADSENKEY = -1, &    ! Bad sensor key
      DUPSENKEY =  0;      ! Duplicate sensor key
   
   ! Different sensor types   
   integer, parameter :: &
      VT_BCT =   2,  &  ! bounded-cone tracker
      VT_CON =   3,  &  ! conventional tracker
      VT_OPT =   4,  &  ! optical tracker
      VT_FAN =   7,  &  ! constant azimuth fan sweeping vertical plane
      VT_ORB =   9,  &  ! orbiting sensor (same as 'M' or 'O')
      VT_FOR  = 82,  &  ! space fence's field of regard FOR ('R' = 86)
      VT_FOV  = 86;     ! space fence's surveillance fan FOV ('V' = 82)
      
   ! Different sensor location types 
   integer, parameter :: &
      SENLOC_TYPE_ECR =  1,  &  ! Sensor location is in ECR
      SENLOC_TYPE_EFG =  2,  &  ! Sensor location is in EFG
      SENLOC_TYPE_LLH =  3;     ! Sensor location is in LLH
      
      
   ! Sensor Data - 
   integer, parameter :: &
      !*******************************************************************************
      ! generic data for all sensor types
      !*******************************************************************************
      XA_SEN_GEN_SENNUM    =  0, &  ! sensor number
      XA_SEN_GEN_MINRNG    =  3, &  ! sensor minimum range (km) (=0 no minimum range check)
      XA_SEN_GEN_MAXRNG    =  4, &  ! sensor maxinmum range (km) (=0 no maximum range check) 
      XA_SEN_GEN_RRLIM     =  5, &  ! range rate/relative velocity limit (km/sec) (=0 no range rate check) 
      XA_SEN_GEN_RNGLIMFLG =  6, &  ! min/max range check (=0 apply min/max range limits, =1 accept all passes regardless of range)
      XA_SEN_GEN_SMSEN     =  7, &  ! is special mobil sensor flag / column 9 in 1L card (=0 non mobile sensor, =1 mobile sensor)
      
   
      !*******************************************************************************
      
      ! sensor location - for all ground-based sensor types (non-orbiting) 
      XA_SEN_GRN_LOCTYPE   = 10, &  ! location type (see SENLOC_TYPE_? for available types) 
      XA_SEN_GRN_POS1      = 11, &  ! sensor location ECR/EFG X component (km) or LLH/Lat (deg)
      XA_SEN_GRN_POS2      = 12, &  ! sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg)
      XA_SEN_GRN_POS3      = 13, &  ! sensor location ECR/EFG Z component (km) or LLH/Height (km)
      XA_SEN_GRN_ASTROLAT  = 14, &  ! astronomical latitude (deg) (+: North, -: South)
      XA_SEN_GRN_ASTROLON  = 15, &  ! astronomical longitude (deg) (+: West, -: East) 
      
      
      !*******************************************************************************
      ! sensor limits - for LAMOD only (not needed by Rotas/BatchDC)
      !*******************************************************************************
      ! Bounded cone tracker (conical sensor) (VT_BCT)
      XA_SEN_BCT_BRSGHTAZ  = 20, &  ! conical sensor boresight azimuth angle (deg)
      XA_SEN_BCT_BRSGHTEL  = 21, &  ! conical sensor boresight elevation angle (deg)
      XA_SEN_BCT_HALFANG   = 22, &  ! coninal sensor off-boresight angle/half cone angle (deg)
      XA_SEN_BCT_MINEL     = 23, &  ! conical sensor minimum elevation angle (deg) 
      
      !*******************************************************************************
      ! Conventinoal tracker (VT_CON)
      XA_SEN_CON_ELFR1     = 20, &  ! low elevation limit #1 (deg)
      XA_SEN_CON_ELTO1     = 21, &  ! hight elevation limit #1 (deg)
      XA_SEN_CON_AZFR1     = 22, &  ! low azimuth limit #1 (deg)
      XA_SEN_CON_AZTO1     = 23, &  ! hight azimuth limit #1 (deg)
      XA_SEN_CON_ELFR2     = 24, &  ! low elevation limit #2 (deg)
      XA_SEN_CON_ELTO2     = 25, &  ! hight elevation limit #2 (deg)
      XA_SEN_CON_AZFR2     = 26, &  ! low azimuth limit #2 (deg)
      XA_SEN_CON_AZTO2     = 27, &  ! hight azimuth limit #2 (deg)
         
      !*******************************************************************************
      ! Optical tracker (VT_OPT)
      XA_SEN_OPT_ELFR1     = 20, &  ! low elevation limit #1 (deg)
      XA_SEN_OPT_ELTO1     = 21, &  ! hight elevation limit #1 (deg)
      XA_SEN_OPT_AZFR1     = 22, &  ! low azimuth limit #1 (deg)
      XA_SEN_OPT_AZTO1     = 23, &  ! hight azimuth limit #1 (deg)
      XA_SEN_OPT_ELFR2     = 24, &  ! low elevation limit #2 (deg)
      XA_SEN_OPT_ELTO2     = 25, &  ! hight elevation limit #2 (deg)
      XA_SEN_OPT_AZFR2     = 26, &  ! low azimuth limit #2 (deg)
      XA_SEN_OPT_AZTO2     = 27, &  ! hight azimuth limit #2 (deg)
      
      XA_SEN_OPT_SEA       = 40, &  ! optical sensor solar exclusion angle (to check for solar aspect angle limit)
      XA_SEN_OPT_TWILGHT   = 41, &  ! ground site twilight offset angle
      XA_SEN_OPT_VISCHK    = 42, &  ! visual pass check (sensor in dark, satellite illuminated)
      
      !*******************************************************************************
      ! Constant azimuth fan (VT_FAN)
      XA_SEN_FAN_AZ        = 20, &  ! fan's constant azimuth (deg) - fan sweeps a vertical plane  [0, 180)
      XA_SEN_FAN_TILTANGLE = 21, &  ! fan's tilt angle (deg)  (-: North/West tilt, +: South/East tilt) [-90, 90]
      XA_SEN_FAN_OBSANGLE  = 23, &  ! fan's off-boresight angle (deg) [0, 90]
      
      
      !*******************************************************************************
      ! Orbiting sensor (VT_ORB)
      XA_SEN_ORB_SATNUM    = 10, &  ! orbiting sensor's satellite number
   
      XA_SEN_ORB_ELMIN1    = 20, &  ! orbiting sensor's off-boresight angle - low elevation limit #1 (deg)
      XA_SEN_ORB_ELMAX1    = 21, &  ! orbiting sensor's off-boresight angle - hight elevation limit #1 (deg)
      XA_SEN_ORB_AZMIN1    = 22, &  ! orbiting sensor's off-boresight clock angle - low azimuth limit #1 (deg)
      XA_SEN_ORB_AZMAX1    = 23, &  ! orbiting sensor's off-boresight clock angle - hight azimuth limit #1 (deg)
      XA_SEN_ORB_ELMIN2    = 24, &  ! orbiting sensor's off-boresight angle - low elevation limit #2 (deg)
      XA_SEN_ORB_ELMAX2    = 25, &  ! orbiting sensor's off-boresight angle - hight elevation limit #2 (deg)
      XA_SEN_ORB_AZMIN2    = 26, &  ! orbiting sensor's off-boresight clock angle - low azimuth limit #2 (deg)
      XA_SEN_ORB_AZMAX2    = 27, &  ! orbiting sensor's off-boresight clock angle - hight azimuth limit #2 (deg)
      
      XA_SEN_ORB_EARTHLIMB = 40, &  ! orbiting sensor earth limb exclusion distance (km)
      XA_SEN_ORB_SEA       = 41, &  ! orbiting sensor solar exclusion angle (deg)
      XA_SEN_ORB_LEA       = 42, &  ! orbiting sensor lunar exclusion angle (deg)
      XA_SEN_ORB_MINILLUM  = 43, &  ! orbiting sensor minimum illumination angle (deg)
      XA_SEN_ORB_EARTHBRND = 44, &  ! orbiting sensor allow earth in the back ground
      XA_SEN_ORB_PLNTRYRES = 45, &  ! orbiting sensor planetary restriction
      
      !*******************************************************************************
      
      ! Space fence Field Of Regard (VT_FOR)
      ! Sensor limits are defined in the az/el table file (using XS_SEN_FOR_AZFILE_255_256)
      
      
      !*******************************************************************************
      
      ! Space fence Field Of View (VT_FOV)
      XA_SEN_FOV_BEAMWIDTH = 20, &  ! north/south beam width (deg)
      XA_SEN_FOV_TILTANGLE = 21, &  ! fence tilt angle (deg)
   
   
      !*******************************************************************************
   
      ! Output control parameters (shouldn't be part of sensor data - just for backward compatibility)
      XA_SEN_GEN_UNIT      = 90, &  ! unit on range/range rate (0= km, km/sec; 1=nm, nm/sec)
      XA_SEN_GEN_INTERVAL  = 91, &  ! output interval (min)
      XA_SEN_GEN_PTSPERPAS = 92, &  ! max number of points per pass
   
   
      ! sensor sigmas/biases - ROTAS/BATCHDC
      XA_SEN_GEN_AZSIGMA =  110,  & ! azimuth sigma (deg)
      XA_SEN_GEN_ELSIGMA =  111,  & ! elevation sigma (deg)
      XA_SEN_GEN_RGSIGMA =  112,  & ! range sigma (km)
      XA_SEN_GEN_RRSIGMA =  113,  & ! range-rate sigma (km/sec) 
      XA_SEN_GEN_ARSIGMA =  114,  & ! az rate sigma (deg/sec)
      XA_SEN_GEN_ERSIGMA =  115,  & ! el rate sigma (deg/sec)
      XA_SEN_GEN_AZBIAS  =  116,  & ! azimuth bias (deg)
      XA_SEN_GEN_ELBIAS  =  117,  & ! elevation bias (deg)
      XA_SEN_GEN_RGBIAS  =  118,  & ! range bias (km)
      XA_SEN_GEN_RRBIAS  =  119,  & ! range-rate bias (km/sec)
      XA_SEN_GEN_TIMEBIAS=  120,  & ! time bias (sec)
      
      
      XA_SEN_SIZE          = 128; 
      
   ! Indexes of SENSOR text data in an array of chars 
   ! The last two numbers in the field name are the zero-based starting character position and the number of characters in the text field
   integer, parameter :: &   
      XS_SEN_SECCLASS_0_1      =   0, &    ! sensor security classification (1-character length)
      XS_SEN_VIEWTYPE_1_1      =   1, &    ! sensor viewing type (1-character length)
      XS_SEN_OBSTYPE_2_1       =   2, &    ! sensor observation type (1-character length)
      XS_SEN_DSCRPTN_3_24      =   3, &    ! sensor description/narrative/notes (24-character length)
      XS_SEN_ORB_BSVEC1_27_1   =  27, &    ! orbiting sensor's boresight vector #1 (1-character length)
      XS_SEN_ORB_BSVEC2_28_1   =  28, &    ! orbiting sensor's boresight vector #2 (1-character length)
      XS_SEN_FOR_AZFILE_255_256= 255, &    ! for VT_FOR only, az/el table file path (256-character length)
      
      XS_SEN_LENGTH            = 512;
   
   ! Indexes of Sensor data fields
   integer, parameter :: &
      XF_SENLOC_NUM  = 1, &           ! Sensor number
      XF_SENLOC_LAT  = 2, &           ! Sensor location - astronomical longitude (deg) (+=West/-=East)
      XF_SENLOC_LON  = 3, &           ! Sensor location - astronomical latitude (deg)  (+=North/-=South)
      XF_SENLOC_POSX = 4, &           ! Sensor ECR position X (km)
      XF_SENLOC_POSY = 5, &           ! Sensor ECR position Y (km)
      XF_SENLOC_POSZ = 6, &           ! Sensor ECR position Z (km)
      XF_SENLOC_DESC = 7, &           ! Sensor description
      XF_SENLOC_ORBSATNUM = 8, &      ! Orbiting sensor's number (satNum)   
      XF_SENLOC_SECCLASS  = 9, &      ! Sensor classification   
      
      XF_SENLIM_VIEWTYPE  = 11, &     ! Sensor view type
      XF_SENLIM_OBSTYPE   = 12, &     ! Sensor observation type
      XF_SENLIM_UNIT      = 13, &     ! Unit on range/range rate
      XF_SENLIM_MAXRNG    = 14, &     ! Max observable range (km)
      XF_SENLIM_MINRNG    = 15, &     ! Min observable range (km)
      XF_SENLIM_INTERVAL  = 16, &     ! Output interval (min)
      XF_SENLIM_OPTVISFLG = 17, &     ! Visual pass control flag
      XF_SENLIM_RNGLIMFLG = 18, &     ! Range limit control flag 
      XF_SENLIM_PTSPERPAS = 19, &     ! Max number of points per pass
      XF_SENLIM_RRLIM     = 20, &     ! Range rate/relative velocity limit (km/sec)
      
      XF_SENLIM_ELLIM1    = 31, &     ! Elevation limits #1 (low, deg) or orbiting sensor off-boresight angle (low, deg) or conical sensor boresight elvation (deg)
      XF_SENLIM_ELLIM2    = 32, &     ! Elevation limits #2 (high, deg) or orbiting sensor off-boresight angle (high, deg) or conical sensor boresight minimum angle (deg)
      XF_SENLIM_ELLIM3    = 33, &     ! Elevation limits #3 (low, deg) or orbiting sensor off-boresight angle (low, deg) or 
      XF_SENLIM_ELLIM4    = 34, &     ! Elevation limits #4 (high, deg) or orbiting sensor off-boresight angle (high, deg)
      XF_SENLIM_AZLIM1    = 35, &     ! Azimuth limits #1 (low, deg) or orbiting sensor clock angle (from, deg) or conical sensor boresight azimuth (deg)
      XF_SENLIM_AZLIM2    = 36, &     ! Azimuth limits #2 (high, deg) or orbiting sensor clock angle (to, deg) or conical sensor off-boresight azimuth angle (deg)
      XF_SENLIM_AZLIM3    = 37, &     ! Azimuth limits #3 (low, deg) or orbiting sensor clock angle (from, deg)
      XF_SENLIM_AZLIM4    = 38, &     ! Azimuth limits #4 (high, deg) or orbiting sensor clock angle (to, deg)
      
      
      XF_SENLIM_PLNTRYRES = 52, &     ! Orbiting sensor planetary restriction
      XF_SENLIM_BOREVEC1  = 53, &     ! Orbiting sensor boresight vector 1
      XF_SENLIM_BOREVEC2  = 54, &     ! Orbiting sensor boresight vector 2
      XF_SENLIM_KEARTH    = 55, &     ! Allow orbiting sensor to view sat against earth background
      XF_SENLIM_ELIMB     = 56, &     ! Orbiting sensor earth limb exclusion distance (km)
      XF_SENLIM_SOLEXCANG = 57, &     ! Orbiting sensor solar exclusion angle (deg)   
      XF_SENLIM_LUNEXCANG = 58, &     ! Orbiting sensor lunar exclusion angle (deg)
      
      
      XF_SENLIM_MINIL     = 59, &     ! Orbiting sensor min illumination angle (deg)
      XF_SENLIM_TWILIT    = 60, &     ! Ground site twilight offset angle (deg) 
      XF_SENLIM_SMSEN     = 61, &     ! Is special mobil sensor flag / column 9 in 1L card
      XF_SENLIM_NUMSEGS   = 62, &     ! Number of additional segments added to sensor limits
      XF_SENLIM_FILE      = 63, &     ! Space fence FOR's Az/El table file name
      XF_SENLIM_AZELROWS  = 64;       ! Number of rows in space fence FOR's Az/El table 
   
   !*******************************************************************************
      
   ! Indexes of sensor location data
   integer, parameter :: &   
      XA_SENLOC_NUM     =  0, &     ! Sensor nubmer
      XA_SENLOC_LAT     =  1, &     ! Sensor location - astronomical latitude (deg)  (+=North/-=South)
      XA_SENLOC_LON     =  2, &     ! Sensor location - astronomical longitude (deg) (+=West/-=East)
      XA_SENLOC_POSX    =  3, &     ! Sensor ECR position X (km)
      XA_SENLOC_POSY    =  4, &     ! Sensor ECR position Y (km)
      XA_SENLOC_POSZ    =  5, &     ! Sensor ECR position Z (km)
      
      XA_SENLOC_SIZE    = 16;   
      
   !*******************************************************************************
      
   ! Indexes of Sensor's sigmas & biases data fields
   integer, parameter :: &
      XAF_SENBS_AZSIGMA =  0,  & ! azimuth sigma (deg)
      XAF_SENBS_ELSIGMA =  1,  & ! elevation sigma (deg)
      XAF_SENBS_RGSIGMA =  2,  & ! range sigma (km)
      XAF_SENBS_RRSIGMA =  3,  & ! range-rate sigma (km/sec) 
      XAF_SENBS_ARSIGMA =  4,  & ! az rate sigma (deg/sec)
      XAF_SENBS_ERSIGMA =  5,  & ! el rate sigma (deg/sec)
   
      XAF_SENBS_AZBIAS  =  8,  & ! azimuth bias (deg)
      XAF_SENBS_ELBIAS  =  9,  & ! elevation bias (deg)
      XAF_SENBS_RGBIAS  = 10,  & ! range bias (km)
      XAF_SENBS_RRBIAS  = 11,  & ! range-rate bias (km/sec)
      XAF_SENBS_TIMEBIAS= 15,  & ! time bias (sec)
      
      XAF_SENBS_SIZE    = 16;
   
   ! Named constants for different obs types
   integer, parameter :: &
      OT_RRATE          =  0,  & ! obs contains range rate only data
      OT_AZEL           =  1,  & ! obs contains azimuth, elevation data
      OT_AZEL_RNG       =  2,  & ! obs contains azimuth, elevation, and range data
      OT_AZEL_RNGRRATE  =  3,  & ! obs contains azimuth, elevation, range, and range rate data
      OT_AZEL_ALL       =  4,  & ! obs contains azimuth, elevation, range, range rate, azimuth rate, elevation rate, and range acceleration data
      OT_RADEC          =  5,  & ! obs contains right ascention and declination data
      OT_RNGONLY        =  6,  & ! obs contains range only data
      OT_AZEL_SENPOS    =  8,  & ! obs contains azimuth, elevation, and sensor location data
      OT_RADEC_SENPOS   =  9,  & ! obs contains right ascension, declination, and sensor location data
      OT_VEL            = 10,  & ! obs contains ECI position and velocity data
      OT_POS            = 11,  & ! obs contains ECI position data
      OT_SLR            = 16,  & ! obs contains Satellite Laser Ranging (SLR) - range only, with tropospheric refraction term data
      OT_M              = 18,  & ! obs contains azimuth, elevation, sensor location, and range data 
      OT_O              = 19,  & ! obs contains right ascension, declination, sensor location, and range data
      OT_RF             = 13,  & ! obs contains TDOA/FDOA data
      OT_RRATE_SELOB    =999;    ! obs contains range rate only data - for use in obs selection criteria
   
      
end module SensorDll
! ========================= End of auto generated code ==========================
