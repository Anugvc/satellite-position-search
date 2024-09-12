% This wrapper file was generated automatically by the GenDllWrappers program.
function loadTle(OctFilePath)   
   % TLE types (TLE ephemeris types) - They are different than ELTTYPE
   % TLE SGP elset (Kozai mean motion)
   global  TLETYPE_SGP;
   % TLE SGP4 elset (Brouwer mean motion)
   global  TLETYPE_SGP4;
   % TLE SGP4-XP elset (Brouwer mean motion)
   global  TLETYPE_XP;
   % TLE SP elset (osculating elements)
   global  TLETYPE_SP;
   
   % Indexes of TLE data fields
   % Satellite number
   global  XF_TLE_SATNUM;
   % Security classification U: unclass, C: confidential, S: Secret
   global  XF_TLE_CLASS;
   % Satellite name A8
   global  XF_TLE_SATNAME;
   % Satellite's epoch time "YYYYJJJ.jjjjjjjj"
   global  XF_TLE_EPOCH;
   % GP B* drag term (1/er)  (not the same as XF_TLE_BTERM)
   global  XF_TLE_BSTAR;
   % Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   global  XF_TLE_EPHTYPE;
   % Element set number
   global  XF_TLE_ELSETNUM;
   % Orbit inclination (deg)
   global  XF_TLE_INCLI;
   % Right ascension of asending node (deg)
   global  XF_TLE_NODE;
   % Eccentricity
   global  XF_TLE_ECCEN;
   % Argument of perigee (deg)
   global  XF_TLE_OMEGA;
   % Mean anomaly (deg)
   global  XF_TLE_MNANOM;
   % Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
   global  XF_TLE_MNMOTN;
   % Revolution number at epoch
   global  XF_TLE_REVNUM;
   
   % GP Mean motion derivative (rev/day /2)
   global  XF_TLE_NDOT;
   % GP Mean motion second derivative (rev/day**2 /6)
   global  XF_TLE_NDOTDOT;
   % Solar radiation pressure GP (m2/kg)
   global  XF_TLE_AGOMGP;
   
   % SP Radiation Pressure Coefficient
   global  XF_TLE_SP_AGOM;
   % SP ballistic coefficient (m2/kg)
   global  XF_TLE_SP_BTERM;
   % SP outgassing parameter (km/s2)
   global  XF_TLE_SP_OGPARM;
   
   % Original satellite number
   global  XF_TLE_ORGSATNUM;
   % GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
   global  XF_TLE_BTERM;
   % Time of last observation relative to epoch +/- fractional days
   global  XF_TLE_OBSTIME;
   % Last calculated error growth rate (km/day)
   global  XF_TLE_EGR;
   % Last calculated energy dissipation rate (w/kg)
   global  XF_TLE_EDR;
   % Median Vismag
   global  XF_TLE_VISMAG;
   % Median RCS - diameter in centimeters (cm)
   global  XF_TLE_RCS;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
   global  XF_TLE_OBJTYPE;
   % Satellite name A12 (upto 12 character long)
   global  XF_TLE_SATNAME_12;
   
   
   % Indexes of TLE numerical data in an array
   % Line 1
   % Satellite number
   global  XA_TLE_SATNUM;
   % Satellite's epoch time in DS50UTC
   global  XA_TLE_EPOCH;
   % GP Mean motion derivative (rev/day /2)
   global  XA_TLE_NDOT;
   % GP Mean motion second derivative (rev/day**2 /6)
   global  XA_TLE_NDOTDOT;
   % GP B* drag term (1/er)
   global  XA_TLE_BSTAR;
   % Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   global  XA_TLE_EPHTYPE;
   
   % Line 2
   % Orbit inclination (deg)
   global  XA_TLE_INCLI;
   % Right ascension of asending node (deg)
   global  XA_TLE_NODE;
   % Eccentricity
   global  XA_TLE_ECCEN;
   % Argument of perigee (deg)
   global  XA_TLE_OMEGA;
   % Mean anomaly (deg)
   global  XA_TLE_MNANOM;
   % Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
   global  XA_TLE_MNMOTN;
   % Revolution number at epoch
   global  XA_TLE_REVNUM;
   % Element set number
   global  XA_TLE_ELSETNUM;
   
   % CSV (or TLE-XP, ephemType=4) specific fields
   % Original satellite number
   global  XA_TLE_ORGSATNUM;
   % SP/SGP4-XP ballistic coefficient (m2/kg)
   global  XA_TLE_BTERM;
   % Time of last observation relative to epoch +/- fractional days
   global  XA_TLE_OBSTIME;
   % Last calculated error growth rate (km/day)
   global  XA_TLE_EGR;
   % Last calculated energy dissipation rate (w/kg)
   global  XA_TLE_EDR;
   % Median Vismag
   global  XA_TLE_VISMAG;
   % Median RCS - diameter in centimeters (cm)
   global  XA_TLE_RCS;
   
   % CSV (or TLE-XP, ephemType=4)
   % Solar Radiation Pressure Coefficient GP (m2/kg)
   global  XA_TLE_AGOMGP;
   
   
   % SP specific fields
   % SP ballistic coefficient (m2/kg)
   global  XA_TLE_SP_BTERM;
   % SP outgassing parameter (km/s2)
   global  XA_TLE_SP_OGPARM;
   % SP Radiation Pressure Coefficient
   global  XA_TLE_SP_AGOM;
   
   global  XA_TLE_SIZE
   
   % Indexes of TLE text data in an array of chars
   % Security classification of line 1 and line 2
   global  XS_TLE_SECCLASS_1;
   % Satellite name
   global  XS_TLE_SATNAME_12;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   global  XS_TLE_OBJTYPE_11;
   
   global  XS_TLE_SIZE
   
   % TLE's text data fields - new convention (start index, string length)
   % Security classification of line 1 and line 2
   global  XS_TLE_SECCLASS_0_1;
   % Satellite name
   global  XS_TLE_SATNAME_1_12;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   global  XS_TLE_OBJTYPE_13_1;
   
   global  XS_TLE_LENGTH
   
   % Indexes of different TLE file's formats
   % Original TLE format
   global  XF_TLEFORM_ORG;
   % CSV format
   global  XF_TLEFORM_CSV;
   
   
   
   % TLE types (TLE ephemeris types) - They are different than ELTTYPE
   % TLE SGP elset (Kozai mean motion)
   TLETYPE_SGP  = 0;
   % TLE SGP4 elset (Brouwer mean motion)
   TLETYPE_SGP4 = 2;
   % TLE SGP4-XP elset (Brouwer mean motion)
   TLETYPE_XP   = 4;
   % TLE SP elset (osculating elements)
   TLETYPE_SP   = 6;
   
   % Indexes of TLE data fields
   % Satellite number
   XF_TLE_SATNUM     =  1;
   % Security classification U: unclass, C: confidential, S: Secret
   XF_TLE_CLASS      =  2;
   % Satellite name A8
   XF_TLE_SATNAME    =  3;
   % Satellite's epoch time "YYYYJJJ.jjjjjjjj"
   XF_TLE_EPOCH      =  4;
   % GP B* drag term (1/er)  (not the same as XF_TLE_BTERM)
   XF_TLE_BSTAR      =  5;
   % Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   XF_TLE_EPHTYPE    =  6;
   % Element set number
   XF_TLE_ELSETNUM   =  7;
   % Orbit inclination (deg)
   XF_TLE_INCLI      =  8;
   % Right ascension of asending node (deg)
   XF_TLE_NODE       =  9;
   % Eccentricity
   XF_TLE_ECCEN      = 10;
   % Argument of perigee (deg)
   XF_TLE_OMEGA      = 11;
   % Mean anomaly (deg)
   XF_TLE_MNANOM     = 12;
   % Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
   XF_TLE_MNMOTN     = 13;
   % Revolution number at epoch
   XF_TLE_REVNUM     = 14;
   
   % GP Mean motion derivative (rev/day /2)
   XF_TLE_NDOT       = 15;
   % GP Mean motion second derivative (rev/day**2 /6)
   XF_TLE_NDOTDOT    = 16;
   % Solar radiation pressure GP (m2/kg)
   XF_TLE_AGOMGP     = 16;
   
   % SP Radiation Pressure Coefficient
   XF_TLE_SP_AGOM    =  5;
   % SP ballistic coefficient (m2/kg)
   XF_TLE_SP_BTERM   = 15;
   % SP outgassing parameter (km/s2)
   XF_TLE_SP_OGPARM  = 16;
   
   % Original satellite number
   XF_TLE_ORGSATNUM  = 17;
   % GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
   XF_TLE_BTERM      = 18;
   % Time of last observation relative to epoch +/- fractional days
   XF_TLE_OBSTIME    = 19;
   % Last calculated error growth rate (km/day)
   XF_TLE_EGR        = 20;
   % Last calculated energy dissipation rate (w/kg)
   XF_TLE_EDR        = 21;
   % Median Vismag
   XF_TLE_VISMAG     = 22;
   % Median RCS - diameter in centimeters (cm)
   XF_TLE_RCS        = 23;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
   XF_TLE_OBJTYPE    = 24;
   % Satellite name A12 (upto 12 character long)
   XF_TLE_SATNAME_12 = 25;
   
   
   % Indexes of TLE numerical data in an array
   % Line 1
   % Satellite number
   XA_TLE_SATNUM        =  0;
   % Satellite's epoch time in DS50UTC
   XA_TLE_EPOCH         =  1;
   % GP Mean motion derivative (rev/day /2)
   XA_TLE_NDOT          =  2;
   % GP Mean motion second derivative (rev/day**2 /6)
   XA_TLE_NDOTDOT       =  3;
   % GP B* drag term (1/er)
   XA_TLE_BSTAR         =  4;
   % Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
   XA_TLE_EPHTYPE       =  5;
   
   % Line 2
   % Orbit inclination (deg)
   XA_TLE_INCLI         = 20;
   % Right ascension of asending node (deg)
   XA_TLE_NODE          = 21;
   % Eccentricity
   XA_TLE_ECCEN         = 22;
   % Argument of perigee (deg)
   XA_TLE_OMEGA         = 23;
   % Mean anomaly (deg)
   XA_TLE_MNANOM        = 24;
   % Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
   XA_TLE_MNMOTN        = 25;
   % Revolution number at epoch
   XA_TLE_REVNUM        = 26;
   % Element set number
   XA_TLE_ELSETNUM      = 30;
   
   % CSV (or TLE-XP, ephemType=4) specific fields
   % Original satellite number
   XA_TLE_ORGSATNUM     = 31;
   % SP/SGP4-XP ballistic coefficient (m2/kg)
   XA_TLE_BTERM         = 32;
   % Time of last observation relative to epoch +/- fractional days
   XA_TLE_OBSTIME       = 33;
   % Last calculated error growth rate (km/day)
   XA_TLE_EGR           = 34;
   % Last calculated energy dissipation rate (w/kg)
   XA_TLE_EDR           = 35;
   % Median Vismag
   XA_TLE_VISMAG        = 36;
   % Median RCS - diameter in centimeters (cm)
   XA_TLE_RCS           = 37;
   
   % CSV (or TLE-XP, ephemType=4)
   % Solar Radiation Pressure Coefficient GP (m2/kg)
   XA_TLE_AGOMGP        = 38;
   
   
   % SP specific fields
   % SP ballistic coefficient (m2/kg)
   XA_TLE_SP_BTERM      =  2;
   % SP outgassing parameter (km/s2)
   XA_TLE_SP_OGPARM     =  3;
   % SP Radiation Pressure Coefficient
   XA_TLE_SP_AGOM       =  4;
   
   XA_TLE_SIZE          = 64;
   
   % Indexes of TLE text data in an array of chars
   % Security classification of line 1 and line 2
   XS_TLE_SECCLASS_1   =  0;
   % Satellite name
   XS_TLE_SATNAME_12   =  1;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   XS_TLE_OBJTYPE_11   = 13;
   
   XS_TLE_SIZE         = 512;
   
   % TLE's text data fields - new convention (start index, string length)
   % Security classification of line 1 and line 2
   XS_TLE_SECCLASS_0_1  =  0;
   % Satellite name
   XS_TLE_SATNAME_1_12  =  1;
   % Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
   XS_TLE_OBJTYPE_13_1  = 13;
   
   XS_TLE_LENGTH        = 512;
   
   % Indexes of different TLE file's formats
   % Original TLE format
   XF_TLEFORM_ORG    =  0;
   % CSV format
   XF_TLEFORM_CSV    =  1;
   
   
   autoload("LoadTleDll",strcat(OctFilePath,"Tle.oct"));
   autoload("FreeTleDll",strcat(OctFilePath,"Tle.oct"));
   
   %  Notes: This function has been deprecated since v9.0.    
   %  Initializes Tle DLL for use in the program.
   %  If this function returns an error, it is recommended that you stop the program immediately.
   %  
   %  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   autoload("TleInit",strcat(OctFilePath,"Tle.oct"));
   
   %  Returns the information about the Tle DLL.
   %  The returned string provides information about the version number, build date, and the platform of the Tle DLL. 
   autoload("TleGetInfo",strcat(OctFilePath,"Tle.oct"));
   
   %  Loads TLEs (satellites) contained in a text file into the TLE DLL's binary tree.
   %  You may use this function repeatedly to load TLEs from different input files. However, only unique satKeys are loaded. Duplicated TLEs won't be stored. 
   %  
   %  TLEs can be included directly in the specified file, or they can be read from a separate file identified with "ELTFIL=[path\filename]" or "VECFIL=[path\filename]".
   %  
   %  The input file is read in two passes. The function first looks for "ELTFIL=" and "VECFIL=" lines, then it looks for TLEs which were included directly. The result of this is that data entered using both methods will be processed, but the "ELTFIL=" and "VECFIL=" data will be processed first.
   autoload("TleLoadFile",strcat(OctFilePath,"Tle.oct"));
   
   %  Saves currently loaded TLEs to a file. 
   %  In append mode, if the specified file does not exist it will be created.
   %  If you call this routine immediately after TleLoadFile(), the TLE contents in the two files should be the same (minus duplicated TLE's or bad TLE's).
   %  
   %  The purpose of this function is to save the current state of the loaded TLE's, usually used in GUI applications, for future use.
   autoload("TleSaveFile",strcat(OctFilePath,"Tle.oct"));
   
   %  Removes a TLE represented by the satKey from memory. 
   %  If the users enter an invalid satKey (a non-existing satKey), the function will return a non-zero value indicating an error.
   autoload("TleRemoveSat",strcat(OctFilePath,"Tle.oct"));
   
   %  Removes all the TLEs from memory.
   autoload("TleRemoveAllSats",strcat(OctFilePath,"Tle.oct"));
   
   %  Returns the number of TLEs currently loaded. 
   %  See TleGetLoaded for an example.
   %  This function is useful for dynamically allocating memory for the array that is passed to the function TleGetLoaded().
   autoload("TleGetCount",strcat(OctFilePath,"Tle.oct"));
   
   %  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the TLE's.
   %  It is recommended that TleGetCount() be  used to determine how many satellites are currently loaded. This value can then be used to dynamically allocate an array to hold the satKeys.
   %  
   %  If you are going to pass a statically allocated array to this function, ensure it is large enough to hold all of the returned satKeys.
   autoload("TleGetLoaded",strcat(OctFilePath,"Tle.oct"));
   
   %  Adds a TLE (satellite), using its directly specified first and second lines. 
   %  The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
   %  
   %  This function can be called repeatedly to add many TLEs, one at a time.
   autoload("TleAddSatFrLines",strcat(OctFilePath,"Tle.oct"));
   
   %  This function is similar to TleAddSatFrLines but designed to be used in Matlab.
   %  Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrLines. This method is an alternative way to return the satKey output.
   autoload("TleAddSatFrLinesML",strcat(OctFilePath,"Tle.oct"));
   
   %  Adds a TLE (satellite), using its CSV string format. 
   autoload("TleAddSatFrCsv",strcat(OctFilePath,"Tle.oct"));
   
   %  This function is similar to TleAddSatFrCsv but designed to be used in Matlab.
   autoload("TleAddSatFrCsvML",strcat(OctFilePath,"Tle.oct"));
   
   %  Adds a GP TLE using its individually provided field values. 
   %  The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
   %  
   %  This function can be called repeatedly to add many satellites (one satellite at a time).
   %  
   %  SGP satellites (ephType = 0) use Kozai mean motion. SGP4 satellites (ephType = 2) use Brouwer mean motion.
   autoload("TleAddSatFrFieldsGP",strcat(OctFilePath,"Tle.oct"));
   
   %  This function is similar to TleAddSatFrFieldsGP but includes nDotO2 and n2DotO6. 
   %  nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   autoload("TleAddSatFrFieldsGP2",strcat(OctFilePath,"Tle.oct"));
   
   %  This function is similar to TleAddSatFrFieldsGP2 but designed to be used in Matlab. 
   %  Matlab doesn't seem to correctly return the 19-digit satellite key using TleAddSatFrFieldsGP2. This method is an alternative way to return the satKey output.
   autoload("TleAddSatFrFieldsGP2ML",strcat(OctFilePath,"Tle.oct"));
   
   %  Updates a GP satellite's data in memory by providing its individual field values. Note: satNum, year, day, and ephtype can't be updated.
   %  The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded satellite, the function will indicate an error.
   %  
   %  Remember to use the correct mean motion depending on the satellite's ephType.
   autoload("TleUpdateSatFrFieldsGP",strcat(OctFilePath,"Tle.oct"));
   
   %  This function is similar to TleUpdateSatFrFieldsGP but includes nDotO2 and n2DotO6. Note: satNum, year, day, and ephtype can't be updated.
   %  nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   autoload("TleUpdateSatFrFieldsGP2",strcat(OctFilePath,"Tle.oct"));
   
   %  Adds an SP satellite using the individually provided field values.
   %  Only applies to SP propagator.
   autoload("TleAddSatFrFieldsSP",strcat(OctFilePath,"Tle.oct"));
   
   %  This function is similar to TleAddSatFrFieldsSP but designed to be used in Matlab.
   %  Only applies to SP propagator.
   %  Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrFieldsSP. This method is an alternative way to return the satKey output.
   autoload("TleAddSatFrFieldsSPML",strcat(OctFilePath,"Tle.oct"));
   
   %  Updates an SP satellite's data in memory using its individually provided field values. Note: satNum, year, day, and ephtype can't be updated.
   %  Only applies to SP propagator.
   %  The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded TLE, the function will indicate an error. 
   autoload("TleUpdateSatFrFieldsSP",strcat(OctFilePath,"Tle.oct"));
   
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
   autoload("TleSetField",strcat(OctFilePath,"Tle.oct"));
   
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
   autoload("TleGetField",strcat(OctFilePath,"Tle.oct"));
   
   %  Retrieves all of the data for a GP satellite in a single function call. 
   %  This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
   autoload("TleGetAllFieldsGP",strcat(OctFilePath,"Tle.oct"));
   
   %  Retrieves all of the data (including nDotO2 and n2DotO6) for a GP satellite in a single function call. 
   %  This function is similar to TleGetAllFieldsGP but also includes nDotO2 and n2DotO6. 
   %  This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
   autoload("TleGetAllFieldsGP2",strcat(OctFilePath,"Tle.oct"));
   
   %  Retrieves all of the data for an SP satellite in a single function call.
   %  Only applies to SP propagator.
   %  This function only works for SP satellites. The field values are placed in the corresponding parameters of the function. 
   autoload("TleGetAllFieldsSP",strcat(OctFilePath,"Tle.oct"));
   
   %  Parses GP data from the input first and second lines of a two line element set or a CSV Tle.
   %  This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   autoload("TleParseGP",strcat(OctFilePath,"Tle.oct"));
   
   %  Parses GP data from the input first and second lines of a two line element set or a CSV tle and store that data back into the output parameters.
   %  This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   autoload("TleLinesToArray",strcat(OctFilePath,"Tle.oct"));
   
   %  Parses SP data from the input first and second lines of a two line element set.
   %  Only applies to SP propagator.
   %  This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   autoload("TleParseSP",strcat(OctFilePath,"Tle.oct"));
   
   %  Returns the first and second lines representation of a TLE of a satellite. 
   autoload("TleGetLines",strcat(OctFilePath,"Tle.oct"));
   
   %  Returns the CSV string representation of a TLE of a satellite. 
   autoload("TleGetCsv",strcat(OctFilePath,"Tle.oct"));
   
   %  Constructs a TLE from individually provided GP data fields.
   %  This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   autoload("TleGPFieldsToLines",strcat(OctFilePath,"Tle.oct"));
   
   %  Constructs a TLE from individually provided GP data fields.
   %  This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   autoload("TleGPFieldsToCsv",strcat(OctFilePath,"Tle.oct"));
   
   %  Constructs a TLE from GP data stored in the input parameters.
   %  This function only parses data from the input data but DOES NOT load/add the TLE to memory.
   %  <br>
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   autoload("TleGPArrayToLines",strcat(OctFilePath,"Tle.oct"));
   
   %  Constructs a TLE from GP data stored in the input parameters.
   %  This function only parses data from the input data but DOES NOT load/add the TLE to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   autoload("TleGPArrayToCsv",strcat(OctFilePath,"Tle.oct"));
   
   %  Constructs a TLE from individually provided SP data fields.
   %  Only applies to SP propagator.
   %  This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   autoload("TleSPFieldsToLines",strcat(OctFilePath,"Tle.oct"));
   
   %  Returns the first satKey from the currently loaded set of TLEs that contains the specified satellite number.
   %  This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
   %  A negative value will be returned if there is an error.
   autoload("TleGetSatKey",strcat(OctFilePath,"Tle.oct"));
   
   %  This function is similar to TleGetSatKey but designed to be used in Matlab. 
   %  Matlab doesn't correctly return the 19-digit satellite key using TleGetSatKey. This method is an alternative way to return the satKey output.
   %  This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
   %  A negative value will be returned in satKey if there is an error.
   autoload("TleGetSatKeyML",strcat(OctFilePath,"Tle.oct"));
   
   %  Computes a satKey from the input data.
   %  There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
   %  
   %  This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different. 
   %  A negative value will be returned if there is an error.
   autoload("TleFieldsToSatKey",strcat(OctFilePath,"Tle.oct"));
   
   %  This function is similar to TleFieldsToSatKey but designed to be used in Matlab. 
   %  Matlab doesn't correctly return the 19-digit satellite key using TleFieldsToSatKey. This method is an alternative way to return the satKey output.
   %  There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
   %  
   %  This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different.
   %  A negative value will be returned in satKey if there is an error.
   autoload("TleFieldsToSatKeyML",strcat(OctFilePath,"Tle.oct"));
   
   %  Adds a TLE (satellite), using its data stored in the input parameters.
   autoload("TleAddSatFrArray",strcat(OctFilePath,"Tle.oct"));
   
   %  This function is similar to TleAddSatFrArray but designed to be used in Matlab. 
   autoload("TleAddSatFrArrayML",strcat(OctFilePath,"Tle.oct"));
   
   %  Updates existing TLE data with the provided new data stored in the input parameters. Note: satNum, year, day, and ephtype can't be updated.
   %  nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   autoload("TleUpdateSatFrArray",strcat(OctFilePath,"Tle.oct"));
   
   %  Retrieves TLE data and stored it in the passing parameters
   autoload("TleDataToArray",strcat(OctFilePath,"Tle.oct"));
   
   %  Converts TLE two line format to CSV format
   autoload("TleLinesToCsv",strcat(OctFilePath,"Tle.oct"));
   
   %  Converts TLE CSV format to two line format
   autoload("TleCsvToLines",strcat(OctFilePath,"Tle.oct"));
   
   %  Sets TLE key mode - This function was deprecated, please use DllMain/SetElsetKeyMode() instead
   autoload("SetTleKeyMode",strcat(OctFilePath,"Tle.oct"));
   
   %  Gets current TLE key mode - This function was deprecated, please use DllMain/GetElsetKeyMode() instead
   autoload("GetTleKeyMode",strcat(OctFilePath,"Tle.oct"));
   
   %  Finds the check sums of TLE lines
   autoload("GetCheckSums",strcat(OctFilePath,"Tle.oct"));
   LoadTleDll;
endfunction
% ========================= End of auto generated code ==========================
