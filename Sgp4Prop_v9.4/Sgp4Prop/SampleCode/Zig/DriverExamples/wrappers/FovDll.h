// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes Fov dll for use in the program
int FovInit(long apAddr);

// Returns information about the current version of Fov.dll. The information is placed in the string parameter you pass in
void FovGetInfo(char infoStr[128]);

// Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
int FovLoadFile(char fovInputFile[512]);

// Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
int FovLoadFileAll(char fovInputFile[512]);

// Loads a single Fov-typed card
int FovLoadCard(char card[512]);

// Saves any currently loaded Fov-related settings to a file
int FovSaveFile(char fovFile[512], int saveMode, int saveForm);

// This function retrieves various FOV input data being entered from input flat files (various FOV cards)
void FovGetDataFrInputFiles(double xa_fovCtrl[8], int* numOfWindows, double startStopTimes[256], int* numOfSources, double xa_fovSrc_Arr[128][8], int* numOfTargets, double xa_fovTgt_Arr[128][8], int* numVicSats, int vicSatNums[128]);

// This function screens the specified start/end time window and returns passes when the target satellite can be seen (passed all limit checks) by the source 
int FovFindTargetPasses(double startTimeDs50UTC, double stopTimeDs50UTC, long srcSenKey, long tgtSatKey, double tgtPassesArr[][2], int* numOfPasses);

// This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is an elset).
// <br>
// The xa_emeDat array size is [numObs, 3].  The penetration time indexes are:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Name</b></td>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td> 0</td><td> entry time (ds50UTC)</td></tr>
// <tr><td> 1</td><td> minimum time (ds50UTC)</td></tr>
// <tr><td> 2</td><td> exit time (ds50UTC)</td></tr>
// </table>
// <br>
// See FovGetDataFrInputFiles for a description of the XA_FOVSRC parameter values.
int FovTargetElset(double xa_fovRun[8], double xa_fovSrc[8], long tgtSatKey, long vicSatKey, double xa_emeDat[][3], int* numOfPasses);

// This function returns a look angle from the source to the potential victim satellite at the specified time (target is an elset)
// <br>
// If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid.
int FovTargetElsetLook(double currDs50TAI, double xa_fovSrc[8], long vicSatKey, double xa_look[8]);

// This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is a vector: AZ/EL or RA/DEC).
// See FovTargetElset for a description of the xa_emeDat array.<br>
// If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid 
int FovTargetVec(double xa_fovRun[8], double xa_fovSrc[8], double xa_fovTgt[8], long vicSatKey, double xa_emeDat[][3], int* numOfPasses);

// This function returns a look angle from the source to the potential victim satellite at the specified time (target is a vector: AZ/EL or RA/DEC).
// See FovGetDataFrInputFiles for a description of the XA_FOVSRC and XA_FOVTGT parameter values.
// See FovTargetElsetLook for a description of the XA_LOOK parameter values.
int FovTargetVecLook(double currDs50TAI, double xa_fovSrc[8], double xa_fovTgt[8], long vicSatKey, double xa_look[8]);

// Resets all FOV control parameters back to their default values
void FovReset();

// Fov run parameters
// Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
#define XA_FOVRUN_MAXPASSES 0
// FOV start time in days since 1950, UTC
#define XA_FOVRUN_START     1
// FOV stop time in days since 1950, UTC
#define XA_FOVRUN_STOP      2
// Cone half angle (deg) (0=auto) (0-45)
#define XA_FOVRUN_HALFCONE  3
// Search interval (min)
#define XA_FOVRUN_INTERVAL  4

#define XA_FOVRUN_SIZE      8

// FOV source types
// Source is sensor
#define FOV_SRCTYPE_SEN  1
// Source is lat lon height
#define FOV_SRCTYPE_LLH  2
// Source is EFG
#define FOV_SRCTYPE_EFG  3
// Source is XYZ
#define FOV_SRCTYPE_XYZ  4

// FOV source types
// Target is elset
#define FOV_TGTTYPE_ELSET  1
// Target is constant Az/El
#define FOV_TGTTYPE_AZEL   2
// Target is RA/Dec (STAR)
#define FOV_TGTTYPE_RADEC  3

// FOV source specification
// 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
#define XA_FOVSRC_TYPE   0
// Sensor# | Source ID   | Source ID  | Source ID
#define XA_FOVSRC_ID     1
// | N lat (deg) | EFG: E (m) | X (m)
#define XA_FOVSRC_ELEM1  2
// | E lon (deg) | EFG: F (m) | Y (m)
#define XA_FOVSRC_ELEM2  3
// | height (m)  | EFG: G (m) | Z (m)
#define XA_FOVSRC_ELEM3  4
// |             |            | time of position in Ds50UTC
#define XA_FOVSRC_ELEM4  5

#define XA_FOVSRC_SIZE   8


// FOV target specification
// 1=ELSET | 2=AZEL    | 3=RADEC
#define XA_FOVTGT_TYPE   0
// Elset#  | Target ID | Target ID
#define XA_FOVTGT_ID     1
// | az (deg)  | RA (deg)
#define XA_FOVTGT_ELEM1  2
// | el (deg)  | Dec (deg)
#define XA_FOVTGT_ELEM2  3
// |           | equinox indicator
#define XA_FOVTGT_ELEM3  4

#define XA_FOVTGT_SIZE   8

// entry/minimum/exit time data
// entry time (ds50UTC)
#define XA_EMEDAT_ENTRY  0
// minimum time (ds50UTC)
#define XA_EMEDAT_MIN    1
// exit time (ds50UTC)
#define XA_EMEDAT_EXIT   2

#define XA_EMEDAT_SIZE   3

// FOV parameters
// Cone half angle (deg) (0=auto) (0-45)
#define XA_FOVCTRL_HALFCONE  0
// Search interval (min)
#define XA_FOVCTRL_INTERVAL  1
// Print option
#define XA_FOVCTRL_PRTOPT    2

#define XA_FOVCTRL_SIZE      8


// maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
#define FOVMAXNUM  128

// ========================= End of auto generated code ==========================
