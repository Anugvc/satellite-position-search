// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0.    
   //  Initializes Tle DLL for use in the program.
   //  If this function returns an error, it is recommended that you stop the program immediately.
   //  
   //  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   pub fn TleInit(apAddr: i64) -> i32;
   //  Returns the information about the Tle DLL.
   //  The returned string provides information about the version number, build date, and the platform of the Tle DLL. 
   pub fn TleGetInfo(infoStr: *const c_char);
   //  Loads TLEs (satellites) contained in a text file into the TLE DLL's binary tree.
   //  You may use this function repeatedly to load TLEs from different input files. However, only unique satKeys are loaded. Duplicated TLEs won't be stored. 
   //  
   //  TLEs can be included directly in the specified file, or they can be read from a separate file identified with "ELTFIL=[path\filename]" or "VECFIL=[path\filename]".
   //  
   //  The input file is read in two passes. The function first looks for "ELTFIL=" and "VECFIL=" lines, then it looks for TLEs which were included directly. The result of this is that data entered using both methods will be processed, but the "ELTFIL=" and "VECFIL=" data will be processed first.
   pub fn TleLoadFile(tleFile: *const c_char) -> i32;
   //  Saves currently loaded TLEs to a file. 
   //  In append mode, if the specified file does not exist it will be created.
   //  If you call this routine immediately after TleLoadFile(), the TLE contents in the two files should be the same (minus duplicated TLE's or bad TLE's).
   //  
   //  The purpose of this function is to save the current state of the loaded TLE's, usually used in GUI applications, for future use.
   pub fn TleSaveFile(tleFile: *const c_char, saveMode: i32, xf_tleForm: i32) -> i32;
   //  Removes a TLE represented by the satKey from memory. 
   //  If the users enter an invalid satKey (a non-existing satKey), the function will return a non-zero value indicating an error.
   pub fn TleRemoveSat(satKey: i64) -> i32;
   //  Removes all the TLEs from memory.
   pub fn TleRemoveAllSats() -> i32;
   //  Returns the number of TLEs currently loaded. 
   //  See TleGetLoaded for an example.
   //  This function is useful for dynamically allocating memory for the array that is passed to the function TleGetLoaded().
   pub fn TleGetCount() -> i32;
   //  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the TLE's.
   //  It is recommended that TleGetCount() be  used to determine how many satellites are currently loaded. This value can then be used to dynamically allocate an array to hold the satKeys.
   //  
   //  If you are going to pass a statically allocated array to this function, ensure it is large enough to hold all of the returned satKeys.
   pub fn TleGetLoaded(order: i32, satKeys: *mut i64);
   //  Adds a TLE (satellite), using its directly specified first and second lines. 
   //  The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
   //  
   //  This function can be called repeatedly to add many TLEs, one at a time.
   pub fn TleAddSatFrLines(line1: *const c_char, line2: *const c_char) -> i64;
   //  This function is similar to TleAddSatFrLines but designed to be used in Matlab.
   //  Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrLines. This method is an alternative way to return the satKey output.
   pub fn TleAddSatFrLinesML(line1: *const c_char, line2: *const c_char, satKey: *mut i64);
   //  Adds a TLE (satellite), using its CSV string format. 
   pub fn TleAddSatFrCsv(csvLine: *const c_char) -> i64;
   //  This function is similar to TleAddSatFrCsv but designed to be used in Matlab.
   pub fn TleAddSatFrCsvML(csvLine: *const c_char, satKey: *mut i64);
   //  Adds a GP TLE using its individually provided field values. 
   //  The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
   //  
   //  This function can be called repeatedly to add many satellites (one satellite at a time).
   //  
   //  SGP satellites (ephType = 0) use Kozai mean motion. SGP4 satellites (ephType = 2) use Brouwer mean motion.
   pub fn TleAddSatFrFieldsGP(satNum: i32, secClass: c_char, satName: *const c_char, epochYr: i32, epochDays: f64, bstar: f64, ephType: i32, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32) -> i64;
   //  This function is similar to TleAddSatFrFieldsGP but includes nDotO2 and n2DotO6. 
   //  nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   pub fn TleAddSatFrFieldsGP2(satNum: i32, secClass: c_char, satName: *const c_char, epochYr: i32, epochDays: f64, bstar: f64, ephType: i32, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32, nDotO2: f64, n2DotO6: f64) -> i64;
   //  This function is similar to TleAddSatFrFieldsGP2 but designed to be used in Matlab. 
   //  Matlab doesn't seem to correctly return the 19-digit satellite key using TleAddSatFrFieldsGP2. This method is an alternative way to return the satKey output.
   pub fn TleAddSatFrFieldsGP2ML(satNum: i32, secClass: c_char, satName: *const c_char, epochYr: i32, epochDays: f64, bstar: f64, ephType: i32, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32, nDotO2: f64, n2DotO6: f64, satKey: *mut i64);
   //  Updates a GP satellite's data in memory by providing its individual field values. Note: satNum, year, day, and ephtype can't be updated.
   //  The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded satellite, the function will indicate an error.
   //  
   //  Remember to use the correct mean motion depending on the satellite's ephType.
   pub fn TleUpdateSatFrFieldsGP(satKey: i64, secClass: c_char, satName: *const c_char, bstar: f64, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32) -> i32;
   //  This function is similar to TleUpdateSatFrFieldsGP but includes nDotO2 and n2DotO6. Note: satNum, year, day, and ephtype can't be updated.
   //  nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   pub fn TleUpdateSatFrFieldsGP2(satKey: i64, secClass: c_char, satName: *const c_char, bstar: f64, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32, nDotO2: f64, n2DotO6: f64) -> i32;
   //  Adds an SP satellite using the individually provided field values.
   //  Only applies to SP propagator.
   pub fn TleAddSatFrFieldsSP(satNum: i32, secClass: c_char, satName: *const c_char, epochYr: i32, epochDays: f64, bTerm: f64, ogParm: f64, agom: f64, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32) -> i64;
   //  This function is similar to TleAddSatFrFieldsSP but designed to be used in Matlab.
   //  Only applies to SP propagator.
   //  Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrFieldsSP. This method is an alternative way to return the satKey output.
   pub fn TleAddSatFrFieldsSPML(satNum: i32, secClass: c_char, satName: *const c_char, epochYr: i32, epochDays: f64, bTerm: f64, ogParm: f64, agom: f64, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32, satKey: *mut i64);
   //  Updates an SP satellite's data in memory using its individually provided field values. Note: satNum, year, day, and ephtype can't be updated.
   //  Only applies to SP propagator.
   //  The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded TLE, the function will indicate an error. 
   pub fn TleUpdateSatFrFieldsSP(satKey: i64, secClass: c_char, satName: *const c_char, bterm: f64, ogParm: f64, agom: f64, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32) -> i32;
   //  Updates the value of a field of a TLE. This function can be used for both GP and SP satellites.
   //  <br>
   //  The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
   //  satNum (1), Epoch (4), and Ephemeris Type (5) cannot be altered.
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  	<td>index</td>
   //  	<td>index Interpretation</td>
   //  </tr>
   //  <tr><td>1</td><td>Satellite number</td></tr>
   //  <tr><td>2</td><td>Security classification</td></tr>
   //  <tr><td>3</td><td>Satellite international designator</td></tr>
   //  <tr><td>4</td><td>Epoch</td></tr>
   //  <tr><td>5</td><td>Ephemeris type = 0,2: B* drag term (1/er) <br>Ephemeris type = 6   : SP radiation pressure
   //  coefficient agom (m2/kg)</td></tr>
   //  <tr><td>6</td><td>Ephemeris type</td></tr>
   //  <tr><td>7</td><td>Element set number</td></tr>
   //  <tr><td>8</td><td>Orbit inclination (degrees)</td></tr>
   //  <tr><td>9</td><td>Right ascension of ascending node (degrees)</td></tr>
   //  <tr><td>10</td><td>Eccentricity</td></tr>
   //  <tr><td>11</td><td>Argument of perigee (degrees)</td></tr>
   //  <tr><td>12</td><td>Mean anomaly (degrees)</td></tr>
   //  <tr><td>13</td><td>Mean motion (rev/day)</td></tr>
   //  <tr><td>14</td><td>Revolution number at epoch</td></tr>
   //  <tr><td>15</td><td>Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or <br>Ephemeris type = 6: SP
   //  ballistic coefficient (m2/kg)</td></tr>
   //  <tr><td>16</td><td>Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or <br>Ephemeris type = 6:
   //  SP Outgassing parameter/Thrust Acceleration (km/s2)</td></tr>
   //  </table>
   pub fn TleSetField(satKey: i64, xf_Tle: i32, valueStr: *const c_char) -> i32;
   //  Retrieves the value of a specific field of a TLE. 
   //  <br>
   //  The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  	<td>index</td>
   //  	<td>index Interpretation</td>
   //  </tr>
   //  <tr><td>1</td><td>Satellite number</td></tr>
   //  <tr><td>2</td><td>Security classification</td></tr>
   //  <tr><td>3</td><td>Satellite international designator</td></tr>
   //  <tr><td>4</td><td>Epoch</td></tr>
   //  <tr><td>5</td><td>Ephemeris type = 0,2: B* drag term (1/er) <br>Ephemeris type = 6   : SP radiation pressure
   //  coefficient agom (m2/kg)</td></tr>
   //  <tr><td>6</td><td>Ephemeris type</td></tr>
   //  <tr><td>7</td><td>Element set number</td></tr>
   //  <tr><td>8</td><td>Orbit inclination (degrees)</td></tr>
   //  <tr><td>9</td><td>Right ascension of ascending node (degrees)</td></tr>
   //  <tr><td>10</td><td>Eccentricity</td></tr>
   //  <tr><td>11</td><td>Argument of perigee (degrees)</td></tr>
   //  <tr><td>12</td><td>Mean anomaly (degrees)</td></tr>
   //  <tr><td>13</td><td>Mean motion (rev/day)</td></tr>
   //  <tr><td>14</td><td>Revolution number at epoch</td></tr>
   //  <tr><td>15</td><td>Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or <br>Ephemeris type = 6: SP
   //  ballistic coefficient (m2/kg)</td></tr>
   //  <tr><td>16</td><td>Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or <br>Ephemeris type = 6:
   //  SP Outgassing parameter/Thrust Acceleration (km/s2)</td></tr>
   //  </table>
   pub fn TleGetField(satKey: i64, xf_Tle: i32, valueStr: *const c_char) -> i32;
   //  Retrieves all of the data for a GP satellite in a single function call. 
   //  This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
   pub fn TleGetAllFieldsGP(satKey: i64, satNum: *mut i32, secClass: *const c_char, satName: *const c_char, epochYr: *mut i32, epochDays: *mut f64, bstar: *mut f64, ephType: *mut i32, elsetNum: *mut i32, incli: *mut f64, node: *mut f64, eccen: *mut f64, omega: *mut f64, mnAnomaly: *mut f64, mnMotion: *mut f64, revNum: *mut i32) -> i32;
   //  Retrieves all of the data (including nDotO2 and n2DotO6) for a GP satellite in a single function call. 
   //  This function is similar to TleGetAllFieldsGP but also includes nDotO2 and n2DotO6. 
   //  This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
   pub fn TleGetAllFieldsGP2(satKey: i64, satNum: *mut i32, secClass: *const c_char, satName: *const c_char, epochYr: *mut i32, epochDays: *mut f64, bstar: *mut f64, ephType: *mut i32, elsetNum: *mut i32, incli: *mut f64, node: *mut f64, eccen: *mut f64, omega: *mut f64, mnAnomaly: *mut f64, mnMotion: *mut f64, revNum: *mut i32, nDotO2: *mut f64, n2DotO6: *mut f64) -> i32;
   //  Retrieves all of the data for an SP satellite in a single function call.
   //  Only applies to SP propagator.
   //  This function only works for SP satellites. The field values are placed in the corresponding parameters of the function. 
   pub fn TleGetAllFieldsSP(satKey: i64, satNum: *mut i32, secClass: *const c_char, satName: *const c_char, epochYr: *mut i32, epochDays: *mut f64, bTerm: *mut f64, ogParm: *mut f64, agom: *mut f64, elsetNum: *mut i32, incli: *mut f64, node: *mut f64, eccen: *mut f64, omega: *mut f64, mnAnomaly: *mut f64, mnMotion: *mut f64, revNum: *mut i32) -> i32;
   //  Parses GP data from the input first and second lines of a two line element set or a CSV Tle.
   //  This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   pub fn TleParseGP(line1: *const c_char, line2: *const c_char, satNum: *mut i32, secClass: *const c_char, satName: *const c_char, epochYr: *mut i32, epochDays: *mut f64, nDotO2: *mut f64, n2DotO6: *mut f64, bstar: *mut f64, ephType: *mut i32, elsetNum: *mut i32, incli: *mut f64, node: *mut f64, eccen: *mut f64, omega: *mut f64, mnAnomaly: *mut f64, mnMotion: *mut f64, revNum: *mut i32) -> i32;
   //  Parses GP data from the input first and second lines of a two line element set or a CSV tle and store that data back into the output parameters.
   //  This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   pub fn TleLinesToArray(line1: *const c_char, line2: *const c_char, xa_tle: *mut [f64; 64], xs_tle: *const c_char) -> i32;
   //  Parses SP data from the input first and second lines of a two line element set.
   //  Only applies to SP propagator.
   //  This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   pub fn TleParseSP(line1: *const c_char, line2: *const c_char, satNum: *mut i32, secClass: *const c_char, satName: *const c_char, epochYr: *mut i32, epochDays: *mut f64, bTerm: *mut f64, ogParm: *mut f64, agom: *mut f64, elsetNum: *mut i32, incli: *mut f64, node: *mut f64, eccen: *mut f64, omega: *mut f64, mnAnomaly: *mut f64, mnMotion: *mut f64, revNum: *mut i32) -> i32;
   //  Returns the first and second lines representation of a TLE of a satellite. 
   pub fn TleGetLines(satKey: i64, line1: *const c_char, line2: *const c_char) -> i32;
   //  Returns the CSV string representation of a TLE of a satellite. 
   pub fn TleGetCsv(satKey: i64, csvLine: *const c_char) -> i32;
   //  Constructs a TLE from individually provided GP data fields.
   //  This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   //  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   pub fn TleGPFieldsToLines(satNum: i32, secClass: c_char, satName: *const c_char, epochYr: i32, epochDays: f64, nDotO2: f64, n2DotO6: f64, bstar: f64, ephType: i32, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32, line1: *const c_char, line2: *const c_char);
   //  Constructs a TLE from individually provided GP data fields.
   //  This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   //  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   pub fn TleGPFieldsToCsv(satNum: i32, secClass: c_char, satName: *const c_char, epochYr: i32, epochDays: f64, nDotO2: f64, n2DotO6: f64, bstar: f64, ephType: i32, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32, csvLine: *const c_char);
   //  Constructs a TLE from GP data stored in the input parameters.
   //  This function only parses data from the input data but DOES NOT load/add the TLE to memory.
   //  <br>
   //  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   pub fn TleGPArrayToLines(xa_tle: *const [f64; 64], xs_tle: *const c_char, line1: *const c_char, line2: *const c_char);
   //  Constructs a TLE from GP data stored in the input parameters.
   //  This function only parses data from the input data but DOES NOT load/add the TLE to memory.
   //  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   pub fn TleGPArrayToCsv(xa_tle: *const [f64; 64], xs_tle: *const c_char, csvline: *const c_char);
   //  Constructs a TLE from individually provided SP data fields.
   //  Only applies to SP propagator.
   //  This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   //  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   pub fn TleSPFieldsToLines(satNum: i32, secClass: c_char, satName: *const c_char, epochYr: i32, epochDays: f64, bTerm: f64, ogParm: f64, agom: f64, elsetNum: i32, incli: f64, node: f64, eccen: f64, omega: f64, mnAnomaly: f64, mnMotion: f64, revNum: i32, line1: *const c_char, line2: *const c_char);
   //  Returns the first satKey from the currently loaded set of TLEs that contains the specified satellite number.
   //  This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
   //  A negative value will be returned if there is an error.
   pub fn TleGetSatKey(satNum: i32) -> i64;
   //  This function is similar to TleGetSatKey but designed to be used in Matlab. 
   //  Matlab doesn't correctly return the 19-digit satellite key using TleGetSatKey. This method is an alternative way to return the satKey output.
   //  This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
   //  A negative value will be returned in satKey if there is an error.
   pub fn TleGetSatKeyML(satNum: i32, satKey: *mut i64);
   //  Computes a satKey from the input data.
   //  There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
   //  
   //  This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different. 
   //  A negative value will be returned if there is an error.
   pub fn TleFieldsToSatKey(satNum: i32, epochYr: i32, epochDays: f64, ephType: i32) -> i64;
   //  This function is similar to TleFieldsToSatKey but designed to be used in Matlab. 
   //  Matlab doesn't correctly return the 19-digit satellite key using TleFieldsToSatKey. This method is an alternative way to return the satKey output.
   //  There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
   //  
   //  This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different.
   //  A negative value will be returned in satKey if there is an error.
   pub fn TleFieldsToSatKeyML(satNum: i32, epochYr: i32, epochDays: f64, ephType: i32, satKey: *mut i64);
   //  Adds a TLE (satellite), using its data stored in the input parameters.
   pub fn TleAddSatFrArray(xa_tle: *const [f64; 64], xs_tle: *const c_char) -> i64;
   //  This function is similar to TleAddSatFrArray but designed to be used in Matlab. 
   pub fn TleAddSatFrArrayML(xa_tle: *const [f64; 64], xs_tle: *const c_char, satKey: *mut i64);
   //  Updates existing TLE data with the provided new data stored in the input parameters. Note: satNum, year, day, and ephtype can't be updated.
   //  nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   pub fn TleUpdateSatFrArray(satKey: i64, xa_tle: *const [f64; 64], xs_tle: *const c_char) -> i32;
   //  Retrieves TLE data and stored it in the passing parameters
   pub fn TleDataToArray(satKey: i64, xa_tle: *mut [f64; 64], xs_tle: *const c_char) -> i32;
   //  Converts TLE two line format to CSV format
   pub fn TleLinesToCsv(line1: *const c_char, line2: *const c_char, csvline: *const c_char) -> i32;
   //  Converts TLE CSV format to two line format
   pub fn TleCsvToLines(csvLine: *const c_char, newSatno: i32, line1: *const c_char, line2: *const c_char) -> i32;
   //  Sets TLE key mode - This function was deprecated, please use DllMain/SetElsetKeyMode() instead
   pub fn SetTleKeyMode(tle_keyMode: i32) -> i32;
   //  Gets current TLE key mode - This function was deprecated, please use DllMain/GetElsetKeyMode() instead
   pub fn GetTleKeyMode() -> i32;
   //  Finds the check sums of TLE lines
   pub fn GetCheckSums(line1: *const c_char, line2: *const c_char, chkSum1: *mut i32, chkSum2: *mut i32, errCode: *mut i32);
}
   
   // TLE types (TLE ephemeris types) - They are different than ELTTYPE
   // TLE SGP elset (Kozai mean motion)
   pub static TLETYPE_SGP: i32 = 0;
   // TLE SGP4 elset (Brouwer mean motion)
   pub static TLETYPE_SGP4: i32 = 2;
   // TLE SGP4-XP elset (Brouwer mean motion)
   pub static TLETYPE_XP: i32 = 4;
   // TLE SP elset (osculating elements)
   pub static TLETYPE_SP: i32 = 6;
   
   // Indexes of TLE data fields
   // Satellite number
   pub static XF_TLE_SATNUM: i32 =  1;
   // Security classification U: unclass, C: confidential, S: Secret
   pub static XF_TLE_CLASS: i32 =  2;
   // Satellite name A8
   pub static XF_TLE_SATNAME: i32 =  3;
   // Satellite's epoch time "YYYYJJJ.jjjjjjjj"
   pub static XF_TLE_EPOCH: i32 =  4;
   // GP B* drag term (1/er)  (not the same as XF_TLE_BTERM)
   pub static XF_TLE_BSTAR: i32 =  5;
   // Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   pub static XF_TLE_EPHTYPE: i32 =  6;
   // Element set number
   pub static XF_TLE_ELSETNUM: i32 =  7;
   // Orbit inclination (deg)
   pub static XF_TLE_INCLI: i32 =  8;
   // Right ascension of asending node (deg)
   pub static XF_TLE_NODE: i32 =  9;
   // Eccentricity
   pub static XF_TLE_ECCEN: i32 = 10;
   // Argument of perigee (deg)
   pub static XF_TLE_OMEGA: i32 = 11;
   // Mean anomaly (deg)
   pub static XF_TLE_MNANOM: i32 = 12;
   // Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
   pub static XF_TLE_MNMOTN: i32 = 13;
   // Revolution number at epoch
   pub static XF_TLE_REVNUM: i32 = 14;
   
   // GP Mean motion derivative (rev/day /2)
   pub static XF_TLE_NDOT: i32 = 15;
   // GP Mean motion second derivative (rev/day**2 /6)
   pub static XF_TLE_NDOTDOT: i32 = 16;
   // Solar radiation pressure GP (m2/kg)
   pub static XF_TLE_AGOMGP: i32 = 16;
   
   // SP Radiation Pressure Coefficient
   pub static XF_TLE_SP_AGOM: i32 =  5;
   // SP ballistic coefficient (m2/kg)
   pub static XF_TLE_SP_BTERM: i32 = 15;
   // SP outgassing parameter (km/s2)
   pub static XF_TLE_SP_OGPARM: i32 = 16;
   
   // Original satellite number
   pub static XF_TLE_ORGSATNUM: i32 = 17;
   // GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
   pub static XF_TLE_BTERM: i32 = 18;
   // Time of last observation relative to epoch +/- fractional days
   pub static XF_TLE_OBSTIME: i32 = 19;
   // Last calculated error growth rate (km/day)
   pub static XF_TLE_EGR: i32 = 20;
   // Last calculated energy dissipation rate (w/kg)
   pub static XF_TLE_EDR: i32 = 21;
   // Median Vismag
   pub static XF_TLE_VISMAG: i32 = 22;
   // Median RCS - diameter in centimeters (cm)
   pub static XF_TLE_RCS: i32 = 23;
   // Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
   pub static XF_TLE_OBJTYPE: i32 = 24;
   // Satellite name A12 (upto 12 character long)
   pub static XF_TLE_SATNAME_12: i32 = 25;
   
   
   // Indexes of TLE numerical data in an array
   // Line 1
   // Satellite number
   pub static XA_TLE_SATNUM: i32 =  0;
   // Satellite's epoch time in DS50UTC
   pub static XA_TLE_EPOCH: i32 =  1;
   // GP Mean motion derivative (rev/day /2)
   pub static XA_TLE_NDOT: i32 =  2;
   // GP Mean motion second derivative (rev/day**2 /6)
   pub static XA_TLE_NDOTDOT: i32 =  3;
   // GP B* drag term (1/er)
   pub static XA_TLE_BSTAR: i32 =  4;
   // Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   pub static XA_TLE_EPHTYPE: i32 =  5;
   
   // Line 2
   // Orbit inclination (deg)
   pub static XA_TLE_INCLI: i32 = 20;
   // Right ascension of asending node (deg)
   pub static XA_TLE_NODE: i32 = 21;
   // Eccentricity
   pub static XA_TLE_ECCEN: i32 = 22;
   // Argument of perigee (deg)
   pub static XA_TLE_OMEGA: i32 = 23;
   // Mean anomaly (deg)
   pub static XA_TLE_MNANOM: i32 = 24;
   // Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
   pub static XA_TLE_MNMOTN: i32 = 25;
   // Revolution number at epoch
   pub static XA_TLE_REVNUM: i32 = 26;
   // Element set number
   pub static XA_TLE_ELSETNUM: i32 = 30;
   
   // CSV (or TLE-XP, ephemType=4) specific fields
   // Original satellite number
   pub static XA_TLE_ORGSATNUM: i32 = 31;
   // SP/SGP4-XP ballistic coefficient (m2/kg)
   pub static XA_TLE_BTERM: i32 = 32;
   // Time of last observation relative to epoch +/- fractional days
   pub static XA_TLE_OBSTIME: i32 = 33;
   // Last calculated error growth rate (km/day)
   pub static XA_TLE_EGR: i32 = 34;
   // Last calculated energy dissipation rate (w/kg)
   pub static XA_TLE_EDR: i32 = 35;
   // Median Vismag
   pub static XA_TLE_VISMAG: i32 = 36;
   // Median RCS - diameter in centimeters (cm)
   pub static XA_TLE_RCS: i32 = 37;
   
   // CSV (or TLE-XP, ephemType=4)
   // Solar Radiation Pressure Coefficient GP (m2/kg)
   pub static XA_TLE_AGOMGP: i32 = 38;
   
   
   // SP specific fields
   // SP ballistic coefficient (m2/kg)
   pub static XA_TLE_SP_BTERM: i32 =  2;
   // SP outgassing parameter (km/s2)
   pub static XA_TLE_SP_OGPARM: i32 =  3;
   // SP Radiation Pressure Coefficient
   pub static XA_TLE_SP_AGOM: i32 =  4;
   
   pub static XA_TLE_SIZE: i32 = 64;
   
   // Indexes of TLE text data in an array of chars
   // Security classification of line 1 and line 2
   pub static XS_TLE_SECCLASS_1: i32 =  0;
   // Satellite name
   pub static XS_TLE_SATNAME_12: i32 =  1;
   // Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   pub static XS_TLE_OBJTYPE_11: i32 = 13;
   
   pub static XS_TLE_SIZE: i32 = 512;
   
   // TLE's text data fields - new convention (start index, string length)
   // Security classification of line 1 and line 2
   pub static XS_TLE_SECCLASS_0_1: i32 =  0;
   // Satellite name
   pub static XS_TLE_SATNAME_1_12: i32 =  1;
   // Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   pub static XS_TLE_OBJTYPE_13_1: i32 = 13;
   
   pub static XS_TLE_LENGTH: i32 = 512;
   
   // Indexes of different TLE file's formats
   // Original TLE format
   pub static XF_TLEFORM_ORG: i32 =  0;
   // CSV format
   pub static XF_TLEFORM_CSV: i32 =  1;
   
   
// ========================= End of auto generated code ==========================
