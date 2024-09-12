// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes Aof dll for use in the program
int AofInit(long apAddr);

// Returns information about the current version of Aof.dll. The information is placed in the string parameter you pass in
void AofGetInfo(char infoStr[128]);

// Loads Aof-related parameters (1P/2P/3P cards, and Aof parameter free format) from an input text file
int AofLoadFile(char aofInputFile[512]);

// Loads Aof-related parameters from an input text file
int AofLoadFileAll(char aofInputFile[512]);

// Loads a single Aof-typed card
int AofLoadCard(char card[512]);

// This function retrieves various AOF input data being entered from input flat files (and/or various AOF input cards)
void AofGetDataFrInputFiles(double xa_aofCtrl[16], int* numOfInpSats, int aofInpSats[100], int* numOfMissions, double xa_aofSen[100][16], int* numOfAreas, double xa_aofArea[100][16]);

// This function resets all Aof control parameters previously loaded from input text files
void AofReset();

// Computes entry/exit times of basic overflight satellite/sensor (cone) versus basic defended areas (box, circle, point)
// <br>
// Note:  for xa_aofArea type=4 (polygon), use the AofComplex method.
int AofBasic(double xa_aofRun[8], long satKey, double xa_aofSen[16], double xa_aofArea[16], int* numOfPasses, double xa_entExitTimes[]);

// Computes entry/exit times of overflight satellite/sensor having complex configurations (cone, donut, butterfly, leftButterly, rightButterfly)
// versus defended areas defined by multiple lat lon height points (polygon)
// For a description of the input parameter arrays xa_aofRun and xa_aofSen, see AofBasic.
// The input array llhArr is a zero-based array with latitude, longitude and altitude of each point in subsequent entries, e.g.:
// llhArr[0] = point 1 latitude, 
// llhArr[1] = point 1 longitude, 
// llhArr[2] = point 1 altitude, 
// llhArr[3] = point 2 latitude, etc.
int AofComplex(double xa_aofRun[8], long satKey, double xa_aofSen[16], int numOfLlhPts, double llhArr[360], int* numOfPasses, double xa_entExitTimes[]);

// This function returns a look angle from the llh point to the overfly satellite at the specified time
int AofGetLook(double ds50TAI, double llh[3], long satKey, double xa_look[8]);

// This function returns a view angle from the overfly satellite to a llh point at the specified time
int AofGetView(double ds50TAI, double llh[3], long satKey, double xa_aofView[8]);

// Determines darkness level of the "defended" area at the specified time
// For a description of the input parameter array xa_aofArea, see AofBasic.
int AofGetDarknessLevel(double ds50TAI, double xa_aofArea[16]);

// AOF parameters
// input start/stop time type: 1=minutes since epoch (MSE), 0=date time (DTG)
#define XA_AOFCTRL_TIMEFLG    0
// start time of interest (either MSE or DTG)
#define XA_AOFCTRL_START      1
// stop time of interest (either MSE or DTG)
#define XA_AOFCTRL_STOP       2
// search interval (min)
#define XA_AOFCTRL_INTERVAL   3
// print output control flag; 0=print penetrations only, 1=print penetrations and data description
#define XA_AOFCTRL_PRTOPT     4
// search method: 0=use brute force method, 1=use analytical method
#define XA_AOFCTRL_SRCHMET    5
// output sort type: S=sort each area by sat#, then time, T=sort each area by time, then sat#
#define XA_AOFCTRL_SRTTYPE    6

#define XA_AOFCTRL_SIZE      16


// Defended area types
// area box type
#define AREATYPE_I_BOX       1
// area circle type
#define AREATYPE_I_CIRCLE    2
// area point type
#define AREATYPE_I_POINT     3
// area polygon type
#define AREATYPE_I_POLYGON   4


// AOF satellite/mission (satellite/sensor) data
// satellite number of sensor-bearing satellite
#define XA_AOFSEN_SATNUM     0
// reserved for future use
#define XA_AOFSEN_TYPE       1
// off nadir minimum look angle (deg) (=0 for Cone)
#define XA_AOFSEN_MINEL      2
// off nadir maximum look angle (deg)
#define XA_AOFSEN_MAXEL      3
// minimum azimuth of first azimuth range (deg)
#define XA_AOFSEN_MINAZ1     4
// maximum azimuth of first azimuth range (deg)
#define XA_AOFSEN_MAXAZ1     5
// minimum azimuth of second azimuth range (deg)
#define XA_AOFSEN_MINAZ2     6
// maximum azimuth of second azimuth range (deg)
#define XA_AOFSEN_MAXAZ2     7
// reserved for future use
#define XA_AOFSEN_ELEM7      8
// reserved for future use
#define XA_AOFSEN_ELEM8      9
// reserved for future use
#define XA_AOFSEN_ELEM9     10
// reserved for future use
#define XA_AOFSEN_ELEM10    11

#define XA_AOFSEN_SIZE      16


// AOF satellite/sensor types
// circle (specify only off-nadir maximum look angle)
#define AOFSENTYPE_CIRCLE  0


// AOF run parameters
// Maximum number of passes that AOF returns in one start/stop time
#define XA_AOFRUN_MAXPASSES 0
// AOF start time in days since 1950, UTC
#define XA_AOFRUN_START     1
// AOF stop time in days since 1950, UTC
#define XA_AOFRUN_STOP      2
// Search interval (min)
#define XA_AOFRUN_INTERVAL  3

#define XA_AOFRUN_SIZE      8


// AOF defended area types
// Defended area is a box
#define AOF_AREATYPE_BOX      1
// Defended area is a circle
#define AOF_AREATYPE_CIRCLE   2
// Defended area is a point
#define AOF_AREATYPE_POINT    3
// Defended area is a polygon
#define AOF_AREATYPE_POLYGON  4



// AOF defended area data
// Area number
#define XA_AOFAREA_NUM    0
// | 1 = BOX                       | 2 = CIRCLE              | 3 = POINT
#define XA_AOFAREA_TYPE   1
// | N lat (deg) upper left corner | N lat (deg) center point| N lat (deg) center point
#define XA_AOFAREA_ELEM1  2
// | E lon (deg) upper left corner | E lon (deg) center point| E lon (deg) center point
#define XA_AOFAREA_ELEM2  3
// | N lat (deg) lower right corner| circle radius (km)      | height (km, above reference geoid)
#define XA_AOFAREA_ELEM3  4
// | E lon (deg) lower right corner|                         |
#define XA_AOFAREA_ELEM4  5

#define XA_AOFAREA_SIZE   16


// Penetration-level darkness status
// lit throughout penetration
#define DARKLEVEL_ALLLIT   0
// dark throughout penetration
#define DARKLEVEL_ALLDARK  1
// partly-lit during penetration
#define DARKLEVEL_PARTLIT  2

// View angle from overfly satellite to a llh point
// Azimuth (deg)
#define XA_AOFVIEW_AZIM    0
// Elevation (deg)
#define XA_AOFVIEW_ELEV    1
// Has line of sight to the point (1=Yes, 0=No-earth obstructs the view)
#define XA_AOFVIEW_HASLOS  2

#define XA_AOFVIEW_SIZE    8

// maximum of number of lat-lon-height points that can be used to describe a defended area
#define MAX_LLHPOINTS  120




// ========================= End of auto generated code ==========================
