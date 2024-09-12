// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes BatchDC DLL for use in the program
   pub fn BatchDCInit(apAddr: i64) -> i32;
   //  Returns information about the current version of BatchDC DLL. 
   //  The information is placed in the string parameter passed in.
   pub fn BatchDCGetInfo(infoStr: *const c_char);
   //  Read/Load BatchDC input data from an input file
   pub fn BatchDCLoadFile(batchDCInputFile: *const c_char) -> i32;
   //  Loads BatchDC control parameters and all BatchDC related data (environment, time, elsets, sensors) from an input text file
   pub fn BatchDCLoadFileAll(batchDCInputFile: *const c_char) -> i32;
   //  Read/Load BatchDC-typed input data from an input card
   pub fn BatchDCLoadCard(card: *const c_char) -> i32;
   //  Builds and returns the DC parameter card (1P-Card) from the current DC settings
   pub fn BatchDCGetPCard(dcPCard: *const c_char);
   //  Saves any currently loaded BatchDC-related settings to a file
   pub fn BatchDCSaveFile(batchDCFile: *const c_char, saveMode: i32, saveForm: i32) -> i32;
   //  Gets BatchDC parameter data (P Card) - all fields
   //  <br>
   //  The table below shows the structure of the integer array xai_ctrl:
   //  <table>
   //      <caption>table</caption>
   //      <tr>
   //          <td><b>Index</b></td>
   //          <td><b>Index Interpretation</b></td>
   //      </tr>
   //      <tr><td>0</td><td>DC print option</td></tr>
   //      <tr><td>1</td><td>Apply biases from sensor file</td></tr>
   //      <tr><td>2</td><td>Weighed DC flag</td></tr>
   //      <tr><td>3</td><td>Epoch placement control</td></tr>
   //      <tr><td>4</td><td>Element correction flag - Ag</td></tr>
   //      <tr><td>5</td><td>Element correction flag - Af</td></tr>
   //      <tr><td>6</td><td>Element correction flag - Psi</td></tr>
   //      <tr><td>7</td><td>Element correction flag - Chi</td></tr>
   //      <tr><td>8</td><td>Element correction flag - L</td></tr>
   //      <tr><td>9</td><td>Element correction flag - N</td></tr>
   //      <tr><td>10</td><td>Element correction flag - B* (SGP4) B (SP)</td></tr>
   //      <tr><td>11</td><td>Element correction flag - Agom (SP)</td></tr>
   //      <tr><td>12</td><td>Correction order</td></tr>
   //      <tr><td>13</td><td>Correct by the specified correction order for 1 iteration only</td></tr>
   //      <tr><td>14</td><td>Flag specifies which residuals are used for RMS calculation and convergence</td></tr>
   //      <tr><td>15</td><td>Flag; if set, produce sensor performance analysis summary</td></tr>
   //      <tr><td>16</td><td>Flag; if set, deweight according to # of obs per track</td></tr>
   //      <tr><td>17</td><td>Iteration summary control</td></tr>
   //      <tr><td>18</td><td>Partials method</td></tr>
   //      <tr><td>19</td><td>Light time correction control</td></tr>
   //      <tr><td>20</td><td>Number of iteration to allow no auto rejection of residuals</td></tr>
   //      <tr><td>21</td><td>Propagation method</td></tr>
   //      <tr><td>22</td><td>Flag; if set, correct B* vs X</td></tr>
   //      <tr><td>23</td><td>Max # of iterations before declaring divergence</td></tr>
   //      <tr><td>24</td><td>Use predicted RMS versus previous RMS for convergence testing</td></tr>
   //  </table>
   //  <br>
   //  The table below shows the structure of the real array xar_ctrl:
   //  <table>
   //      <caption>table</caption>
   //      <tr>
   //          <td><b>Index</b></td>
   //          <td><b>Index Interpretation</b></td>
   //      </tr>
   //      <tr><td>0</td><td>RMS multiplier</td></tr>
   //      <tr><td>1</td><td>Time of specified epoch</td></tr>
   //      <tr><td>2</td><td>Convergence criteria on time correction (%)</td></tr>
   //      <tr><td>3</td><td>First pass delta-t rejection criteria</td></tr>
   //      <tr><td>4</td><td>Convergence criteria on 7-elt correction (%)</td></tr>
   //      <tr><td>5</td><td>Reset value for B term in subset correction</td></tr>
   //  </table>
   pub fn BatchDCGetParams(xai_ctrl: *mut [i32; 256], xar_ctrl: *mut [f64; 256], xas_ctrl: *const c_char);
   //  Sets BatchDC parameter data (P Card) - all fields
   //  See BatchDCGetParams for the structure of the xai_ctrl and xar_ctrl arrays.
   pub fn BatchDCSetParams(xai_ctrl: *const [i32; 256], xar_ctrl: *const [f64; 256], xas_ctrl: *const c_char);
   //  Returns DC control parameters using array format
   pub fn BatchDCGetCtrlArr(xa_dcCtrl: *mut [f64; 64]);
   //  Sets DC control parameters using array format
   pub fn BatchDCSetCtrlArr(xa_dcCtrl: *const [f64; 64]) -> i32;
   //  Initializes DC parameters for the satellite
   //  See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   pub fn BatchDCInitSat(satKey: i64, numObs: *mut i32, obsKeys: *mut i64, xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Initializes DC parameters for the satellite using only the provided/preselected obsKeys (not all loaded obs) (Thread-Safe)
   //  See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   pub fn BatchDCInitSatObsKeys(satKey: i64, xa_dcCtrl: *const [f64; 64], numObs: i32, obsKeys: *const i64, xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Initializes DC parameters for the satellite using only obs that match the provided obs selection criteria (not all loaded obs) (Thread-Safe)
   //  See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   //  Note: This can be accomplished by using ObsGetSelected() and BatchDCInitSatObsKeys() as well
   pub fn BatchDCInitSatObsSel(satKey: i64, xa_dcCtrl: *const [f64; 64], xa_selob: *const [f64; 128], numObs: *mut i32, obsKeys: *mut i64, xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Performs batch-least-square differential corrections to the specified satellite and
   //  return the corrected elements and related data - using all loaded obs
   //  <br>
   //  Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
   //  <br>
   //  See BatchDCGetParams for the structure of the xai_dcElts array.
   //  <br>
   //  The table below shows the structure of the integer array xar_dcElts:
   //  <table>
   //      <caption>table</caption>
   //      <tr>
   //          <td><b>Index</b></td>
   //          <td><b>Index Interpretation</b></td>
   //      </tr>
   //      <tr><td>0</td><td>elset's epoch time in days since 1950 UTC</td></tr>
   //      <tr><td>1</td><td>n-dot/2  (for SGP, eph-type = 0)</td></tr>
   //      <tr><td>2</td><td>n-double-dot/6  (for SGP, eph-type = 0)</td></tr>
   //      <tr><td>3</td><td>either SGP4 bStar (1/er) or SP bTerm (m2/kg)</td></tr>
   //      <tr><td>4</td><td>SP agom (m**2/kg)</td></tr>
   //      <tr><td>5</td><td>SP outgassing parameter (km/s**2)</td></tr>
   //      <tr><td>6</td><td>semi major axis (km)</td></tr>
   //      <tr><td>7</td><td>eccentricity</td></tr>
   //      <tr><td>8</td><td>inclination (deg)</td></tr>
   //      <tr><td>9</td><td>mean anamoly (deg)</td></tr>
   //      <tr><td>10</td><td>right ascension of the ascending node (deg)</td></tr>
   //      <tr><td>11</td><td>argument of perigee (deg)</td></tr>
   //      <tr><td>12</td><td>AF</td></tr>
   //      <tr><td>13</td><td>AG</td></tr>
   //      <tr><td>14</td><td>CHI</td></tr>
   //      <tr><td>15</td><td>PSI</td></tr>
   //      <tr><td>16</td><td>mean longitude (deg)</td></tr>
   //      <tr><td>17</td><td>mean motion (revs/day)</td></tr>
   //      <tr><td>18</td><td>ECI posX (km)</td></tr>
   //      <tr><td>19</td><td>ECI posY (km)</td></tr>
   //      <tr><td>20</td><td>ECI posZ (km)</td></tr>
   //      <tr><td>21</td><td>ECI velX (km/s)</td></tr>
   //      <tr><td>22</td><td>ECI velY (km/s)</td></tr>
   //      <tr><td>23</td><td>ECI velZ (km/s)</td></tr>
   //      <tr><td></td><td></td></tr>
   //      <tr><td>40</td><td>RMS (km)</td></tr>
   //      <tr><td>41</td><td>unweighted RMS (km)</td></tr>
   //      <tr><td>42</td><td>delta T RMS (min)</td></tr>
   //      <tr><td>43</td><td>beta RMS (deg)</td></tr>
   //      <tr><td>44</td><td>delta height RMS (km)</td></tr>
   //      <tr><td>45</td><td>convergence value (km)</td></tr>
   //      <tr><td>46</td><td>predicted RMS (km)</td></tr>
   //      <tr><td></td><td></td></tr>
   //      <tr><td>60</td><td>covariance diagonal L</td></tr>
   //      <tr><td>61</td><td>covariance diagonal N</td></tr>
   //      <tr><td>62</td><td>covariance diagonal CHI</td></tr>
   //      <tr><td>63</td><td>covariance diagonal PSI</td></tr>
   //      <tr><td>64</td><td>covariance diagonal AF</td></tr>
   //      <tr><td>65</td><td>covariance diagonal AG</td></tr>
   //      <tr><td>66</td><td>covariance diagonal BTERM</td></tr>
   //      <tr><td>67</td><td>covariance not used</td></tr>
   //      <tr><td>68</td><td>covariance diagonal AGOM</td></tr>
   //      <tr><td></td><td></td></tr>
   //      <tr><td>200-244</td><td>equinoctial covariance matrix - the lower triangular half 200-244</td></tr>
   //  </table>
   pub fn BatchDCSolve(satKey: i64, xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Performs batch-least-square differential corrections to the specified satellite and
   //  return the corrected elements and related data - using only the provided obsKeys (not all loaded obs)
   //  Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
   //  See BatchDCGetParams for the structure of the xai_dcElts array.
   //  See BatchDCSolve for the structure of the xar_dcElts array.
   pub fn BatchDCSolveSelObs(satKey: i64, obsKeys: *const i64, numObs: i32, xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Removes a satellite, represented by the satKey, from BatchDC's memory
   pub fn BatchDCRemoveSat(satKey: i64) -> i32;
   //  Iterates DC for the satellite
   //  <br>
   //  xa_ObsRes size is [numObs, 100].  xa_rejFlg size is [numObs, 32].
   //  <br>
   //  The table below shows the values contained in xa_ObsRes for each ob:
   //  <table>
   //      <caption>table</caption>
   //      <tr>
   //          <td><b>Index</b></td>
   //          <td><b>Index Interpretation</b></td>
   //      </tr>
   //      <tr><td> 0 </td><td> Azimuth residual (deg)</td></tr>
   //      <tr><td> 1 </td><td> Elevation residual (deg)</td></tr>
   //      <tr><td> 2 </td><td> Range residual (km)</td></tr>
   //      <tr><td> 3 </td><td> Height residual (deg)</td></tr>
   //      <tr><td> 4 </td><td> Beta residual (deg)</td></tr>
   //      <tr><td> 5 </td><td> Delta T residual (min)</td></tr>
   //      <tr><td> 6 </td><td> Vector magnitude (km)</td></tr>
   //      <tr><td> 7 </td><td> Time since epoch (days)</td></tr>
   //      <tr><td> 8 </td><td> True argument of latitude (deg)</td></tr>
   //      <tr><td> 9 </td><td> Revolution number  </td></tr>
   //      <tr><td>10 </td><td> Range rate residual (km/sec)</td></tr>
   //      <tr><td>11 </td><td> observation ASTAT</td></tr>
   //      <tr><td>12 </td><td> observation type</td></tr>
   //      <tr><td>13 </td><td> satellite true anomaly (deg)</td></tr>
   //      <tr><td>14 </td><td> satellite elevation (deg)</td></tr>
   //      <tr><td>15 </td><td> satellite maintenance category</td></tr>
   //      <tr><td>16 </td><td> obs time in ds50UTC</td></tr>
   //      <tr><td>17 </td><td> obs azimuth (deg)</td></tr>
   //      <tr><td>18 </td><td> obs elevation (deg)</td></tr>
   //      <tr><td>19 </td><td> Velocity angle residual (deg)</td></tr>
   //      <tr><td>20 </td><td> Angular momentum residual (deg)</td></tr>
   //      <tr><td>21 </td><td> Right ascension residual (deg) (for ob types 5, 9, 19)</td></tr>
   //      <tr><td>22 </td><td> Declination residual (deg) (for ob types 5, 9, 19)</td></tr>
   //      <tr><td>23 </td><td> Delta X position (km)</td></tr>
   //      <tr><td>24 </td><td> Delta Y position (km)</td></tr>
   //      <tr><td>25 </td><td> Delta Z position (km)</td></tr>
   //      <tr><td>26 </td><td> Delta X velocity (km/sec)</td></tr>
   //      <tr><td>27 </td><td> Delta Y velocity (km/sec)</td></tr>
   //      <tr><td>28 </td><td> Delta Z velocity (km/sec)</td></tr>
   //      <tr><td>29 </td><td> Angle only obs computed range (km)</td></tr>
   //      <tr><td>30 </td><td> obs azimuth (deg)</td></tr>
   //      <tr><td>31 </td><td> obs elevation (deg)</td></tr>
   //  </table>
   //  <br>
   //  See BatchDCGetParams for the structure of the xai_dcElts array.
   //  <br>
   //  See BatchDCSolve for the structure of the xar_dcElts array.
   pub fn BatchDCIterate(satKey: i64, xa_ObsRes: *mut f64, xa_rejFlg: *mut i32, xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Returns a concatenated string representation of a VCM generated by a successful DC
   pub fn BatchDCGetVcm(satKey: i64, vcmLines: *const c_char) -> i32;
   //  Returns the full file name of the output SP Vector file that was specified using "SPVOUT = " 
   //  in the main input file or using the BatchDCSetSpVOutFileName() function call
   pub fn BatchDCGetSpVOut(spVOutFile: *const c_char);
   //  Sets the full file name of the SP Vector output file which will be used to store the generated SP vector data
   pub fn BatchDCSetSpVOut(spVOutFile: *const c_char);
   //  Resets all BatchDC control parameters back to their default values and empties the DC binary tree (objects created by BatchDCInitSat)
   pub fn BatchDCResetAll();
   //  Returns DC acceptance criteria data for the specified satellite
   pub fn BatchDCGetAccptCrit(satKey: i64, xa_ac: *mut [f64; 64]) -> i32;
   //  Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   //  returns the corrected SGP4/SGP4-XP elements and related data
   //  Note: No need to initialize VCM before calling this method
   pub fn SpToEGP(satKey: i64, xa_egpCtrl: *mut [f64; 64], xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   //  returns the corrected elements SGP4/SGP4-XP in form of a TLE
   //  Note: No need to initialize VCM before calling this method
   pub fn SpToTle(satKey: i64, xa_egpCtrl: *mut [f64; 64], line1: *const c_char, line2: *const c_char) -> i32;
   //  Combines SpToEGP and SpToTle functions into just one function call
   //  Note: No need to initialize VCM before calling this method
   pub fn SpToTleComb(satKey: i64, xa_egpCtrl: *mut [f64; 64], line1: *const c_char, line2: *const c_char, xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   //  returns the corrected elements SGP4/SGP4-XP in form of a TLE
   //  Note: No need to initialize VCM before calling this method
   pub fn SpToCsv(satKey: i64, xa_egpCtrl: *mut [f64; 64], csvLine: *const c_char) -> i32;
   //  Combines SpToEGP and SpToCsv functions into just one function call
   //  Note: No need to initialize VCM before calling this method
   pub fn SpToCsvComb(satKey: i64, xa_egpCtrl: *mut [f64; 64], csvLine: *const c_char, xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Performs batch-least-square differential corrections using the input external ephemeris and treating them as observations and
   //  returns the corrected SGP4/SGP4-XP elements and related data
   pub fn ExtEphemToEGP(extEphFile: *const c_char, xa_egpCtrl: *mut [f64; 64], xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
   //  Performs IOMOD/IODET and then batch-least-square differential corrections on the input observations via their obsKeys (Thread-Safe) 
   pub fn IomodDC(numObs: i32, obsKeys: *const i64, xa_iomdc: *const [f64; 64], xai_dcElts: *mut [i32; 256], xar_dcElts: *mut [f64; 256], xas_dcElts: *const c_char) -> i32;
}
   // Different DC propagation method
   // DC propagator method is GP
   pub static DCPROPTYPE_GP: i32 =  0;
   // DC propagator method is SGP4-XP
   pub static DCPROPTYPE_XP: i32 =  4;
   // DC propagator method is SP
   pub static DCPROPTYPE_SP: i32 = 99;
   
   // DC iterating returned code
   // DC was successful
   pub static ITERCODE_DONE: i32 = 0;
   // DC has error
   pub static ITERCODE_ERROR: i32 = 1;
   // DC is still iterating
   pub static ITERCODE_ITERATING: i32 = 2;
   // DC diverged but trying to recover
   pub static ITERCODE_DIVERGED: i32 = 3;
   
   // indexes represent epoch placement options
   // Nodal crossing nearest latest obs
   pub static EPFLG_NODALXINGLATESTOB: i32 = 0;
   // Exact time of latest obs
   pub static EPFLG_LATESTOB: i32 = 1;
   // Nodal crossing closest to specified time
   pub static EPFLG_NODALXINGATTIME: i32 = 2;
   // Do not change epoch
   pub static EPFLG_ATEPOCH: i32 = 3;
   // Exact at specified time
   pub static EPFLG_ATSPECIFIEDTIME: i32 = 4;
   // Middle of obs span
   pub static EPFLG_MIDDLEOBSSPAN: i32 = 5;
   // Exact time of earliest obs
   pub static EPFLG_EARLIESTOB: i32 = 6;
   // Beginning of day of Epoch, good for eGP
   pub static EPFLG_BEGINDAYEPOCH: i32 = 7;
   // Beginning of day of Last obs
   pub static EPFLG_BEGINDAYLATESTOB: i32 = 8;
   // Nodal crossing nearest epoch, good for eGP
   pub static EPFLG_NODALXINGEPOCH: i32 = 9;
   
   // Different correction types
   pub static CORT_TIME: i32 = 0;
   pub static CORT_PLANE: i32 = 1;
   pub static CORT_7ELT: i32 = 2;
   pub static CORT_INTRK: i32 = 3;
   pub static CORT_8ELT: i32 = 4;
   pub static CORT_SUBELT: i32 = 5;
   
   // Different element correction order
   // 7-element only [default]
   pub static CORORD_7ELT: i32 = 0;
   // time (SP: L, n, B), then 7-element
   pub static CORORD_TIM7ELT: i32 = 1;
   // time, plane, then 7-element (SGP4) or 7-elt only; pht/pi vs Af/Ag (SP)
   pub static CORORD_TIMPLN7ELT: i32 = 2;
   // plane, time, then 7-element (SGP4) or 7-elt only; e/pi vs Af/Ag (SP)
   pub static CORORD_PLNTIM7ELT: i32 = 3;
   // plane, then 7-element (SGP4) or L, n, B, then 7-elt, with pht/pi vs Af/Ag (SP)
   pub static CORORD_PLN7ELT: i32 = 4;
   // n-only, then 7-element
   pub static CORORD_N7ELT: i32 = 5;
   // L-only, then 7-element
   pub static CORORD_L7ELT: i32 = 6;
   // L & n only, then 7-element
   pub static CORORD_LN7ELT: i32 = 7;
   // Af/Ag, L, n only, then 7-element
   pub static CORORD_AFAGLN7ELT: i32 = 8;
   // 6-element, then 7-element
   pub static CORORD_6ELT7ELT: i32 = 9;
   
   
   // indexes for EGP control parameters for input VCM/SPVEC-typed elsets or external ephemeris file
   // Not being used yet
   pub static XA_EGPCTRL_OPTION: i32 =  0;
   // DC element type: 0=SPG4, 4=SGP4-XP
   pub static XA_EGPCTRL_DCELTTYPE: i32 =  1;
   // Fit span start time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   pub static XA_EGPCTRL_STARTMSE: i32 =  2;
   // Fit span stop time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   pub static XA_EGPCTRL_STOPMSE: i32 =  3;
   // Step size in minutes (how often obs are generated) (set to zero to auto select and then actual step size will be returned)
   pub static XA_EGPCTRL_STEPMIN: i32 =  4;
   // Drag correction: 0=no correction, 1=correct BStar(SGP4)/BTerm(SGP4-XP), 2=correct X(SGP4 only)
   pub static XA_EGPCTRL_DRAGCOR: i32 =  5;
   // agom correction: 0=no correction, 1=correct agom (only when DC element = SGP4-XP)
   pub static XA_EGPCTRL_AGOMCOR: i32 =  6;
   // Epoch placement flag - see EPFLG_? for available options
   pub static XA_EGPCTRL_EPFLG: i32 =  7;
   // Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)                 *
   pub static XA_EGPCTRL_NEWEPOCH: i32 =  8;
   
   // Addtional option if input is external ephemeris file - BStar(SGP4)/BTerm(SGP4-XP) if XA_EGPCTRL_DRAGCOR is set (= 1)
   pub static XA_EGPCTRL_BVAL: i32 =  9;
   // Addtional option if input is external ephemeris file - agom value if XA_EGPCTRL_AGOMCOR is set (= 1)
   pub static XA_EGPCTRL_AGOMVAL: i32 = 10;
   
   // correction order
   pub static XA_EGPCTRL_ORDERCOR: i32 = 11;
   // Max # of iterations before declaring divergence [10]
   pub static XA_EGPCTRL_MAXOFITERS: i32 = 12;
   
   // satellite number
   pub static XA_EGPCTRL_SATNUM: i32 = 63;
   
   pub static XA_EGPCTRL_SIZE: i32 = 64;
   
   
   
   // DC setting parameters
   
   pub static MAX_PARAMS: i32 = 256;
   
   
   // DC print options
   // print first and last iteration
   pub static DC_PRINT_FIRSTBEST: i32 =  0;
   // print every pass and summary
   pub static DC_PRINT_ALLPASS: i32 =  1;
   // print summary only
   pub static DC_PRINT_SUMONLY: i32 =  2;
   // print output elemenets only
   pub static DC_PRINT_ELTONLY: i32 =  3;
   // do not print anything
   pub static DC_PRINT_NONE: i32 =  4;
   
   // Iteration summary options
   // print summary every iteration in Keplerian elts
   pub static ITER_SUM_KEP: i32 =  1;
   // print summary every iteration in Equinoctial elts
   pub static ITER_SUM_EQNX: i32 =  2;
   
   // indexes for integer data fields
   // DC print option
   pub static XAI_CTRL_PRINTOPTION: i32 =  0;
   // Apply biases from sensor file
   pub static XAI_CTRL_DEBIASOBS: i32 =  1;
   // Weighed DC flag
   pub static XAI_CTRL_WEIGHTEDDC: i32 =  2;
   // Epoch placement flag - see EPFLG_? for available options
   pub static XAI_CTRL_EPOCHOPTION: i32 =  3;
   // Element correction flag - Ag
   pub static XAI_CTRL_CORRECT_AG: i32 =  4;
   // Element correction flag - Af
   pub static XAI_CTRL_CORRECT_AF: i32 =  5;
   // Element correction flag - Psi
   pub static XAI_CTRL_CORRECT_PSI: i32 =  6;
   // Element correction flag - Chi
   pub static XAI_CTRL_CORRECT_CHI: i32 =  7;
   // Element correction flag - L
   pub static XAI_CTRL_CORRECT_L: i32 =  8;
   // Element correction flag - N
   pub static XAI_CTRL_CORRECT_N: i32 =  9;
   // Element correction flag - B* (SGP4) B (SP)
   pub static XAI_CTRL_CORRECT_B: i32 = 10;
   // Element correction flag - Agom (SP)
   pub static XAI_CTRL_CORRECT_AGOM: i32 = 11;
   // Correction order
   pub static XAI_CTRL_CORRECTORDER: i32 = 12;
   // Correct by the specified correction order for 1 iteration only
   pub static XAI_CTRL_FOR1ITERONLY: i32 = 13;
   // Flag specifies which residuals are used for RMS calculation and convergence
   pub static XAI_CTRL_RESIDSELECT: i32 = 14;
   // Flag; if set, produce sensor performance analysis summary
   pub static XAI_CTRL_SENPERFORM: i32 = 15;
   // Flag; if set, deweight according to # of obs per track
   pub static XAI_CTRL_DWOBSPERTRCK: i32 = 16;
   // Iteration summary control
   pub static XAI_CTRL_ITERSUMOPT: i32 = 17;
   // Partials method
   pub static XAI_CTRL_PARTIALMETH: i32 = 18;
   // Light time correction control
   pub static XAI_CTRL_LTC: i32 = 19;
   // Number of iteration to allow no auto rejection of residuals
   pub static XAI_CTRL_BRUCE: i32 = 20;
   // Propagation method - GP=0, XP=4, SP=99
   pub static XAI_CTRL_PROPMETHOD: i32 = 21;
   // Flag; if set, correct B* vs X
   pub static XAI_CTRL_CORRECTBVSX: i32 = 22;
   // Max # of iterations before declaring divergence
   pub static XAI_CTRL_MAXOFITERS: i32 = 23;
   // Use predicted RMS versus previous RMS for convergence testing
   pub static XAI_CTRL_USEPREDRMS: i32 = 24;
   // Residual computation method (GP only): DELTA/427M=1, SPADOC4=2
   pub static XAI_CTRL_RESCOMPMETH: i32 = 25;
   // Flag; if set, use angle rates (obstypes = 4, 11)
   pub static XAI_CTRL_USEANGRATES: i32 = 26;
   
   pub static XAI_CTRL_SIZE: i32 = 256;
   
   
   
   // indexes for real data fields
   // RMS multiplier
   pub static XAR_CTRL_RMSMULT: i32 =   0;
   // Time of specified epoch
   pub static XAR_CTRL_USEREPOCH: i32 =   1;
   // Convergence criteria on time correction (%)
   pub static XAR_CTRL_CNVCRITONT: i32 =   2;
   // First pass delta-t rejection criteria
   pub static XAR_CTRL_1STPASDELTAT: i32 =   3;
   // Convergence criteria on 7-elt correction (%)
   pub static XAR_CTRL_CNVCRITON7ELT: i32 =   4;
   // reset value for B term in subset correction
   pub static XAR_CTRL_BRESET: i32 =   5;
   pub static XAR_CTRL_SIZE: i32 = 256;
   
   
   // indexes for accessing DC's integer data
   // satellite number
   pub static XAI_DCELTS_SATNUM: i32 =   0;
   // elset number
   pub static XAI_DCELTS_ELSETNUM: i32 =   1;
   // elset's orbital/element type - see ELTTYPE_ constants for a list of possible values
   pub static XAI_DCELTS_ORBTYPE: i32 =   2;
   // propagation method - see PROPTYPE_ constants for a list of possible values (GP=1, SP=2, External Ephemeris=3)
   pub static XAI_DCELTS_PROPTYPE: i32 =   3;
   // spectr mode
   pub static XAI_DCELTS_SPECTR: i32 =   4;
   // epoch revolution number
   pub static XAI_DCELTS_REVNUM: i32 =   5;
   // correction type: 0=TIME, 1=PLANE", 2=7-ELT, 3=IN-TRK, 4=8-ELT, 5=SUBELT; see CORT_? for available values
   pub static XAI_DCELTS_CORRTYPE: i32 =   6;
   
   // total iteration count
   pub static XAI_DCELTS_ITERCOUNT: i32 =  10;
   // sub iteration count
   pub static XAI_DCELTS_SUBITER: i32 =  11;
   // # residual accepted
   pub static XAI_DCELTS_RESACC: i32 =  12;
   // # residual rejected
   pub static XAI_DCELTS_RESREJ: i32 =  13;
   
   // 20-28 correction element flags
   pub static XAI_DCELTS_CORRFLGS: i32 =  20;
   
   pub static XAI_DCELTS_SIZE: i32 = 256;
   
   // indexes for accessing DC's real data
   // elset's epoch time in days since 1950 UTC
   pub static XAR_DCELTS_EPOCHDS50UTC: i32 =   0;
   // n-dot/2  (for SGP, eph-type = 0)
   pub static XAR_DCELTS_NDOT: i32 =   1;
   // n-double-dot/6  (for SGP, eph-type = 0)
   pub static XAR_DCELTS_N2DOT: i32 =   2;
   // either SGP4 bStar (1/er) or SGP4-XP/SP bTerm (m2/kg)
   pub static XAR_DCELTS_BFIELD: i32 =   3;
   // SGP4-XP/SP agom (m**2/kg)
   pub static XAR_DCELTS_AGOM: i32 =   4;
   // SP outgassing parameter (km/s**2)
   pub static XAR_DCELTS_OGPARM: i32 =   5;
   // semi major axis (km)
   pub static XAR_DCELTS_KEP_A: i32 =   6;
   // eccentricity
   pub static XAR_DCELTS_KEP_E: i32 =   7;
   // inclination (deg)
   pub static XAR_DCELTS_KEP_INCLI: i32 =   8;
   // mean anamoly (deg)
   pub static XAR_DCELTS_KEP_MA: i32 =   9;
   // right ascension of the ascending node (deg)
   pub static XAR_DCELTS_KEP_NODE: i32 =  10;
   // argument of perigee (deg)
   pub static XAR_DCELTS_KEP_OMEGA: i32 =  11;
   // AF
   pub static XAR_DCELTS_EQNX_AF: i32 =  12;
   // AG
   pub static XAR_DCELTS_EQNX_AG: i32 =  13;
   // CHI
   pub static XAR_DCELTS_EQNX_CHI: i32 =  14;
   // PSI
   pub static XAR_DCELTS_EQNX_PSI: i32 =  15;
   // mean longitude (deg)
   pub static XAR_DCELTS_EQNX_L: i32 =  16;
   // mean motion (revs/day)
   pub static XAR_DCELTS_EQNX_N: i32 =  17;
   // ECI posX (km)
   pub static XAR_DCELTS_POSX: i32 =  18;
   // ECI posY (km)
   pub static XAR_DCELTS_POSY: i32 =  19;
   // ECI posZ (km)
   pub static XAR_DCELTS_POSZ: i32 =  20;
   // ECI velX (km/s)
   pub static XAR_DCELTS_VELX: i32 =  21;
   // ECI velY (km/s)
   pub static XAR_DCELTS_VELY: i32 =  22;
   // ECI velZ (km/s)
   pub static XAR_DCELTS_VELZ: i32 =  23;
   
   // RMS (km)
   pub static XAR_DCELTS_RMS: i32 =  40;
   // unweighted RMS (km)
   pub static XAR_DCELTS_RMSUNWTD: i32 =  41;
   // delta T RMS (min)
   pub static XAR_DCELTS_DELTATRMS: i32 =  42;
   // beta RMS (deg)
   pub static XAR_DCELTS_BETARMS: i32 =  43;
   // delta height RMS (km)
   pub static XAR_DCELTS_DELTAHTRMS: i32 =  44;
   // convergence value (km)
   pub static XAR_DCELTS_CONVQLTY: i32 =  45;
   // predicted RMS (km)
   pub static XAR_DCELTS_RMSPD: i32 =  46;
   
   // covariance diagonal L
   pub static XAR_DCELTS_COVL: i32 =  60;
   // covariance diagonal N
   pub static XAR_DCELTS_COVN: i32 =  61;
   // covariance diagonal CHI
   pub static XAR_DCELTS_COVCHI: i32 =  62;
   // covariance diagonal PSI
   pub static XAR_DCELTS_COVPSI: i32 =  63;
   // covariance diagonal AF
   pub static XAR_DCELTS_COVAF: i32 =  64;
   // covariance diagonal AG
   pub static XAR_DCELTS_COVAG: i32 =  65;
   // covariance diagonal BTERM
   pub static XAR_DCELTS_COVBTERM: i32 =  66;
   // covariance not used
   pub static XAR_DCELTS_COVNA: i32 =  67;
   // covariance diagonal AGOM
   pub static XAR_DCELTS_COVAGOM: i32 =  68;
   
   // max partial residual (km)
   pub static XAR_DCELTS_XMAX: i32 =  70;
   // max velocity resid (km/sec)
   pub static XAR_DCELTS_XMAX2: i32 =  71;
   // max beta residual (deg)
   pub static XAR_DCELTS_XMAX3: i32 =  72;
   // max delta-t residual (min)
   pub static XAR_DCELTS_XMAX4: i32 =  73;
   // low argument of latitude coverage (deg)
   pub static XAR_DCELTS_PATCL: i32 =  74;
   // high argument of latitude coverage (deg)
   pub static XAR_DCELTS_PATCH: i32 =  75;
   
   // equinoctial covariance matrix - the lower triangular half 200-244
   pub static XAR_DCELTS_EQNXCOVMTX: i32 = 200;
   
   pub static XAR_DCELTS_SIZE: i32 = 256;
   
   // indexes for accessing obs rejection flags
   // satellite has decayed at the time of obs
   pub static XA_REJFLG_DECAYED: i32 =   0;
   // obs residual computation error code
   pub static XA_REJFLG_ERROR: i32 =   1;
   // right ascension residual rejected
   pub static XA_REJFLG_RA: i32 =   2;
   // beta residual rejected
   pub static XA_REJFLG_BETA: i32 =   3;
   // declination residual rejected
   pub static XA_REJFLG_DEC: i32 =   4;
   // delta h residual rejected
   pub static XA_REJFLG_HEIGHT: i32 =   5;
   // range residual rejected
   pub static XA_REJFLG_RANGE: i32 =   6;
   // range rate residual rejected
   pub static XA_REJFLG_RR: i32 =   7;
   // delta t residual rejected
   pub static XA_REJFLG_TIME: i32 =   8;
   
   pub static XA_REJFLG_SIZE: i32 =  32;
   
   // indexes for accessing DC's acceptance criteria data
   // standard - days from epoch
   pub static XA_AC_STD_EPOCH: i32 =   0;
   // standard - number of residuals
   pub static XA_AC_STD_NORES: i32 =   1;
   // standard - percent residual
   pub static XA_AC_STD_PRCNTRES: i32 =   2;
   // standard - RMS (km)
   pub static XA_AC_STD_RMS: i32 =   3;
   // standard - obs span (days)
   pub static XA_AC_STD_OBSSPAN: i32 =   4;
   // standard - change in plan (deg)
   pub static XA_AC_STD_DELTAW: i32 =   5;
   // standard - change in abar
   pub static XA_AC_STD_DELTAABAR: i32 =   6;
   // standard - change in N (rev/day)
   pub static XA_AC_STD_DELTAN: i32 =   7;
   // standard - change in B term
   pub static XA_AC_STD_DELTAB: i32 =   8;
   
   // actual - days from epoch
   pub static XA_AC_ACT_EPOCH: i32 =  20;
   // actual - number of residuals
   pub static XA_AC_ACT_NORES: i32 =  21;
   // actual - percent residual
   pub static XA_AC_ACT_PRCNTRES: i32 =  22;
   // actual - RMS (km)
   pub static XA_AC_ACT_RMS: i32 =  23;
   // actual - obs span (days)
   pub static XA_AC_ACT_OBSSPAN: i32 =  24;
   // actual - change in plan (deg)
   pub static XA_AC_ACT_DELTAW: i32 =  25;
   // actual - change in abar
   pub static XA_AC_ACT_DELTAABAR: i32 =  26;
   // actual - change in N (rev/day)
   pub static XA_AC_ACT_DELTAN: i32 =  27;
   // actual - change in B term
   pub static XA_AC_ACT_DELTAB: i32 =  28;
   
   pub static XA_AC_SIZE: i32 =  64;
   
   
   // indexes for accessing DC's string character data - index to index of a substring
   // satellite's international designator
   pub static XAS_DCELTS_SATNAME_0TO7: i32 =   0;
   
   pub static XAS_DCELTS_SIZE: i32 = 512;
   
   // Different DC control modes
   // Use DC global settings settings
   pub static DCCTRL_MODE_GLOBAL: i32 = 0;
   // Use provided/local DC settings
   pub static DCCTRL_MODE_LOCAL: i32 = 1;
   
   
   // indexes of DC control parameters
   // DC control mode: 0= use global settings (ignore the rest), 1= use the provided/local settings (thread-safe) - N/A for BatchDC(Get/Set)CtrlArr()
   pub static XA_DCCTRL_MODE: i32 =  0;
   // propagation method: SGP4 = 0, SP = 99, XP = 4, or see DCPROPTYPE_? for available options
   pub static XA_DCCTRL_PROPMETHOD 		: i32 =  1;
   // debias obs flag: 0= do not debias obs, 1= debias obs
   pub static XA_DCCTRL_DEBIASOBS    		: i32 =  2;
   // element correction order
   pub static XA_DCCTRL_CORRECTORDER		: i32 =  3;
   // epoch placement flag - see EPFLG_? for available options
   pub static XA_DCCTRL_EPOCHOPTION  		: i32 =  4;
   // use predicted RMS versus previous RMS for convergenece testing
   pub static XA_DCCTRL_USEPREDRMS		: i32 =  5;
   // residual computation selection
   pub static XA_DCCTRL_RESIDSELECT: i32 =  6;
   // correct by the specified correction order for 1 iteration only
   pub static XA_DCCTRL_FOR1ITERONLY		: i32 =  7;
   // max # of iterations before declaring divergence
   pub static XA_DCCTRL_MAXOFITERS: i32 =  8;
   // apply weighed DC flag
   pub static XA_DCCTRL_WEIGHTEDDC		: i32 =  9;
   // light time correction control
   pub static XA_DCCTRL_LTC: i32 = 10;
   // number of iteration to allow no auto rejection of residuals
   pub static XA_DCCTRL_BRUCE: i32 = 11;
   // flag; if set, deweight according to # of obs per track
   pub static XA_DCCTRL_DWOBSPERTRCK: i32 = 12;
   // partials method
   pub static XA_DCCTRL_PARTIALMETH: i32 = 13;
   // Element correction flag - Ag
   pub static XA_DCCTRL_CORRECT_AG    	: i32 = 20;
   // Element correction flag - Af
   pub static XA_DCCTRL_CORRECT_AF    	: i32 = 21;
   // Element correction flag - Psi
   pub static XA_DCCTRL_CORRECT_PSI   	: i32 = 22;
   // Element correction flag - Chi
   pub static XA_DCCTRL_CORRECT_CHI   	: i32 = 23;
   // Element correction flag - L
   pub static XA_DCCTRL_CORRECT_L     	: i32 = 24;
   // Element correction flag - N
   pub static XA_DCCTRL_CORRECT_N     	: i32 = 25;
   // Element correction flag - B* (SGP4) B (SP)
   pub static XA_DCCTRL_CORRECT_B     	: i32 = 26;
   // Element correction flag - Agom (SP)
   pub static XA_DCCTRL_CORRECT_AGOM  	: i32 = 27;
   // Convergence criteria on time (%) [5.0%]
   pub static XA_DCCTRL_CNVCRITONT: i32 = 30;
   // First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   pub static XA_DCCTRL_1STPASDELTAT: i32 = 31;
   // Convergence criteria on 7-elt correction (%) [1.0%]
   pub static XA_DCCTRL_CNVCRITON7ELT: i32 = 32;
   // RMS multiplier [4.0]
   pub static XA_DCCTRL_RMSMULT: i32 = 33;
   // reset value for B term in subset correction [0.01]
   pub static XA_DCCTRL_BRESET: i32 = 34;
   // user's specified epoch - only when epoch placement option = 4 exact at specified time
   pub static XA_DCCTRL_USEREPOCH: i32 = 35;
   // SP only - density consider parameter
   pub static XA_DCCTRL_CONSIDER: i32 = 40;
   // GP only - residual computation method
   pub static XA_DCCTRL_GPRCM 			: i32 = 40;
   // GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   pub static XA_DCCTRL_CORRECTBVSX		: i32 = 41;
   
   pub static XA_DCCTRL_SIZE: i32 = 64;
   
   // Indexes of paramters using in IomodDC()
   // Iomod/DC control mode (not yet used)
   pub static XA_IOMDC_MODE: i32 =  0;
   // DC element type, see DCPROPTYPE_? for available options
   pub static XA_IOMDC_DCELTTYPE: i32 =  1;
   // Epoch placement flag - see EPFLG_? for available options
   pub static XA_IOMDC_EPFLG: i32 =  2;
   // Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)
   pub static XA_IOMDC_NEWEPOCH: i32 =  3;
   // Correction order
   pub static XA_IOMDC_ORDERCOR: i32 =  4;
   // IOMOD obs selection mode: 0= auto select, 1= use first 3 obs in the provided list of obs (see OBSSELMODE_? for available options)
   pub static XA_IOMDC_OBSSELMODE: i32 =  5;
   // residual computation selection
   pub static XA_IOMDC_RESIDSELECT: i32 =  6;
   // correct by the specified correction order for 1 iteration only
   pub static XA_IOMDC_FOR1ITERONLY: i32 =  7;
   // max # of iterations before declaring divergence
   pub static XA_IOMDC_MAXOFITERS: i32 =  8;
   // apply weighed DC flag
   pub static XA_IOMDC_WEIGHTEDDC		: i32 =  9;
   // light time correction control
   pub static XA_IOMDC_LTC: i32 = 10;
   // number of iteration to allow no auto rejection of residuals
   pub static XA_IOMDC_BRUCE: i32 = 11;
   // flag; if set, deweight according to # of obs per track
   pub static XA_IOMDC_DWOBSPERTRCK: i32 = 12;
   // partials method
   pub static XA_IOMDC_PARTIALMETH: i32 = 13;
   // debias obs flag: 0= do not debias obs, 1= debias obs
   pub static XA_IOMDC_DEBIASOBS    	: i32 = 14;
   // use predicted RMS versus previous RMS for convergenece testing
   pub static XA_IOMDC_USEPREDRMS		: i32 = 15;
   
   // Element correction flag - Ag
   pub static XA_IOMDC_CORRECT_AG    	: i32 = 20;
   // Element correction flag - Af
   pub static XA_IOMDC_CORRECT_AF    	: i32 = 21;
   // Element correction flag - Psi
   pub static XA_IOMDC_CORRECT_PSI   	: i32 = 22;
   // Element correction flag - Chi
   pub static XA_IOMDC_CORRECT_CHI   	: i32 = 23;
   // Element correction flag - L
   pub static XA_IOMDC_CORRECT_L     	: i32 = 24;
   // Element correction flag - N
   pub static XA_IOMDC_CORRECT_N     	: i32 = 25;
   // Element correction flag - B* (SGP4) B (SP)
   pub static XA_IOMDC_CORRECT_B     	: i32 = 26;
   // Element correction flag - Agom (SP)
   pub static XA_IOMDC_CORRECT_AGOM  	: i32 = 27;
   // Convergence criteria on time (%) [5.0%]
   pub static XA_IOMDC_CNVCRITONT: i32 = 30;
   // First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   pub static XA_IOMDC_1STPASDELTAT: i32 = 31;
   // Convergence criteria on 7-elt correction (%) [1.0%]
   pub static XA_IOMDC_CNVCRITON7ELT: i32 = 32;
   // RMS multiplier [4.0]
   pub static XA_IOMDC_RMSMULT: i32 = 33;
   // reset value for B term in subset correction [0.01]
   pub static XA_IOMDC_BRESET: i32 = 34;
   // SP only - density consider parameter
   pub static XA_IOMDC_CONSIDER: i32 = 40;
   // GP only - residual computation method
   pub static XA_IOMDC_GPRCM 			: i32 = 40;
   // GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   pub static XA_IOMDC_CORRECTBVSX		: i32 = 41;
   
   // see IOMDC_METHOD_? for available options
   pub static XA_IOMDC_METHOD: i32 = 50;
   // The below parameters only apply when XA_IOMDC_METHOD is set to 2 (use customized Gooding settings)
   // number of half revolutions [0]
   pub static XA_IOMDC_NHREV: i32 = 51;
   // solution number [0]
   pub static XA_IOMDC_IND: i32 = 52;
   // maximum number of iterations [20]
   pub static XA_IOMDC_MAXIT: i32 = 53;
   // the range guess to first observation (km) [36000]
   pub static XA_IOMDC_RNG1: i32 = 54;
   // the range guess to third observation (km) [36000]
   pub static XA_IOMDC_RNG3: i32 = 55;
   // partial derivative increment [1e-5]
   pub static XA_IOMDC_PDINC: i32 = 56;
   // convergence criterion [1e-9]
   pub static XA_IOMDC_CONVCR: i32 = 57;
   
   // IOMOD/DC parameter list size
   pub static XA_IOMDC_SIZE: i32 = 64;
   
   // Different options for doing IOMOD/DC
   // Default option which uses Herrick-Gibbs for all obs types
   pub static IOMDC_METHOD_HB: i32 = 0;
   // Use Gooding (with default settings) for angle only type obs and Herrick-Gibbs for other obs types
   pub static IOMDC_METHOD_GDDEFLT: i32 = 1;
   // Use Gooding (with customized settings) for angle only type obs and Herrick-Gibbs for other obs types
   pub static IOMDC_METHOD_GDSPEC: i32 = 2;
   
// ========================= End of auto generated code ==========================
