// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes SpProp DLL for use in the program
// If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL. 
int SpInit(long apAddr);

// Returns information about the current version of SpProp DLL. The information is placed in the string parameter you pass in
// The returned string provides information about the version number, build date, and the platform of the Sp DLL. 
void SpGetInfo(char infoStr[128]);

// Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) from a text file
int SpLoadFile(char spInputFile[512]);

// Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) and SP elsets from a text file
int SpLoadFileAll(char spInputFile[512]);

// Saves currently loaded SP-related parameters (SP application controls, prediction controls, integration controls) to a file
// The purpose of this function is to save the current SP-related settings, usually used in GUI applications, for future use.
int SpSaveFile(char spFile[512], int saveMode, int saveForm);

// Initializes an SP satellite from an SP TLE, SPVEC, or VCM
// Internally, when this function is called, the SpProp DLL will look into the right binary tree, based on the vector type extracted from the satKey, and search for the satKey. If found, the SpProp DLL will use the associated SP data to create an SP object for this satellite in its own binary tree. Subsequent calls to propagate this satellite will use the data in the SP object to compute the satellite's new state.
// 
// The users need to call this routine only once for each satellite they want to propagate or every time the satellite data, from which it was initialized, is changed. The call needs to be placed before any calls to the SP propagate routines (SpPropMse, SpPropDs50UTC...).
int SpInitSat(long satKey);

// Removes a satellite, represented by the satKey, from the set of currently loaded satellites
// Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
// If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
int SpRemoveSat(long satKey);

// Removes all currently loaded satellites from memory
// Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
// The function returns zero if all the satellites were removed successfully from the SpProp DLL's binary tree.
int SpRemoveAllSats();

// Returns the number of SP objects currently created. 
int SpGetCount();

// Removes all SP-related data from memory (Geo models, Flux records, JPL, DCA, etc.)
void SpReset();

// Retrieves the value of an SP application control parameter
// <br>
// The table below shows the values for the xf_SpApp parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>1 </td><td>Geopotential directory path</td></tr>
// <tr><td>2 </td><td>Buffer size</td></tr>
// <tr><td>3 </td><td>Run mode</td></tr>
// <tr><td>4 </td><td>Save partials data</td></tr>
// <tr><td>5 </td><td>Specter compatibility mode</td></tr>
// <tr><td>6 </td><td>Consider parameter</td></tr>
// <tr><td>7 </td><td>Decay altitude</td></tr>
// <tr><td>8 </td><td>Output coordinate system</td></tr>
// <tr><td>9 </td><td>Additional VCM options</td></tr>
// </table>
void SpGetApCtrl(int xf_SpApp, char valueStr[512]);

// Retrieves all SP application control parameters with a single function call
void SpGetApCtrlAll(char geoDir[512], int* bufSize, int* runMode, int* savePartials, int* isSpectr, double* consider, int* decayAlt, int* outCoord);

// Sets an SP application control parameter
// See SpGetApCtrl for a list of the values for the xf_SpApp parameter.
void SpSetApCtrl(int xf_SpApp, char valueStr[512]);

// Sets all SP application control parameters with a single function call
void SpSetApCtrlAll(char geoDir[512], int bufSize, int runMode, int savePartials, int isSpectr, double consider, int decayAlt, int outCoord);

// Retrieves the value of a numerical integration control parameter
// <br>
// The table below shows the values for xf_4P parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>1  </td><td> Geopotential model to use</td></tr>
// <tr><td>2  </td><td> Earth gravity pertubations flag</td></tr>
// <tr><td>3  </td><td> Drag pertubations flag </td></tr>
// <tr><td>4  </td><td> Radiation pressure pertubations flag</td></tr>
// <tr><td>5  </td><td> Lunar/Solar pertubations flag</td></tr>
// <tr><td>6  </td><td> F10 value</td></tr>
// <tr><td>7  </td><td> F10 average value</td></tr>
// <tr><td>8  </td><td> Ap value</td></tr>
// <tr><td>9  </td><td> Geopotential truncation order/degree/zonals</td></tr>
// <tr><td>10 </td><td> Corrector step convergence criterion; exponent of 1/10; default = 10</td></tr>
// <tr><td>11 </td><td> Outgassing pertubations flag</td></tr>
// <tr><td>12 </td><td> Solid earth ocean tide pertubations flag</td></tr>
// <tr><td>13 </td><td> Input vector coordinate system</td></tr>
// <tr><td>14 </td><td> Nutation terms</td></tr>
// <tr><td>15 </td><td> Recompute pertubations at each corrector step</td></tr>
// <tr><td>16 </td><td> Variable of intergration control</td></tr>
// <tr><td>17 </td><td> Variable step size control</td></tr>
// <tr><td>18 </td><td> Initial step size</td></tr>
// <tr><td>21 </td><td> DCA file name</td></tr>
// <tr><td>22 </td><td> Solar flux file name</td></tr>
// <tr><td>23 </td><td> Geopotential file name</td></tr>
// <tr><td>24 </td><td> JPL file name</td></tr>
// <tr><td>25 </td><td> JPL start time</td></tr>
// <tr><td>26 </td><td> JPL stop time</td></tr>
// </table>
void SpGet4P(int xf_4P, char valueStr[512]);

// Sets the value of a numerical integration control parameter
// See SpGet4P for a list of the values for the xf_4P parameter.
// For flux, dca, and jpl file settings, the actual file loading happens when the first SpSatInit() is called. 
// If the user needs to load these files instantly, please call the SpLoadFile() instead
void SpSet4P(int xf_4P, char valueStr[512]);

// Retrieves prediction control parameters
void SpGetPredCtrl(int* startFrEpoch, int* stopFrEpoch, double* startTime, double* stopTime, double* interval);

// Sets prediction control parameters
void SpSetPredCtrl(int startFrEpoch, int stopFrEpoch, double startTime, double stopTime, double interval);

// Retrieves the value of a field of an SP satellite
// <br>
// The table below shows the values for the xf_SpSat parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>1 </td><td> Satellite number I5</td></tr>
// <tr><td>2 </td><td> Satellite's epoch time in days since 1950, UTC </td></tr>
// <tr><td>3 </td><td> Satellite's epoch time in days since 1950, TAI</td></tr>
// <tr><td>4 </td><td> Mu value </td></tr>
// <tr><td>5 </td><td> Covariance Matrix flag</td></tr>
// <tr><td>6 </td><td> Integration mode</td></tr>
// <tr><td>7 </td><td> Nutation terms</td></tr>
// <tr><td>8 </td><td> Specter compatibility mode</td></tr>
// </table>
int SpGetSatData(long satKey, int xf_SpSat, char valueStr[512]);

// Retrieves all fields of an SP satellite with a single function call
int SpGetSatDataAll(long satKey, int* satNum, double* epochDs50UTC, double* epochDs50TAI, double* mu, int* hasCovMtx, int* integMode, int* nTerms, int* isSpectr);

// Propagates a satellite, represented by the satKey, to the time expressed in minutes since the 
// satellite's epoch time
int SpPropMse(long satKey, double mse, double xa_timeTypes[5], int* revNum, double posJ2K[3], double velJ2K[3]);

// Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
int SpPropDs50UTC(long satKey, double ds50UTC, double xa_timeTypes[5], int* revNum, double posJ2K[3], double velJ2K[3]);

// Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
// It only returns the latitude, longitude, and height at that time in coordinate system of Date
// It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
// 
// This function is built especially for application that plots ground trace.
int SpPropDs50UtcLLH(long satKey, double ds50UTC, double llh[3]);

// Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
// It only returns the satellite's ECI position in TEME of DATE
// It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
// 
// This function is built especially for application that plots satellites' positions in 3D.
int SpPropDs50UtcPos(long satKey, double ds50UTC, double pos[3]);

// Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
// <br>
// All propagation data is returned by this function.
int SpPropAll(long satKey, int timeType, double timeIn, int covType, double xa_spOut[128]);

// Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
// It only returns the position and velocity in TEME of Date
int SpGetStateDs50UTC(long satKey, double ds50UTC, double posDate[3], double velDate[3]);

// Reepochs the state of an existing SP object associated with the satKey. 
// Proper initialization is handled internally so no need to call SpSatInit() afterward 
int SpSetStateDs50UTC(long satKey, double ds50UTC, double posDate[3], double velDate[3]);

// Updates an SP object associated with the satKey with the new input data stored in setDataArr. 
// Then propagates the updated SP object to the requested time propTimeDs50UTC. 
// Resulting propagated data will be stored in propDataArr.
int SpSetAndProp(long satKey, double setDataArr[128], double propTimeDs50UTC, double propDataArr[128]);

// This function is reserved for future use. The purpose is to return propagator output data based on user special requests that have not yet been determined
// Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
int SpGetPropOut(long satKey, int index, double destArr[]);

// Returns the covariance matrix of a satellite
// Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
int SpGetCovMtx(long satKey, int covType, double covMtx[6][6]);

// Computes the covariance sigma from the input covariance matrix
void SpCompCovSigma(double covMtx[6][6], double covSigma[6]);

// Sets all numerical integration control parameters with a single function call
void SpSet4pAll(int geoIdx, int bulgePert, int dragPert, int radPresPert, int lunSolPert, int f10, int f10Avg, int ap, int trunc, int incr, int ogPert, int tidePert, int inCoord, int nTerms, int reEval, int integStepMode, int stepSizeMethod, double initStepSize, char dcaFile[512], char fluxFile[512], char geoFile[512], char jplFile[512], char jplStart[512], char jplStop[512]);

// Retrieves all numerical integration control parameters with a single function call
void SpGet4pAll(int* geoIdx, int* bulgePert, int* dragPert, int* radPresPert, int* lunSolPert, int* f10, int* f10Avg, int* ap, int* trunc, int* incr, int* ogPert, int* tidePert, int* inCoord, int* nTerms, int* reEval, int* integStepMode, int* stepSizeMethod, double* initStepSize, char dcaFile[512], char fluxFile[512], char geoFile[512], char jplFile[512], char jplStart[512], char jplStop[512]);

// Read the integration control settings from a 4P-Card
int SpSet4PCard(char card4P[512]);

// Builds and returns the integration control card (4P-Card) from the current settings
void SpGet4PCard(char card4P[512]);

// Adds one solar flux record to memory. This API can be used to avoid SpLoadFile's file I/O      
int SpAddFluxRec(double refDs50UTC, double f10, double f10Avg, double ap[8]);

// Returns the times, in days since 1950 UTC, of ephemeris points stored in SP buffer that meet the requirement as specified in the minStepSize
// This function is used to retrieve times in which SP propagator stored satellite's state vectors in memory (natural integration step size).
// An error will occur if the actualEphPts reaches the maxEphPts. In this case, the function will return all ephemereris times up to the time when that maxEphPts is reached.
int SpGetEphemTimes(long satKey, int maxEphPts, double startDs50UTC, double stopDs50UTC, double minStepSize, int* actualEphPts, double ds50UTCArr[]);

// Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
// Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
// that many points (arrSize) and the errCode is set to IDX_ERR_WARN
int SpGenEphems(long satKey, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int arrSize, double ephemArr[][7], int* genEphemPts);

// This function is similar to SpGenEphems but also returns covariance matrix data
// Notes: Make sure to turn on the "save partials" flag so that covariance matrix data can be generated
int SpGenEphemsCov(long satKey, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int covType, int arrSize, double ephemArr[][28], int* genEphemPts);

// Generates ephemerides for the input vcm (in string format) for the specified time span and step size
// Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
// that many points (arrSize) and the errCode is set to IDX_ERR_WARN
int SpGenEphemsVcm_OS(char vcmString[4000], double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int arrSize, double ephemArr[][7], int* genEphemPts);

// This function is similar to SpGenEphemsVcm_OS but also returns covariance matrix data
int SpGenEphemsVcmCov_OS(char vcmString[4000], double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int covType, int arrSize, double ephemArr[][28], int* genEphemPts);

// Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
int SpPropAllSats(long satKeys[], int numOfSats, double ds50UTC, double ephemArr[][6]);

// Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
// <br>
// All propagation data is returned by this function.
int SpPropAllExt(long satKey, int timeType, double timeIn, int spCoord, int xf_CovMtx, int stmType, double xa_spExt[128]);

// VCM additional options
// use VCM's own data
#define VCMOPT_USEOWN     0
// force VCM to use global solar flux and timing constants data
#define VCMOPT_USEGLOBAL  1

// Run Modes
// Perfromance priority. This mode allows the buffer of integration points to extend freely
#define IDX_RUNMODE_PERF  0
// Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
#define IDX_RUNMODE_MEM   1

//*******************************************************************************

// Partials Saving Modes
// Save partials in the buffer
#define IDX_PARTIALS_SAVE  1
// Don't save partials in the buffer
#define IDX_PARTIALS_DONT  0

// Indexes of different covariance matrices
// UVW convariance matrix - TEME of DATE
#define XF_COVMTX_UVW_DATE    1
// Cartesian covariance matrix - TEME of DATE
#define XF_COVMTX_XYZ_DATE    2
// Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
#define XF_COVMTX_EQNX_DATE   3
// UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
#define XF_COVMTX_UVW_J2K    11
// Cartesian covariance matrix - MEME of J2K
#define XF_COVMTX_XYZ_J2K    12
// Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
#define XF_COVMTX_EQNX_J2K   13
//*******************************************************************************

// Indexes of Lunar/Solar and Planets perturbation modes
// Lunar/Solar perturbation off
#define LSPERT_NONE       0
// Lunar/Solar perturbation on (using Analytic mode)
#define LSPERT_ANALYTIC   1
// Lunar/Solar perturbation using JPL ephemeris file
#define LSPERT_JPL        2
// Lunar/Solar + All planets perturbation using JPL ephemeris file
#define LSPERT_ALL        3
// Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets)
#define LSPERT_BIG        4
// Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets)
#define LSPERT_MED        5
// Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
#define LSPERT_SMA        6

//*******************************************************************************

// State Transition Matrix Types
// UVW state transition matrix
#define STMTYPE_UVW        1
// Cartesian state transition matrix
#define STMTYPE_XYZ        2
// Equinoctial state transition matrix
#define STMTYPE_EQNX       3

// Different output coordinate systems options for pos/vel/acc
// Output coordinate systems in TEME of Date
#define SPCOORD_ECI       1
// Output coordinate systems in MEME of J2K
#define SPCOORD_J2K       2

// Different drag perturbation models
// Jacchia 64 model
#define DRGMDL_JAC64     1
// Jacchia 70 model
#define DRGMDL_JAC70     2
// Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
#define DRGMDL_DCA1      3
// JBH09 model
#define DRGMDL_JBH09    40
// JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2)
#define DRGMDL_JBHDCA2  41

// Indexes of SP 4P card fields
// Geopotential model to use
#define XF_4P_GEOIDX    1
// Earth gravity pertubations flag
#define XF_4P_BULGEFLG  2
// Drag pertubations flag
#define XF_4P_DRAGFLG   3
// Radiation pressure pertubations flag
#define XF_4P_RADFLG    4
// Lunar/Solar pertubations flag
#define XF_4P_LUNSOL    5
// F10 value
#define XF_4P_F10       6
// F10 average value
#define XF_4P_F10AVG    7
// Ap value
#define XF_4P_AP        8
// Geopotential truncation order/degree/zonals
#define XF_4P_TRUNC     9
// Corrector step convergence criterion; exponent of 1/10; default = 10
#define XF_4P_CONVERG   10
// Outgassing pertubations flag
#define XF_4P_OGFLG     11
// Solid earth and ocean tide pertubations flag
#define XF_4P_TIDESFLG  12
// Input vector coordinate system
#define XF_4P_INCOORD   13
// Nutation terms
#define XF_4P_NTERMS    14
// Recompute pertubations at each corrector step
#define XF_4P_REEVAL    15
// Variable of intergration control
#define XF_4P_INTEGCTRL 16
// Variable step size control
#define XF_4P_VARSTEP   17
// Initial step size
#define XF_4P_INITSTEP  18

// DCA file name
#define XF_4P_DCAFILE   21
// Solar flux file name
#define XF_4P_FLUXFILE  22
// Geopotential file name
#define XF_4P_GEOFILE   23
// JPL file name
#define XF_4P_JPLFILE   24
// JPL start time
#define XF_4P_JPLSTART  25
// JPL stop time
#define XF_4P_JPLSTOP   26

//XF_4P_PLANETS  = 27, &    // Sets perturbations from all planets to on
//XF_4P_MERCURY  = 28, &    // Sets perturbation from Mercury to on
//XF_4P_VENUS    = 29, &    // Sets perturbation from Venus to on
//XF_4P_MARS     = 30, &    // Sets perturbation from Mars to on
//XF_4P_JUPITER  = 31, &    // Sets perturbation from Jupiter to on
//XF_4P_SATURN   = 32, &    // Sets perturbation from Saturn to on
//XF_4P_URANUS   = 33, &    // Sets perturbation from Uranus to on
//XF_4P_NEPTUNE  = 34, &    // Sets perturbation from Neptune to on
//XF_4P_PLUTO    = 35;      // Sets perturbation from Pluto to on

//*******************************************************************************

// Indexes of SP application control (preference) parameters
// Geopotential directory path
#define XF_SPAPP_GEODIR    1
// Buffer size
#define XF_SPAPP_BUFSIZE   2
// Run mode
#define XF_SPAPP_RUNMODE   3
// Save partials data
#define XF_SPAPP_SAVEPART  4
// Specter compatibility mode
#define XF_SPAPP_SPECTR    5
// Consider parameter
#define XF_SPAPP_CONSIDER  6
// Decay altitude
#define XF_SPAPP_DECAYALT  7
// Output coordinate system
#define XF_SPAPP_OUTCOORD  8
// VCM additional options
#define XF_SPAPP_VCMOPT    9

//*******************************************************************************

// Indexes of data fields of an initialized SP satellite
// Satellite number I5
#define XF_SPSAT_SATNUM   1
// Satellite's epoch time in days since 1950, UTC
#define XF_SPSAT_DS50UTC  2
// Satellite's epoch time in days since 1950, TAI
#define XF_SPSAT_DS50TAI  3
// Mu value
#define XF_SPSAT_MU       4
// Covariance Matrix flag
#define XF_SPSAT_HASCOV   5
// Integration mode
#define XF_SPSAT_INTMODE  6
// Nutation terms
#define XF_SPSAT_NTERMS   7
// Specter compatibility mode
#define XF_SPSAT_SPECTR   8

//*******************************************************************************

//// Indexes of Planetary Control
//   XAI_PLANET_MERCURY = 1, & // 0 = off, 1 = on
//   XAI_PLANET_VENUS   = 2, & // 0 = off, 1 = on
//   XAI_PLANET_EARTH   = 3, & // Not used
//   XAI_PLANET_MARS    = 4, & // 0 = off, 1 = on
//   XAI_PLANET_JUPITER = 5, & // 0 = off, 1 = on
//   XAI_PLANET_SATRUN  = 6, & // 0 = off, 1 = on
//   XAI_PLANET_URANUS  = 7, & // 0 = off, 1 = on
//   XAI_PLANET_NEPTUNE = 8, & // 0 = off, 1 = on
//   XAI_PLANET_PLUTO   = 9, & // 0 = off, 1 = on
//   XAI_PLANET_SIZE    = 9;   // Size of array
//
////*******************************************************************************

// Different time types for passing to SpPropAll
// propagation time is in minutes since epoch
#define SP_TIMETYPE_MSE       0
// propagation time is in days since 1950, UTC
#define SP_TIMETYPE_DS50UTC   1


// Sp propagated data
// Propagation time in days since 1950, UTC
#define XA_SPOUT_UTC         0
// Propagation time in minutes since the satellite's epoch time
#define XA_SPOUT_MSE         1
// Propagation time in days since 1950, UT1
#define XA_SPOUT_UT1         2
// Propagation time in days since 1950, TAI
#define XA_SPOUT_TAI         3
// Propagation time in days since 1950, ET
#define XA_SPOUT_ET          4
// Revolution number
#define XA_SPOUT_REVNUM      5
// Number of nutation terms
#define XA_SPOUT_NTERMS      6
// Spectr compatible mode (0=not compatible, 1=compatible)
#define XA_SPOUT_ISSPECTR    7
// Has input covariance matrix (0=no, 1=yes)
#define XA_SPOUT_HASCOVMTX   8

// J2K position X (km)
#define XA_SPOUT_J2KPOSX    10
// J2K position Y (km)
#define XA_SPOUT_J2KPOSY    11
// J2K position Z (km)
#define XA_SPOUT_J2KPOSZ    12
// J2K velocity X (km/s)
#define XA_SPOUT_J2KVELX    13
// J2K velocity Y (km/s)
#define XA_SPOUT_J2KVELY    14
// J2K velocity Z (km/s)
#define XA_SPOUT_J2KVELZ    15
// ECI position X (km)
#define XA_SPOUT_ECIPOSX    16
// ECI position Y (km)
#define XA_SPOUT_ECIPOSY    17
// ECI position Z (km)
#define XA_SPOUT_ECIPOSZ    18
// ECI velocity X (km/s)
#define XA_SPOUT_ECIVELX    19
// ECI velocity Y (km/s)
#define XA_SPOUT_ECIVELY    20
// ECI velocity Z (km/s)
#define XA_SPOUT_ECIVELZ    21
// Geodetic latitude (deg)
#define XA_SPOUT_LAT        22
// Geodetic longitude (deg)
#define XA_SPOUT_LON        23
// Height above geoid (km)
#define XA_SPOUT_HEIGHT     24

// Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
#define XA_SPOUT_COVTYPE    30
// 6 by 6 covariance matrix (31-66)
#define XA_SPOUT_COVMTX     31

// J2K acceleration X (km/s^2)
#define XA_SPOUT_J2KACCX    70
// J2K acceleration Y (km/s^2)
#define XA_SPOUT_J2KACCY    71
// J2K acceleration Z (km/s^2)
#define XA_SPOUT_J2KACCZ    72
// ECI acceleration X (km/s^2)
#define XA_SPOUT_ECIACCX    73
// ECI acceleration Y (km/s^2)
#define XA_SPOUT_ECIACCY    74
// ECI acceleration Z (km/s^2)
#define XA_SPOUT_ECIACCZ    75

#define XA_SPOUT_SIZE       128

// Sp extended propagation data
// Propagation time in days since 1950, UTC
#define XA_SPEXT_UTC         0
// Propagation time in minutes since the satellite's epoch time
#define XA_SPEXT_MSE         1
// Propagation time in days since 1950, UT1
#define XA_SPEXT_UT1         2
// Propagation time in days since 1950, TAI
#define XA_SPEXT_TAI         3
// Propagation time in days since 1950, ET
#define XA_SPEXT_ET          4
// Revolution number
#define XA_SPEXT_REVNUM      5
// Number of nutation terms
#define XA_SPEXT_NTERMS      6
// Spectr compatible mode (0=not compatible, 1=compatible)
#define XA_SPEXT_ISSPECTR    7
// Has input covariance matrix (0=no, 1=yes)
#define XA_SPEXT_HASCOVMTX   8

// Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
#define XA_SPEXT_COORD      10
// position X (km)
#define XA_SPEXT_POSX       11
// position Y (km)
#define XA_SPEXT_POSY       12
// position Z (km)
#define XA_SPEXT_POSZ       13
// velocity X (km/s)
#define XA_SPEXT_VELX       14
// velocity Y (km/s)
#define XA_SPEXT_VELY       15
// velocity Z (km/s)
#define XA_SPEXT_VELZ       16
// acceleration X (km/s^2)
#define XA_SPEXT_ACCX       17
// acceleration Y (km/s^2)
#define XA_SPEXT_ACCY       18
// acceleration Z (km/s^2)
#define XA_SPEXT_ACCZ       19

// Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
#define XA_SPEXT_COVTYPE    30
// 6 by 6 covariance matrix (31-66/1D format - 36 elements)
#define XA_SPEXT_COVMTX     31

// State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
#define XA_SPEXT_STMTYPE    70
// 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
#define XA_SPEXT_STM        71

#define XA_SPEXT_SIZE       128


// Different options for generating ephemerides from SP
// ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
#define SP_EPHEM_ECI    1
// MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
#define SP_EPHEM_J2K    2


// Different time types returned by the SP propagator
// Time in minutes since the satellite's epoch time
#define XA_TIMETYPES_MSE   0
// Time in days since 1950, UTC
#define XA_TIMETYPES_UTC   1
// Time in days since 1950, UT1
#define XA_TIMETYPES_UT1   2
// Time in days since 1950, TAI
#define XA_TIMETYPES_TAI   3
// Time in days since 1950, ET
#define XA_TIMETYPES_ET    4

#define XA_TIMETYPES_SIZE  5


// ========================= End of auto generated code ==========================
