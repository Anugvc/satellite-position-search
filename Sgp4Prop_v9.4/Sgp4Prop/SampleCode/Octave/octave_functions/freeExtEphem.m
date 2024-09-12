% This wrapper file was generated automatically by the GenDllWrappers program.
function freeExtEphem()   
   % Indexes of coordinate systems
   % ECI TEME of DATE
   global COORD_ECI;
   % MEME of J2K
   global COORD_J2K;
   % Earth Fixed Greenwich (EFG)
   global COORD_EFG;
   % Earch Centered Rotation (ECR)
   global COORD_ECR;
   % Lat Lon Height and a vector offset (range, azimuth, elevation)
   global COORD_LLH;
   % Sensor site (ECR) and a vector offset (range, azimuth, elevation)
   global COORD_SEN;
   
   % ECI TEME of DATE, fixed point
   global COORD_ECIFP;
   % MEME of J2K, fixed point
   global COORD_J2KFP;
   % Earth Fixed Greenwich (EFG), fixed point
   global COORD_EFGFP;
   % Earch Centered Rotation (ECR), fixed point
   global COORD_ECRFP;
   % Lat Lon Height and an offset vector (range, azimuth, elevation)
   global COORD_LLHOV;
   % Sensor site (ECR) and an offset vector (range, azimuth, elevation)
   global COORD_SENOV;
   % Current position (LLH), heading (azimuth), and constant speed of an mobile object that travels in a rhumb line course
   global COORD_HCSRL;
   % List of waypoints (LLH) that describes the movement of an object that travels in a rhumb line course
   global COORD_WPTRL;
   % Current position (LLH), initial heading (azimuth), and constant speed of an mobile object that travels in a great circle course
   global COORD_HCSGC;
   % List of waypoints (LLH) that describes the movement of an object that travels in a great circle course
   global COORD_WPTGC;
   
   
   % Invalid coordinate system
   global COORD_INVALID;
   
   % UVW convariance matrix - TEME of DATE
   global COVMTX_UVW_DATE;
   % Cartesian covariance matrix - TEME of DATE
   global COVMTX_XYZ_DATE;
   % Equinoctial covariance matrix - TEME of DATE
   global COVMTX_EQNX_DATE;
   % UVW convariance matrix - MEME of J2K
   global COVMTX_UVW_J2K;
   % Cartesian covariance matrix - MEME of J2K
   global COVMTX_XYZ_J2K;
   % Equinoctial covariance matrix - MEME of J2K
   global COVMTX_EQNX_J2K;
   
   
   % Get ephemeris data using time in minutes since epoch
   global XF_GETEPH_MSE;
   % Get ephemeris data using time in days since 1950 UTC
   global XF_GETEPH_UTC;
   % Get ephemeris data using index of the element in the array
   global XF_GETEPH_IDX;
   
   % Indexes of EXTEPH data fields
   % Satellite number I5
   global XF_EXTEPH_SATNUM;
   % Epoch YYDDDHHMMSS.SSS
   global XF_EXTEPH_EPOCH;
   % Earth radius (km)
   global XF_EXTEPH_AE;
   % Ke
   global XF_EXTEPH_KE;
   % position X (km) F16.8
   global XF_EXTEPH_POSX;
   % position Y (km) F16.8
   global XF_EXTEPH_POSY;
   % position Z (km) F16.8
   global XF_EXTEPH_POSZ;
   % velocity X (km/s) F16.12
   global XF_EXTEPH_VELX;
   % velocity Y (km/s) F16.12
   global XF_EXTEPH_VELY;
   % velocity Z (km/s) F16.12
   global XF_EXTEPH_VELZ;
   % Input coordinate systems
   global XF_EXTEPH_COORD;
   % Num of ephemeris points
   global XF_EXTEPH_NUMOFPTS;
   % Ephemeris file path
   global XF_EXTEPH_FILEPATH;
   % International Designator
   global XF_EXTEPH_SATNAME;
   % Record name
   global XF_EXTEPH_RECNAME;
   
   
   % Indexes of coordinate systems
   % ECI TEME of DATE
   clear COORD_ECI;
   % MEME of J2K
   clear COORD_J2K;
   % Earth Fixed Greenwich (EFG)
   clear COORD_EFG;
   % Earch Centered Rotation (ECR)
   clear COORD_ECR;
   % Lat Lon Height and a vector offset (range, azimuth, elevation)
   clear COORD_LLH;
   % Sensor site (ECR) and a vector offset (range, azimuth, elevation)
   clear COORD_SEN;
   
   % ECI TEME of DATE, fixed point
   clear COORD_ECIFP;
   % MEME of J2K, fixed point
   clear COORD_J2KFP;
   % Earth Fixed Greenwich (EFG), fixed point
   clear COORD_EFGFP;
   % Earch Centered Rotation (ECR), fixed point
   clear COORD_ECRFP;
   % Lat Lon Height and an offset vector (range, azimuth, elevation)
   clear COORD_LLHOV;
   % Sensor site (ECR) and an offset vector (range, azimuth, elevation)
   clear COORD_SENOV;
   % Current position (LLH), heading (azimuth), and constant speed of an mobile object that travels in a rhumb line course
   clear COORD_HCSRL;
   % List of waypoints (LLH) that describes the movement of an object that travels in a rhumb line course
   clear COORD_WPTRL;
   % Current position (LLH), initial heading (azimuth), and constant speed of an mobile object that travels in a great circle course
   clear COORD_HCSGC;
   % List of waypoints (LLH) that describes the movement of an object that travels in a great circle course
   clear COORD_WPTGC;
   
   
   % Invalid coordinate system
   clear COORD_INVALID;
   
   % UVW convariance matrix - TEME of DATE
   clear COVMTX_UVW_DATE;
   % Cartesian covariance matrix - TEME of DATE
   clear COVMTX_XYZ_DATE;
   % Equinoctial covariance matrix - TEME of DATE
   clear COVMTX_EQNX_DATE;
   % UVW convariance matrix - MEME of J2K
   clear COVMTX_UVW_J2K;
   % Cartesian covariance matrix - MEME of J2K
   clear COVMTX_XYZ_J2K;
   % Equinoctial covariance matrix - MEME of J2K
   clear COVMTX_EQNX_J2K;
   
   
   % Get ephemeris data using time in minutes since epoch
   clear XF_GETEPH_MSE;
   % Get ephemeris data using time in days since 1950 UTC
   clear XF_GETEPH_UTC;
   % Get ephemeris data using index of the element in the array
   clear XF_GETEPH_IDX;
   
   % Indexes of EXTEPH data fields
   % Satellite number I5
   clear XF_EXTEPH_SATNUM;
   % Epoch YYDDDHHMMSS.SSS
   clear XF_EXTEPH_EPOCH;
   % Earth radius (km)
   clear XF_EXTEPH_AE;
   % Ke
   clear XF_EXTEPH_KE;
   % position X (km) F16.8
   clear XF_EXTEPH_POSX;
   % position Y (km) F16.8
   clear XF_EXTEPH_POSY;
   % position Z (km) F16.8
   clear XF_EXTEPH_POSZ;
   % velocity X (km/s) F16.12
   clear XF_EXTEPH_VELX;
   % velocity Y (km/s) F16.12
   clear XF_EXTEPH_VELY;
   % velocity Z (km/s) F16.12
   clear XF_EXTEPH_VELZ;
   % Input coordinate systems
   clear XF_EXTEPH_COORD;
   % Num of ephemeris points
   clear XF_EXTEPH_NUMOFPTS;
   % Ephemeris file path
   clear XF_EXTEPH_FILEPATH;
   % International Designator
   clear XF_EXTEPH_SATNAME;
   % Record name
   clear XF_EXTEPH_RECNAME;
   
   FreeExtEphemDll;
   clear LoadExtEphemDll;
   clear FreeExtEphemDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes ExtEphem DLL for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. 
   %  The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed 
   %  in the DLL Prerequisite section, before using this DLL.
   clear ExtEphInit
   
   %  Returns information about the current version of ExtEphem DLL. 
   %  The information is placed in the string parameter passed in.
   %  The returned string provides information about the version number, build date, and the platform of the ExtEphem DLL. 
   clear ExtEphGetInfo
   
   %  Loads a file containing EXTEPHEM's
   %  The users can use this function repeatedly to load EXTEPHEMs from different input files. 
   %  However, only unique satKeys are stored in the binary tree. Duplicated EXTEPHEMs 
   %  (determined by same file name, satellite number + epoch) won't be stored.
   %  
   %  EXTEPHEMs can be included directly in the main input file or they can be read from a 
   %  separate file identified with "EPHFIL =[pathname\filename]".
   %  
   %  This function only reads EXTEPHEMs from the main input file or EXTEPHEMs from the file 
   %  identified with EPHFIL in the input file. It won't read anything else.
   clear ExtEphLoadFile
   
   %  Saves the currently loaded EXTEPHEM's to a file (EPHFIL=input file name)
   clear ExtEphSaveFile
   
   %  Removes an EXTEPHEM represented by the satKey from memory
   %  If the users enter an invalid satKey (the satKey does not exist in memory), the function will return a non-zero value indicating an error.
   clear ExtEphRemoveSat
   
   %  Removes all EXTEPHEMS from memory
   clear ExtEphRemoveAllSats
   
   %  Returns the number of EXTEPHEM's currently loaded
   %  See ExtEphGetLoaded for example.
   %  This function is useful for dynamically allocating memory for the array that is passed to the function ExtEphGetLoaded().
   clear ExtEphGetCount
   
   %  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the external ephemeris data for the EXTEPHEM's
   %  It is recommended that ExtEphGetCount() is used to count how many satellites are currently loaded in the ExtEphem DLL's binary tree. 
   %  The users then use this number to dynamically allocate the satKeys array and pass it to this function.
   %  
   %  If the users prefer to pass a static array to the function, ensure that it is big enough to store all the satKeys in memory.
   clear ExtEphGetLoaded
   
   %  Allows for an EXTEPHEM to be added to memory without using an input file. The function creates a place holder for an EXTEPHEM
   %  If the same satellite (same satNum and epochDs50UTC) was previously added to the ExtEphem DLL's binary tree, 
   %  the function will generate a new unique satKey. This is very useful when the users want to compare ephemerides 
   %  of the same satellite number and same epoch time from different sources. 
   clear ExtEphAddSat
   
   %  Adds an ephemeris point to the end of an EXTEPHEM's set of ephemeris points
   %  The new ephemeris point will only be added to the array if its time is greater than the times of all points already in the array. 
   %  Therefore, the array is always in sorted order (t1 &lt; t2 &lt;... &lt; tn).
   clear ExtEphAddSatEphem
   
   %  Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
   clear ExtEphAddSatEphemCovMtx
   
   %  Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
   clear ExtEphAddSatEphemExt
   
   %  Loads satellite data from an external ephemeris file (any valid external ephemeris file formats) and returns a satKey on success
   clear ExtEphAddSatFrFile
   
   %  Retrieves all data for an EXTEPHEM with a single function call
   clear ExtEphGetAllFields
   
   %  Retrieves the value of a specific field of an EXTEPHEM
   %  <br>
   %  When using xf_ExtEph = 11, the input coordinate system is returned as an integer value.  The table below shows the coordinate system values:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Value</b></td>
   %  <td><b>Coordinate System</b></td>
   %  </tr>
   %  <tr><td>1  </td><td>ECI TEME of DATE</td></tr>
   %  <tr><td>2  </td><td>MEME of J2K</td></tr>
   %  <tr><td>3  </td><td>Earth Fixed Greenwich (EFG)</td></tr>
   %  <tr><td>4  </td><td>Earch Centered Rotation (ECR)</td></tr>
   %  <tr><td>100</td><td>Invalid</td></tr>
   %  </table>   
   clear ExtEphGetField
   
   %  Updates the value of a specific field of an EXTEPHEM
   clear ExtEphSetField
   
   %  Retrieves the times (in days since 1950 UTC) of the start and end ephemeris points of the EXTEPHEM  
   clear ExtEphStartEndTime
   
   %  Retrieves the data for a specific point within an EXTEPHEM
   %  It is important to know that the array subscript starts at one (not zero).
   clear ExtEphGetEphemeris
   
   %  Retrieves the data (including the covariance matrix) for a specific point within an EXTEPHEM
   clear ExtEphGetCovMtx
   
   %  Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
   %  The coordinate system of the output position and velocity is the same as the input ephemerides.
   clear ExtEphMse
   
   %  Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
   clear ExtEphMseCovMtx
   
   %  Interpolates the external ephemeris data to the requested time in days since 1950, UTC
   %  The coordinate system of the output position and velocity is the same as the input ephemerides.
   clear ExtEphDs50UTC
   
   %  Interpolates the external ephemeris data to the requested time in days since 1950, UTC
   clear ExtEphDs50UTCCovMtx
   
   %  Extensible routine which retrieves/interpolates external ephemeris data based on user's request
   clear ExtEphXten
   
   %  This function returns a string that represents the EXTFIL= directive used to read a particular EXTEPHEM
   clear ExtEphGetLine
   
   %  Returns the first satKey that matches the satNum in the EXTEPHEM binary tree
   %  This function is useful when ExtEphem DLL is used in applications that requires only one record (one EXTEPHEM entry) 
   %  for one satellite and the applications refer to that EXTEPHEM by its satellite number. 
   %  However, the Astrodynamic Standard Shared library only uses satKeys; this function helps to return the associated satKey of that satellite.
   clear ExtEphGetSatKey
   
   %  Creates satKey from EXTEPHEM's satelite number and date time group string
   %  This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
   clear ExtEphFieldsToSatKey
endfunction
% ========================= End of auto generated code ==========================
