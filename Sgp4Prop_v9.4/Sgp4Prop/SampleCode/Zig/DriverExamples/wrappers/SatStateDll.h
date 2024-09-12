// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes SatState DLL for use in the program
// If this function returns an error, it is recommended that the users stop the program immediately. 
// The error occurs if the users forget to load and initialize all the prerequisite DLLs, 
// as listed in the DLL Prerequisite section, before using this DLL.
int SatStateInit(long apAddr);

// Returns information about the current version of SatState DLL. 
// The information is placed in the string parameter passed in.
// The returned string provides information about the version number, build date, and the platform of the SatState DLL. 
void SatStateGetInfo(char infoStr[128]);

// Loads any orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls from an input text file
// Internally, if taskMode = 1, this function calls SpProp.SpLoadFile(); 
// and if taskMode = 2, this function calls Tle.TleLoadFile(), SpVec.SpVecLoadFile(), Vcm.VcmLoadFile(), ExtEphem.ExtEphLoadFile(); 
// if taskMode = 3, both tasks (1 and 2) are executed.
int SatStateLoadFile(char inputFile[512], int xf_Task);

// Saves currently loaded orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls to a file
// The purpose of this function is to save the current SatState-related settings, usually used in GUI applications, for future use.
// 
// Internally, if taskMode = 1, this function calls SpProp.SpSaveFile(); 
// and if taskMode = 2, this function calls Tle.TleSaveFile(), SpVec.SpVecSavedFile(), Vcm.VcmSaveFile(), ExtEphem.ExtEphSaveFile(); 
// if taskMode = 3, both tasks (1 and 2) are executed.
int SatStateSaveFile(char outFile[512], int saveMode, int saveForm, int xf_Task);

// Removes a satellite from the appropriate elset DLL's set of loaded satellites. 
// The function will automatically choose the proper set of elsets from which to remove the satellite. 
// The choices are: Tle.dll, SpVec.dll, Vcm.dll, or ExtEphem.dll   
// If the users enter an invalid satKey (a satKey that does not exist in memory), the function will return a non-zero value indicating an error.
int SatStateRemoveSat(long satKey);

// Removes a satellite from the appropriate sets of loaded satellites (elset dll and propagator dll). 
// The function will remove the satellite from the elset DLL's sets as in SatStateRemoveSat() and 
// from the appropriate propagator's set of initialized satellites if it exists there.
int SatStateRemoveSatAll(long satKey);

// Removes all satellites from all of the loaded data sets. 
// It will remove all satellites from the following sets: Tle, SpVec, Vcm, ExtEphem, Sgp4Prop, and SpProp
int SatStateRemoveAllSats();

// Resets propagator settings back to their default values
void SatStateReset();

// Returns the total number of satellites (TLE's, SPVEC's, VCM's, and EXTEPHEM's) currently loaded in memory
// See SatStateGetLoaded for example.
// This function is useful for dynamically allocating memory for the array that is passed to the function SatStateGetLoaded.
int SatStateGetCount();

// Retrieves all of the currently loaded satKeys. 
// These satKeys can be used to access the internal data for the satellites.
// It is recommended that SatStateGetCount() is used to count how many satellites are currently loaded in memory. 
// The user can then use this number to dynamically allocate the satKeys array and pass it to this function.
// 
// If the user prefers to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
void SatStateGetLoaded(int order, long satKeys[]);

// Returns the first satKey that contains the specified satellite number in all sets of loaded satellites. 
// These sets will be searched: Tle, SpVec, Vcm, and ExtEphem.
// This function is useful when a satellite is used in applications that require only one record for one 
// satellite and the applications refer to that satellite by its satellite number. 
// However, the Astrodynamic Standard Shared library is only working with satKeys, this function helps to return the associated satKey of that satellite.
long SatStateNumToKey(int satNum);

// Retrieves the data which is common to all satellite types. 
// All common fields are retrieved with a single function call.
// The apogee height and perigee height are defined as the distance above an ellipsoid 
// created using the earth flattening factor from the selected geopotential model.
// Note:  When using SP elsets (TLE type 6, SPVEC, or VCM), calling SatStateGetSatDataAll 
// will implicitly call SpInit in order to extract the mu value from the GEO file the elset is tied to.  
// The elset must have a valid GEO directory available or an error will be returned.
int SatStateGetSatDataAll(long satKey, int* satNum, char satName[8], int* eltType, int* revNum, double* epochDs50UTC, double* bField, int* elsetNum, double* incli, double* node, double* eccen, double* omega, double* mnAnomaly, double* mnMotion, double* period, double* perigeeHt, double* apogeeHt, double* perigee, double* apogee, double* a);

// Retrieves an individual field of a satellite. 
int SatStateGetSatDataField(long satKey, int xf_Sat, char retVal[512]);

// Initializes a TLE, SPVEC, or VCM in preparation for propagation, or an EXTEPHEM in preparation for interpolation
int SatStateInitSat(long satKey);

// Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
// The satellite is propagated/interpolated to the specified time calculated in minutes since the satellite's epoch time
int SatStateMse(long satKey, double mse, double* ds50UTC, int* revNum, double pos[3], double vel[3], double llh[3]);

// Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
// The satellite is propagated/interpolated to the specified time calculated in days since 1950, UTC.
int SatStateDs50UTC(long satKey, double ds50UTC, double* mse, int* revNum, double pos[3], double vel[3], double llh[3]);

// Returns additional propagated/interpolated results (reserved for future implementation)
// Reserved for future implementation
// Use this function immediately after the call to SatStateMse or SatStateDs50UTC. 
int SatStateGetPropOut(long satKey, int index, double destArr[128]);

// Returns various ephemeris comparison results between two satellite states.
// <br>
// The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
// defined by the position vector (radial) and the angular momentum vector (cross-track).
int SatStateEphCom(long primSatKey, long secSatKey, double ds50UTC, int uvwFlag, double xa_Delta[100]);

// Returns various ephemeris comparison results between two satellite states (_OS one step) .
// <br>
// The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
// defined by the position vector (radial) and the angular momentum vector (cross-track).
void SatStateEphCom_OS(double priPosVel[6], double secPosVel[6], double ds50UTC, int uvwFlag, double xa_Delta[100]);

// Determines if a satellite contains covariance matrix. 
// 0=no, 1=yes
int SatStateHasCovMtx(long satKey);

// Propagates/Interpolates UVW covariance matrix from VCM/External ephemeris to the time in days since 1950
int SatStateGetCovUVW(long satKey, double ds50UTC, double covUVW[6][6]);

// Generate external ephemeris file for the specified satellite (via its unique satKey) 
// Note: No need to initialize the satellite before this call. If it was intialized, it will be removed after this call
int SatStateGenEphFile(long satKey, double startDs50UTC, double stopDs50UTC, double stepSizeSecs, char ephFileName[512], int ephFileType);

// Finds the time of ascending nodal crossing of the specified satellite prior to an input time in days since 1950 TAI
double GetNodalCrossingPriorToTime(long satKey, double ds50TAI);

// Get the Gobs parameters for a TLE
void GetGobsParams(long satKey, double ds50UTC, double xa_gobs[32], int* errCode);

// Does an XP GOBS comparison
int GobsCom(long primSatKey, long secSatKey, double ds50UTC, double xa_gobs_lim[16], double xa_gobs_delta[16]);

// Does an XP GOBS comparison using gobs arrays
void GobsComArr(double xa_gobs_prim[32], double xa_gobs_sec[32], double xa_gobs_lim[16], double xa_gobs_delta[16]);

// Indexes of available satellite data fields
// Satellite epoch time in days since 1950 UTC
#define XF_SATFIELD_EPOCHUTC   1
// Mean anomaly (deg)
#define XF_SATFIELD_MNANOM     2
// Right ascension of asending node (deg)
#define XF_SATFIELD_NODE       3
// Argument of perigee (deg)
#define XF_SATFIELD_OMEGA      4
// Satellite's period (min)
#define XF_SATFIELD_PERIOD     5
// Eccentricity
#define XF_SATFIELD_ECCEN      6
// Orbit inclination (deg)
#define XF_SATFIELD_INCLI      7
// Mean motion (rev/day)
#define XF_SATFIELD_MNMOTION   8
// GP B* drag term (1/er)  or SP Radiation Pressure Coefficient
#define XF_SATFIELD_BFIELD     9
// Perigee height above the geoid (km)
#define XF_SATFIELD_PERIGEEHT 10
// Apogee height above the geoid (km)
#define XF_SATFIELD_APOGEEHT  11
// Perigee height above the center of the earth (km)
#define XF_SATFIELD_PERIGEE   12
// Apogee height above the center of the earth (km)
#define XF_SATFIELD_APOGEE    13
// Semimajor axis (km)
#define XF_SATFIELD_A         14
// Mean motion derivative (rev/day /2)
#define XF_SATFIELD_NDOT      15
// Satellite category (Synchronous, Deep space, Decaying, Routine)
#define XF_SATFIELD_SATCAT    16
// Astat 3 Height multiplier
#define XF_SATFIELD_HTM3      17
// Center of mass offset (m)
#define XF_SATFIELD_CMOFFSET  18
// Unused
#define XF_SATFIELD_N2DOT     19
// GP node dot (deg/s)
#define XF_SATFIELD_NODEDOT   20
// GP only - the last time when propagation has error
#define XF_SATFIELD_ERRORTIME 21
// value of mu
#define XF_SATFIELD_MU        22


//*******************************************************************************

// Indexes of available deltas
// delta position (km)
#define XA_DELTA_POS           0
// delta time (sec)
#define XA_DELTA_TIME          1
// delta position in radial direction (km)
#define XA_DELTA_PRADIAL       2
// delta position in in-track direction (km)
#define XA_DELTA_PINTRCK       3
// delta position in cross-track direction (km)
#define XA_DELTA_PCRSSTRCK     4
// delta velocity (km/sec)
#define XA_DELTA_VEL           5
// delta velocity in radial direction (km/sec)
#define XA_DELTA_VRADIAL       6
// delta velocity in in-track direction (km/sec)
#define XA_DELTA_VINTRCK       7
// delta velocity in cross-track direction (km/sec)
#define XA_DELTA_VCRSSTRCK     8
// delta Beta (deg)
#define XA_DELTA_BETA          9
// delta height (km)
#define XA_DELTA_HEIGHT       10
// delta angular momentum (deg)
#define XA_DELTA_ANGMOM       11
// 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on)
#define XA_DELTA_MHLNBS_UVW   12
// 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on)
#define XA_DELTA_MHLNBS_HTB   13

#define XA_DELTA_SIZE        100

// Indexes of Satellite data fields
// Satellite number I5
#define XF_SAT_NUM        1
// Satellite international designator A8
#define XF_SAT_NAME       2
// Element type I1 (old name XF_SAT_EPHTYPE)
#define XF_SAT_ELTTYPE    3
// Obsolete - should use new name XF_SAT_ELTTYPE instead
#define XF_SAT_EPHTYPE    3
// Epoch revolution number I6
#define XF_SAT_REVNUM     4
// Epoch time in days since 1950
#define XF_SAT_EPOCH      5
// BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg)
#define XF_SAT_BFIELD     6
// Element set number
#define XF_SAT_ELSETNUM   7
// Inclination (deg)
#define XF_SAT_INCLI      8
// Right ascension of ascending node (deg)
#define XF_SAT_NODE       9
// Eccentricity
#define XF_SAT_ECCEN     10
// Argument of perigee (deg)
#define XF_SAT_OMEGA     11
// Mean anomaly (deg)
#define XF_SAT_MNANOM    12
// Mean motion (revs/day)
#define XF_SAT_MNMOTN    13
// Satellite period (min)
#define XF_SAT_PERIOD    14
// Perigee Height(km)
#define XF_SAT_PERIGEEHT 15
// Apogee Height (km)
#define XF_SAT_APOGEEHT  16
// Perigee(km)
#define XF_SAT_PERIGEE   17
// Apogee (km)
#define XF_SAT_APOGEE    18
// Semi-major axis (km)
#define XF_SAT_A         19


// Indexes of SatState's load/save file task mode
// Only load/save propagator control parameters
#define XF_TASK_CTRLONLY  1
// Only load/save orbital elements/external ephemeris data
#define XF_TASK_SATONLY   2
// Load/Save both 1 and 2
#define XF_TASK_BOTH      3


// Different external ephemeris file types
// ITC file format
#define EPHFILETYPE_ITC           1
// ITC compact (without covariance matrix) file format
#define EPHFILETYPE_ITC_WOCOV     2


// Gobs records
// Satellite number
#define XA_GOBS_SATNUM      0
// East Longitude
#define XA_GOBS_LONE        1
// Longitude Drift Rate
#define XA_GOBS_DRIFT       2
// satellite's relative energy (deg^2/sec^2) - only for GOBS
#define XA_GOBS_RELENERGY   3
// sin(incl)*sin(r.a. node)
#define XA_GOBS_WX          4
// -sin(incl)*cos(r.a. node)
#define XA_GOBS_WY          5
// cos(incl)
#define XA_GOBS_WZ          6
// af
#define XA_GOBS_AF          7
// ag
#define XA_GOBS_AG          8
// AGOM
#define XA_GOBS_AGOM        9
// Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
#define XA_GOBS_TROUGH     10

#define XA_GOBS_SIZE       32


// Indexes of GOBS limits
// 0 - ignore trough logic, 1 - implement trough logic
#define XA_GOBS_LIM_TROUGH        0
// Primary satellite is plane changer
#define XA_GOBS_LIM_PCP           1
// Secondary satellite is plane changer
#define XA_GOBS_LIM_PCS           2
// Primary satellite is plane changer
#define XA_GOBS_LIM_ACTIVEP       3
// Secondary satellite is plane changer
#define XA_GOBS_LIM_ACTIVES       4
// Min Longitude of sat
#define XA_GOBS_LIM_LONGMIN       5
// Max Longitude of sat
#define XA_GOBS_LIM_LONGMAX       6
// Min Agom of sat
#define XA_GOBS_LIM_AGOMMIN       7
// Max Agom of sat
#define XA_GOBS_LIM_AGOMMAX       8

#define XA_GOBS_LIM_SIZE         16


// Indexes of available deltas
// Primary satellite number
#define XA_GOBS_DELTA_PRIMESAT       0
// Secondary satellite number
#define XA_GOBS_DELTA_SECONDARYSAT   1
// GOBS correlation score
#define XA_GOBS_DELTA_ASTAT          2
// delta orbital plane
#define XA_GOBS_DELTA_DOP            3
// delta shape
#define XA_GOBS_DELTA_DSHAPE         4
// delta Relative Energy (deg^2/day^2)
#define XA_GOBS_DELTA_DRELENERGY     5
// Longitude of Primary
#define XA_GOBS_DELTA_LONGP          6
// Minimum Longitude of Secondary
#define XA_GOBS_DELTA_LONGMIN        7
// Maximum Longitude of Secondary
#define XA_GOBS_DELTA_LONGMAX        8
// 0 - opposite throughs or drift rates, 1 - trough or drift rates match
#define XA_GOBS_DELTA_TROUGH         9
// 0|1    Plane Match Flag
#define XA_GOBS_DELTA_PLANE         10
// 0|1    Shape Match Flag
#define XA_GOBS_DELTA_SHAPE         11
// 0|1    Energy Match Flag
#define XA_GOBS_DELTA_ENERGY        12
// 0|1|2  Longitude Match Flag (2 is fuzzy match)
#define XA_GOBS_DELTA_LONG          13
// 0|1    Agom Match Flag
#define XA_GOBS_DELTA_AGOM          14

#define XA_GOBS_DELTA_SIZE          16


//*******************************************************************************

// ========================= End of auto generated code ==========================
