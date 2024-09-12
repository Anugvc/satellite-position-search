% This wrapper file was generated automatically by the GenDllWrappers program.
function freeSatState()   
   % Indexes of available satellite data fields
   % Satellite epoch time in days since 1950 UTC
   global XF_SATFIELD_EPOCHUTC;
   % Mean anomaly (deg)
   global XF_SATFIELD_MNANOM;
   % Right ascension of asending node (deg)
   global XF_SATFIELD_NODE;
   % Argument of perigee (deg)
   global XF_SATFIELD_OMEGA;
   % Satellite's period (min)
   global XF_SATFIELD_PERIOD;
   % Eccentricity
   global XF_SATFIELD_ECCEN;
   % Orbit inclination (deg)
   global XF_SATFIELD_INCLI;
   % Mean motion (rev/day)
   global XF_SATFIELD_MNMOTION;
   % GP B* drag term (1/er)  or SP Radiation Pressure Coefficient
   global XF_SATFIELD_BFIELD;
   % Perigee height above the geoid (km)
   global XF_SATFIELD_PERIGEEHT;
   % Apogee height above the geoid (km)
   global XF_SATFIELD_APOGEEHT;
   % Perigee height above the center of the earth (km)
   global XF_SATFIELD_PERIGEE;
   % Apogee height above the center of the earth (km)
   global XF_SATFIELD_APOGEE;
   % Semimajor axis (km)
   global XF_SATFIELD_A;
   % Mean motion derivative (rev/day /2)
   global XF_SATFIELD_NDOT;
   % Satellite category (Synchronous, Deep space, Decaying, Routine)
   global XF_SATFIELD_SATCAT;
   % Astat 3 Height multiplier
   global XF_SATFIELD_HTM3;
   % Center of mass offset (m)
   global XF_SATFIELD_CMOFFSET;
   % Unused
   global XF_SATFIELD_N2DOT;
   % GP node dot (deg/s)
   global XF_SATFIELD_NODEDOT;
   % GP only - the last time when propagation has error
   global XF_SATFIELD_ERRORTIME;
   % value of mu
   global XF_SATFIELD_MU;
   
   
   %*******************************************************************************
   
   % Indexes of available deltas
   % delta position (km)
   global XA_DELTA_POS;
   % delta time (sec)
   global XA_DELTA_TIME;
   % delta position in radial direction (km)
   global XA_DELTA_PRADIAL;
   % delta position in in-track direction (km)
   global XA_DELTA_PINTRCK;
   % delta position in cross-track direction (km)
   global XA_DELTA_PCRSSTRCK;
   % delta velocity (km/sec)
   global XA_DELTA_VEL;
   % delta velocity in radial direction (km/sec)
   global XA_DELTA_VRADIAL;
   % delta velocity in in-track direction (km/sec)
   global XA_DELTA_VINTRCK;
   % delta velocity in cross-track direction (km/sec)
   global XA_DELTA_VCRSSTRCK;
   % delta Beta (deg)
   global XA_DELTA_BETA;
   % delta height (km)
   global XA_DELTA_HEIGHT;
   % delta angular momentum (deg)
   global XA_DELTA_ANGMOM;
   % 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on)
   global XA_DELTA_MHLNBS_UVW;
   % 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on)
   global XA_DELTA_MHLNBS_HTB;
   
   global XA_DELTA_SIZE;
   
   % Indexes of Satellite data fields
   % Satellite number I5
   global XF_SAT_NUM;
   % Satellite international designator A8
   global XF_SAT_NAME;
   % Element type I1 (old name XF_SAT_EPHTYPE)
   global XF_SAT_ELTTYPE;
   % Obsolete - should use new name XF_SAT_ELTTYPE instead
   global XF_SAT_EPHTYPE;
   % Epoch revolution number I6
   global XF_SAT_REVNUM;
   % Epoch time in days since 1950
   global XF_SAT_EPOCH;
   % BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg)
   global XF_SAT_BFIELD;
   % Element set number
   global XF_SAT_ELSETNUM;
   % Inclination (deg)
   global XF_SAT_INCLI;
   % Right ascension of ascending node (deg)
   global XF_SAT_NODE;
   % Eccentricity
   global XF_SAT_ECCEN;
   % Argument of perigee (deg)
   global XF_SAT_OMEGA;
   % Mean anomaly (deg)
   global XF_SAT_MNANOM;
   % Mean motion (revs/day)
   global XF_SAT_MNMOTN;
   % Satellite period (min)
   global XF_SAT_PERIOD;
   % Perigee Height(km)
   global XF_SAT_PERIGEEHT;
   % Apogee Height (km)
   global XF_SAT_APOGEEHT;
   % Perigee(km)
   global XF_SAT_PERIGEE;
   % Apogee (km)
   global XF_SAT_APOGEE;
   % Semi-major axis (km)
   global XF_SAT_A;
   
   
   % Indexes of SatState's load/save file task mode
   % Only load/save propagator control parameters
   global XF_TASK_CTRLONLY;
   % Only load/save orbital elements/external ephemeris data
   global XF_TASK_SATONLY;
   % Load/Save both 1 and 2
   global XF_TASK_BOTH;
   
   
   % Different external ephemeris file types
   % ITC file format
   global EPHFILETYPE_ITC;
   % ITC compact (without covariance matrix) file format
   global EPHFILETYPE_ITC_WOCOV;
   
   
   % Gobs records
   % Satellite number
   global XA_GOBS_SATNUM;
   % East Longitude
   global XA_GOBS_LONE;
   % Longitude Drift Rate
   global XA_GOBS_DRIFT;
   % satellite's relative energy (deg^2/sec^2) - only for GOBS
   global XA_GOBS_RELENERGY;
   % sin(incl)*sin(r.a. node)
   global XA_GOBS_WX;
   % -sin(incl)*cos(r.a. node)
   global XA_GOBS_WY;
   % cos(incl)
   global XA_GOBS_WZ;
   % af
   global XA_GOBS_AF;
   % ag
   global XA_GOBS_AG;
   % AGOM
   global XA_GOBS_AGOM;
   % Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   global XA_GOBS_TROUGH;
   
   global XA_GOBS_SIZE;
   
   
   % Indexes of GOBS limits
   % 0 - ignore trough logic, 1 - implement trough logic
   global XA_GOBS_LIM_TROUGH;
   % Primary satellite is plane changer
   global XA_GOBS_LIM_PCP;
   % Secondary satellite is plane changer
   global XA_GOBS_LIM_PCS;
   % Primary satellite is plane changer
   global XA_GOBS_LIM_ACTIVEP;
   % Secondary satellite is plane changer
   global XA_GOBS_LIM_ACTIVES;
   % Min Longitude of sat
   global XA_GOBS_LIM_LONGMIN;
   % Max Longitude of sat
   global XA_GOBS_LIM_LONGMAX;
   % Min Agom of sat
   global XA_GOBS_LIM_AGOMMIN;
   % Max Agom of sat
   global XA_GOBS_LIM_AGOMMAX;
   
   global XA_GOBS_LIM_SIZE;
   
   
   % Indexes of available deltas
   % Primary satellite number
   global XA_GOBS_DELTA_PRIMESAT;
   % Secondary satellite number
   global XA_GOBS_DELTA_SECONDARYSAT;
   % GOBS correlation score
   global XA_GOBS_DELTA_ASTAT;
   % delta orbital plane
   global XA_GOBS_DELTA_DOP;
   % delta shape
   global XA_GOBS_DELTA_DSHAPE;
   % delta Relative Energy (deg^2/day^2)
   global XA_GOBS_DELTA_DRELENERGY;
   % Longitude of Primary
   global XA_GOBS_DELTA_LONGP;
   % Minimum Longitude of Secondary
   global XA_GOBS_DELTA_LONGMIN;
   % Maximum Longitude of Secondary
   global XA_GOBS_DELTA_LONGMAX;
   % 0 - opposite throughs or drift rates, 1 - trough or drift rates match
   global XA_GOBS_DELTA_TROUGH;
   % 0|1    Plane Match Flag
   global XA_GOBS_DELTA_PLANE;
   % 0|1    Shape Match Flag
   global XA_GOBS_DELTA_SHAPE;
   % 0|1    Energy Match Flag
   global XA_GOBS_DELTA_ENERGY;
   % 0|1|2  Longitude Match Flag (2 is fuzzy match)
   global XA_GOBS_DELTA_LONG;
   % 0|1    Agom Match Flag
   global XA_GOBS_DELTA_AGOM;
   
   global XA_GOBS_DELTA_SIZE;
   
   
   %*******************************************************************************
   
   
   % Indexes of available satellite data fields
   % Satellite epoch time in days since 1950 UTC
   clear XF_SATFIELD_EPOCHUTC;
   % Mean anomaly (deg)
   clear XF_SATFIELD_MNANOM;
   % Right ascension of asending node (deg)
   clear XF_SATFIELD_NODE;
   % Argument of perigee (deg)
   clear XF_SATFIELD_OMEGA;
   % Satellite's period (min)
   clear XF_SATFIELD_PERIOD;
   % Eccentricity
   clear XF_SATFIELD_ECCEN;
   % Orbit inclination (deg)
   clear XF_SATFIELD_INCLI;
   % Mean motion (rev/day)
   clear XF_SATFIELD_MNMOTION;
   % GP B* drag term (1/er)  or SP Radiation Pressure Coefficient
   clear XF_SATFIELD_BFIELD;
   % Perigee height above the geoid (km)
   clear XF_SATFIELD_PERIGEEHT;
   % Apogee height above the geoid (km)
   clear XF_SATFIELD_APOGEEHT;
   % Perigee height above the center of the earth (km)
   clear XF_SATFIELD_PERIGEE;
   % Apogee height above the center of the earth (km)
   clear XF_SATFIELD_APOGEE;
   % Semimajor axis (km)
   clear XF_SATFIELD_A;
   % Mean motion derivative (rev/day /2)
   clear XF_SATFIELD_NDOT;
   % Satellite category (Synchronous, Deep space, Decaying, Routine)
   clear XF_SATFIELD_SATCAT;
   % Astat 3 Height multiplier
   clear XF_SATFIELD_HTM3;
   % Center of mass offset (m)
   clear XF_SATFIELD_CMOFFSET;
   % Unused
   clear XF_SATFIELD_N2DOT;
   % GP node dot (deg/s)
   clear XF_SATFIELD_NODEDOT;
   % GP only - the last time when propagation has error
   clear XF_SATFIELD_ERRORTIME;
   % value of mu
   clear XF_SATFIELD_MU;
   
   
   %*******************************************************************************
   
   % Indexes of available deltas
   % delta position (km)
   clear XA_DELTA_POS;
   % delta time (sec)
   clear XA_DELTA_TIME;
   % delta position in radial direction (km)
   clear XA_DELTA_PRADIAL;
   % delta position in in-track direction (km)
   clear XA_DELTA_PINTRCK;
   % delta position in cross-track direction (km)
   clear XA_DELTA_PCRSSTRCK;
   % delta velocity (km/sec)
   clear XA_DELTA_VEL;
   % delta velocity in radial direction (km/sec)
   clear XA_DELTA_VRADIAL;
   % delta velocity in in-track direction (km/sec)
   clear XA_DELTA_VINTRCK;
   % delta velocity in cross-track direction (km/sec)
   clear XA_DELTA_VCRSSTRCK;
   % delta Beta (deg)
   clear XA_DELTA_BETA;
   % delta height (km)
   clear XA_DELTA_HEIGHT;
   % delta angular momentum (deg)
   clear XA_DELTA_ANGMOM;
   % 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on)
   clear XA_DELTA_MHLNBS_UVW;
   % 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on)
   clear XA_DELTA_MHLNBS_HTB;
   
   clear XA_DELTA_SIZE;
   
   % Indexes of Satellite data fields
   % Satellite number I5
   clear XF_SAT_NUM;
   % Satellite international designator A8
   clear XF_SAT_NAME;
   % Element type I1 (old name XF_SAT_EPHTYPE)
   clear XF_SAT_ELTTYPE;
   % Obsolete - should use new name XF_SAT_ELTTYPE instead
   clear XF_SAT_EPHTYPE;
   % Epoch revolution number I6
   clear XF_SAT_REVNUM;
   % Epoch time in days since 1950
   clear XF_SAT_EPOCH;
   % BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg)
   clear XF_SAT_BFIELD;
   % Element set number
   clear XF_SAT_ELSETNUM;
   % Inclination (deg)
   clear XF_SAT_INCLI;
   % Right ascension of ascending node (deg)
   clear XF_SAT_NODE;
   % Eccentricity
   clear XF_SAT_ECCEN;
   % Argument of perigee (deg)
   clear XF_SAT_OMEGA;
   % Mean anomaly (deg)
   clear XF_SAT_MNANOM;
   % Mean motion (revs/day)
   clear XF_SAT_MNMOTN;
   % Satellite period (min)
   clear XF_SAT_PERIOD;
   % Perigee Height(km)
   clear XF_SAT_PERIGEEHT;
   % Apogee Height (km)
   clear XF_SAT_APOGEEHT;
   % Perigee(km)
   clear XF_SAT_PERIGEE;
   % Apogee (km)
   clear XF_SAT_APOGEE;
   % Semi-major axis (km)
   clear XF_SAT_A;
   
   
   % Indexes of SatState's load/save file task mode
   % Only load/save propagator control parameters
   clear XF_TASK_CTRLONLY;
   % Only load/save orbital elements/external ephemeris data
   clear XF_TASK_SATONLY;
   % Load/Save both 1 and 2
   clear XF_TASK_BOTH;
   
   
   % Different external ephemeris file types
   % ITC file format
   clear EPHFILETYPE_ITC;
   % ITC compact (without covariance matrix) file format
   clear EPHFILETYPE_ITC_WOCOV;
   
   
   % Gobs records
   % Satellite number
   clear XA_GOBS_SATNUM;
   % East Longitude
   clear XA_GOBS_LONE;
   % Longitude Drift Rate
   clear XA_GOBS_DRIFT;
   % satellite's relative energy (deg^2/sec^2) - only for GOBS
   clear XA_GOBS_RELENERGY;
   % sin(incl)*sin(r.a. node)
   clear XA_GOBS_WX;
   % -sin(incl)*cos(r.a. node)
   clear XA_GOBS_WY;
   % cos(incl)
   clear XA_GOBS_WZ;
   % af
   clear XA_GOBS_AF;
   % ag
   clear XA_GOBS_AG;
   % AGOM
   clear XA_GOBS_AGOM;
   % Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   clear XA_GOBS_TROUGH;
   
   clear XA_GOBS_SIZE;
   
   
   % Indexes of GOBS limits
   % 0 - ignore trough logic, 1 - implement trough logic
   clear XA_GOBS_LIM_TROUGH;
   % Primary satellite is plane changer
   clear XA_GOBS_LIM_PCP;
   % Secondary satellite is plane changer
   clear XA_GOBS_LIM_PCS;
   % Primary satellite is plane changer
   clear XA_GOBS_LIM_ACTIVEP;
   % Secondary satellite is plane changer
   clear XA_GOBS_LIM_ACTIVES;
   % Min Longitude of sat
   clear XA_GOBS_LIM_LONGMIN;
   % Max Longitude of sat
   clear XA_GOBS_LIM_LONGMAX;
   % Min Agom of sat
   clear XA_GOBS_LIM_AGOMMIN;
   % Max Agom of sat
   clear XA_GOBS_LIM_AGOMMAX;
   
   clear XA_GOBS_LIM_SIZE;
   
   
   % Indexes of available deltas
   % Primary satellite number
   clear XA_GOBS_DELTA_PRIMESAT;
   % Secondary satellite number
   clear XA_GOBS_DELTA_SECONDARYSAT;
   % GOBS correlation score
   clear XA_GOBS_DELTA_ASTAT;
   % delta orbital plane
   clear XA_GOBS_DELTA_DOP;
   % delta shape
   clear XA_GOBS_DELTA_DSHAPE;
   % delta Relative Energy (deg^2/day^2)
   clear XA_GOBS_DELTA_DRELENERGY;
   % Longitude of Primary
   clear XA_GOBS_DELTA_LONGP;
   % Minimum Longitude of Secondary
   clear XA_GOBS_DELTA_LONGMIN;
   % Maximum Longitude of Secondary
   clear XA_GOBS_DELTA_LONGMAX;
   % 0 - opposite throughs or drift rates, 1 - trough or drift rates match
   clear XA_GOBS_DELTA_TROUGH;
   % 0|1    Plane Match Flag
   clear XA_GOBS_DELTA_PLANE;
   % 0|1    Shape Match Flag
   clear XA_GOBS_DELTA_SHAPE;
   % 0|1    Energy Match Flag
   clear XA_GOBS_DELTA_ENERGY;
   % 0|1|2  Longitude Match Flag (2 is fuzzy match)
   clear XA_GOBS_DELTA_LONG;
   % 0|1    Agom Match Flag
   clear XA_GOBS_DELTA_AGOM;
   
   clear XA_GOBS_DELTA_SIZE;
   
   
   %*******************************************************************************
   
   FreeSatStateDll;
   clear LoadSatStateDll;
   clear FreeSatStateDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes SatState DLL for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. 
   %  The error occurs if the users forget to load and initialize all the prerequisite DLLs, 
   %  as listed in the DLL Prerequisite section, before using this DLL.
   clear SatStateInit
   
   %  Returns information about the current version of SatState DLL. 
   %  The information is placed in the string parameter passed in.
   %  The returned string provides information about the version number, build date, and the platform of the SatState DLL. 
   clear SatStateGetInfo
   
   %  Loads any orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls from an input text file
   %  Internally, if taskMode = 1, this function calls SpProp.SpLoadFile(); 
   %  and if taskMode = 2, this function calls Tle.TleLoadFile(), SpVec.SpVecLoadFile(), Vcm.VcmLoadFile(), ExtEphem.ExtEphLoadFile(); 
   %  if taskMode = 3, both tasks (1 and 2) are executed.
   clear SatStateLoadFile
   
   %  Saves currently loaded orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls to a file
   %  The purpose of this function is to save the current SatState-related settings, usually used in GUI applications, for future use.
   %  
   %  Internally, if taskMode = 1, this function calls SpProp.SpSaveFile(); 
   %  and if taskMode = 2, this function calls Tle.TleSaveFile(), SpVec.SpVecSavedFile(), Vcm.VcmSaveFile(), ExtEphem.ExtEphSaveFile(); 
   %  if taskMode = 3, both tasks (1 and 2) are executed.
   clear SatStateSaveFile
   
   %  Removes a satellite from the appropriate elset DLL's set of loaded satellites. 
   %  The function will automatically choose the proper set of elsets from which to remove the satellite. 
   %  The choices are: Tle.dll, SpVec.dll, Vcm.dll, or ExtEphem.dll   
   %  If the users enter an invalid satKey (a satKey that does not exist in memory), the function will return a non-zero value indicating an error.
   clear SatStateRemoveSat
   
   %  Removes a satellite from the appropriate sets of loaded satellites (elset dll and propagator dll). 
   %  The function will remove the satellite from the elset DLL's sets as in SatStateRemoveSat() and 
   %  from the appropriate propagator's set of initialized satellites if it exists there.
   clear SatStateRemoveSatAll
   
   %  Removes all satellites from all of the loaded data sets. 
   %  It will remove all satellites from the following sets: Tle, SpVec, Vcm, ExtEphem, Sgp4Prop, and SpProp
   clear SatStateRemoveAllSats
   
   %  Resets propagator settings back to their default values
   clear SatStateReset
   
   %  Returns the total number of satellites (TLE's, SPVEC's, VCM's, and EXTEPHEM's) currently loaded in memory
   %  See SatStateGetLoaded for example.
   %  This function is useful for dynamically allocating memory for the array that is passed to the function SatStateGetLoaded.
   clear SatStateGetCount
   
   %  Retrieves all of the currently loaded satKeys. 
   %  These satKeys can be used to access the internal data for the satellites.
   %  It is recommended that SatStateGetCount() is used to count how many satellites are currently loaded in memory. 
   %  The user can then use this number to dynamically allocate the satKeys array and pass it to this function.
   %  
   %  If the user prefers to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   clear SatStateGetLoaded
   
   %  Returns the first satKey that contains the specified satellite number in all sets of loaded satellites. 
   %  These sets will be searched: Tle, SpVec, Vcm, and ExtEphem.
   %  This function is useful when a satellite is used in applications that require only one record for one 
   %  satellite and the applications refer to that satellite by its satellite number. 
   %  However, the Astrodynamic Standard Shared library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   clear SatStateNumToKey
   
   %  Retrieves the data which is common to all satellite types. 
   %  All common fields are retrieved with a single function call.
   %  The apogee height and perigee height are defined as the distance above an ellipsoid 
   %  created using the earth flattening factor from the selected geopotential model.
   %  Note:  When using SP elsets (TLE type 6, SPVEC, or VCM), calling SatStateGetSatDataAll 
   %  will implicitly call SpInit in order to extract the mu value from the GEO file the elset is tied to.  
   %  The elset must have a valid GEO directory available or an error will be returned.
   clear SatStateGetSatDataAll
   
   %  Retrieves an individual field of a satellite. 
   clear SatStateGetSatDataField
   
   %  Initializes a TLE, SPVEC, or VCM in preparation for propagation, or an EXTEPHEM in preparation for interpolation
   clear SatStateInitSat
   
   %  Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
   %  The satellite is propagated/interpolated to the specified time calculated in minutes since the satellite's epoch time
   clear SatStateMse
   
   %  Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
   %  The satellite is propagated/interpolated to the specified time calculated in days since 1950, UTC.
   clear SatStateDs50UTC
   
   %  Returns additional propagated/interpolated results (reserved for future implementation)
   %  Reserved for future implementation
   %  Use this function immediately after the call to SatStateMse or SatStateDs50UTC. 
   clear SatStateGetPropOut
   
   %  Returns various ephemeris comparison results between two satellite states.
   %  <br>
   %  The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
   %  defined by the position vector (radial) and the angular momentum vector (cross-track).
   clear SatStateEphCom
   
   %  Returns various ephemeris comparison results between two satellite states (_OS one step) .
   %  <br>
   %  The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
   %  defined by the position vector (radial) and the angular momentum vector (cross-track).
   clear SatStateEphCom_OS
   
   %  Determines if a satellite contains covariance matrix. 
   %  0=no, 1=yes
   clear SatStateHasCovMtx
   
   %  Propagates/Interpolates UVW covariance matrix from VCM/External ephemeris to the time in days since 1950
   clear SatStateGetCovUVW
   
   %  Generate external ephemeris file for the specified satellite (via its unique satKey) 
   %  Note: No need to initialize the satellite before this call. If it was intialized, it will be removed after this call
   clear SatStateGenEphFile
   
   %  Finds the time of ascending nodal crossing of the specified satellite prior to an input time in days since 1950 TAI
   clear GetNodalCrossingPriorToTime
   
   %  Get the Gobs parameters for a TLE
   clear GetGobsParams
   
   %  Does an XP GOBS comparison
   clear GobsCom
   
   %  Does an XP GOBS comparison using gobs arrays
   clear GobsComArr
endfunction
% ========================= End of auto generated code ==========================
