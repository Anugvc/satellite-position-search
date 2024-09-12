// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes Saas dll for use in the program
   pub fn SaasInit(apAddr: i64) -> i32;
   //  Returns information about the current version of Saas.dll. The information is placed in the
   //  string parameter passed-in
   pub fn SaasGetInfo(infoStr: *const c_char);
   //  SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
   //    (Direct Ascent Anti-Satellite). 
   //  <br>
   //  <br>
   //  SAAS software description:
   //  <br>
   //    SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
   //    (Direct Ascent Anti-Satellite). Developed by HQ SpOC, SAAS assesses attack opportunities
   //    for a direct ascent ASAT attack, similar to F-15 ASAT of the 1980's.  By its use of SGP4
   //    propagation, SAAS is designed as a high-speed screening tool to identify potential target
   //    objects in vulnerable orbits relative to the specified missile site/capability; however it
   //    should not be considered a precision analysis model.
   //  <br>
   //  <br>
   //  SAAS algorithm:
   //  <br>
   //    SAAS computes a ring of potential intercept points around a launch site.  The size of the
   //    ring (also known as 'the kill ring') is based on the altitude limit and missile profile
   //    specified for the direct ascent booster.  Each target altitude has a unique kill ring with
   //    two intercept points, defined as 'pierce/entry' and exit.  The ring of potential intercept
   //    points span over 360 degrees azimuth above the launch site.  The ring of intercept points
   //    is circumscribed by a cone looking up from the launch site.  Target orbits are flown
   //    (propagated by SGP4) over a specified period of interest and penetrations of the launch site
   //    cone determine a viable intercept passes.  The time of the cone penetration, and/or cone
   //    exit, are the 'intercept times'.  (Note that as the target altitude decreases, the intercept
   //    point moves farther down-range from the launch site; then it moves up-range after the
   //    specified missile max range is reached.) The azimuth from the launch site to the cone
   //    penetration point is the launch azimuth.  Lastly, the launch time is determined as the cone
   //    penetration time minus the missile time-of-flight to the target.
   //  <br>
   //  <br>
   //  INPUTS include:
   //  <br>
   //  <table>
   //    <caption>table</caption>
   //    <tr><td>(a)</td><td> a set of target input SGP4 two-line element sets (TLEs)</td></tr>
   //    <tr><td>(b)</td><td> coefficient-based missile profile used for the direct ascent attack trajectory</td></tr>
   //    <tr><td>(c)</td><td> missile profile limits including min and max height, maximum sun angle, and maximum
   //         attack angle</td></tr>
   //    <tr><td>(d)</td><td> ground missile location(s) including N. latitude, E. longitude, and height for one or
   //         more test sites</td></tr>
   //    <tr><td>(e)</td><td> a specified evaluation period of interest for assessment</td></tr>
   //  </table>
   //  <br>
   //  <br>
   //  OUTPUTS include:
   //    (a) attack launch time, launch azimuth, and intercept time, for each viable target pass over
   //         a launch site within the specified period of interest
   //  <br>
   //  Order of elements in the input xa_msl array:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>   
   //  <tr><td>  0 </td><td>missile profile minimum height limit [km]</td></tr>
   //  <tr><td>  1 </td><td>missile profile maximum height limit [km]</td></tr>
   //  <tr><td>  2 </td><td>maximum allowed solar aspect angle [deg], pass qualifies 
   //  <tr><td>  3 </td><td>maximum allowed missile attack angle [deg], pass qualifies only 
   //  <tr><td>  4 </td><td>rejection flag*: -1=reject negative; 0=reject neither negative nor positive; 1=reject positive. 
   //  <tr><td>  5 </td><td>missile profile time coefficient for the X^2 term</td></tr>
   //  <tr><td>  6 </td><td>missile profile time coefficient for the X term</td></tr>
   //  <tr><td>  7 </td><td>missile profile time constant for the C term</td></tr>
   //  <tr><td>  8 </td><td>missile profile range coefficient for the X^2 term</td></tr>
   //  <tr><td>  9 </td><td>missile profile range coefficient for the X term</td></tr>
   //  <tr><td> 10 </td><td>missile profile range constant for the C term</td></tr>
   //  <tr><td> 11-31 </td><td>unused at this time</td></tr>
   //  </table>   
   //   (*) The missile rejection flag designation is used by SAAS to check for sign of the desired
   //       attack angles in the results.  It evaluates the sign (+ or -) of the computed attack
   //       angle vs. the maximum allowed attack angle.  For example if set to -1, only positive
   //       attack angles less than the max attack angle will be returned.  If set to 0, either a
   //       positive or negative computed attack angle is acceptable as long as long it is less
   //       than the max allowed attack angle.  If set to 1, only negative attack angles less than
   //       the maximum will be accepted and returned.
   //  <br>
   //  Order of elements in the input xa_ls array:   
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>   
   //  <tr><td> 0 </td><td>launch test site's latitude (+North, -South)</td></tr>
   //  <tr><td> 1 </td><td>launch test site longitude (+East, -West)</td></tr>
   //  <tr><td> 2 </td><td>launch test site local height above Earth average equatorial radius (meters). 
   //  <tr><td> 3-7 </td><td>unused at this time</td></tr>
   //  </table>   
   //  <br>
   //  Order of elements in the input xa_saasRun array:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>   
   //  <tr><td> 0 </td><td>Maximum number of penetration points allowed. 
   //  <tr><td> 1 </td><td>SAAS assessment period-of-interest (POI) start time in fractional days since 1950, UTC</td></tr>
   //  <tr><td> 2 </td><td>SAAS assessment period-of-interest (POI) stop time in fractional days since 1950, UTC. 
   //  								 Note: if a stop time is not specified, it is defaulted by SAAS to 1 day after the specified start
   //  								 time</td></tr>
   //  <tr><td> 3 </td><td>Specified half-angle of attack cone, where if set to 0, SAAS will automatically determine the attack cone half angle. 
   //    								 Note:  if a input cone angle is &gt; 90 degrees, it is defaulted by SAAS to 90
   //    								 degrees</td></tr>
   //  <tr><td> 4-7 </td><td>unused at this time</td></tr>
   //  </table>   
   //  <br>
   //  Order of elements in the returned in the first dimension of xa_satPen array (second array
   //   dimension allows similar same results Elements for other viable penetration solutions at
   //   different times during the assessment period of interest):
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>   
   //  <tr><td> 0 </td><td>impact time in fractional days since 1950, UTC</td></tr>
   //  <tr><td> 1 </td><td>missile launch time in fractional days since 1950, UTC</td></tr>
   //  <tr><td> 2 </td><td>satellite penetration azimuth [deg]</td></tr>
   //  <tr><td> 3 </td><td>satellite penetration elevation [deg]</td></tr>
   //  <tr><td> 4 </td><td>satellite penetration range [km]</td></tr>
   //  <tr><td> 5 </td><td>satellite penetration range rate [km/s]</td></tr>
   //  <tr><td> 6 </td><td>satellite penetration solar aspect angle [deg]</td></tr>
   //  <tr><td> 7 </td><td>satellite penetration attack angle [deg]</td></tr>
   //  <tr><td> 8 </td><td>satellite height at penetration [km] </td></tr>
   //  <tr><td> 9 </td><td>ring penetration indicator:  0 = impact time is an 'entry' time; 1 = ring penetration is an 'exit'
   //  time</td></tr>
   //  <tr><td> 10-15 </td><td>unused at this time</td></tr>
   //  </table>   
   //  <br>
   //  Order of elements in the output xa_Ret array:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>   
   //  <tr><td> 0 </td><td>number of potential viable attack penetrations (opportunities) identified vs. the target set within the
   //  POI</td></tr>
   //  <tr><td> 1-15 </td><td>unused at this time</td></tr>
   //  </table>   
   //  <br>
   //  xa_saasRet(16) - other saas output:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>   
   //  <tr><td> 0 </td><td> number of actual satellite penetrations found</td></tr>
   //  <tr><td> 1 </td><td> satellite apogee height (km)</td></tr>
   //  <tr><td> 2 </td><td> satellite perigee height (km)</td></tr>
   //  <tr><td> 3 </td><td> autocone minimum cone half angle (deg)</td></tr>
   //  <tr><td> 4 </td><td> autocone maximum cone half angle (deg)</td></tr>
   //  <tr><td> 5-15 </td><td> not used at this time</td></tr>
   //  </table>   
   pub fn SaasGetResults(satKey: i64, xa_saasrun: *const [f64; 8], xa_msl: *const [f64; 32], xa_ls: *const [f64; 8], xa_satPen: *mut f64, xa_saasRet: *mut [f64; 16]) -> i32;
   //  Computes auto cone size based on satellite height and missile profile      
   pub fn SaasAutoConeSize(satHeight: f64, xa_msl: *const [f64; 32]) -> f64;
   //  Computes missile time of flight based on satellite height and missile profile  
   pub fn SaasMissileFlightTime(satHeight: f64, xa_msl: *const [f64; 32]) -> f64;
   //  Computes launch orbital plane (inclination and node) based on the launch data
   pub fn ComputeLnchOrbPlane(xa_lnch: *const [f64; 8], incli: *mut f64, node: *mut f64);
   //  Compares a satellite elset against a new launch to find planer intersection time and associated data
   pub fn FindPlanerIntersection(satKey: i64, xa_plnr: *const [f64; 16], xa_intxn: *mut [f64; 16]) -> i32;
}
   
   //*******************************************************************************
   
   // Missile Profile
   // missile profile's minimum height limit (km)
   pub static XA_MSL_MINHGT: i32 =  0;
   // missile profile's maximum height limit (km)
   pub static XA_MSL_MAXHGT: i32 =  1;
   // maximum allowed solar aspect angle (deg)
   pub static XA_MSL_MAXSA: i32 =  2;
   // maximum allowed missile attack angle (deg)
   pub static XA_MSL_ANGMAX: i32 =  3;
   // rejection flag (-1: reject negative, 0: reject neg and pos, 1: reject pos)
   pub static XA_MSL_REJFLG: i32 =  4;
   // missile trajectory time coefficient for the *X**2 term [sec]
   pub static XA_MSL_TIMCOE1: i32 =  5;
   // missile trajectory time coefficient for the *X term [sec]
   pub static XA_MSL_TIMCOE2: i32 =  6;
   // missile trajectory time constant for the C term [sec]
   pub static XA_MSL_TIMCOE3: i32 =  7;
   // missile trajectory range coefficient *X**2 term [km]
   pub static XA_MSL_RNGCOE1: i32 =  8;
   // missile trajectory range coefficient *X term [km]
   pub static XA_MSL_RNGCOE2: i32 =  9;
   // missile trajectory range constant for the C term [km]
   pub static XA_MSL_RNGCOE3: i32 = 10;
   
   pub static XA_MSL_SIZE: i32 = 32;
   
   //*******************************************************************************
   
   // Launch site location
   // launch site's latitude (deg)  (+N) (-S)
   pub static XA_LS_LAT: i32 = 0;
   // launch site's longitude (deg) (+E) (-W)
   pub static XA_LS_LON: i32 = 1;
   // launch site's height(m)
   pub static XA_LS_HEIGHT: i32 = 2;
   
   pub static XA_LS_SIZE: i32 = 8;
   
   //*******************************************************************************
   
   // Saas run parameters
   // Maximum number of penetration points that are allowed
   pub static XA_SAASRUN_MAXPENS: i32 = 0;
   // SAAS start time in days since 1950, UTC
   pub static XA_SAASRUN_START: i32 = 1;
   // SAAS stop time in days since 1950, UTC
   pub static XA_SAASRUN_STOP: i32 = 2;
   // Half angle of attack cone (0=auto)
   pub static XA_SAASRUN_HALFCONE: i32 = 3;
   
   pub static XA_SAASRUN_SIZE: i32 = 8;
   
   //*******************************************************************************
   
   // Satellite penetration data
   // impact time in days since 1950, UTC
   pub static XA_SATPEN_IMPTIME: i32 =  0;
   // msl launch time in days since 1950, UTC
   pub static XA_SATPEN_LAUTIME: i32 =  1;
   // azimuth (deg)
   pub static XA_SATPEN_AZ: i32 =  2;
   // elevation (deg)
   pub static XA_SATPEN_EL: i32 =  3;
   // range (km)
   pub static XA_SATPEN_RANGE: i32 =  4;
   // range rate (km/s)
   pub static XA_SATPEN_RNGRATE: i32 =  5;
   // solar aspect angle (deg)
   pub static XA_SATPEN_SOLANG: i32 =  6;
   // attack angle (deg)
   pub static XA_SATPEN_ATTCKANG: i32 =  7;
   // satellite's height (km)
   pub static XA_SATPEN_SATHGHT: i32 =  8;
   // ring penetration entry or exit time (0=entry, 1=exit)
   pub static XA_SATPEN_EN0EX1: i32 =  9;
   
   pub static XA_SATPEN_SIZE: i32 = 16;
   
   //*******************************************************************************
   
   // SAAS ouput data
   // number of actual satellite penetrations
   pub static XA_SAASRET_NUMOFPENS: i32 =  0;
   // satellite apogee height (km)
   pub static XA_SAASRET_SATAHT: i32 =  1;
   // satellite perigee height (km)
   pub static XA_SAASRET_SATPHT: i32 =  2;
   // autocone minimum cone half angle (deg)
   pub static XA_SAASRET_MINCONE: i32 =  3;
   // autocone maximum cone half angle (deg)
   pub static XA_SAASRET_MAXCONE: i32 =  4;
   
   
   
   
   pub static XA_SAASRET_SIZE: i32 = 16;
   
   //*******************************************************************************
   
   // predefined values for different orbit types used in planer program
   // orbit type LEO
   pub static ORBTYPE_LEO: i32 = 1;
   // orbit type MEO
   pub static ORBTYPE_MEO: i32 = 2;
   // orbit type GEO
   pub static ORBTYPE_GEO: i32 = 3;
   
   //*******************************************************************************
   
   // indexes of fields specifying parameters for planer intersection program
   // launch site latitude (deg)
   pub static XA_LNCH_LAT: i32 = 0;
   // launch site longitude (deg)
   pub static XA_LNCH_LON: i32 = 1;
   // injection azimuth (deg)
   pub static XA_LNCH_INJAZ: i32 = 2;
   // launch time in days since 1950 UTC
   pub static XA_LNCH_DS50UTC: i32 = 3;
   
   pub static XA_LNCH_SIZE: i32 = 8;
   
   //*******************************************************************************
   
   // indexes of fields specifying parameters for planer intersection program
   // orbital type (LEO = 1, MEO = 2, GEO = 3)
   pub static XA_PLNR_ORBTYPE: i32 = 0;
   // launch site latitude (deg)
   pub static XA_PLNR_LSLAT: i32 = 1;
   // launch site longitude (deg)
   pub static XA_PLNR_LSLON: i32 = 2;
   // launch time in days since 1950 UTC
   pub static XA_PLNR_DS50UTC: i32 = 4;
   // time of flight start (min)
   pub static XA_PLNR_TOFFR: i32 = 5;
   // time of flight end (min)
   pub static XA_PLNR_TOFTO: i32 = 6;
   // planer's inclination (deg)
   pub static XA_PLNR_INCLI: i32 = 7;
   // planer's node (deg)
   pub static XA_PLNR_NODE: i32 = 8;
   
   pub static XA_PLNR_SIZE: i32 = 16;
   
   //*******************************************************************************
   
   // indexes of output data returned by planer intersection program
   // time of intersection in days since 1950 UTC
   pub static XA_INTXN_DS50UTC: i32 = 0;
   // satellite inclination (deg)
   pub static XA_INTXN_INCLI: i32 = 1;
   // satellite latitude (deg) at the time of the intersection
   pub static XA_INTXN_LAT: i32 = 2;
   // satellite longitude (deg) at the time of the intersection
   pub static XA_INTXN_LON: i32 = 3;
   // satellite height (km) at the time of the intersection
   pub static XA_INTXN_HEIGHT: i32 = 4;
   // time of flight (min) since launch time
   pub static XA_INTXN_TOF: i32 = 5;
   // coplaner angle (deg)
   pub static XA_INTXN_COPLANG: i32 = 6;
   
   pub static XA_INTXN_SIZE: i32 = 16;
   
   //*******************************************************************************
   
// ========================= End of auto generated code ==========================
