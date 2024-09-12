! This wrapper file was generated automatically by the GenDllWrappers program.
module TleDll
implicit none

interface


! Notes: This function has been deprecated since v9.0.    
! Initializes Tle DLL for use in the program.
! If this function returns an error, it is recommended that you stop the program immediately.
! 
! An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
function TleInit(apAddr) bind(C, name = "TleInit") result(errCode)
   integer :: errCode	! 0 if Tle.dll is initialized successfully, non-0 if there is an error.
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit. See the documentation for DllMain.dll for details.
end function TleInit
!*******************************************************************************



! Returns the information about the Tle DLL.
! The returned string provides information about the version number, build date, and the platform of the Tle DLL. 
subroutine TleGetInfo(infoStr) bind(C, name = "TleGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about the Tle DLL.
end subroutine TleGetInfo
!*******************************************************************************



! Loads TLEs (satellites) contained in a text file into the TLE DLL's binary tree.
! You may use this function repeatedly to load TLEs from different input files. However, only unique satKeys are loaded. Duplicated TLEs won't be stored. 
! 
! TLEs can be included directly in the specified file, or they can be read from a separate file identified with "ELTFIL=[path\filename]" or "VECFIL=[path\filename]".
! 
! The input file is read in two passes. The function first looks for "ELTFIL=" and "VECFIL=" lines, then it looks for TLEs which were included directly. The result of this is that data entered using both methods will be processed, but the "ELTFIL=" and "VECFIL=" data will be processed first.
function TleLoadFile(tleFile) bind(C, name = "TleLoadFile") result(errCode)
   integer :: errCode	! 0 if the two line element sets in the file are successfully loaded, non-0 if there is an error.
   character, intent(in) :: tleFile(512)   ! The name of the file containing two line element sets to be loaded.
end function TleLoadFile
!*******************************************************************************



! Saves currently loaded TLEs to a file. 
! In append mode, if the specified file does not exist it will be created.
! If you call this routine immediately after TleLoadFile(), the TLE contents in the two files should be the same (minus duplicated TLE's or bad TLE's).
! 
! The purpose of this function is to save the current state of the loaded TLE's, usually used in GUI applications, for future use.
function TleSaveFile(tleFile, saveMode, xf_tleForm) bind(C, name = "TleSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error.
   character, intent(in) :: tleFile(512)   ! The name of the file in which to save the TLE's.
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing file. (0 = create new file, 1= append to existing file)
   integer, value :: xf_tleForm   ! Specifies the format in which to save the file. (0 = two-line element set format, 1 =  CSV, others = future implementation)
end function TleSaveFile
!*******************************************************************************



! Removes a TLE represented by the satKey from memory. 
! If the users enter an invalid satKey (a non-existing satKey), the function will return a non-zero value indicating an error.
function TleRemoveSat(satKey) bind(C, name = "TleRemoveSat") result(errCode)
   integer :: errCode	! 0 if the TLE is removed successfully, non-0 if there is an error.
   integer(8), value :: satKey   ! The unique key of the satellite to be removed.
end function TleRemoveSat
!*******************************************************************************



! Removes all the TLEs from memory.
function TleRemoveAllSats() bind(C, name = "TleRemoveAllSats") result(errCode)
   integer :: errCode	! 0 if all TLE's are removed successfully from memory, non-0 if there is an error.
end function TleRemoveAllSats
!*******************************************************************************



! Returns the number of TLEs currently loaded. 
! See TleGetLoaded for an example.
! This function is useful for dynamically allocating memory for the array that is passed to the function TleGetLoaded().
function TleGetCount() bind(C, name = "TleGetCount") result(numSats)
   integer :: numSats	! The number of TLEs currently loaded.
end function TleGetCount
!*******************************************************************************



! Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the TLE's.
! It is recommended that TleGetCount() be  used to determine how many satellites are currently loaded. This value can then be used to dynamically allocate an array to hold the satKeys.
! 
! If you are going to pass a statically allocated array to this function, ensure it is large enough to hold all of the returned satKeys.
subroutine TleGetLoaded(order, satKeys) bind(C, name = "TleGetLoaded")
   integer, value :: order   ! Specifies the order in which the satKeys should be returned. 0 = sort in ascending order of satKeys, 1 = sort in descending order of satKeys, 2 = sort in the order in which the satKeys were loaded in memory, 9 = Quickest: sort in the order in which the satKeys were stored in the tree
   integer(8), intent(out) :: satKeys(*)   ! The array in which to store the satKeys.
end subroutine TleGetLoaded
!*******************************************************************************



! Adds a TLE (satellite), using its directly specified first and second lines. 
! The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
! 
! This function can be called repeatedly to add many TLEs, one at a time.
function TleAddSatFrLines(line1, line2) bind(C, name = "TleAddSatFrLines") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added TLE on success, a negative value on error.
   character, intent(in) :: line1(512)   ! The first line of a two line element set (or CSV Tle).
   character, intent(in) :: line2(512)   ! The second line of a two line element set
end function TleAddSatFrLines
!*******************************************************************************



! This function is similar to TleAddSatFrLines but designed to be used in Matlab.
! Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrLines. This method is an alternative way to return the satKey output.
subroutine TleAddSatFrLinesML(line1, line2, satKey) bind(C, name = "TleAddSatFrLinesML")
   character, intent(in) :: line1(512)   ! The first line of a two line element set (or CSV Tle).
   character, intent(in) :: line2(512)   ! The second line of a two line element set
   integer(8), intent(out) :: satKey   ! The satKey of the newly added TLE on success, a negative value on error.
end subroutine TleAddSatFrLinesML
!*******************************************************************************



! Adds a TLE (satellite), using its CSV string format. 
function TleAddSatFrCsv(csvLine) bind(C, name = "TleAddSatFrCsv") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added TLE on success, a negative value on error.
   character, intent(in) :: csvLine(512)   ! Input CSV TLE string
end function TleAddSatFrCsv
!*******************************************************************************



! This function is similar to TleAddSatFrCsv but designed to be used in Matlab.
subroutine TleAddSatFrCsvML(csvLine, satKey) bind(C, name = "TleAddSatFrCsvML")
   character, intent(in) :: csvLine(512)   ! Input CSV TLE string
   integer(8), intent(out) :: satKey   ! The satKey of the newly added TLE on success, a negative value on error.
end subroutine TleAddSatFrCsvML
!*******************************************************************************



! Adds a GP TLE using its individually provided field values. 
! The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
! 
! This function can be called repeatedly to add many satellites (one satellite at a time).
! 
! SGP satellites (ephType = 0) use Kozai mean motion. SGP4 satellites (ephType = 2) use Brouwer mean motion.
function TleAddSatFrFieldsGP(satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, &
mnAnomaly, mnMotion, revNum) bind(C, name = "TleAddSatFrFieldsGP") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added TLE on success, a negative value on error.
   integer, value :: satNum   ! Satellite number
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), value :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, value :: ephType   ! Satellite ephemeris type (0: SGP, 2: SGP4)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion)
   integer, value :: revNum   ! Revolution number at epoch
end function TleAddSatFrFieldsGP
!*******************************************************************************



! This function is similar to TleAddSatFrFieldsGP but includes nDotO2 and n2DotO6. 
! nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
function TleAddSatFrFieldsGP2(satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, &
mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6) bind(C, name = "TleAddSatFrFieldsGP2") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added TLE on success, a negative value on error.
   integer, value :: satNum   ! Satellite number
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), value :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, value :: ephType   ! Satellite ephemeris type (0: SGP, 2: SGP4)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion)
   integer, value :: revNum   ! Revolution number at epoch
   real(8), value :: nDotO2   ! Mean motion derivative (rev/day /2)
   real(8), value :: n2DotO6   ! Mean motion second derivative (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg)
end function TleAddSatFrFieldsGP2
!*******************************************************************************



! This function is similar to TleAddSatFrFieldsGP2 but designed to be used in Matlab. 
! Matlab doesn't seem to correctly return the 19-digit satellite key using TleAddSatFrFieldsGP2. This method is an alternative way to return the satKey output.
subroutine TleAddSatFrFieldsGP2ML(satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, &
omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6, satKey) bind(C, name = "TleAddSatFrFieldsGP2ML")
   integer, value :: satNum   ! Satellite number
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), value :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, value :: ephType   ! Satellite ephemeris type (0: SGP, 2: SGP4)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion)
   integer, value :: revNum   ! Revolution number at epoch
   real(8), value :: nDotO2   ! Mean motion derivative (rev/day /2)
   real(8), value :: n2DotO6   ! Mean motion second derivative (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg)
   integer(8), intent(out) :: satKey   ! The satKey of the newly added TLE on success, a negative value on error.
end subroutine TleAddSatFrFieldsGP2ML
!*******************************************************************************



! Updates a GP satellite's data in memory by providing its individual field values. Note: satNum, year, day, and ephtype can't be updated.
! The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded satellite, the function will indicate an error.
! 
! Remember to use the correct mean motion depending on the satellite's ephType.
function TleUpdateSatFrFieldsGP(satKey, secClass, satName, bstar, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, &
revNum) bind(C, name = "TleUpdateSatFrFieldsGP") result(errCode)
   integer :: errCode	! 0 if the TLE is successfully updated, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   real(8), value :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion  (rev/day) (ephType = 0: Kozai mean motion, ephType = 2: Brouwer mean motion)
   integer, value :: revNum   ! Revolution number at epoch
end function TleUpdateSatFrFieldsGP
!*******************************************************************************



! This function is similar to TleUpdateSatFrFieldsGP but includes nDotO2 and n2DotO6. Note: satNum, year, day, and ephtype can't be updated.
! nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
function TleUpdateSatFrFieldsGP2(satKey, secClass, satName, bstar, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, &
revNum, nDotO2, n2DotO6) bind(C, name = "TleUpdateSatFrFieldsGP2") result(errCode)
   integer :: errCode	! 0 if the TLE is successfully updated, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   real(8), value :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion  (rev/day) (ephType = 0: Kozai mean motion, ephType = 2: Brouwer mean motion)
   integer, value :: revNum   ! Revolution number at epoch
   real(8), value :: nDotO2   ! Mean motion derivative (rev/day /2)
   real(8), value :: n2DotO6   ! Mean motion second derivative (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg)
end function TleUpdateSatFrFieldsGP2
!*******************************************************************************



! Adds an SP satellite using the individually provided field values.
! Only applies to SP propagator.
function TleAddSatFrFieldsSP(satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, &
omega, mnAnomaly, mnMotion, revNum) bind(C, name = "TleAddSatFrFieldsSP") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added TLE on success, a negative value on error.
   integer, value :: satNum   ! Satellite number
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), value :: bTerm   ! Ballistic coefficient (m^2/kg)
   real(8), value :: ogParm   ! Outgassing parameter/Thrust Acceleration (km/s^2)
   real(8), value :: agom   ! agom (m^2/kg)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion (rev/day)
   integer, value :: revNum   ! Revolution number at epoch
end function TleAddSatFrFieldsSP
!*******************************************************************************



! This function is similar to TleAddSatFrFieldsSP but designed to be used in Matlab.
! Only applies to SP propagator.
! Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrFieldsSP. This method is an alternative way to return the satKey output.
subroutine TleAddSatFrFieldsSPML(satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, &
omega, mnAnomaly, mnMotion, revNum, satKey) bind(C, name = "TleAddSatFrFieldsSPML")
   integer, value :: satNum   ! Satellite number
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), value :: bTerm   ! Ballistic coefficient (m^2/kg)
   real(8), value :: ogParm   ! Outgassing parameter/Thrust Acceleration (km/s^2)
   real(8), value :: agom   ! agom (m^2/kg)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion (rev/day)
   integer, value :: revNum   ! Revolution number at epoch
   integer(8), intent(out) :: satKey   ! The satKey of the newly added TLE on success, a negative value on error.
end subroutine TleAddSatFrFieldsSPML
!*******************************************************************************



! Updates an SP satellite's data in memory using its individually provided field values. Note: satNum, year, day, and ephtype can't be updated.
! Only applies to SP propagator.
! The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded TLE, the function will indicate an error. 
function TleUpdateSatFrFieldsSP(satKey, secClass, satName, bterm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, &
mnMotion, revNum) bind(C, name = "TleUpdateSatFrFieldsSP") result(errCode)
   integer :: errCode	! 0 if the TLE is successfully updated, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   real(8), value :: bterm   ! Ballistic coefficient (m^2/kg)
   real(8), value :: ogParm   ! Outgassing parameter/Thrust Acceleration (km/s^2)
   real(8), value :: agom   ! agom (m^2/kg)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion (rev/day)
   integer, value :: revNum   ! Revolution number at epoch
end function TleUpdateSatFrFieldsSP
!*******************************************************************************



! Updates the value of a field of a TLE. This function can be used for both GP and SP satellites.
! 
! The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
! satNum (1), Epoch (4), and Ephemeris Type (5) cannot be altered.
! 
! table
! 
! 	index
! 	index Interpretation
! 
! 1Satellite number
! 2Security classification
! 3Satellite international designator
! 4Epoch
! 5Ephemeris type = 0,2: B* drag term (1/er) Ephemeris type = 6   : SP radiation pressure
! coefficient agom (m2/kg)
! 6Ephemeris type
! 7Element set number
! 8Orbit inclination (degrees)
! 9Right ascension of ascending node (degrees)
! 10Eccentricity
! 11Argument of perigee (degrees)
! 12Mean anomaly (degrees)
! 13Mean motion (rev/day)
! 14Revolution number at epoch
! 15Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or Ephemeris type = 6: SP
! ballistic coefficient (m2/kg)
! 16Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or Ephemeris type = 6:
! SP Outgassing parameter/Thrust Acceleration (km/s2)
! 
function TleSetField(satKey, xf_Tle, valueStr) bind(C, name = "TleSetField") result(errCode)
   integer :: errCode	! 0 if the TLE is successfully updated, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key.
   integer, value :: xf_Tle   ! Predefined number specifying which field to set. See remarks.
   character, intent(in) :: valueStr(512)   ! The new value of the specified field, expressed as a string.
end function TleSetField
!*******************************************************************************



! Retrieves the value of a specific field of a TLE. 
! 
! The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
! 
! table
! 
! 	index
! 	index Interpretation
! 
! 1Satellite number
! 2Security classification
! 3Satellite international designator
! 4Epoch
! 5Ephemeris type = 0,2: B* drag term (1/er) Ephemeris type = 6   : SP radiation pressure
! coefficient agom (m2/kg)
! 6Ephemeris type
! 7Element set number
! 8Orbit inclination (degrees)
! 9Right ascension of ascending node (degrees)
! 10Eccentricity
! 11Argument of perigee (degrees)
! 12Mean anomaly (degrees)
! 13Mean motion (rev/day)
! 14Revolution number at epoch
! 15Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or Ephemeris type = 6: SP
! ballistic coefficient (m2/kg)
! 16Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or Ephemeris type = 6:
! SP Outgassing parameter/Thrust Acceleration (km/s2)
! 
function TleGetField(satKey, xf_Tle, valueStr) bind(C, name = "TleGetField") result(errCode)
   integer :: errCode	! 0 if the TLE data is successfully retrieved, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key.
   integer, value :: xf_Tle   ! Predefined number specifying which field to retrieve. See remarks.
   character, intent(out) :: valueStr(512)   ! A string to contain the value of the requested field.
end function TleGetField
!*******************************************************************************



! Retrieves all of the data for a GP satellite in a single function call. 
! This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
function TleGetAllFieldsGP(satKey, satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, &
omega, mnAnomaly, mnMotion, revNum) bind(C, name = "TleGetAllFieldsGP") result(errCode)
   integer :: errCode	! 0 if all values are retrieved successfully, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: secClass   ! Security classification
   character, intent(out) :: satName(8)   ! Satellite international designator
   integer, intent(out) :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), intent(out) :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), intent(out) :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, intent(out) :: ephType   ! Satellite ephemeris type (0: SGP, 2: SGP4, 6: SP)
   integer, intent(out) :: elsetNum   ! Element set number
   real(8), intent(out) :: incli   ! Orbit inclination (degrees)
   real(8), intent(out) :: node   ! Right ascension of ascending node (degrees)
   real(8), intent(out) :: eccen   ! Eccentricity
   real(8), intent(out) :: omega   ! Argument of perigee (degrees)
   real(8), intent(out) :: mnAnomaly   ! Mean anomaly (deg)
   real(8), intent(out) :: mnMotion   ! Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion)
   integer, intent(out) :: revNum   ! Revolution number at epoch
end function TleGetAllFieldsGP
!*******************************************************************************



! Retrieves all of the data (including nDotO2 and n2DotO6) for a GP satellite in a single function call. 
! This function is similar to TleGetAllFieldsGP but also includes nDotO2 and n2DotO6. 
! This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
function TleGetAllFieldsGP2(satKey, satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, &
omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6) bind(C, name = "TleGetAllFieldsGP2") result(errCode)
   integer :: errCode	! 0 if all values are retrieved successfully, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: secClass   ! Security classification
   character, intent(out) :: satName(8)   ! Satellite international designator
   integer, intent(out) :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), intent(out) :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), intent(out) :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, intent(out) :: ephType   ! Satellite ephemeris type (0: SGP, 2: SGP4, 6: SP)
   integer, intent(out) :: elsetNum   ! Element set number
   real(8), intent(out) :: incli   ! Orbit inclination (degrees)
   real(8), intent(out) :: node   ! Right ascension of ascending node (degrees)
   real(8), intent(out) :: eccen   ! Eccentricity
   real(8), intent(out) :: omega   ! Argument of perigee (degrees)
   real(8), intent(out) :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), intent(out) :: mnMotion   ! Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion)
   integer, intent(out) :: revNum   ! Revolution number at epoch
   real(8), intent(out) :: nDotO2   ! Mean motion derivative (rev/day /2)
   real(8), intent(out) :: n2DotO6   ! Mean motion second derivative (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg)
end function TleGetAllFieldsGP2
!*******************************************************************************



! Retrieves all of the data for an SP satellite in a single function call.
! Only applies to SP propagator.
! This function only works for SP satellites. The field values are placed in the corresponding parameters of the function. 
function TleGetAllFieldsSP(satKey, satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, &
eccen, omega, mnAnomaly, mnMotion, revNum) bind(C, name = "TleGetAllFieldsSP") result(errCode)
   integer :: errCode	! 0 if all values are retrieved successfully, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: secClass   ! Security classification
   character, intent(out) :: satName(8)   ! Satellite international designator
   integer, intent(out) :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), intent(out) :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), intent(out) :: bTerm   ! Ballistic coefficient (m^2/kg)
   real(8), intent(out) :: ogParm   ! Outgassing parameter/Thrust Acceleration (km/s^2)
   real(8), intent(out) :: agom   ! Agom (m^2/kg)
   integer, intent(out) :: elsetNum   ! Element set number
   real(8), intent(out) :: incli   ! Orbit inclination (degrees)
   real(8), intent(out) :: node   ! Right ascension of ascending node (degrees)
   real(8), intent(out) :: eccen   ! Eccentricity
   real(8), intent(out) :: omega   ! Argument of perigee (degrees)
   real(8), intent(out) :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), intent(out) :: mnMotion   ! Mean motion (rev/day)
   integer, intent(out) :: revNum   ! Revolution number at epoch
end function TleGetAllFieldsSP
!*******************************************************************************



! Parses GP data from the input first and second lines of a two line element set or a CSV Tle.
! This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
function TleParseGP(line1, line2, satNum, secClass, satName, epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, &
node, eccen, omega, mnAnomaly, mnMotion, revNum) bind(C, name = "TleParseGP") result(errCode)
   integer :: errCode	! 0 if the TLE is parsed successfully, non-0 if there is an error.
   character, intent(in) :: line1(512)   ! The first line of the two line element set or a CSV tle
   character, intent(in) :: line2(512)   ! The second line of the two line element set or an empty string for a CVS tle
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: secClass   ! Security classification
   character, intent(out) :: satName(8)   ! Satellite international designator
   integer, intent(out) :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), intent(out) :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), intent(out) :: nDotO2   ! n-dot/2 (for SGP, ephType = 0)
   real(8), intent(out) :: n2DotO6   ! n-double-dot/6 (for SGP, ephType = 0) or agom (ephType = 4, XP) (m2/kg)
   real(8), intent(out) :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, intent(out) :: ephType   ! Satellite ephemeris type (0: SGP, 2: SGP4, 6: SP)
   integer, intent(out) :: elsetNum   ! Element set number
   real(8), intent(out) :: incli   ! Orbit inclination (degrees)
   real(8), intent(out) :: node   ! Right ascension of ascending node (degrees)
   real(8), intent(out) :: eccen   ! Eccentricity
   real(8), intent(out) :: omega   ! Argument of perigee (degrees)
   real(8), intent(out) :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), intent(out) :: mnMotion   ! Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion)
   integer, intent(out) :: revNum   ! Revolution number at epoch
end function TleParseGP
!*******************************************************************************



! Parses GP data from the input first and second lines of a two line element set or a CSV tle and store that data back into the output parameters.
! This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
function TleLinesToArray(line1, line2, xa_tle, xs_tle) bind(C, name = "TleLinesToArray") result(errCode)
   integer :: errCode	! 0 if the TLE is parsed successfully, non-0 if there is an error.
   character, intent(in) :: line1(512)   ! The first line of the two line element set or a CSV tle
   character, intent(in) :: line2(512)   ! The second line of the two line element set or an empty string for a CVS tle
   real(8), intent(out) :: xa_tle(64)   ! Array containing TLE's numerical fields, see XA_TLE_? for array arrangement
   character, intent(out) :: xs_tle(512)   ! Output string that contains all TLE's text fields, see XS_TLE_? for column arrangement
end function TleLinesToArray
!*******************************************************************************



! Parses SP data from the input first and second lines of a two line element set.
! Only applies to SP propagator.
! This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
function TleParseSP(line1, line2, satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, &
omega, mnAnomaly, mnMotion, revNum) bind(C, name = "TleParseSP") result(errCode)
   integer :: errCode	! 0 if the TLE is parsed successfully, non-0 if there is an error.
   character, intent(in) :: line1(512)   ! The first line of the two line element set
   character, intent(in) :: line2(512)   ! The second line of the two line element set
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: secClass   ! Security classification
   character, intent(out) :: satName(8)   ! Satellite international designator
   integer, intent(out) :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), intent(out) :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), intent(out) :: bTerm   ! Ballistic coefficient (m^2/kg)
   real(8), intent(out) :: ogParm   ! Outgassing parameter/Thrust Acceleration (km/s^2)
   real(8), intent(out) :: agom   ! Agom (m^2/kg)
   integer, intent(out) :: elsetNum   ! Element set number
   real(8), intent(out) :: incli   ! Orbit inclination (degrees)
   real(8), intent(out) :: node   ! Right ascension of ascending node (degrees)
   real(8), intent(out) :: eccen   ! Eccentricity
   real(8), intent(out) :: omega   ! Argument of perigee (degrees)
   real(8), intent(out) :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), intent(out) :: mnMotion   ! Mean motion (rev/day)
   integer, intent(out) :: revNum   ! Revolution number at epoch
end function TleParseSP
!*******************************************************************************



! Returns the first and second lines representation of a TLE of a satellite. 
function TleGetLines(satKey, line1, line2) bind(C, name = "TleGetLines") result(errCode)
   integer :: errCode	! 0 if successful, non-0 on error.
   integer(8), value :: satKey   ! The satellite's unique key.
   character, intent(out) :: line1(512)   ! A string to hold the first line of the TLE
   character, intent(out) :: line2(512)   ! A string to hold the second line of the TLE
end function TleGetLines
!*******************************************************************************



! Returns the CSV string representation of a TLE of a satellite. 
function TleGetCsv(satKey, csvLine) bind(C, name = "TleGetCsv") result(errCode)
   integer :: errCode	! 0 if successful, non-0 on error.
   integer(8), value :: satKey   ! The satellite's unique key.
   character, intent(out) :: csvLine(512)   ! A string to hold the TLE in csv format.
end function TleGetCsv
!*******************************************************************************



! Constructs a TLE from individually provided GP data fields.
! This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
! Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
subroutine TleGPFieldsToLines(satNum, secClass, satName, epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, &
node, eccen, omega, mnAnomaly, mnMotion, revNum, line1, line2) bind(C, name = "TleGPFieldsToLines")
   integer, value :: satNum   ! Satellite number
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), value :: nDotO2   ! N Dot/2 (rev/day /2)
   real(8), value :: n2DotO6   ! N Double Dot/6 (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg)
   real(8), value :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, value :: ephType   ! Satellite ephemeris type (0: SGP, 2: SGP4)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion)
   integer, value :: revNum   ! Revolution number at epoch
   character, intent(out) :: line1(512)   ! Returned first line of a TLE.
   character, intent(out) :: line2(512)   ! Returned second line of a TLE.
end subroutine TleGPFieldsToLines
!*******************************************************************************



! Constructs a TLE from individually provided GP data fields.
! This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
! Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
subroutine TleGPFieldsToCsv(satNum, secClass, satName, epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, node, &
eccen, omega, mnAnomaly, mnMotion, revNum, csvLine) bind(C, name = "TleGPFieldsToCsv")
   integer, value :: satNum   ! Satellite number
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), value :: nDotO2   ! N Dot/2 (rev/day /2)
   real(8), value :: n2DotO6   ! N Double Dot/6 (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg)
   real(8), value :: bstar   ! B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP)
   integer, value :: ephType   ! Satellite ephemeris type (0: SGP, 2: SGP4)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion)
   integer, value :: revNum   ! Revolution number at epoch
   character, intent(out) :: csvLine(512)   ! A string to hold the TLE in csv format.
end subroutine TleGPFieldsToCsv
!*******************************************************************************



! Constructs a TLE from GP data stored in the input parameters.
! This function only parses data from the input data but DOES NOT load/add the TLE to memory.
! 
! Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
subroutine TleGPArrayToLines(xa_tle, xs_tle, line1, line2) bind(C, name = "TleGPArrayToLines")
   real(8), intent(in) :: xa_tle(64)   ! Array containing TLE's numerical fields, see XA_TLE_? for array arrangement
   character, intent(in) :: xs_tle(512)   ! Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement
   character, intent(out) :: line1(512)   ! Returned first line of a TLE
   character, intent(out) :: line2(512)   ! Returned second line of a TLE
end subroutine TleGPArrayToLines
!*******************************************************************************



! Constructs a TLE from GP data stored in the input parameters.
! This function only parses data from the input data but DOES NOT load/add the TLE to memory.
! Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
subroutine TleGPArrayToCsv(xa_tle, xs_tle, csvline) bind(C, name = "TleGPArrayToCsv")
   real(8), intent(in) :: xa_tle(64)   ! Array containing TLE's numerical fields, see XA_TLE_? for array arrangement
   character, intent(in) :: xs_tle(512)   ! Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement
   character, intent(out) :: csvline(512)   ! Returned csv format elements.
end subroutine TleGPArrayToCsv
!*******************************************************************************



! Constructs a TLE from individually provided SP data fields.
! Only applies to SP propagator.
! This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
! Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
subroutine TleSPFieldsToLines(satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, &
omega, mnAnomaly, mnMotion, revNum, line1, line2) bind(C, name = "TleSPFieldsToLines")
   integer, value :: satNum   ! Satellite number
   character, value :: secClass   ! Security classification
   character, intent(in) :: satName(8)   ! Satellite international designator
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   real(8), value :: bTerm   ! Ballistic coefficient (m^2/kg)
   real(8), value :: ogParm   ! Outgassing parameter/Thrust Acceleration (km/s^2)
   real(8), value :: agom   ! Agom (m^2/kg)
   integer, value :: elsetNum   ! Element set number
   real(8), value :: incli   ! Orbit inclination (degrees)
   real(8), value :: node   ! Right ascension of ascending node (degrees)
   real(8), value :: eccen   ! Eccentricity
   real(8), value :: omega   ! Argument of perigee (degrees)
   real(8), value :: mnAnomaly   ! Mean anomaly (degrees)
   real(8), value :: mnMotion   ! Mean motion (rev/day)
   integer, value :: revNum   ! Revolution number at epoch
   character, intent(out) :: line1(512)   ! Returned first line of a TLE.
   character, intent(out) :: line2(512)   ! Returned second line of a TLE.
end subroutine TleSPFieldsToLines
!*******************************************************************************



! Returns the first satKey from the currently loaded set of TLEs that contains the specified satellite number.
! This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
! A negative value will be returned if there is an error.
function TleGetSatKey(satNum) bind(C, name = "TleGetSatKey") result(satKey)
   integer(8) :: satKey	! The satellite's unique key
   integer, value :: satNum   ! Satellite number
end function TleGetSatKey
!*******************************************************************************



! This function is similar to TleGetSatKey but designed to be used in Matlab. 
! Matlab doesn't correctly return the 19-digit satellite key using TleGetSatKey. This method is an alternative way to return the satKey output.
! This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
! A negative value will be returned in satKey if there is an error.
subroutine TleGetSatKeyML(satNum, satKey) bind(C, name = "TleGetSatKeyML")
   integer, value :: satNum   ! Satellite number
   integer(8), intent(out) :: satKey   ! The satKey of the satellite if a satellite with the requested number is found in the set of loaded satellites, a negative value if there is an error.
end subroutine TleGetSatKeyML
!*******************************************************************************



! Computes a satKey from the input data.
! There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
! 
! This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different. 
! A negative value will be returned if there is an error.
function TleFieldsToSatKey(satNum, epochYr, epochDays, ephType) bind(C, name = "TleFieldsToSatKey") result(satKey)
   integer(8) :: satKey	! The resulting satellite key if the computation is successful; a negative value if there is an error.
   integer, value :: satNum   ! Satellite number
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   integer, value :: ephType   ! Ephemeris type
end function TleFieldsToSatKey
!*******************************************************************************



! This function is similar to TleFieldsToSatKey but designed to be used in Matlab. 
! Matlab doesn't correctly return the 19-digit satellite key using TleFieldsToSatKey. This method is an alternative way to return the satKey output.
! There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
! 
! This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different.
! A negative value will be returned in satKey if there is an error.
subroutine TleFieldsToSatKeyML(satNum, epochYr, epochDays, ephType, satKey) bind(C, name = "TleFieldsToSatKeyML")
   integer, value :: satNum   ! Satellite number
   integer, value :: epochYr   ! Element epoch time - year, [YY]YY
   real(8), value :: epochDays   ! Element epoch time - day of year, DDD.DDDDDDDD
   integer, value :: ephType   ! Ephemeris type
   integer(8), intent(out) :: satKey   ! The satKey if the computation is successful, a negative value if there is an error.
end subroutine TleFieldsToSatKeyML
!*******************************************************************************



! Adds a TLE (satellite), using its data stored in the input parameters.
function TleAddSatFrArray(xa_tle, xs_tle) bind(C, name = "TleAddSatFrArray") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added TLE on success, a negative value on error.
   real(8), intent(in) :: xa_tle(64)   ! Array containing TLE's numerical fields, see XA_TLE_? for array arrangement
   character, intent(in) :: xs_tle(512)   ! Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement
end function TleAddSatFrArray
!*******************************************************************************



! This function is similar to TleAddSatFrArray but designed to be used in Matlab. 
subroutine TleAddSatFrArrayML(xa_tle, xs_tle, satKey) bind(C, name = "TleAddSatFrArrayML")
   real(8), intent(in) :: xa_tle(64)   ! Array containing TLE's numerical fields, see XA_TLE_? for array arrangement
   character, intent(in) :: xs_tle(512)   ! Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement
   integer(8), intent(out) :: satKey   ! The satKey of the newly added TLE on success, a negative value on error.
end subroutine TleAddSatFrArrayML
!*******************************************************************************



! Updates existing TLE data with the provided new data stored in the input parameters. Note: satNum, year, day, and ephtype can't be updated.
! nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
function TleUpdateSatFrArray(satKey, xa_tle, xs_tle) bind(C, name = "TleUpdateSatFrArray") result(errCode)
   integer :: errCode	! 0 if the TLE is successfully updated, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(in) :: xa_tle(64)   ! Array containing TLE's numerical fields, see XA_TLE_? for array arrangement
   character, intent(in) :: xs_tle(512)   ! Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement
end function TleUpdateSatFrArray
!*******************************************************************************



! Retrieves TLE data and stored it in the passing parameters
function TleDataToArray(satKey, xa_tle, xs_tle) bind(C, name = "TleDataToArray") result(errCode)
   integer :: errCode	! 0 if all values are retrieved successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(out) :: xa_tle(64)   ! Array containing TLE's numerical fields, see XA_TLE_? for array arrangement
   character, intent(out) :: xs_tle(512)   ! Output string that contains all TLE's text fields, see XS_TLE_? for column arrangement
end function TleDataToArray
!*******************************************************************************



! Converts TLE two line format to CSV format
function TleLinesToCsv(line1, line2, csvline) bind(C, name = "TleLinesToCsv") result(errCode)
   integer :: errCode	! 0 if the conversion is successful, non-0 if there is an error.
   character, intent(in) :: line1(512)   ! The first line of a two line element set
   character, intent(in) :: line2(512)   ! The second line of a two line element set
   character, intent(out) :: csvline(512)   ! A string to hold the TLE in csv format.
end function TleLinesToCsv
!*******************************************************************************



! Converts TLE CSV format to two line format
function TleCsvToLines(csvLine, newSatno, line1, line2) bind(C, name = "TleCsvToLines") result(errCode)
   integer :: errCode	! 0 if the conversion is successful, non-0 if there is an error.
   character, intent(in) :: csvLine(512)   ! The input TLE in CSV format
   integer, value :: newSatno   ! New satellite number to replace what's in CSV obs if desired (won't use/renumber if it's zero)
   character, intent(out) :: line1(512)   ! The output first line of the two line element set
   character, intent(out) :: line2(512)   ! The output second line of the two line element set
end function TleCsvToLines
!*******************************************************************************



! Sets TLE key mode - This function was deprecated, please use DllMain/SetElsetKeyMode() instead
function SetTleKeyMode(tle_keyMode) bind(C, name = "SetTleKeyMode") result(errCode)
   integer :: errCode	! 0 if the set is successful, non-0 if there is an error.
   integer, value :: tle_keyMode   ! Desired Tle key mode
end function SetTleKeyMode
!*******************************************************************************



! Gets current TLE key mode - This function was deprecated, please use DllMain/GetElsetKeyMode() instead
function GetTleKeyMode() bind(C, name = "GetTleKeyMode") result(tle_keyMode)
   integer :: tle_keyMode	! Current Tle key mode
end function GetTleKeyMode
!*******************************************************************************



! Finds the check sums of TLE lines
subroutine GetCheckSums(line1, line2, chkSum1, chkSum2, errCode) bind(C, name = "GetCheckSums")
   character, intent(in) :: line1(512)   ! The input TLE line 1 in TLE format
   character, intent(in) :: line2(512)   ! The input TLE line 2 in TLE format
   integer, intent(out) :: chkSum1   ! Check Sum of Line 1
   integer, intent(out) :: chkSum2   ! Check Sum of Line 2
   integer, intent(out) :: errCode   ! Error code - 0 if successful, non-0 if there is an error
end subroutine GetCheckSums
!*******************************************************************************

end interface




   
   ! TLE types (TLE ephemeris types) - They are different than ELTTYPE
   integer, parameter :: &
      TLETYPE_SGP  = 0, &  ! TLE SGP elset (Kozai mean motion)
      TLETYPE_SGP4 = 2, &  ! TLE SGP4 elset (Brouwer mean motion)
      TLETYPE_XP   = 4, &  ! TLE SGP4-XP elset (Brouwer mean motion)
      TLETYPE_SP   = 6;    ! TLE SP elset (osculating elements)
   
   ! Indexes of TLE data fields
   integer, parameter :: &
      XF_TLE_SATNUM     =  1, &  ! Satellite number
      XF_TLE_CLASS      =  2, &  ! Security classification U: unclass, C: confidential, S: Secret
      XF_TLE_SATNAME    =  3, &  ! Satellite name A8
      XF_TLE_EPOCH      =  4, &  ! Satellite's epoch time "YYYYJJJ.jjjjjjjj"
      XF_TLE_BSTAR      =  5, &  ! GP B* drag term (1/er)  (not the same as XF_TLE_BTERM) 
      XF_TLE_EPHTYPE    =  6, &  ! Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
      XF_TLE_ELSETNUM   =  7, &  ! Element set number
      XF_TLE_INCLI      =  8, &  ! Orbit inclination (deg)
      XF_TLE_NODE       =  9, &  ! Right ascension of asending node (deg)
      XF_TLE_ECCEN      = 10, &  ! Eccentricity
      XF_TLE_OMEGA      = 11, &  ! Argument of perigee (deg)
      XF_TLE_MNANOM     = 12, &  ! Mean anomaly (deg)
      XF_TLE_MNMOTN     = 13, &  ! Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
      XF_TLE_REVNUM     = 14, &  ! Revolution number at epoch 
      
      XF_TLE_NDOT       = 15, &  ! GP Mean motion derivative (rev/day /2)
      XF_TLE_NDOTDOT    = 16, &  ! GP Mean motion second derivative (rev/day**2 /6)
      XF_TLE_AGOMGP     = 16, &  ! Solar radiation pressure GP (m2/kg)
   
      XF_TLE_SP_AGOM    =  5, &  ! SP Radiation Pressure Coefficient
      XF_TLE_SP_BTERM   = 15, &  ! SP ballistic coefficient (m2/kg)
      XF_TLE_SP_OGPARM  = 16, &  ! SP outgassing parameter (km/s2)
   
      XF_TLE_ORGSATNUM  = 17, &  ! Original satellite number
      XF_TLE_BTERM      = 18, &  ! GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
      XF_TLE_OBSTIME    = 19, &  ! Time of last observation relative to epoch +/- fractional days
      XF_TLE_EGR        = 20, &  ! Last calculated error growth rate (km/day)
      XF_TLE_EDR        = 21, &  ! Last calculated energy dissipation rate (w/kg)
      XF_TLE_VISMAG     = 22, &  ! Median Vismag 
      XF_TLE_RCS        = 23, &  ! Median RCS - diameter in centimeters (cm)
      XF_TLE_OBJTYPE    = 24, &  ! Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
      XF_TLE_SATNAME_12 = 25;    ! Satellite name A12 (upto 12 character long)
      
      
   ! Indexes of TLE numerical data in an array
   integer, parameter :: &
      ! Line 1
      XA_TLE_SATNUM        =  0, &  ! Satellite number
      XA_TLE_EPOCH         =  1, &  ! Satellite's epoch time in DS50UTC
      XA_TLE_NDOT          =  2, &  ! GP Mean motion derivative (rev/day /2)
      XA_TLE_NDOTDOT       =  3, &  ! GP Mean motion second derivative (rev/day**2 /6)
      XA_TLE_BSTAR         =  4, &  ! GP B* drag term (1/er)  
      XA_TLE_EPHTYPE       =  5, &  ! Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
      
      ! Line 2
      XA_TLE_INCLI         = 20, &  ! Orbit inclination (deg)
      XA_TLE_NODE          = 21, &  ! Right ascension of asending node (deg)
      XA_TLE_ECCEN         = 22, &  ! Eccentricity
      XA_TLE_OMEGA         = 23, &  ! Argument of perigee (deg)
      XA_TLE_MNANOM        = 24, &  ! Mean anomaly (deg)
      XA_TLE_MNMOTN        = 25, &  ! Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
      XA_TLE_REVNUM        = 26, &  ! Revolution number at epoch 
      XA_TLE_ELSETNUM      = 30, &  ! Element set number
      
      ! CSV (or TLE-XP, ephemType=4) specific fields 
      XA_TLE_ORGSATNUM     = 31, &  ! Original satellite number
      XA_TLE_BTERM         = 32, &  ! SP/SGP4-XP ballistic coefficient (m2/kg) 
      XA_TLE_OBSTIME       = 33, &  ! Time of last observation relative to epoch +/- fractional days
      XA_TLE_EGR           = 34, &  ! Last calculated error growth rate (km/day)
      XA_TLE_EDR           = 35, &  ! Last calculated energy dissipation rate (w/kg)
      XA_TLE_VISMAG        = 36, &  ! Median Vismag 
      XA_TLE_RCS           = 37, &  ! Median RCS - diameter in centimeters (cm)
   
      ! CSV (or TLE-XP, ephemType=4)
      XA_TLE_AGOMGP        = 38, &  ! Solar Radiation Pressure Coefficient GP (m2/kg)
   
      
      ! SP specific fields
      XA_TLE_SP_BTERM      =  2, &  ! SP ballistic coefficient (m2/kg)
      XA_TLE_SP_OGPARM     =  3, &  ! SP outgassing parameter (km/s2)
      XA_TLE_SP_AGOM       =  4, &  ! SP Radiation Pressure Coefficient
      
      XA_TLE_SIZE          = 64;
   
   ! Indexes of TLE text data in an array of chars
   integer, parameter :: &
      XS_TLE_SECCLASS_1   =  0, &  ! Security classification of line 1 and line 2
      XS_TLE_SATNAME_12   =  1, &  ! Satellite name
      XS_TLE_OBJTYPE_11   = 13, &  ! Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
      
      XS_TLE_SIZE         = 512;      
      
   ! TLE's text data fields - new convention (start index, string length)
   integer, parameter :: &
      XS_TLE_SECCLASS_0_1  =  0, &  ! Security classification of line 1 and line 2
      XS_TLE_SATNAME_1_12  =  1, &  ! Satellite name
      XS_TLE_OBJTYPE_13_1  = 13, &  ! Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
      
      XS_TLE_LENGTH        = 512;      
   
   ! Indexes of different TLE file's formats
   integer, parameter :: &
      XF_TLEFORM_ORG    =  0, &  ! Original TLE format
      XF_TLEFORM_CSV    =  1;    ! CSV format
      
      
end module TleDll
! ========================= End of auto generated code ==========================
