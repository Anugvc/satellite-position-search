// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0.    
// Initializes Tle DLL for use in the program.
// If this function returns an error, it is recommended that you stop the program immediately.
// 
// An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
int TleInit(long apAddr);

// Returns the information about the Tle DLL.
// The returned string provides information about the version number, build date, and the platform of the Tle DLL. 
void TleGetInfo(char infoStr[128]);

// Loads TLEs (satellites) contained in a text file into the TLE DLL's binary tree.
// You may use this function repeatedly to load TLEs from different input files. However, only unique satKeys are loaded. Duplicated TLEs won't be stored. 
// 
// TLEs can be included directly in the specified file, or they can be read from a separate file identified with "ELTFIL=[path\filename]" or "VECFIL=[path\filename]".
// 
// The input file is read in two passes. The function first looks for "ELTFIL=" and "VECFIL=" lines, then it looks for TLEs which were included directly. The result of this is that data entered using both methods will be processed, but the "ELTFIL=" and "VECFIL=" data will be processed first.
int TleLoadFile(char tleFile[512]);

// Saves currently loaded TLEs to a file. 
// In append mode, if the specified file does not exist it will be created.
// If you call this routine immediately after TleLoadFile(), the TLE contents in the two files should be the same (minus duplicated TLE's or bad TLE's).
// 
// The purpose of this function is to save the current state of the loaded TLE's, usually used in GUI applications, for future use.
int TleSaveFile(char tleFile[512], int saveMode, int xf_tleForm);

// Removes a TLE represented by the satKey from memory. 
// If the users enter an invalid satKey (a non-existing satKey), the function will return a non-zero value indicating an error.
int TleRemoveSat(long satKey);

// Removes all the TLEs from memory.
int TleRemoveAllSats();

// Returns the number of TLEs currently loaded. 
// See TleGetLoaded for an example.
// This function is useful for dynamically allocating memory for the array that is passed to the function TleGetLoaded().
int TleGetCount();

// Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the TLE's.
// It is recommended that TleGetCount() be  used to determine how many satellites are currently loaded. This value can then be used to dynamically allocate an array to hold the satKeys.
// 
// If you are going to pass a statically allocated array to this function, ensure it is large enough to hold all of the returned satKeys.
void TleGetLoaded(int order, long satKeys[]);

// Adds a TLE (satellite), using its directly specified first and second lines. 
// The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
// 
// This function can be called repeatedly to add many TLEs, one at a time.
long TleAddSatFrLines(char line1[512], char line2[512]);

// This function is similar to TleAddSatFrLines but designed to be used in Matlab.
// Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrLines. This method is an alternative way to return the satKey output.
void TleAddSatFrLinesML(char line1[512], char line2[512], long* satKey);

// Adds a TLE (satellite), using its CSV string format. 
long TleAddSatFrCsv(char csvLine[512]);

// This function is similar to TleAddSatFrCsv but designed to be used in Matlab.
void TleAddSatFrCsvML(char csvLine[512], long* satKey);

// Adds a GP TLE using its individually provided field values. 
// The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
// 
// This function can be called repeatedly to add many satellites (one satellite at a time).
// 
// SGP satellites (ephType = 0) use Kozai mean motion. SGP4 satellites (ephType = 2) use Brouwer mean motion.
long TleAddSatFrFieldsGP(int satNum, char secClass, char satName[8], int epochYr, double epochDays, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum);

// This function is similar to TleAddSatFrFieldsGP but includes nDotO2 and n2DotO6. 
// nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
long TleAddSatFrFieldsGP2(int satNum, char secClass, char satName[8], int epochYr, double epochDays, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, double nDotO2, double n2DotO6);

// This function is similar to TleAddSatFrFieldsGP2 but designed to be used in Matlab. 
// Matlab doesn't seem to correctly return the 19-digit satellite key using TleAddSatFrFieldsGP2. This method is an alternative way to return the satKey output.
void TleAddSatFrFieldsGP2ML(int satNum, char secClass, char satName[8], int epochYr, double epochDays, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, double nDotO2, double n2DotO6, long* satKey);

// Updates a GP satellite's data in memory by providing its individual field values. Note: satNum, year, day, and ephtype can't be updated.
// The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded satellite, the function will indicate an error.
// 
// Remember to use the correct mean motion depending on the satellite's ephType.
int TleUpdateSatFrFieldsGP(long satKey, char secClass, char satName[8], double bstar, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum);

// This function is similar to TleUpdateSatFrFieldsGP but includes nDotO2 and n2DotO6. Note: satNum, year, day, and ephtype can't be updated.
// nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
int TleUpdateSatFrFieldsGP2(long satKey, char secClass, char satName[8], double bstar, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, double nDotO2, double n2DotO6);

// Adds an SP satellite using the individually provided field values.
// Only applies to SP propagator.
long TleAddSatFrFieldsSP(int satNum, char secClass, char satName[8], int epochYr, double epochDays, double bTerm, double ogParm, double agom, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum);

// This function is similar to TleAddSatFrFieldsSP but designed to be used in Matlab.
// Only applies to SP propagator.
// Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrFieldsSP. This method is an alternative way to return the satKey output.
void TleAddSatFrFieldsSPML(int satNum, char secClass, char satName[8], int epochYr, double epochDays, double bTerm, double ogParm, double agom, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, long* satKey);

// Updates an SP satellite's data in memory using its individually provided field values. Note: satNum, year, day, and ephtype can't be updated.
// Only applies to SP propagator.
// The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded TLE, the function will indicate an error. 
int TleUpdateSatFrFieldsSP(long satKey, char secClass, char satName[8], double bterm, double ogParm, double agom, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum);

// Updates the value of a field of a TLE. This function can be used for both GP and SP satellites.
// <br>
// The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
// satNum (1), Epoch (4), and Ephemeris Type (5) cannot be altered.
// <table>
// <caption>table</caption>
// <tr>
// 	<td>index</td>
// 	<td>index Interpretation</td>
// </tr>
// <tr><td>1</td><td>Satellite number</td></tr>
// <tr><td>2</td><td>Security classification</td></tr>
// <tr><td>3</td><td>Satellite international designator</td></tr>
// <tr><td>4</td><td>Epoch</td></tr>
// <tr><td>5</td><td>Ephemeris type = 0,2: B* drag term (1/er) <br>Ephemeris type = 6   : SP radiation pressure
// coefficient agom (m2/kg)</td></tr>
// <tr><td>6</td><td>Ephemeris type</td></tr>
// <tr><td>7</td><td>Element set number</td></tr>
// <tr><td>8</td><td>Orbit inclination (degrees)</td></tr>
// <tr><td>9</td><td>Right ascension of ascending node (degrees)</td></tr>
// <tr><td>10</td><td>Eccentricity</td></tr>
// <tr><td>11</td><td>Argument of perigee (degrees)</td></tr>
// <tr><td>12</td><td>Mean anomaly (degrees)</td></tr>
// <tr><td>13</td><td>Mean motion (rev/day)</td></tr>
// <tr><td>14</td><td>Revolution number at epoch</td></tr>
// <tr><td>15</td><td>Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or <br>Ephemeris type = 6: SP
// ballistic coefficient (m2/kg)</td></tr>
// <tr><td>16</td><td>Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or <br>Ephemeris type = 6:
// SP Outgassing parameter/Thrust Acceleration (km/s2)</td></tr>
// </table>
int TleSetField(long satKey, int xf_Tle, char valueStr[512]);

// Retrieves the value of a specific field of a TLE. 
// <br>
// The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
// <table>
// <caption>table</caption>
// <tr>
// 	<td>index</td>
// 	<td>index Interpretation</td>
// </tr>
// <tr><td>1</td><td>Satellite number</td></tr>
// <tr><td>2</td><td>Security classification</td></tr>
// <tr><td>3</td><td>Satellite international designator</td></tr>
// <tr><td>4</td><td>Epoch</td></tr>
// <tr><td>5</td><td>Ephemeris type = 0,2: B* drag term (1/er) <br>Ephemeris type = 6   : SP radiation pressure
// coefficient agom (m2/kg)</td></tr>
// <tr><td>6</td><td>Ephemeris type</td></tr>
// <tr><td>7</td><td>Element set number</td></tr>
// <tr><td>8</td><td>Orbit inclination (degrees)</td></tr>
// <tr><td>9</td><td>Right ascension of ascending node (degrees)</td></tr>
// <tr><td>10</td><td>Eccentricity</td></tr>
// <tr><td>11</td><td>Argument of perigee (degrees)</td></tr>
// <tr><td>12</td><td>Mean anomaly (degrees)</td></tr>
// <tr><td>13</td><td>Mean motion (rev/day)</td></tr>
// <tr><td>14</td><td>Revolution number at epoch</td></tr>
// <tr><td>15</td><td>Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or <br>Ephemeris type = 6: SP
// ballistic coefficient (m2/kg)</td></tr>
// <tr><td>16</td><td>Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or <br>Ephemeris type = 6:
// SP Outgassing parameter/Thrust Acceleration (km/s2)</td></tr>
// </table>
int TleGetField(long satKey, int xf_Tle, char valueStr[512]);

// Retrieves all of the data for a GP satellite in a single function call. 
// This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
int TleGetAllFieldsGP(long satKey, int* satNum, char secClass[1], char satName[8], int* epochYr, double* epochDays, double* bstar, int* ephType, int* elsetNum, double* incli, double* node, double* eccen, double* omega, double* mnAnomaly, double* mnMotion, int* revNum);

// Retrieves all of the data (including nDotO2 and n2DotO6) for a GP satellite in a single function call. 
// This function is similar to TleGetAllFieldsGP but also includes nDotO2 and n2DotO6. 
// This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
int TleGetAllFieldsGP2(long satKey, int* satNum, char secClass[1], char satName[8], int* epochYr, double* epochDays, double* bstar, int* ephType, int* elsetNum, double* incli, double* node, double* eccen, double* omega, double* mnAnomaly, double* mnMotion, int* revNum, double* nDotO2, double* n2DotO6);

// Retrieves all of the data for an SP satellite in a single function call.
// Only applies to SP propagator.
// This function only works for SP satellites. The field values are placed in the corresponding parameters of the function. 
int TleGetAllFieldsSP(long satKey, int* satNum, char secClass[1], char satName[8], int* epochYr, double* epochDays, double* bTerm, double* ogParm, double* agom, int* elsetNum, double* incli, double* node, double* eccen, double* omega, double* mnAnomaly, double* mnMotion, int* revNum);

// Parses GP data from the input first and second lines of a two line element set or a CSV Tle.
// This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
int TleParseGP(char line1[512], char line2[512], int* satNum, char secClass[1], char satName[8], int* epochYr, double* epochDays, double* nDotO2, double* n2DotO6, double* bstar, int* ephType, int* elsetNum, double* incli, double* node, double* eccen, double* omega, double* mnAnomaly, double* mnMotion, int* revNum);

// Parses GP data from the input first and second lines of a two line element set or a CSV tle and store that data back into the output parameters.
// This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
int TleLinesToArray(char line1[512], char line2[512], double xa_tle[64], char xs_tle[512]);

// Parses SP data from the input first and second lines of a two line element set.
// Only applies to SP propagator.
// This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
int TleParseSP(char line1[512], char line2[512], int* satNum, char secClass[1], char satName[8], int* epochYr, double* epochDays, double* bTerm, double* ogParm, double* agom, int* elsetNum, double* incli, double* node, double* eccen, double* omega, double* mnAnomaly, double* mnMotion, int* revNum);

// Returns the first and second lines representation of a TLE of a satellite. 
int TleGetLines(long satKey, char line1[512], char line2[512]);

// Returns the CSV string representation of a TLE of a satellite. 
int TleGetCsv(long satKey, char csvLine[512]);

// Constructs a TLE from individually provided GP data fields.
// This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
// Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
void TleGPFieldsToLines(int satNum, char secClass, char satName[8], int epochYr, double epochDays, double nDotO2, double n2DotO6, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, char line1[512], char line2[512]);

// Constructs a TLE from individually provided GP data fields.
// This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
// Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
void TleGPFieldsToCsv(int satNum, char secClass, char satName[8], int epochYr, double epochDays, double nDotO2, double n2DotO6, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, char csvLine[512]);

// Constructs a TLE from GP data stored in the input parameters.
// This function only parses data from the input data but DOES NOT load/add the TLE to memory.
// <br>
// Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
void TleGPArrayToLines(double xa_tle[64], char xs_tle[512], char line1[512], char line2[512]);

// Constructs a TLE from GP data stored in the input parameters.
// This function only parses data from the input data but DOES NOT load/add the TLE to memory.
// Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
void TleGPArrayToCsv(double xa_tle[64], char xs_tle[512], char csvline[512]);

// Constructs a TLE from individually provided SP data fields.
// Only applies to SP propagator.
// This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
// Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
void TleSPFieldsToLines(int satNum, char secClass, char satName[8], int epochYr, double epochDays, double bTerm, double ogParm, double agom, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, char line1[512], char line2[512]);

// Returns the first satKey from the currently loaded set of TLEs that contains the specified satellite number.
// This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
// A negative value will be returned if there is an error.
long TleGetSatKey(int satNum);

// This function is similar to TleGetSatKey but designed to be used in Matlab. 
// Matlab doesn't correctly return the 19-digit satellite key using TleGetSatKey. This method is an alternative way to return the satKey output.
// This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
// A negative value will be returned in satKey if there is an error.
void TleGetSatKeyML(int satNum, long* satKey);

// Computes a satKey from the input data.
// There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
// 
// This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different. 
// A negative value will be returned if there is an error.
long TleFieldsToSatKey(int satNum, int epochYr, double epochDays, int ephType);

// This function is similar to TleFieldsToSatKey but designed to be used in Matlab. 
// Matlab doesn't correctly return the 19-digit satellite key using TleFieldsToSatKey. This method is an alternative way to return the satKey output.
// There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
// 
// This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different.
// A negative value will be returned in satKey if there is an error.
void TleFieldsToSatKeyML(int satNum, int epochYr, double epochDays, int ephType, long* satKey);

// Adds a TLE (satellite), using its data stored in the input parameters.
long TleAddSatFrArray(double xa_tle[64], char xs_tle[512]);

// This function is similar to TleAddSatFrArray but designed to be used in Matlab. 
void TleAddSatFrArrayML(double xa_tle[64], char xs_tle[512], long* satKey);

// Updates existing TLE data with the provided new data stored in the input parameters. Note: satNum, year, day, and ephtype can't be updated.
// nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
int TleUpdateSatFrArray(long satKey, double xa_tle[64], char xs_tle[512]);

// Retrieves TLE data and stored it in the passing parameters
int TleDataToArray(long satKey, double xa_tle[64], char xs_tle[512]);

// Converts TLE two line format to CSV format
int TleLinesToCsv(char line1[512], char line2[512], char csvline[512]);

// Converts TLE CSV format to two line format
int TleCsvToLines(char csvLine[512], int newSatno, char line1[512], char line2[512]);

// Sets TLE key mode - This function was deprecated, please use DllMain/SetElsetKeyMode() instead
int SetTleKeyMode(int tle_keyMode);

// Gets current TLE key mode - This function was deprecated, please use DllMain/GetElsetKeyMode() instead
int GetTleKeyMode();

// Finds the check sums of TLE lines
void GetCheckSums(char line1[512], char line2[512], int* chkSum1, int* chkSum2, int* errCode);

// TLE types (TLE ephemeris types) - They are different than ELTTYPE
// TLE SGP elset (Kozai mean motion)
#define TLETYPE_SGP   0
// TLE SGP4 elset (Brouwer mean motion)
#define TLETYPE_SGP4  2
// TLE SGP4-XP elset (Brouwer mean motion)
#define TLETYPE_XP    4
// TLE SP elset (osculating elements)
#define TLETYPE_SP    6

// Indexes of TLE data fields
// Satellite number
#define XF_TLE_SATNUM       1
// Security classification U: unclass, C: confidential, S: Secret
#define XF_TLE_CLASS        2
// Satellite name A8
#define XF_TLE_SATNAME      3
// Satellite's epoch time "YYYYJJJ.jjjjjjjj"
#define XF_TLE_EPOCH        4
// GP B* drag term (1/er)  (not the same as XF_TLE_BTERM)
#define XF_TLE_BSTAR        5
// Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
#define XF_TLE_EPHTYPE      6
// Element set number
#define XF_TLE_ELSETNUM     7
// Orbit inclination (deg)
#define XF_TLE_INCLI        8
// Right ascension of asending node (deg)
#define XF_TLE_NODE         9
// Eccentricity
#define XF_TLE_ECCEN       10
// Argument of perigee (deg)
#define XF_TLE_OMEGA       11
// Mean anomaly (deg)
#define XF_TLE_MNANOM      12
// Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
#define XF_TLE_MNMOTN      13
// Revolution number at epoch
#define XF_TLE_REVNUM      14

// GP Mean motion derivative (rev/day /2)
#define XF_TLE_NDOT        15
// GP Mean motion second derivative (rev/day**2 /6)
#define XF_TLE_NDOTDOT     16
// Solar radiation pressure GP (m2/kg)
#define XF_TLE_AGOMGP      16

// SP Radiation Pressure Coefficient
#define XF_TLE_SP_AGOM      5
// SP ballistic coefficient (m2/kg)
#define XF_TLE_SP_BTERM    15
// SP outgassing parameter (km/s2)
#define XF_TLE_SP_OGPARM   16

// Original satellite number
#define XF_TLE_ORGSATNUM   17
// GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
#define XF_TLE_BTERM       18
// Time of last observation relative to epoch +/- fractional days
#define XF_TLE_OBSTIME     19
// Last calculated error growth rate (km/day)
#define XF_TLE_EGR         20
// Last calculated energy dissipation rate (w/kg)
#define XF_TLE_EDR         21
// Median Vismag
#define XF_TLE_VISMAG      22
// Median RCS - diameter in centimeters (cm)
#define XF_TLE_RCS         23
// Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
#define XF_TLE_OBJTYPE     24
// Satellite name A12 (upto 12 character long)
#define XF_TLE_SATNAME_12  25


// Indexes of TLE numerical data in an array
// Line 1
// Satellite number
#define XA_TLE_SATNUM          0
// Satellite's epoch time in DS50UTC
#define XA_TLE_EPOCH           1
// GP Mean motion derivative (rev/day /2)
#define XA_TLE_NDOT            2
// GP Mean motion second derivative (rev/day**2 /6)
#define XA_TLE_NDOTDOT         3
// GP B* drag term (1/er)
#define XA_TLE_BSTAR           4
// Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
#define XA_TLE_EPHTYPE         5

// Line 2
// Orbit inclination (deg)
#define XA_TLE_INCLI          20
// Right ascension of asending node (deg)
#define XA_TLE_NODE           21
// Eccentricity
#define XA_TLE_ECCEN          22
// Argument of perigee (deg)
#define XA_TLE_OMEGA          23
// Mean anomaly (deg)
#define XA_TLE_MNANOM         24
// Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
#define XA_TLE_MNMOTN         25
// Revolution number at epoch
#define XA_TLE_REVNUM         26
// Element set number
#define XA_TLE_ELSETNUM       30

// CSV (or TLE-XP, ephemType=4) specific fields
// Original satellite number
#define XA_TLE_ORGSATNUM      31
// SP/SGP4-XP ballistic coefficient (m2/kg)
#define XA_TLE_BTERM          32
// Time of last observation relative to epoch +/- fractional days
#define XA_TLE_OBSTIME        33
// Last calculated error growth rate (km/day)
#define XA_TLE_EGR            34
// Last calculated energy dissipation rate (w/kg)
#define XA_TLE_EDR            35
// Median Vismag
#define XA_TLE_VISMAG         36
// Median RCS - diameter in centimeters (cm)
#define XA_TLE_RCS            37

// CSV (or TLE-XP, ephemType=4)
// Solar Radiation Pressure Coefficient GP (m2/kg)
#define XA_TLE_AGOMGP         38


// SP specific fields
// SP ballistic coefficient (m2/kg)
#define XA_TLE_SP_BTERM        2
// SP outgassing parameter (km/s2)
#define XA_TLE_SP_OGPARM       3
// SP Radiation Pressure Coefficient
#define XA_TLE_SP_AGOM         4

#define XA_TLE_SIZE           64

// Indexes of TLE text data in an array of chars
// Security classification of line 1 and line 2
#define XS_TLE_SECCLASS_1     0
// Satellite name
#define XS_TLE_SATNAME_12     1
// Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
#define XS_TLE_OBJTYPE_11    13

#define XS_TLE_SIZE          512

// TLE's text data fields - new convention (start index, string length)
// Security classification of line 1 and line 2
#define XS_TLE_SECCLASS_0_1    0
// Satellite name
#define XS_TLE_SATNAME_1_12    1
// Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
#define XS_TLE_OBJTYPE_13_1   13

#define XS_TLE_LENGTH         512

// Indexes of different TLE file's formats
// Original TLE format
#define XF_TLEFORM_ORG      0
// CSV format
#define XF_TLEFORM_CSV      1


// ========================= End of auto generated code ==========================
