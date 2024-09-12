// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes ElOps dll for use in the program
   pub fn ElOpsInit(apAddr: i64) -> i32;
   //  Returns information about the current version of ElOps.dll. The information is placed in the string parameter you pass in
   pub fn ElOpsGetInfo(infoStr: *const c_char);
   //  Checks to see if satellite has geo orbit
   pub fn IsGeoOrbit(incli: f64, period: f64) -> i32;
   //  Estimates the approx long east subpt
   pub fn CompLonEastSubPt(ds50UTC: f64, node: f64, omega: f64, mnAnomaly: f64) -> f64;
   //  Computes the decay time of the input satellite
   pub fn FindSatDecayTime(satKey: i64, f10Avg: f64, decayDs50UTC: *mut f64) -> i32;
   //  Returs parameters of a satellite via its satKey
   pub fn GetSatParameters(satKey: i64, xa_satparm: *mut [f64; 32]) -> i32;
   //  Returs the satellite number associated with the input satKey
   pub fn SatNumOf(satKey: i64) -> i32;
   //  Adds an impulsive maneuver (using VP-card string format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
   //  Note: All maneuvers have to be entered before the satellite's initialization step
   pub fn AddManeuverVPStr(satKey: i64, vpString: *const c_char) -> i32;
   //  Adds an impulsive maneuver (using VP-card array format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
   //  Note: All maneuvers have to be entered before the satellite's initialization step
   pub fn AddManeuverVPArr(satKey: i64, xa_vp: *const [f64; 16]) -> i32;
}
   
   // Satellite maintenance category
   // Synchronous
   pub static SATCAT_SYNCHRONOUS: i32 = 1;
   // Deep space (not synchronous)
   pub static SATCAT_DEEPSPACE: i32 = 2;
   // Decaying (perigee height below 575 km)
   pub static SATCAT_DECAYING: i32 = 3;
   // Routine (everything else)
   pub static SATCAT_ROUTINE: i32 = 4;
   
   // Indexes of available satellite data fields
   // epoch in days since 1950, UTC
   pub static XF_ELFIELD_EPOCHUTC: i32 =  1;
   // mean anomaly (deg)
   pub static XF_ELFIELD_MNANOM: i32 =  2;
   // right ascension of the asending node (deg)
   pub static XF_ELFIELD_NODE: i32 =  3;
   // argument of perigee (deg)
   pub static XF_ELFIELD_OMEGA: i32 =  4;
   // period (min)
   pub static XF_ELFIELD_PERIOD: i32 =  5;
   // eccentricity (unitless)
   pub static XF_ELFIELD_ECCEN: i32 =  6;
   // inclination (deg)
   pub static XF_ELFIELD_INCLI: i32 =  7;
   // mean motion (revs/day)
   pub static XF_ELFIELD_MNMOTION: i32 =  8;
   // either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   pub static XF_ELFIELD_BFIELD: i32 =  9;
   // perigee height (km)
   pub static XF_ELFIELD_PERIGEEHT: i32 = 10;
   // apogee height (km)
   pub static XF_ELFIELD_APOGEEHT: i32 = 11;
   // perigee (km)
   pub static XF_ELFIELD_PERIGEE: i32 = 12;
   // apogee (km)
   pub static XF_ELFIELD_APOGEE: i32 = 13;
   // semi major axis (km)
   pub static XF_ELFIELD_A: i32 = 14;
   // Satellite category (Synchronous, Deep space, Decaying, Routine)
   pub static XF_ELFIELD_SATCAT: i32 = 15;
   // Astat 3 Height multiplier
   pub static XF_ELFIELD_HTM3: i32 = 16;
   // Center of mass offset (m)
   pub static XF_ELFIELD_CMOFFSET: i32 = 17;
   // n-double-dot/6  (for SGP, eph-type = 0)
   pub static XF_ELFIELD_N2DOT: i32 = 18;
   
   
   // Indexes of available satellite parameters
   // satellite's epoch in days since 1950, UTC
   pub static XA_SATPARM_EPOCHUTC: i32 =  0;
   // satellite's mean anomaly (deg)
   pub static XA_SATPARM_MNANOM: i32 =  1;
   // satellite's right ascension of the asending node (deg)
   pub static XA_SATPARM_NODE: i32 =  2;
   // satellite's argument of perigee (deg)
   pub static XA_SATPARM_OMEGA: i32 =  3;
   // satellite's period (min)
   pub static XA_SATPARM_PERIOD: i32 =  4;
   // satellite's eccentricity (unitless)
   pub static XA_SATPARM_ECCEN: i32 =  5;
   // satellite's inclination (deg)
   pub static XA_SATPARM_INCLI: i32 =  6;
   // satellite's mean motion (revs/day)
   pub static XA_SATPARM_MNMOTION: i32 =  7;
   // satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   pub static XA_SATPARM_BFIELD: i32 =  8;
   // satellite's perigee height (km)
   pub static XA_SATPARM_PERIGEEHT: i32 =  9;
   // satellite's apogee height (km)
   pub static XA_SATPARM_APOGEEHT: i32 = 10;
   // satellite's perigee (km)
   pub static XA_SATPARM_PERIGEE: i32 = 11;
   // satellite's apogee (km)
   pub static XA_SATPARM_APOGEE: i32 = 12;
   // satellite's semi major axis (km)
   pub static XA_SATPARM_A: i32 = 13;
   // satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine)
   pub static XA_SATPARM_SATCAT: i32 = 14;
   // satellite's center of mass offset (m)
   pub static XA_SATPARM_CMOFFSET: i32 = 15;
   // satellite's east longitude east subpoint (deg) - only for synchronous orbits
   pub static XA_SATPARM_LONE: i32 = 16;
   // satellite's longitude drift rate (deg East/day) - only for synchronous orbits
   pub static XA_SATPARM_DRIFT: i32 = 17;
   // satellite's omega rate of change (deg/day)
   pub static XA_SATPARM_OMEGADOT: i32 = 18;
   // satellite's nodal precession rate (deg/day)
   pub static XA_SATPARM_RADOT: i32 = 19;
   // satellite's nodal period (min)
   pub static XA_SATPARM_NODALPRD: i32 = 20;
   // satellite's nodal crossing time prior to its epoch (ds50UTC)
   pub static XA_SATPARM_NODALX: i32 = 21;
   // satellite is GEO: 0=no, 1=yes
   pub static XA_SATPARM_ISGEO: i32 = 22;
   // satellite's relative energy - only for GOBS
   pub static XA_SATPARM_RELENERGY: i32 = 23;
   // satellite's number
   pub static XA_SATPARM_SATNUM: i32 = 24;
   // satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET)
   pub static XA_SATPARM_ELTTYPE: i32 = 25;
   // obsolete - should use new name XA_SATPARM_ELTTYPE intead
   pub static XA_SATPARM_OET: i32 = 25;
   // satellite's propagation type - see PROPTYPE_? for list of available values
   pub static XA_SATPARM_PROPTYPE: i32 = 26;
   // satellite's element number
   pub static XA_SATPARM_ELSETNUM: i32 = 27;
   // sin(incl)*sin(r.a. node)
   pub static XA_SATPARM_WX: i32 = 28;
   // -sin(incl)*cos(r.a. node)
   pub static XA_SATPARM_WY: i32 = 29;
   // cos(incl)
   pub static XA_SATPARM_WZ: i32 = 30;
   // Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   pub static XA_SATPARM_TROUGH: i32 = 31;
   
   pub static XA_SATPARM_SIZE: i32 = 32;
   
   // Different input time options of VP card
   // VP's input time is in days since 1950 UTC
   pub static VP_TIME_DS50UTC: i32 = 0;
   // VP's input time is in minutes since epoch
   pub static VP_TIME_MSE: i32 = 1;
   
   // VP record arrangement in array format
   // VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   pub static XA_VP_TIMETYPE: i32 = 0;
   // VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   pub static XA_VP_TIMEVAL: i32 = 1;
   // impulse U-component of delta-velocity (km/sec)
   pub static XA_VP_IMPULSE_U: i32 = 2;
   // impulse V-component of delta-velocity (km/sec)
   pub static XA_VP_IMPULSE_V: i32 = 3;
   // impulse W-component of delta-velocity (km/sec)
   pub static XA_VP_IMPULSE_W: i32 = 4;
   // apply above delta-v this number of times at the interval specified below
   pub static XA_VP_REPETITIONS: i32 = 5;
   // time interval in minutes between repetitions specified above
   pub static XA_VP_INTERVAL: i32 = 6;
   
   pub static XA_VP_SIZE: i32 = 16;
   
   
   
   //*******************************************************************************
   
// ========================= End of auto generated code ==========================
