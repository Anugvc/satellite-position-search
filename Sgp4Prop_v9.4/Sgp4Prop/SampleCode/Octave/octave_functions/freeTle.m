% This wrapper file was generated automatically by the GenDllWrappers program.
function freeTle()   
   % TLE types (TLE ephemeris types) - They are different than ELTTYPE
   % TLE SGP elset (Kozai mean motion)
   global TLETYPE_SGP;
   % TLE SGP4 elset (Brouwer mean motion)
   global TLETYPE_SGP4;
   % TLE SGP4-XP elset (Brouwer mean motion)
   global TLETYPE_XP;
   % TLE SP elset (osculating elements)
   global TLETYPE_SP;
   
   % Indexes of TLE data fields
   % Satellite number
   global XF_TLE_SATNUM;
   % Security classification U: unclass, C: confidential, S: Secret
   global XF_TLE_CLASS;
   % Satellite name A8
   global XF_TLE_SATNAME;
   % Satellite's epoch time "YYYYJJJ.jjjjjjjj"
   global XF_TLE_EPOCH;
   % GP B* drag term (1/er)  (not the same as XF_TLE_BTERM)
   global XF_TLE_BSTAR;
   % Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   global XF_TLE_EPHTYPE;
   % Element set number
   global XF_TLE_ELSETNUM;
   % Orbit inclination (deg)
   global XF_TLE_INCLI;
   % Right ascension of asending node (deg)
   global XF_TLE_NODE;
   % Eccentricity
   global XF_TLE_ECCEN;
   % Argument of perigee (deg)
   global XF_TLE_OMEGA;
   % Mean anomaly (deg)
   global XF_TLE_MNANOM;
   % Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
   global XF_TLE_MNMOTN;
   % Revolution number at epoch
   global XF_TLE_REVNUM;
   
   % GP Mean motion derivative (rev/day /2)
   global XF_TLE_NDOT;
   % GP Mean motion second derivative (rev/day**2 /6)
   global XF_TLE_NDOTDOT;
   % Solar radiation pressure GP (m2/kg)
   global XF_TLE_AGOMGP;
   
   % SP Radiation Pressure Coefficient
   global XF_TLE_SP_AGOM;
   % SP ballistic coefficient (m2/kg)
   global XF_TLE_SP_BTERM;
   % SP outgassing parameter (km/s2)
   global XF_TLE_SP_OGPARM;
   
   % Original satellite number
   global XF_TLE_ORGSATNUM;
   % GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
   global XF_TLE_BTERM;
   % Time of last observation relative to epoch +/- fractional days
   global XF_TLE_OBSTIME;
   % Last calculated error growth rate (km/day)
   global XF_TLE_EGR;
   % Last calculated energy dissipation rate (w/kg)
   global XF_TLE_EDR;
   % Median Vismag
   global XF_TLE_VISMAG;
   % Median RCS - diameter in centimeters (cm)
   global XF_TLE_RCS;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
   global XF_TLE_OBJTYPE;
   % Satellite name A12 (upto 12 character long)
   global XF_TLE_SATNAME_12;
   
   
   % Indexes of TLE numerical data in an array
   % Line 1
   % Satellite number
   global XA_TLE_SATNUM;
   % Satellite's epoch time in DS50UTC
   global XA_TLE_EPOCH;
   % GP Mean motion derivative (rev/day /2)
   global XA_TLE_NDOT;
   % GP Mean motion second derivative (rev/day**2 /6)
   global XA_TLE_NDOTDOT;
   % GP B* drag term (1/er)
   global XA_TLE_BSTAR;
   % Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   global XA_TLE_EPHTYPE;
   
   % Line 2
   % Orbit inclination (deg)
   global XA_TLE_INCLI;
   % Right ascension of asending node (deg)
   global XA_TLE_NODE;
   % Eccentricity
   global XA_TLE_ECCEN;
   % Argument of perigee (deg)
   global XA_TLE_OMEGA;
   % Mean anomaly (deg)
   global XA_TLE_MNANOM;
   % Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
   global XA_TLE_MNMOTN;
   % Revolution number at epoch
   global XA_TLE_REVNUM;
   % Element set number
   global XA_TLE_ELSETNUM;
   
   % CSV (or TLE-XP, ephemType=4) specific fields
   % Original satellite number
   global XA_TLE_ORGSATNUM;
   % SP/SGP4-XP ballistic coefficient (m2/kg)
   global XA_TLE_BTERM;
   % Time of last observation relative to epoch +/- fractional days
   global XA_TLE_OBSTIME;
   % Last calculated error growth rate (km/day)
   global XA_TLE_EGR;
   % Last calculated energy dissipation rate (w/kg)
   global XA_TLE_EDR;
   % Median Vismag
   global XA_TLE_VISMAG;
   % Median RCS - diameter in centimeters (cm)
   global XA_TLE_RCS;
   
   % CSV (or TLE-XP, ephemType=4)
   % Solar Radiation Pressure Coefficient GP (m2/kg)
   global XA_TLE_AGOMGP;
   
   
   % SP specific fields
   % SP ballistic coefficient (m2/kg)
   global XA_TLE_SP_BTERM;
   % SP outgassing parameter (km/s2)
   global XA_TLE_SP_OGPARM;
   % SP Radiation Pressure Coefficient
   global XA_TLE_SP_AGOM;
   
   global XA_TLE_SIZE;
   
   % Indexes of TLE text data in an array of chars
   % Security classification of line 1 and line 2
   global XS_TLE_SECCLASS_1;
   % Satellite name
   global XS_TLE_SATNAME_12;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   global XS_TLE_OBJTYPE_11;
   
   global XS_TLE_SIZE;
   
   % TLE's text data fields - new convention (start index, string length)
   % Security classification of line 1 and line 2
   global XS_TLE_SECCLASS_0_1;
   % Satellite name
   global XS_TLE_SATNAME_1_12;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   global XS_TLE_OBJTYPE_13_1;
   
   global XS_TLE_LENGTH;
   
   % Indexes of different TLE file's formats
   % Original TLE format
   global XF_TLEFORM_ORG;
   % CSV format
   global XF_TLEFORM_CSV;
   
   
   
   % TLE types (TLE ephemeris types) - They are different than ELTTYPE
   % TLE SGP elset (Kozai mean motion)
   clear TLETYPE_SGP;
   % TLE SGP4 elset (Brouwer mean motion)
   clear TLETYPE_SGP4;
   % TLE SGP4-XP elset (Brouwer mean motion)
   clear TLETYPE_XP;
   % TLE SP elset (osculating elements)
   clear TLETYPE_SP;
   
   % Indexes of TLE data fields
   % Satellite number
   clear XF_TLE_SATNUM;
   % Security classification U: unclass, C: confidential, S: Secret
   clear XF_TLE_CLASS;
   % Satellite name A8
   clear XF_TLE_SATNAME;
   % Satellite's epoch time "YYYYJJJ.jjjjjjjj"
   clear XF_TLE_EPOCH;
   % GP B* drag term (1/er)  (not the same as XF_TLE_BTERM)
   clear XF_TLE_BSTAR;
   % Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   clear XF_TLE_EPHTYPE;
   % Element set number
   clear XF_TLE_ELSETNUM;
   % Orbit inclination (deg)
   clear XF_TLE_INCLI;
   % Right ascension of asending node (deg)
   clear XF_TLE_NODE;
   % Eccentricity
   clear XF_TLE_ECCEN;
   % Argument of perigee (deg)
   clear XF_TLE_OMEGA;
   % Mean anomaly (deg)
   clear XF_TLE_MNANOM;
   % Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
   clear XF_TLE_MNMOTN;
   % Revolution number at epoch
   clear XF_TLE_REVNUM;
   
   % GP Mean motion derivative (rev/day /2)
   clear XF_TLE_NDOT;
   % GP Mean motion second derivative (rev/day**2 /6)
   clear XF_TLE_NDOTDOT;
   % Solar radiation pressure GP (m2/kg)
   clear XF_TLE_AGOMGP;
   
   % SP Radiation Pressure Coefficient
   clear XF_TLE_SP_AGOM;
   % SP ballistic coefficient (m2/kg)
   clear XF_TLE_SP_BTERM;
   % SP outgassing parameter (km/s2)
   clear XF_TLE_SP_OGPARM;
   
   % Original satellite number
   clear XF_TLE_ORGSATNUM;
   % GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
   clear XF_TLE_BTERM;
   % Time of last observation relative to epoch +/- fractional days
   clear XF_TLE_OBSTIME;
   % Last calculated error growth rate (km/day)
   clear XF_TLE_EGR;
   % Last calculated energy dissipation rate (w/kg)
   clear XF_TLE_EDR;
   % Median Vismag
   clear XF_TLE_VISMAG;
   % Median RCS - diameter in centimeters (cm)
   clear XF_TLE_RCS;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
   clear XF_TLE_OBJTYPE;
   % Satellite name A12 (upto 12 character long)
   clear XF_TLE_SATNAME_12;
   
   
   % Indexes of TLE numerical data in an array
   % Line 1
   % Satellite number
   clear XA_TLE_SATNUM;
   % Satellite's epoch time in DS50UTC
   clear XA_TLE_EPOCH;
   % GP Mean motion derivative (rev/day /2)
   clear XA_TLE_NDOT;
   % GP Mean motion second derivative (rev/day**2 /6)
   clear XA_TLE_NDOTDOT;
   % GP B* drag term (1/er)
   clear XA_TLE_BSTAR;
   % Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   clear XA_TLE_EPHTYPE;
   
   % Line 2
   % Orbit inclination (deg)
   clear XA_TLE_INCLI;
   % Right ascension of asending node (deg)
   clear XA_TLE_NODE;
   % Eccentricity
   clear XA_TLE_ECCEN;
   % Argument of perigee (deg)
   clear XA_TLE_OMEGA;
   % Mean anomaly (deg)
   clear XA_TLE_MNANOM;
   % Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
   clear XA_TLE_MNMOTN;
   % Revolution number at epoch
   clear XA_TLE_REVNUM;
   % Element set number
   clear XA_TLE_ELSETNUM;
   
   % CSV (or TLE-XP, ephemType=4) specific fields
   % Original satellite number
   clear XA_TLE_ORGSATNUM;
   % SP/SGP4-XP ballistic coefficient (m2/kg)
   clear XA_TLE_BTERM;
   % Time of last observation relative to epoch +/- fractional days
   clear XA_TLE_OBSTIME;
   % Last calculated error growth rate (km/day)
   clear XA_TLE_EGR;
   % Last calculated energy dissipation rate (w/kg)
   clear XA_TLE_EDR;
   % Median Vismag
   clear XA_TLE_VISMAG;
   % Median RCS - diameter in centimeters (cm)
   clear XA_TLE_RCS;
   
   % CSV (or TLE-XP, ephemType=4)
   % Solar Radiation Pressure Coefficient GP (m2/kg)
   clear XA_TLE_AGOMGP;
   
   
   % SP specific fields
   % SP ballistic coefficient (m2/kg)
   clear XA_TLE_SP_BTERM;
   % SP outgassing parameter (km/s2)
   clear XA_TLE_SP_OGPARM;
   % SP Radiation Pressure Coefficient
   clear XA_TLE_SP_AGOM;
   
   clear XA_TLE_SIZE;
   
   % Indexes of TLE text data in an array of chars
   % Security classification of line 1 and line 2
   clear XS_TLE_SECCLASS_1;
   % Satellite name
   clear XS_TLE_SATNAME_12;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   clear XS_TLE_OBJTYPE_11;
   
   clear XS_TLE_SIZE;
   
   % TLE's text data fields - new convention (start index, string length)
   % Security classification of line 1 and line 2
   clear XS_TLE_SECCLASS_0_1;
   % Satellite name
   clear XS_TLE_SATNAME_1_12;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   clear XS_TLE_OBJTYPE_13_1;
   
   clear XS_TLE_LENGTH;
   
   % Indexes of different TLE file's formats
   % Original TLE format
   clear XF_TLEFORM_ORG;
   % CSV format
   clear XF_TLEFORM_CSV;
   
   
   FreeTleDll;
   clear LoadTleDll;
   clear FreeTleDll;
   
   %  Notes: This function has been deprecated since v9.0.    
   %  Initializes Tle DLL for use in the program.
   %  If this function returns an error, it is recommended that you stop the program immediately.
   %  
   %  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   clear TleInit
   
   %  Returns the information about the Tle DLL.
   %  The returned string provides information about the version number, build date, and the platform of the Tle DLL. 
   clear TleGetInfo
   
   %  Loads TLEs (satellites) contained in a text file into the TLE DLL's binary tree.
   %  You may use this function repeatedly to load TLEs from different input files. However, only unique satKeys are loaded. Duplicated TLEs won't be stored. 
   %  
   %  TLEs can be included directly in the specified file, or they can be read from a separate file identified with "ELTFIL=[path\filename]" or "VECFIL=[path\filename]".
   %  
   %  The input file is read in two passes. The function first looks for "ELTFIL=" and "VECFIL=" lines, then it looks for TLEs which were included directly. The result of this is that data entered using both methods will be processed, but the "ELTFIL=" and "VECFIL=" data will be processed first.
   clear TleLoadFile
   
   %  Saves currently loaded TLEs to a file. 
   %  In append mode, if the specified file does not exist it will be created.
   %  If you call this routine immediately after TleLoadFile(), the TLE contents in the two files should be the same (minus duplicated TLE's or bad TLE's).
   %  
   %  The purpose of this function is to save the current state of the loaded TLE's, usually used in GUI applications, for future use.
   clear TleSaveFile
   
   %  Removes a TLE represented by the satKey from memory. 
   %  If the users enter an invalid satKey (a non-existing satKey), the function will return a non-zero value indicating an error.
   clear TleRemoveSat
   
   %  Removes all the TLEs from memory.
   clear TleRemoveAllSats
   
   %  Returns the number of TLEs currently loaded. 
   %  See TleGetLoaded for an example.
   %  This function is useful for dynamically allocating memory for the array that is passed to the function TleGetLoaded().
   clear TleGetCount
   
   %  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the TLE's.
   %  It is recommended that TleGetCount() be  used to determine how many satellites are currently loaded. This value can then be used to dynamically allocate an array to hold the satKeys.
   %  
   %  If you are going to pass a statically allocated array to this function, ensure it is large enough to hold all of the returned satKeys.
   clear TleGetLoaded
   
   %  Adds a TLE (satellite), using its directly specified first and second lines. 
   %  The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
   %  
   %  This function can be called repeatedly to add many TLEs, one at a time.
   clear TleAddSatFrLines
   
   %  This function is similar to TleAddSatFrLines but designed to be used in Matlab.
   %  Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrLines. This method is an alternative way to return the satKey output.
   clear TleAddSatFrLinesML
   
   %  Adds a TLE (satellite), using its CSV string format. 
   clear TleAddSatFrCsv
   
   %  This function is similar to TleAddSatFrCsv but designed to be used in Matlab.
   clear TleAddSatFrCsvML
   
   %  Adds a GP TLE using its individually provided field values. 
   %  The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
   %  
   %  This function can be called repeatedly to add many satellites (one satellite at a time).
   %  
   %  SGP satellites (ephType = 0) use Kozai mean motion. SGP4 satellites (ephType = 2) use Brouwer mean motion.
   clear TleAddSatFrFieldsGP
   
   %  This function is similar to TleAddSatFrFieldsGP but includes nDotO2 and n2DotO6. 
   %  nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   clear TleAddSatFrFieldsGP2
   
   %  This function is similar to TleAddSatFrFieldsGP2 but designed to be used in Matlab. 
   %  Matlab doesn't seem to correctly return the 19-digit satellite key using TleAddSatFrFieldsGP2. This method is an alternative way to return the satKey output.
   clear TleAddSatFrFieldsGP2ML
   
   %  Updates a GP satellite's data in memory by providing its individual field values. Note: satNum, year, day, and ephtype can't be updated.
   %  The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded satellite, the function will indicate an error.
   %  
   %  Remember to use the correct mean motion depending on the satellite's ephType.
   clear TleUpdateSatFrFieldsGP
   
   %  This function is similar to TleUpdateSatFrFieldsGP but includes nDotO2 and n2DotO6. Note: satNum, year, day, and ephtype can't be updated.
   %  nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   clear TleUpdateSatFrFieldsGP2
   
   %  Adds an SP satellite using the individually provided field values.
   %  Only applies to SP propagator.
   clear TleAddSatFrFieldsSP
   
   %  This function is similar to TleAddSatFrFieldsSP but designed to be used in Matlab.
   %  Only applies to SP propagator.
   %  Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrFieldsSP. This method is an alternative way to return the satKey output.
   clear TleAddSatFrFieldsSPML
   
   %  Updates an SP satellite's data in memory using its individually provided field values. Note: satNum, year, day, and ephtype can't be updated.
   %  Only applies to SP propagator.
   %  The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded TLE, the function will indicate an error. 
   clear TleUpdateSatFrFieldsSP
   
   %  Updates the value of a field of a TLE. This function can be used for both GP and SP satellites.
   %  <br>
   %  The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
   %  satNum (1), Epoch (4), and Ephemeris Type (5) cannot be altered.
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  	<td>index</td>
   %  	<td>index Interpretation</td>
   %  </tr>
   %  <tr><td>1</td><td>Satellite number</td></tr>
   %  <tr><td>2</td><td>Security classification</td></tr>
   %  <tr><td>3</td><td>Satellite international designator</td></tr>
   %  <tr><td>4</td><td>Epoch</td></tr>
   %  <tr><td>5</td><td>Ephemeris type = 0,2: B* drag term (1/er) <br>Ephemeris type = 6   : SP radiation pressure
   %  coefficient agom (m2/kg)</td></tr>
   %  <tr><td>6</td><td>Ephemeris type</td></tr>
   %  <tr><td>7</td><td>Element set number</td></tr>
   %  <tr><td>8</td><td>Orbit inclination (degrees)</td></tr>
   %  <tr><td>9</td><td>Right ascension of ascending node (degrees)</td></tr>
   %  <tr><td>10</td><td>Eccentricity</td></tr>
   %  <tr><td>11</td><td>Argument of perigee (degrees)</td></tr>
   %  <tr><td>12</td><td>Mean anomaly (degrees)</td></tr>
   %  <tr><td>13</td><td>Mean motion (rev/day)</td></tr>
   %  <tr><td>14</td><td>Revolution number at epoch</td></tr>
   %  <tr><td>15</td><td>Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or <br>Ephemeris type = 6: SP
   %  ballistic coefficient (m2/kg)</td></tr>
   %  <tr><td>16</td><td>Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or <br>Ephemeris type = 6:
   %  SP Outgassing parameter/Thrust Acceleration (km/s2)</td></tr>
   %  </table>
   clear TleSetField
   
   %  Retrieves the value of a specific field of a TLE. 
   %  <br>
   %  The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  	<td>index</td>
   %  	<td>index Interpretation</td>
   %  </tr>
   %  <tr><td>1</td><td>Satellite number</td></tr>
   %  <tr><td>2</td><td>Security classification</td></tr>
   %  <tr><td>3</td><td>Satellite international designator</td></tr>
   %  <tr><td>4</td><td>Epoch</td></tr>
   %  <tr><td>5</td><td>Ephemeris type = 0,2: B* drag term (1/er) <br>Ephemeris type = 6   : SP radiation pressure
   %  coefficient agom (m2/kg)</td></tr>
   %  <tr><td>6</td><td>Ephemeris type</td></tr>
   %  <tr><td>7</td><td>Element set number</td></tr>
   %  <tr><td>8</td><td>Orbit inclination (degrees)</td></tr>
   %  <tr><td>9</td><td>Right ascension of ascending node (degrees)</td></tr>
   %  <tr><td>10</td><td>Eccentricity</td></tr>
   %  <tr><td>11</td><td>Argument of perigee (degrees)</td></tr>
   %  <tr><td>12</td><td>Mean anomaly (degrees)</td></tr>
   %  <tr><td>13</td><td>Mean motion (rev/day)</td></tr>
   %  <tr><td>14</td><td>Revolution number at epoch</td></tr>
   %  <tr><td>15</td><td>Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or <br>Ephemeris type = 6: SP
   %  ballistic coefficient (m2/kg)</td></tr>
   %  <tr><td>16</td><td>Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or <br>Ephemeris type = 6:
   %  SP Outgassing parameter/Thrust Acceleration (km/s2)</td></tr>
   %  </table>
   clear TleGetField
   
   %  Retrieves all of the data for a GP satellite in a single function call. 
   %  This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
   clear TleGetAllFieldsGP
   
   %  Retrieves all of the data (including nDotO2 and n2DotO6) for a GP satellite in a single function call. 
   %  This function is similar to TleGetAllFieldsGP but also includes nDotO2 and n2DotO6. 
   %  This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
   clear TleGetAllFieldsGP2
   
   %  Retrieves all of the data for an SP satellite in a single function call.
   %  Only applies to SP propagator.
   %  This function only works for SP satellites. The field values are placed in the corresponding parameters of the function. 
   clear TleGetAllFieldsSP
   
   %  Parses GP data from the input first and second lines of a two line element set or a CSV Tle.
   %  This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   clear TleParseGP
   
   %  Parses GP data from the input first and second lines of a two line element set or a CSV tle and store that data back into the output parameters.
   %  This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   clear TleLinesToArray
   
   %  Parses SP data from the input first and second lines of a two line element set.
   %  Only applies to SP propagator.
   %  This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   clear TleParseSP
   
   %  Returns the first and second lines representation of a TLE of a satellite. 
   clear TleGetLines
   
   %  Returns the CSV string representation of a TLE of a satellite. 
   clear TleGetCsv
   
   %  Constructs a TLE from individually provided GP data fields.
   %  This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   clear TleGPFieldsToLines
   
   %  Constructs a TLE from individually provided GP data fields.
   %  This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   clear TleGPFieldsToCsv
   
   %  Constructs a TLE from GP data stored in the input parameters.
   %  This function only parses data from the input data but DOES NOT load/add the TLE to memory.
   %  <br>
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   clear TleGPArrayToLines
   
   %  Constructs a TLE from GP data stored in the input parameters.
   %  This function only parses data from the input data but DOES NOT load/add the TLE to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   clear TleGPArrayToCsv
   
   %  Constructs a TLE from individually provided SP data fields.
   %  Only applies to SP propagator.
   %  This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   clear TleSPFieldsToLines
   
   %  Returns the first satKey from the currently loaded set of TLEs that contains the specified satellite number.
   %  This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
   %  A negative value will be returned if there is an error.
   clear TleGetSatKey
   
   %  This function is similar to TleGetSatKey but designed to be used in Matlab. 
   %  Matlab doesn't correctly return the 19-digit satellite key using TleGetSatKey. This method is an alternative way to return the satKey output.
   %  This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
   %  A negative value will be returned in satKey if there is an error.
   clear TleGetSatKeyML
   
   %  Computes a satKey from the input data.
   %  There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
   %  
   %  This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different. 
   %  A negative value will be returned if there is an error.
   clear TleFieldsToSatKey
   
   %  This function is similar to TleFieldsToSatKey but designed to be used in Matlab. 
   %  Matlab doesn't correctly return the 19-digit satellite key using TleFieldsToSatKey. This method is an alternative way to return the satKey output.
   %  There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
   %  
   %  This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different.
   %  A negative value will be returned in satKey if there is an error.
   clear TleFieldsToSatKeyML
   
   %  Adds a TLE (satellite), using its data stored in the input parameters.
   clear TleAddSatFrArray
   
   %  This function is similar to TleAddSatFrArray but designed to be used in Matlab. 
   clear TleAddSatFrArrayML
   
   %  Updates existing TLE data with the provided new data stored in the input parameters. Note: satNum, year, day, and ephtype can't be updated.
   %  nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   clear TleUpdateSatFrArray
   
   %  Retrieves TLE data and stored it in the passing parameters
   clear TleDataToArray
   
   %  Converts TLE two line format to CSV format
   clear TleLinesToCsv
   
   %  Converts TLE CSV format to two line format
   clear TleCsvToLines
   
   %  Sets TLE key mode - This function was deprecated, please use DllMain/SetElsetKeyMode() instead
   clear SetTleKeyMode
   
   %  Gets current TLE key mode - This function was deprecated, please use DllMain/GetElsetKeyMode() instead
   clear GetTleKeyMode
   
   %  Finds the check sums of TLE lines
   clear GetCheckSums
endfunction
% ========================= End of auto generated code ==========================
