// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes Aof dll for use in the program
   pub fn AofInit(apAddr: i64) -> i32;
   //  Returns information about the current version of Aof.dll. The information is placed in the string parameter you pass in
   pub fn AofGetInfo(infoStr: *const c_char);
   //  Loads Aof-related parameters (1P/2P/3P cards, and Aof parameter free format) from an input text file
   pub fn AofLoadFile(aofInputFile: *const c_char) -> i32;
   //  Loads Aof-related parameters from an input text file
   pub fn AofLoadFileAll(aofInputFile: *const c_char) -> i32;
   //  Loads a single Aof-typed card
   pub fn AofLoadCard(card: *const c_char) -> i32;
   //  This function retrieves various AOF input data being entered from input flat files (and/or various AOF input cards)
   pub fn AofGetDataFrInputFiles(xa_aofCtrl: *mut [f64; 16], numOfInpSats: *mut i32, aofInpSats: *mut [i32; 100], numOfMissions: *mut i32, xa_aofSen: *mut [[f64; 16]; 100], numOfAreas: *mut i32, xa_aofArea: *mut [[f64; 16]; 100]);
   //  This function resets all Aof control parameters previously loaded from input text files
   pub fn AofReset();
   //  Computes entry/exit times of basic overflight satellite/sensor (cone) versus basic defended areas (box, circle, point)
   //  <br>
   //  Note:  for xa_aofArea type=4 (polygon), use the AofComplex method.
   pub fn AofBasic(xa_aofRun: *const [f64; 8], satKey: i64, xa_aofSen: *const [f64; 16], xa_aofArea: *const [f64; 16], numOfPasses: *mut i32, xa_entExitTimes: *mut f64) -> i32;
   //  Computes entry/exit times of overflight satellite/sensor having complex configurations (cone, donut, butterfly, leftButterly, rightButterfly)
   //  versus defended areas defined by multiple lat lon height points (polygon)
   //  For a description of the input parameter arrays xa_aofRun and xa_aofSen, see AofBasic.
   //  The input array llhArr is a zero-based array with latitude, longitude and altitude of each point in subsequent entries, e.g.:
   //  llhArr[0] = point 1 latitude, 
   //  llhArr[1] = point 1 longitude, 
   //  llhArr[2] = point 1 altitude, 
   //  llhArr[3] = point 2 latitude, etc.
   pub fn AofComplex(xa_aofRun: *const [f64; 8], satKey: i64, xa_aofSen: *const [f64; 16], numOfLlhPts: i32, llhArr: *const [f64; 360], numOfPasses: *mut i32, xa_entExitTimes: *mut f64) -> i32;
   //  This function returns a look angle from the llh point to the overfly satellite at the specified time
   pub fn AofGetLook(ds50TAI: f64, llh: *const [f64; 3], satKey: i64, xa_look: *mut [f64; 8]) -> i32;
   //  This function returns a view angle from the overfly satellite to a llh point at the specified time
   pub fn AofGetView(ds50TAI: f64, llh: *const [f64; 3], satKey: i64, xa_aofView: *mut [f64; 8]) -> i32;
   //  Determines darkness level of the "defended" area at the specified time
   //  For a description of the input parameter array xa_aofArea, see AofBasic.
   pub fn AofGetDarknessLevel(ds50TAI: f64, xa_aofArea: *const [f64; 16]) -> i32;
}
   
   // AOF parameters
   // input start/stop time type: 1=minutes since epoch (MSE), 0=date time (DTG)
   pub static XA_AOFCTRL_TIMEFLG: i32 =  0;
   // start time of interest (either MSE or DTG)
   pub static XA_AOFCTRL_START: i32 =  1;
   // stop time of interest (either MSE or DTG)
   pub static XA_AOFCTRL_STOP: i32 =  2;
   // search interval (min)
   pub static XA_AOFCTRL_INTERVAL: i32 =  3;
   // print output control flag; 0=print penetrations only, 1=print penetrations and data description
   pub static XA_AOFCTRL_PRTOPT: i32 =  4;
   // search method: 0=use brute force method, 1=use analytical method
   pub static XA_AOFCTRL_SRCHMET: i32 =  5;
   // output sort type: S=sort each area by sat#, then time, T=sort each area by time, then sat#
   pub static XA_AOFCTRL_SRTTYPE: i32 =  6;
   
   pub static XA_AOFCTRL_SIZE: i32 = 16;
   
   
   // Defended area types
   // area box type
   pub static AREATYPE_I_BOX: i32 =  1;
   // area circle type
   pub static AREATYPE_I_CIRCLE: i32 =  2;
   // area point type
   pub static AREATYPE_I_POINT: i32 =  3;
   // area polygon type
   pub static AREATYPE_I_POLYGON: i32 =  4;
   
   
   // AOF satellite/mission (satellite/sensor) data
   // satellite number of sensor-bearing satellite
   pub static XA_AOFSEN_SATNUM: i32 =  0;
   // reserved for future use
   pub static XA_AOFSEN_TYPE: i32 =  1;
   // off nadir minimum look angle (deg) (=0 for Cone)
   pub static XA_AOFSEN_MINEL: i32 =  2;
   // off nadir maximum look angle (deg)
   pub static XA_AOFSEN_MAXEL: i32 =  3;
   // minimum azimuth of first azimuth range (deg)
   pub static XA_AOFSEN_MINAZ1: i32 =  4;
   // maximum azimuth of first azimuth range (deg)
   pub static XA_AOFSEN_MAXAZ1: i32 =  5;
   // minimum azimuth of second azimuth range (deg)
   pub static XA_AOFSEN_MINAZ2: i32 =  6;
   // maximum azimuth of second azimuth range (deg)
   pub static XA_AOFSEN_MAXAZ2: i32 =  7;
   // reserved for future use
   pub static XA_AOFSEN_ELEM7: i32 =  8;
   // reserved for future use
   pub static XA_AOFSEN_ELEM8: i32 =  9;
   // reserved for future use
   pub static XA_AOFSEN_ELEM9: i32 = 10;
   // reserved for future use
   pub static XA_AOFSEN_ELEM10: i32 = 11;
   
   pub static XA_AOFSEN_SIZE: i32 = 16;
   
   
   // AOF satellite/sensor types
   // circle (specify only off-nadir maximum look angle)
   pub static AOFSENTYPE_CIRCLE: i32 = 0;
   
   
   // AOF run parameters
   // Maximum number of passes that AOF returns in one start/stop time
   pub static XA_AOFRUN_MAXPASSES: i32 = 0;
   // AOF start time in days since 1950, UTC
   pub static XA_AOFRUN_START: i32 = 1;
   // AOF stop time in days since 1950, UTC
   pub static XA_AOFRUN_STOP: i32 = 2;
   // Search interval (min)
   pub static XA_AOFRUN_INTERVAL: i32 = 3;
   
   pub static XA_AOFRUN_SIZE: i32 = 8;
   
   
   // AOF defended area types
   // Defended area is a box
   pub static AOF_AREATYPE_BOX: i32 = 1;
   // Defended area is a circle
   pub static AOF_AREATYPE_CIRCLE: i32 = 2;
   // Defended area is a point
   pub static AOF_AREATYPE_POINT: i32 = 3;
   // Defended area is a polygon
   pub static AOF_AREATYPE_POLYGON: i32 = 4;
   
   
   
   // AOF defended area data
   // Area number
   pub static XA_AOFAREA_NUM: i32 = 0;
   // | 1 = BOX                       | 2 = CIRCLE              | 3 = POINT
   pub static XA_AOFAREA_TYPE: i32 = 1;
   // | N lat (deg) upper left corner | N lat (deg) center point| N lat (deg) center point
   pub static XA_AOFAREA_ELEM1: i32 = 2;
   // | E lon (deg) upper left corner | E lon (deg) center point| E lon (deg) center point
   pub static XA_AOFAREA_ELEM2: i32 = 3;
   // | N lat (deg) lower right corner| circle radius (km)      | height (km, above reference geoid)
   pub static XA_AOFAREA_ELEM3: i32 = 4;
   // | E lon (deg) lower right corner|                         |
   pub static XA_AOFAREA_ELEM4: i32 = 5;
   
   pub static XA_AOFAREA_SIZE: i32 = 16;
   
   
   // Penetration-level darkness status
   // lit throughout penetration
   pub static DARKLEVEL_ALLLIT: i32 = 0;
   // dark throughout penetration
   pub static DARKLEVEL_ALLDARK: i32 = 1;
   // partly-lit during penetration
   pub static DARKLEVEL_PARTLIT: i32 = 2;
   
   // View angle from overfly satellite to a llh point
   // Azimuth (deg)
   pub static XA_AOFVIEW_AZIM: i32 = 0;
   // Elevation (deg)
   pub static XA_AOFVIEW_ELEV: i32 = 1;
   // Has line of sight to the point (1=Yes, 0=No-earth obstructs the view)
   pub static XA_AOFVIEW_HASLOS: i32 = 2;
   
   pub static XA_AOFVIEW_SIZE: i32 = 8;
   
   // maximum of number of lat-lon-height points that can be used to describe a defended area
   pub static MAX_LLHPOINTS: i32 = 120;
   
   
   
   
// ========================= End of auto generated code ==========================
