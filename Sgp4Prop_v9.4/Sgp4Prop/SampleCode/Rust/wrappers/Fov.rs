// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes Fov dll for use in the program
   pub fn FovInit(apAddr: i64) -> i32;
   //  Returns information about the current version of Fov.dll. The information is placed in the string parameter you pass in
   pub fn FovGetInfo(infoStr: *const c_char);
   //  Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
   pub fn FovLoadFile(fovInputFile: *const c_char) -> i32;
   //  Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
   pub fn FovLoadFileAll(fovInputFile: *const c_char) -> i32;
   //  Loads a single Fov-typed card
   pub fn FovLoadCard(card: *const c_char) -> i32;
   //  Saves any currently loaded Fov-related settings to a file
   pub fn FovSaveFile(fovFile: *const c_char, saveMode: i32, saveForm: i32) -> i32;
   //  This function retrieves various FOV input data being entered from input flat files (various FOV cards)
   pub fn FovGetDataFrInputFiles(xa_fovCtrl: *mut [f64; 8], numOfWindows: *mut i32, startStopTimes: *mut [f64; 256], numOfSources: *mut i32, xa_fovSrc_Arr: *mut [[f64; 8]; 128], numOfTargets: *mut i32, xa_fovTgt_Arr: *mut [[f64; 8]; 128], numVicSats: *mut i32, vicSatNums: *mut [i32; 128]);
   //  This function screens the specified start/end time window and returns passes when the target satellite can be seen (passed all limit checks) by the source 
   pub fn FovFindTargetPasses(startTimeDs50UTC: f64, stopTimeDs50UTC: f64, srcSenKey: i64, tgtSatKey: i64, tgtPassesArr: *mut f64, numOfPasses: *mut i32) -> i32;
   //  This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is an elset).
   //  <br>
   //  The xa_emeDat array size is [numObs, 3].  The penetration time indexes are:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Name</b></td>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td> 0</td><td> entry time (ds50UTC)</td></tr>
   //  <tr><td> 1</td><td> minimum time (ds50UTC)</td></tr>
   //  <tr><td> 2</td><td> exit time (ds50UTC)</td></tr>
   //  </table>
   //  <br>
   //  See FovGetDataFrInputFiles for a description of the XA_FOVSRC parameter values.
   pub fn FovTargetElset(xa_fovRun: *const [f64; 8], xa_fovSrc: *const [f64; 8], tgtSatKey: i64, vicSatKey: i64, xa_emeDat: *mut f64, numOfPasses: *mut i32) -> i32;
   //  This function returns a look angle from the source to the potential victim satellite at the specified time (target is an elset)
   //  <br>
   //  If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid.
   pub fn FovTargetElsetLook(currDs50TAI: f64, xa_fovSrc: *const [f64; 8], vicSatKey: i64, xa_look: *mut [f64; 8]) -> i32;
   //  This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is a vector: AZ/EL or RA/DEC).
   //  See FovTargetElset for a description of the xa_emeDat array.<br>
   //  If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid 
   pub fn FovTargetVec(xa_fovRun: *const [f64; 8], xa_fovSrc: *const [f64; 8], xa_fovTgt: *const [f64; 8], vicSatKey: i64, xa_emeDat: *mut f64, numOfPasses: *mut i32) -> i32;
   //  This function returns a look angle from the source to the potential victim satellite at the specified time (target is a vector: AZ/EL or RA/DEC).
   //  See FovGetDataFrInputFiles for a description of the XA_FOVSRC and XA_FOVTGT parameter values.
   //  See FovTargetElsetLook for a description of the XA_LOOK parameter values.
   pub fn FovTargetVecLook(currDs50TAI: f64, xa_fovSrc: *const [f64; 8], xa_fovTgt: *const [f64; 8], vicSatKey: i64, xa_look: *mut [f64; 8]) -> i32;
   //  Resets all FOV control parameters back to their default values
   pub fn FovReset();
}
   
   // Fov run parameters
   // Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
   pub static XA_FOVRUN_MAXPASSES: i32 = 0;
   // FOV start time in days since 1950, UTC
   pub static XA_FOVRUN_START: i32 = 1;
   // FOV stop time in days since 1950, UTC
   pub static XA_FOVRUN_STOP: i32 = 2;
   // Cone half angle (deg) (0=auto) (0-45)
   pub static XA_FOVRUN_HALFCONE: i32 = 3;
   // Search interval (min)
   pub static XA_FOVRUN_INTERVAL: i32 = 4;
   
   pub static XA_FOVRUN_SIZE: i32 = 8;
   
   // FOV source types
   // Source is sensor
   pub static FOV_SRCTYPE_SEN: i32 = 1;
   // Source is lat lon height
   pub static FOV_SRCTYPE_LLH: i32 = 2;
   // Source is EFG
   pub static FOV_SRCTYPE_EFG: i32 = 3;
   // Source is XYZ
   pub static FOV_SRCTYPE_XYZ: i32 = 4;
   
   // FOV source types
   // Target is elset
   pub static FOV_TGTTYPE_ELSET: i32 = 1;
   // Target is constant Az/El
   pub static FOV_TGTTYPE_AZEL: i32 = 2;
   // Target is RA/Dec (STAR)
   pub static FOV_TGTTYPE_RADEC: i32 = 3;
   
   // FOV source specification
   // 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
   pub static XA_FOVSRC_TYPE: i32 = 0;
   // Sensor# | Source ID   | Source ID  | Source ID
   pub static XA_FOVSRC_ID: i32 = 1;
   // | N lat (deg) | EFG: E (m) | X (m)
   pub static XA_FOVSRC_ELEM1: i32 = 2;
   // | E lon (deg) | EFG: F (m) | Y (m)
   pub static XA_FOVSRC_ELEM2: i32 = 3;
   // | height (m)  | EFG: G (m) | Z (m)
   pub static XA_FOVSRC_ELEM3: i32 = 4;
   // |             |            | time of position in Ds50UTC
   pub static XA_FOVSRC_ELEM4: i32 = 5;
   
   pub static XA_FOVSRC_SIZE: i32 = 8;
   
   
   // FOV target specification
   // 1=ELSET | 2=AZEL    | 3=RADEC
   pub static XA_FOVTGT_TYPE: i32 = 0;
   // Elset#  | Target ID | Target ID
   pub static XA_FOVTGT_ID: i32 = 1;
   // | az (deg)  | RA (deg)
   pub static XA_FOVTGT_ELEM1: i32 = 2;
   // | el (deg)  | Dec (deg)
   pub static XA_FOVTGT_ELEM2: i32 = 3;
   // |           | equinox indicator
   pub static XA_FOVTGT_ELEM3: i32 = 4;
   
   pub static XA_FOVTGT_SIZE: i32 = 8;
   
   // entry/minimum/exit time data
   // entry time (ds50UTC)
   pub static XA_EMEDAT_ENTRY: i32 = 0;
   // minimum time (ds50UTC)
   pub static XA_EMEDAT_MIN: i32 = 1;
   // exit time (ds50UTC)
   pub static XA_EMEDAT_EXIT: i32 = 2;
   
   pub static XA_EMEDAT_SIZE: i32 = 3;
   
   // FOV parameters
   // Cone half angle (deg) (0=auto) (0-45)
   pub static XA_FOVCTRL_HALFCONE: i32 = 0;
   // Search interval (min)
   pub static XA_FOVCTRL_INTERVAL: i32 = 1;
   // Print option
   pub static XA_FOVCTRL_PRTOPT: i32 = 2;
   
   pub static XA_FOVCTRL_SIZE: i32 = 8;
   
   
   // maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
   pub static FOVMAXNUM: i32 = 128;
   
// ========================= End of auto generated code ==========================
