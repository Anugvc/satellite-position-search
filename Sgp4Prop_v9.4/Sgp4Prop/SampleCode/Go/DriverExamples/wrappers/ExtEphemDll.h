// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes ExtEphem DLL for use in the program
// If this function returns an error, it is recommended that the users stop the program immediately. 
// The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed 
// in the DLL Prerequisite section, before using this DLL.
int ExtEphInit(long apAddr);

// Returns information about the current version of ExtEphem DLL. 
// The information is placed in the string parameter passed in.
// The returned string provides information about the version number, build date, and the platform of the ExtEphem DLL. 
void ExtEphGetInfo(char infoStr[128]);

// Loads a file containing EXTEPHEM's
// The users can use this function repeatedly to load EXTEPHEMs from different input files. 
// However, only unique satKeys are stored in the binary tree. Duplicated EXTEPHEMs 
// (determined by same file name, satellite number + epoch) won't be stored.
// 
// EXTEPHEMs can be included directly in the main input file or they can be read from a 
// separate file identified with "EPHFIL =[pathname\filename]".
// 
// This function only reads EXTEPHEMs from the main input file or EXTEPHEMs from the file 
// identified with EPHFIL in the input file. It won't read anything else.
int ExtEphLoadFile(char extEphFile[512]);

// Saves the currently loaded EXTEPHEM's to a file (EPHFIL=input file name)
int ExtEphSaveFile(char extEphFile[512], int saveMode, int saveForm);

// Removes an EXTEPHEM represented by the satKey from memory
// If the users enter an invalid satKey (the satKey does not exist in memory), the function will return a non-zero value indicating an error.
int ExtEphRemoveSat(long satKey);

// Removes all EXTEPHEMS from memory
int ExtEphRemoveAllSats();

// Returns the number of EXTEPHEM's currently loaded
// See ExtEphGetLoaded for example.
// This function is useful for dynamically allocating memory for the array that is passed to the function ExtEphGetLoaded().
int ExtEphGetCount();

// Retrieves all of the currently loaded satKeys. These satKeys can be used to access the external ephemeris data for the EXTEPHEM's
// It is recommended that ExtEphGetCount() is used to count how many satellites are currently loaded in the ExtEphem DLL's binary tree. 
// The users then use this number to dynamically allocate the satKeys array and pass it to this function.
// 
// If the users prefer to pass a static array to the function, ensure that it is big enough to store all the satKeys in memory.
void ExtEphGetLoaded(int order, long satKeys[]);

// Allows for an EXTEPHEM to be added to memory without using an input file. The function creates a place holder for an EXTEPHEM
// If the same satellite (same satNum and epochDs50UTC) was previously added to the ExtEphem DLL's binary tree, 
// the function will generate a new unique satKey. This is very useful when the users want to compare ephemerides 
// of the same satellite number and same epoch time from different sources. 
long ExtEphAddSat(int satNum, double epochDs50UTC, double ae, double ke, int coordSys);

// Adds an ephemeris point to the end of an EXTEPHEM's set of ephemeris points
// The new ephemeris point will only be added to the array if its time is greater than the times of all points already in the array. 
// Therefore, the array is always in sorted order (t1 &lt; t2 &lt;... &lt; tn).
int ExtEphAddSatEphem(long satKey, double ds50UTC, double pos[3], double vel[3], int revNum);

// Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
int ExtEphAddSatEphemCovMtx(long satKey, double ds50UTC, double pos[3], double vel[3], int revNum, double covUVW[21]);

// Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
int ExtEphAddSatEphemExt(long satKey, double ds50UTC, double pos[3], double vel[3], int revNum, double extArr[128]);

// Loads satellite data from an external ephemeris file (any valid external ephemeris file formats) and returns a satKey on success
long ExtEphAddSatFrFile(char extEphFile[512]);

// Retrieves all data for an EXTEPHEM with a single function call
int ExtEphGetAllFields(long satKey, int* satNum, char satName[8], char recName[128], double* epochDs50UTC, double* ae, double* ke, double pos[3], double vel[3], int* coordSys, int* numOfPts, char fileLoc[512]);

// Retrieves the value of a specific field of an EXTEPHEM
// <br>
// When using xf_ExtEph = 11, the input coordinate system is returned as an integer value.  The table below shows the coordinate system values:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Value</b></td>
// <td><b>Coordinate System</b></td>
// </tr>
// <tr><td>1  </td><td>ECI TEME of DATE</td></tr>
// <tr><td>2  </td><td>MEME of J2K</td></tr>
// <tr><td>3  </td><td>Earth Fixed Greenwich (EFG)</td></tr>
// <tr><td>4  </td><td>Earch Centered Rotation (ECR)</td></tr>
// <tr><td>100</td><td>Invalid</td></tr>
// </table>   
int ExtEphGetField(long satKey, int xf_ExtEph, char valueStr[512]);

// Updates the value of a specific field of an EXTEPHEM
int ExtEphSetField(long satKey, int xf_ExtEph, char valueStr[512]);

// Retrieves the times (in days since 1950 UTC) of the start and end ephemeris points of the EXTEPHEM  
int ExtEphStartEndTime(long satKey, double* startDs50UTC, double* endDs50UTC);

// Retrieves the data for a specific point within an EXTEPHEM
// It is important to know that the array subscript starts at one (not zero).
int ExtEphGetEphemeris(long satKey, int index, double* ds50UTC, double pos[3], double vel[3], int* revNum);

// Retrieves the data (including the covariance matrix) for a specific point within an EXTEPHEM
int ExtEphGetCovMtx(long satKey, int index, double* ds50UTC, double pos[3], double vel[3], int* revNum, double covMtx[6][6]);

// Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
// The coordinate system of the output position and velocity is the same as the input ephemerides.
int ExtEphMse(long satKey, double mse, double* ds50UTC, double pos[3], double vel[3], int* revNum);

// Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
int ExtEphMseCovMtx(long satKey, double mse, double* ds50UTC, double pos[3], double vel[3], int* revNum, double covMtx[6][6]);

// Interpolates the external ephemeris data to the requested time in days since 1950, UTC
// The coordinate system of the output position and velocity is the same as the input ephemerides.
int ExtEphDs50UTC(long satKey, double ds50UTC, double* mse, double pos[3], double vel[3], int* revNum);

// Interpolates the external ephemeris data to the requested time in days since 1950, UTC
int ExtEphDs50UTCCovMtx(long satKey, double ds50UTC, double* mse, double pos[3], double vel[3], int* revNum, double covMtx[6][6]);

// Extensible routine which retrieves/interpolates external ephemeris data based on user's request
int ExtEphXten(long satKey, int xf_getEph, double inVal, double extArr[128]);

// This function returns a string that represents the EXTFIL= directive used to read a particular EXTEPHEM
int ExtEphGetLine(long satKey, char line[512]);

// Returns the first satKey that matches the satNum in the EXTEPHEM binary tree
// This function is useful when ExtEphem DLL is used in applications that requires only one record (one EXTEPHEM entry) 
// for one satellite and the applications refer to that EXTEPHEM by its satellite number. 
// However, the Astrodynamic Standard Shared library only uses satKeys; this function helps to return the associated satKey of that satellite.
long ExtEphGetSatKey(int satNum);

// Creates satKey from EXTEPHEM's satelite number and date time group string
// This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
long ExtEphFieldsToSatKey(int satNum, char epochDtg[20]);

// Indexes of coordinate systems
// ECI TEME of DATE
#define COORD_ECI    1
// MEME of J2K
#define COORD_J2K    2
// Earth Fixed Greenwich (EFG)
#define COORD_EFG    3
// Earch Centered Rotation (ECR)
#define COORD_ECR    4
// Lat Lon Height and a vector offset (range, azimuth, elevation)
#define COORD_LLH    5
// Sensor site (ECR) and a vector offset (range, azimuth, elevation)
#define COORD_SEN    6

// ECI TEME of DATE, fixed point
#define COORD_ECIFP  11
// MEME of J2K, fixed point
#define COORD_J2KFP  12
// Earth Fixed Greenwich (EFG), fixed point
#define COORD_EFGFP  13
// Earch Centered Rotation (ECR), fixed point
#define COORD_ECRFP  14
// Lat Lon Height and an offset vector (range, azimuth, elevation)
#define COORD_LLHOV  15
// Sensor site (ECR) and an offset vector (range, azimuth, elevation)
#define COORD_SENOV  16
// Current position (LLH), heading (azimuth), and constant speed of an mobile object that travels in a rhumb line course
#define COORD_HCSRL  17
// List of waypoints (LLH) that describes the movement of an object that travels in a rhumb line course
#define COORD_WPTRL  18
// Current position (LLH), initial heading (azimuth), and constant speed of an mobile object that travels in a great circle course
#define COORD_HCSGC  19
// List of waypoints (LLH) that describes the movement of an object that travels in a great circle course
#define COORD_WPTGC  20


// Invalid coordinate system
#define COORD_INVALID  100

// UVW convariance matrix - TEME of DATE
#define COVMTX_UVW_DATE    0
// Cartesian covariance matrix - TEME of DATE
#define COVMTX_XYZ_DATE   10
// Equinoctial covariance matrix - TEME of DATE
#define COVMTX_EQNX_DATE  20
// UVW convariance matrix - MEME of J2K
#define COVMTX_UVW_J2K    30
// Cartesian covariance matrix - MEME of J2K
#define COVMTX_XYZ_J2K    40
// Equinoctial covariance matrix - MEME of J2K
#define COVMTX_EQNX_J2K   50


// Get ephemeris data using time in minutes since epoch
#define XF_GETEPH_MSE  1
// Get ephemeris data using time in days since 1950 UTC
#define XF_GETEPH_UTC  2
// Get ephemeris data using index of the element in the array
#define XF_GETEPH_IDX  3

// Indexes of EXTEPH data fields
// Satellite number I5
#define XF_EXTEPH_SATNUM      1
// Epoch YYDDDHHMMSS.SSS
#define XF_EXTEPH_EPOCH       2
// Earth radius (km)
#define XF_EXTEPH_AE          3
// Ke
#define XF_EXTEPH_KE          4
// position X (km) F16.8
#define XF_EXTEPH_POSX        5
// position Y (km) F16.8
#define XF_EXTEPH_POSY        6
// position Z (km) F16.8
#define XF_EXTEPH_POSZ        7
// velocity X (km/s) F16.12
#define XF_EXTEPH_VELX        8
// velocity Y (km/s) F16.12
#define XF_EXTEPH_VELY        9
// velocity Z (km/s) F16.12
#define XF_EXTEPH_VELZ       10
// Input coordinate systems
#define XF_EXTEPH_COORD      11
// Num of ephemeris points
#define XF_EXTEPH_NUMOFPTS   12
// Ephemeris file path
#define XF_EXTEPH_FILEPATH   13
// International Designator
#define XF_EXTEPH_SATNAME    14
// Record name
#define XF_EXTEPH_RECNAME    15

// ========================= End of auto generated code ==========================
