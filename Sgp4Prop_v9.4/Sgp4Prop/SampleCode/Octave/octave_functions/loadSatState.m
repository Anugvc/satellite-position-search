% This wrapper file was generated automatically by the GenDllWrappers program.
function loadSatState(OctFilePath)   
   % Indexes of available satellite data fields
   % Satellite epoch time in days since 1950 UTC
   global  XF_SATFIELD_EPOCHUTC;
   % Mean anomaly (deg)
   global  XF_SATFIELD_MNANOM;
   % Right ascension of asending node (deg)
   global  XF_SATFIELD_NODE;
   % Argument of perigee (deg)
   global  XF_SATFIELD_OMEGA;
   % Satellite's period (min)
   global  XF_SATFIELD_PERIOD;
   % Eccentricity
   global  XF_SATFIELD_ECCEN;
   % Orbit inclination (deg)
   global  XF_SATFIELD_INCLI;
   % Mean motion (rev/day)
   global  XF_SATFIELD_MNMOTION;
   % GP B* drag term (1/er)  or SP Radiation Pressure Coefficient
   global  XF_SATFIELD_BFIELD;
   % Perigee height above the geoid (km)
   global  XF_SATFIELD_PERIGEEHT;
   % Apogee height above the geoid (km)
   global  XF_SATFIELD_APOGEEHT;
   % Perigee height above the center of the earth (km)
   global  XF_SATFIELD_PERIGEE;
   % Apogee height above the center of the earth (km)
   global  XF_SATFIELD_APOGEE;
   % Semimajor axis (km)
   global  XF_SATFIELD_A;
   % Mean motion derivative (rev/day /2)
   global  XF_SATFIELD_NDOT;
   % Satellite category (Synchronous, Deep space, Decaying, Routine)
   global  XF_SATFIELD_SATCAT;
   % Astat 3 Height multiplier
   global  XF_SATFIELD_HTM3;
   % Center of mass offset (m)
   global  XF_SATFIELD_CMOFFSET;
   % Unused
   global  XF_SATFIELD_N2DOT;
   % GP node dot (deg/s)
   global  XF_SATFIELD_NODEDOT;
   % GP only - the last time when propagation has error
   global  XF_SATFIELD_ERRORTIME;
   % value of mu
   global  XF_SATFIELD_MU;
   
   
   %*******************************************************************************
   
   % Indexes of available deltas
   % delta position (km)
   global  XA_DELTA_POS;
   % delta time (sec)
   global  XA_DELTA_TIME;
   % delta position in radial direction (km)
   global  XA_DELTA_PRADIAL;
   % delta position in in-track direction (km)
   global  XA_DELTA_PINTRCK;
   % delta position in cross-track direction (km)
   global  XA_DELTA_PCRSSTRCK;
   % delta velocity (km/sec)
   global  XA_DELTA_VEL;
   % delta velocity in radial direction (km/sec)
   global  XA_DELTA_VRADIAL;
   % delta velocity in in-track direction (km/sec)
   global  XA_DELTA_VINTRCK;
   % delta velocity in cross-track direction (km/sec)
   global  XA_DELTA_VCRSSTRCK;
   % delta Beta (deg)
   global  XA_DELTA_BETA;
   % delta height (km)
   global  XA_DELTA_HEIGHT;
   % delta angular momentum (deg)
   global  XA_DELTA_ANGMOM;
   % 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on)
   global  XA_DELTA_MHLNBS_UVW;
   % 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on)
   global  XA_DELTA_MHLNBS_HTB;
   
   global  XA_DELTA_SIZE
   
   % Indexes of Satellite data fields
   % Satellite number I5
   global  XF_SAT_NUM;
   % Satellite international designator A8
   global  XF_SAT_NAME;
   % Element type I1 (old name XF_SAT_EPHTYPE)
   global  XF_SAT_ELTTYPE;
   % Obsolete - should use new name XF_SAT_ELTTYPE instead
   global  XF_SAT_EPHTYPE;
   % Epoch revolution number I6
   global  XF_SAT_REVNUM;
   % Epoch time in days since 1950
   global  XF_SAT_EPOCH;
   % BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg)
   global  XF_SAT_BFIELD;
   % Element set number
   global  XF_SAT_ELSETNUM;
   % Inclination (deg)
   global  XF_SAT_INCLI;
   % Right ascension of ascending node (deg)
   global  XF_SAT_NODE;
   % Eccentricity
   global  XF_SAT_ECCEN;
   % Argument of perigee (deg)
   global  XF_SAT_OMEGA;
   % Mean anomaly (deg)
   global  XF_SAT_MNANOM;
   % Mean motion (revs/day)
   global  XF_SAT_MNMOTN;
   % Satellite period (min)
   global  XF_SAT_PERIOD;
   % Perigee Height(km)
   global  XF_SAT_PERIGEEHT;
   % Apogee Height (km)
   global  XF_SAT_APOGEEHT;
   % Perigee(km)
   global  XF_SAT_PERIGEE;
   % Apogee (km)
   global  XF_SAT_APOGEE;
   % Semi-major axis (km)
   global  XF_SAT_A;
   
   
   % Indexes of SatState's load/save file task mode
   % Only load/save propagator control parameters
   global  XF_TASK_CTRLONLY;
   % Only load/save orbital elements/external ephemeris data
   global  XF_TASK_SATONLY;
   % Load/Save both 1 and 2
   global  XF_TASK_BOTH;
   
   
   % Different external ephemeris file types
   % ITC file format
   global  EPHFILETYPE_ITC;
   % ITC compact (without covariance matrix) file format
   global  EPHFILETYPE_ITC_WOCOV;
   
   
   % Gobs records
   % Satellite number
   global  XA_GOBS_SATNUM;
   % East Longitude
   global  XA_GOBS_LONE;
   % Longitude Drift Rate
   global  XA_GOBS_DRIFT;
   % satellite's relative energy (deg^2/sec^2) - only for GOBS
   global  XA_GOBS_RELENERGY;
   % sin(incl)*sin(r.a. node)
   global  XA_GOBS_WX;
   % -sin(incl)*cos(r.a. node)
   global  XA_GOBS_WY;
   % cos(incl)
   global  XA_GOBS_WZ;
   % af
   global  XA_GOBS_AF;
   % ag
   global  XA_GOBS_AG;
   % AGOM
   global  XA_GOBS_AGOM;
   % Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   global  XA_GOBS_TROUGH;
   
   global  XA_GOBS_SIZE
   
   
   % Indexes of GOBS limits
   % 0 - ignore trough logic, 1 - implement trough logic
   global  XA_GOBS_LIM_TROUGH;
   % Primary satellite is plane changer
   global  XA_GOBS_LIM_PCP;
   % Secondary satellite is plane changer
   global  XA_GOBS_LIM_PCS;
   % Primary satellite is plane changer
   global  XA_GOBS_LIM_ACTIVEP;
   % Secondary satellite is plane changer
   global  XA_GOBS_LIM_ACTIVES;
   % Min Longitude of sat
   global  XA_GOBS_LIM_LONGMIN;
   % Max Longitude of sat
   global  XA_GOBS_LIM_LONGMAX;
   % Min Agom of sat
   global  XA_GOBS_LIM_AGOMMIN;
   % Max Agom of sat
   global  XA_GOBS_LIM_AGOMMAX;
   
   global  XA_GOBS_LIM_SIZE
   
   
   % Indexes of available deltas
   % Primary satellite number
   global  XA_GOBS_DELTA_PRIMESAT;
   % Secondary satellite number
   global  XA_GOBS_DELTA_SECONDARYSAT;
   % GOBS correlation score
   global  XA_GOBS_DELTA_ASTAT;
   % delta orbital plane
   global  XA_GOBS_DELTA_DOP;
   % delta shape
   global  XA_GOBS_DELTA_DSHAPE;
   % delta Relative Energy (deg^2/day^2)
   global  XA_GOBS_DELTA_DRELENERGY;
   % Longitude of Primary
   global  XA_GOBS_DELTA_LONGP;
   % Minimum Longitude of Secondary
   global  XA_GOBS_DELTA_LONGMIN;
   % Maximum Longitude of Secondary
   global  XA_GOBS_DELTA_LONGMAX;
   % 0 - opposite throughs or drift rates, 1 - trough or drift rates match
   global  XA_GOBS_DELTA_TROUGH;
   % 0|1    Plane Match Flag
   global  XA_GOBS_DELTA_PLANE;
   % 0|1    Shape Match Flag
   global  XA_GOBS_DELTA_SHAPE;
   % 0|1    Energy Match Flag
   global  XA_GOBS_DELTA_ENERGY;
   % 0|1|2  Longitude Match Flag (2 is fuzzy match)
   global  XA_GOBS_DELTA_LONG;
   % 0|1    Agom Match Flag
   global  XA_GOBS_DELTA_AGOM;
   
   global  XA_GOBS_DELTA_SIZE
   
   
   %*******************************************************************************
   
   
   % Indexes of available satellite data fields
   % Satellite epoch time in days since 1950 UTC
   XF_SATFIELD_EPOCHUTC =  1;
   % Mean anomaly (deg)
   XF_SATFIELD_MNANOM   =  2;
   % Right ascension of asending node (deg)
   XF_SATFIELD_NODE     =  3;
   % Argument of perigee (deg)
   XF_SATFIELD_OMEGA    =  4;
   % Satellite's period (min)
   XF_SATFIELD_PERIOD   =  5;
   % Eccentricity
   XF_SATFIELD_ECCEN    =  6;
   % Orbit inclination (deg)
   XF_SATFIELD_INCLI    =  7;
   % Mean motion (rev/day)
   XF_SATFIELD_MNMOTION =  8;
   % GP B* drag term (1/er)  or SP Radiation Pressure Coefficient
   XF_SATFIELD_BFIELD   =  9;
   % Perigee height above the geoid (km)
   XF_SATFIELD_PERIGEEHT= 10;
   % Apogee height above the geoid (km)
   XF_SATFIELD_APOGEEHT = 11;
   % Perigee height above the center of the earth (km)
   XF_SATFIELD_PERIGEE  = 12;
   % Apogee height above the center of the earth (km)
   XF_SATFIELD_APOGEE   = 13;
   % Semimajor axis (km)
   XF_SATFIELD_A        = 14;
   % Mean motion derivative (rev/day /2)
   XF_SATFIELD_NDOT     = 15;
   % Satellite category (Synchronous, Deep space, Decaying, Routine)
   XF_SATFIELD_SATCAT   = 16;
   % Astat 3 Height multiplier
   XF_SATFIELD_HTM3     = 17;
   % Center of mass offset (m)
   XF_SATFIELD_CMOFFSET = 18;
   % Unused
   XF_SATFIELD_N2DOT    = 19;
   % GP node dot (deg/s)
   XF_SATFIELD_NODEDOT  = 20;
   % GP only - the last time when propagation has error
   XF_SATFIELD_ERRORTIME= 21;
   % value of mu
   XF_SATFIELD_MU       = 22;
   
   
   %*******************************************************************************
   
   % Indexes of available deltas
   % delta position (km)
   XA_DELTA_POS         =  0;
   % delta time (sec)
   XA_DELTA_TIME        =  1;
   % delta position in radial direction (km)
   XA_DELTA_PRADIAL     =  2;
   % delta position in in-track direction (km)
   XA_DELTA_PINTRCK     =  3;
   % delta position in cross-track direction (km)
   XA_DELTA_PCRSSTRCK   =  4;
   % delta velocity (km/sec)
   XA_DELTA_VEL         =  5;
   % delta velocity in radial direction (km/sec)
   XA_DELTA_VRADIAL     =  6;
   % delta velocity in in-track direction (km/sec)
   XA_DELTA_VINTRCK     =  7;
   % delta velocity in cross-track direction (km/sec)
   XA_DELTA_VCRSSTRCK   =  8;
   % delta Beta (deg)
   XA_DELTA_BETA        =  9;
   % delta height (km)
   XA_DELTA_HEIGHT      = 10;
   % delta angular momentum (deg)
   XA_DELTA_ANGMOM      = 11;
   % 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on)
   XA_DELTA_MHLNBS_UVW  = 12;
   % 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on)
   XA_DELTA_MHLNBS_HTB  = 13;
   
   XA_DELTA_SIZE        =100;
   
   % Indexes of Satellite data fields
   % Satellite number I5
   XF_SAT_NUM      =  1;
   % Satellite international designator A8
   XF_SAT_NAME     =  2;
   % Element type I1 (old name XF_SAT_EPHTYPE)
   XF_SAT_ELTTYPE  =  3;
   % Obsolete - should use new name XF_SAT_ELTTYPE instead
   XF_SAT_EPHTYPE  =  3;
   % Epoch revolution number I6
   XF_SAT_REVNUM   =  4;
   % Epoch time in days since 1950
   XF_SAT_EPOCH    =  5;
   % BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg)
   XF_SAT_BFIELD   =  6;
   % Element set number
   XF_SAT_ELSETNUM =  7;
   % Inclination (deg)
   XF_SAT_INCLI    =  8;
   % Right ascension of ascending node (deg)
   XF_SAT_NODE     =  9;
   % Eccentricity
   XF_SAT_ECCEN    = 10;
   % Argument of perigee (deg)
   XF_SAT_OMEGA    = 11;
   % Mean anomaly (deg)
   XF_SAT_MNANOM   = 12;
   % Mean motion (revs/day)
   XF_SAT_MNMOTN   = 13;
   % Satellite period (min)
   XF_SAT_PERIOD   = 14;
   % Perigee Height(km)
   XF_SAT_PERIGEEHT= 15;
   % Apogee Height (km)
   XF_SAT_APOGEEHT = 16;
   % Perigee(km)
   XF_SAT_PERIGEE  = 17;
   % Apogee (km)
   XF_SAT_APOGEE   = 18;
   % Semi-major axis (km)
   XF_SAT_A        = 19;
   
   
   % Indexes of SatState's load/save file task mode
   % Only load/save propagator control parameters
   XF_TASK_CTRLONLY = 1;
   % Only load/save orbital elements/external ephemeris data
   XF_TASK_SATONLY  = 2;
   % Load/Save both 1 and 2
   XF_TASK_BOTH     = 3;
   
   
   % Different external ephemeris file types
   % ITC file format
   EPHFILETYPE_ITC         =  1;
   % ITC compact (without covariance matrix) file format
   EPHFILETYPE_ITC_WOCOV   =  2;
   
   
   % Gobs records
   % Satellite number
   XA_GOBS_SATNUM    =  0;
   % East Longitude
   XA_GOBS_LONE      =  1;
   % Longitude Drift Rate
   XA_GOBS_DRIFT     =  2;
   % satellite's relative energy (deg^2/sec^2) - only for GOBS
   XA_GOBS_RELENERGY =  3;
   % sin(incl)*sin(r.a. node)
   XA_GOBS_WX        =  4;
   % -sin(incl)*cos(r.a. node)
   XA_GOBS_WY        =  5;
   % cos(incl)
   XA_GOBS_WZ        =  6;
   % af
   XA_GOBS_AF        =  7;
   % ag
   XA_GOBS_AG        =  8;
   % AGOM
   XA_GOBS_AGOM      =  9;
   % Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   XA_GOBS_TROUGH    = 10;
   
   XA_GOBS_SIZE      = 32;
   
   
   % Indexes of GOBS limits
   % 0 - ignore trough logic, 1 - implement trough logic
   XA_GOBS_LIM_TROUGH      =  0;
   % Primary satellite is plane changer
   XA_GOBS_LIM_PCP         =  1;
   % Secondary satellite is plane changer
   XA_GOBS_LIM_PCS         =  2;
   % Primary satellite is plane changer
   XA_GOBS_LIM_ACTIVEP     =  3;
   % Secondary satellite is plane changer
   XA_GOBS_LIM_ACTIVES     =  4;
   % Min Longitude of sat
   XA_GOBS_LIM_LONGMIN     =  5;
   % Max Longitude of sat
   XA_GOBS_LIM_LONGMAX     =  6;
   % Min Agom of sat
   XA_GOBS_LIM_AGOMMIN     =  7;
   % Max Agom of sat
   XA_GOBS_LIM_AGOMMAX     =  8;
   
   XA_GOBS_LIM_SIZE        = 16;
   
   
   % Indexes of available deltas
   % Primary satellite number
   XA_GOBS_DELTA_PRIMESAT     =  0;
   % Secondary satellite number
   XA_GOBS_DELTA_SECONDARYSAT =  1;
   % GOBS correlation score
   XA_GOBS_DELTA_ASTAT        =  2;
   % delta orbital plane
   XA_GOBS_DELTA_DOP          =  3;
   % delta shape
   XA_GOBS_DELTA_DSHAPE       =  4;
   % delta Relative Energy (deg^2/day^2)
   XA_GOBS_DELTA_DRELENERGY   =  5;
   % Longitude of Primary
   XA_GOBS_DELTA_LONGP        =  6;
   % Minimum Longitude of Secondary
   XA_GOBS_DELTA_LONGMIN      =  7;
   % Maximum Longitude of Secondary
   XA_GOBS_DELTA_LONGMAX      =  8;
   % 0 - opposite throughs or drift rates, 1 - trough or drift rates match
   XA_GOBS_DELTA_TROUGH       =  9;
   % 0|1    Plane Match Flag
   XA_GOBS_DELTA_PLANE        = 10;
   % 0|1    Shape Match Flag
   XA_GOBS_DELTA_SHAPE        = 11;
   % 0|1    Energy Match Flag
   XA_GOBS_DELTA_ENERGY       = 12;
   % 0|1|2  Longitude Match Flag (2 is fuzzy match)
   XA_GOBS_DELTA_LONG         = 13;
   % 0|1    Agom Match Flag
   XA_GOBS_DELTA_AGOM         = 14;
   
   XA_GOBS_DELTA_SIZE         = 16;
   
   
   %*******************************************************************************
   
   autoload("LoadSatStateDll",strcat(OctFilePath,"SatState.oct"));
   autoload("FreeSatStateDll",strcat(OctFilePath,"SatState.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes SatState DLL for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. 
   %  The error occurs if the users forget to load and initialize all the prerequisite DLLs, 
   %  as listed in the DLL Prerequisite section, before using this DLL.
   autoload("SatStateInit",strcat(OctFilePath,"SatState.oct"));
   
   %  Returns information about the current version of SatState DLL. 
   %  The information is placed in the string parameter passed in.
   %  The returned string provides information about the version number, build date, and the platform of the SatState DLL. 
   autoload("SatStateGetInfo",strcat(OctFilePath,"SatState.oct"));
   
   %  Loads any orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls from an input text file
   %  Internally, if taskMode = 1, this function calls SpProp.SpLoadFile(); 
   %  and if taskMode = 2, this function calls Tle.TleLoadFile(), SpVec.SpVecLoadFile(), Vcm.VcmLoadFile(), ExtEphem.ExtEphLoadFile(); 
   %  if taskMode = 3, both tasks (1 and 2) are executed.
   autoload("SatStateLoadFile",strcat(OctFilePath,"SatState.oct"));
   
   %  Saves currently loaded orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls to a file
   %  The purpose of this function is to save the current SatState-related settings, usually used in GUI applications, for future use.
   %  
   %  Internally, if taskMode = 1, this function calls SpProp.SpSaveFile(); 
   %  and if taskMode = 2, this function calls Tle.TleSaveFile(), SpVec.SpVecSavedFile(), Vcm.VcmSaveFile(), ExtEphem.ExtEphSaveFile(); 
   %  if taskMode = 3, both tasks (1 and 2) are executed.
   autoload("SatStateSaveFile",strcat(OctFilePath,"SatState.oct"));
   
   %  Removes a satellite from the appropriate elset DLL's set of loaded satellites. 
   %  The function will automatically choose the proper set of elsets from which to remove the satellite. 
   %  The choices are: Tle.dll, SpVec.dll, Vcm.dll, or ExtEphem.dll   
   %  If the users enter an invalid satKey (a satKey that does not exist in memory), the function will return a non-zero value indicating an error.
   autoload("SatStateRemoveSat",strcat(OctFilePath,"SatState.oct"));
   
   %  Removes a satellite from the appropriate sets of loaded satellites (elset dll and propagator dll). 
   %  The function will remove the satellite from the elset DLL's sets as in SatStateRemoveSat() and 
   %  from the appropriate propagator's set of initialized satellites if it exists there.
   autoload("SatStateRemoveSatAll",strcat(OctFilePath,"SatState.oct"));
   
   %  Removes all satellites from all of the loaded data sets. 
   %  It will remove all satellites from the following sets: Tle, SpVec, Vcm, ExtEphem, Sgp4Prop, and SpProp
   autoload("SatStateRemoveAllSats",strcat(OctFilePath,"SatState.oct"));
   
   %  Resets propagator settings back to their default values
   autoload("SatStateReset",strcat(OctFilePath,"SatState.oct"));
   
   %  Returns the total number of satellites (TLE's, SPVEC's, VCM's, and EXTEPHEM's) currently loaded in memory
   %  See SatStateGetLoaded for example.
   %  This function is useful for dynamically allocating memory for the array that is passed to the function SatStateGetLoaded.
   autoload("SatStateGetCount",strcat(OctFilePath,"SatState.oct"));
   
   %  Retrieves all of the currently loaded satKeys. 
   %  These satKeys can be used to access the internal data for the satellites.
   %  It is recommended that SatStateGetCount() is used to count how many satellites are currently loaded in memory. 
   %  The user can then use this number to dynamically allocate the satKeys array and pass it to this function.
   %  
   %  If the user prefers to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   autoload("SatStateGetLoaded",strcat(OctFilePath,"SatState.oct"));
   
   %  Returns the first satKey that contains the specified satellite number in all sets of loaded satellites. 
   %  These sets will be searched: Tle, SpVec, Vcm, and ExtEphem.
   %  This function is useful when a satellite is used in applications that require only one record for one 
   %  satellite and the applications refer to that satellite by its satellite number. 
   %  However, the Astrodynamic Standard Shared library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   autoload("SatStateNumToKey",strcat(OctFilePath,"SatState.oct"));
   
   %  Retrieves the data which is common to all satellite types. 
   %  All common fields are retrieved with a single function call.
   %  The apogee height and perigee height are defined as the distance above an ellipsoid 
   %  created using the earth flattening factor from the selected geopotential model.
   %  Note:  When using SP elsets (TLE type 6, SPVEC, or VCM), calling SatStateGetSatDataAll 
   %  will implicitly call SpInit in order to extract the mu value from the GEO file the elset is tied to.  
   %  The elset must have a valid GEO directory available or an error will be returned.
   autoload("SatStateGetSatDataAll",strcat(OctFilePath,"SatState.oct"));
   
   %  Retrieves an individual field of a satellite. 
   autoload("SatStateGetSatDataField",strcat(OctFilePath,"SatState.oct"));
   
   %  Initializes a TLE, SPVEC, or VCM in preparation for propagation, or an EXTEPHEM in preparation for interpolation
   autoload("SatStateInitSat",strcat(OctFilePath,"SatState.oct"));
   
   %  Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
   %  The satellite is propagated/interpolated to the specified time calculated in minutes since the satellite's epoch time
   autoload("SatStateMse",strcat(OctFilePath,"SatState.oct"));
   
   %  Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
   %  The satellite is propagated/interpolated to the specified time calculated in days since 1950, UTC.
   autoload("SatStateDs50UTC",strcat(OctFilePath,"SatState.oct"));
   
   %  Returns additional propagated/interpolated results (reserved for future implementation)
   %  Reserved for future implementation
   %  Use this function immediately after the call to SatStateMse or SatStateDs50UTC. 
   autoload("SatStateGetPropOut",strcat(OctFilePath,"SatState.oct"));
   
   %  Returns various ephemeris comparison results between two satellite states.
   %  <br>
   %  The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
   %  defined by the position vector (radial) and the angular momentum vector (cross-track).
   autoload("SatStateEphCom",strcat(OctFilePath,"SatState.oct"));
   
   %  Returns various ephemeris comparison results between two satellite states (_OS one step) .
   %  <br>
   %  The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
   %  defined by the position vector (radial) and the angular momentum vector (cross-track).
   autoload("SatStateEphCom_OS",strcat(OctFilePath,"SatState.oct"));
   
   %  Determines if a satellite contains covariance matrix. 
   %  0=no, 1=yes
   autoload("SatStateHasCovMtx",strcat(OctFilePath,"SatState.oct"));
   
   %  Propagates/Interpolates UVW covariance matrix from VCM/External ephemeris to the time in days since 1950
   autoload("SatStateGetCovUVW",strcat(OctFilePath,"SatState.oct"));
   
   %  Generate external ephemeris file for the specified satellite (via its unique satKey) 
   %  Note: No need to initialize the satellite before this call. If it was intialized, it will be removed after this call
   autoload("SatStateGenEphFile",strcat(OctFilePath,"SatState.oct"));
   
   %  Finds the time of ascending nodal crossing of the specified satellite prior to an input time in days since 1950 TAI
   autoload("GetNodalCrossingPriorToTime",strcat(OctFilePath,"SatState.oct"));
   
   %  Get the Gobs parameters for a TLE
   autoload("GetGobsParams",strcat(OctFilePath,"SatState.oct"));
   
   %  Does an XP GOBS comparison
   autoload("GobsCom",strcat(OctFilePath,"SatState.oct"));
   
   %  Does an XP GOBS comparison using gobs arrays
   autoload("GobsComArr",strcat(OctFilePath,"SatState.oct"));
   LoadSatStateDll;
endfunction
% ========================= End of auto generated code ==========================
