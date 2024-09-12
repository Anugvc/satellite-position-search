// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes Combo dll for use in the program
   //  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
   pub fn ComboInit(apAddr: i64) -> i32;
   //  Returns information about the current version of Combo.dll. The information is placed in the string parameter you pass in
   //  The returned string provides information about the version number, build date, and the platform of the Combo DLL. 
   pub fn ComboGetInfo(infoStr: *const c_char);
   //  Loads Combo-related parameters (7P/8P/9P cards, and Combo parameter free format) from a text file
   pub fn ComboLoadFile(comboInputFile: *const c_char) -> i32;
   //  Loads Combo control parameters and all Combo related data (environment, time, elsets) from an input text file
   pub fn ComboLoadFileAll(comboInputFile: *const c_char) -> i32;
   //  Loads a single Combo-typed card (7P, 8P, and 9P)
   pub fn ComboLoadCard(card: *const c_char) -> i32;
   //  Saves any currently loaded COMBO-related settings to a file
   //  The purpose of this function is to save the current Combo-related settings, usually used in GUI applications, for future use.
   pub fn ComboSaveFile(comboFile: *const c_char, saveMode: i32, saveForm: i32) -> i32;
   //  Returns the number of primary and secondary satellites that were entered via 7P-card, 8P-card, 9P-card, or Combo parameter free format 
   pub fn ComboGetNumOfPriSecSats(numPriSats: *mut i32, numSecSats: *mut i32);
   //  Returns an array of primary satellite numbers that were entered via 7P-card, 9P-card, or Combo parameter free format
   pub fn ComboGetPriSatNums(priSatNums: *mut i32);
   //  Returns an array of secondary satellite numbers that were entered via 7P-card, 8P-card, or Combo parameter free format
   pub fn ComboGetSecSatNums(secSatNums: *mut i32);
   //  Constructs Combo 7P-Card from COMBO control parameters
   pub fn ComboGet7pCard(combo7pCard: *const c_char);
   //  Retrieves all Combo control parameters with a single function call
   pub fn ComboGet7pAll(timeFlg: *mut i32, startTime: *mut f64, stopTime: *mut f64, relMinFlg: *mut i32, absMinFlg: *mut i32, closeProxFlg: *mut i32, relEphFlg: *mut i32, pocSigma: *mut f64, relMinLim: *mut f64, closeProxLim: *mut f64, relEphInterval: *mut f64, prtOpt: *mut i32);
   //  Sets all Combo control parameters with a single function call
   pub fn ComboSet7pAll(timeFlg: i32, startTime: f64, stopTime: f64, relMinFlg: i32, absMinFlg: i32, closeProxFlg: i32, relEphFlg: i32, pocSigma: f64, relMinLim: f64, closeProxLim: f64, relEphInterval: f64, prtOpt: i32);
   //  Retrieves the value of a single Combo control parameter (7P-card)
   pub fn ComboGet7pField(xf_7P: i32, retVal: *const c_char);
   //  Sets the value of a single Combo control parameter (7P-card)
   //  See ComboGet7pField for a list of index values for the parameter xf_7P.
   pub fn ComboSet7pField(xf_7P: i32, valueStr: *const c_char);
   //  Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
   //  <br>
   //  If <i>absMinDs50UTC</i> = 0 or <i>absMinDist</i> = 1.0E20, this means no absolute minimum found. Otherwise, the <i>absMinDs50UTC</i> and <i>absMinDist</i> are returned whether or not <i>absMinDist</i> is greater than the specified "Close proximity limit".
   //  <br>
   //  Returns zero indicating the COMBO data was computed successfully. Other values indicate an error. Here is the list of possible error/warning code it returns:
   //  <table>
   //      <caption>table</caption>
   //  <tr>
   //  <td><b>Value</b></td>
   //  <td><b>Value Interpretation</b></td>
   //  </tr>
   //  <tr><td>101 </td><td>Primary satellite's epoch too far from the time span</td></tr>
   //  <tr><td>102 </td><td>Secondary satellite's epoch too far from the time span</td></tr>
   //  <tr><td>103 </td><td>Primary/secondary satellites are identical</td></tr>
   //  <tr><td>104 </td><td>Secondary satellite failed perigee/apogee test</td></tr>
   //  <tr><td>105 </td><td>Secondary satellite is considered a brief span</td></tr>
   //  <tr><td>106 </td><td>Secondary satellite is in sustained relative geometry</td></tr>
   //  </table>
   //  <br>
   //  When the function's returned value is 108 (secondary satellite is in sustained relative geometry), the entry/exit times should be ignored.
   pub fn ComboCompPriSec(priSatKey: i64, secSatKey: i64, absMinDs50UTC: *mut f64, absMinDist: *mut f64, relMinDs50UTCs: *mut [f64; 1000], numOfRelMins: *mut i32, entryDs50UTCs: *mut [f64; 1000], exitDs50UTCs: *mut [f64; 1000], numOfEntryExits: *mut i32) -> i32;
   //  Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
   //  This function is similar to ComboCompPriSec but allows the user to enter separate COMBO parameters for each call which is suitable for multithread application
   pub fn ComboCompPriSec_MT(xa_cb_parms: *const [f64; 16], priSatKey: i64, secSatKey: i64, absMinDs50UTC: *mut f64, absMinDist: *mut f64, relMinDs50UTCs: *mut [f64; 1000], numOfRelMins: *mut i32, entryDs50UTCs: *mut [f64; 1000], exitDs50UTCs: *mut [f64; 1000], numOfEntryExits: *mut i32) -> i32;
   //  Computes probability of collision between a primary and secondary satellite
   pub fn ComboPOC(priSatPos: *const [f64; 3], priSatVel: *const [f64; 3], priSatCov: *const [[f64; 3]; 3], priSatRad: f64, secSatPos: *const [f64; 3], secSatVel: *const [f64; 3], secSatCov: *const [[f64; 3]; 3], secSatRad: f64, xf_CovType: i32, xa_cb_poc: *mut [f64; 4]) -> i32;
   //  Computes probability of collision using data from a CSM/OCM file
   pub fn ComboCSMPOC(csmFile: *const c_char, sumR: f64, xa_cb_poc: *mut [f64; 4]) -> i32;
}
   
   // Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
   // input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
   pub static XA_CB_PARMS_TIMEFLG: i32 =  1;
   // begin time
   pub static XA_CB_PARMS_STARTTIME: i32 =  2;
   // end time
   pub static XA_CB_PARMS_STOPTIME: i32 =  3;
   // maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
   pub static XA_CB_PARMS_MAXSEP: i32 =  4;
   // close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value
   pub static XA_CB_PARMS_PROXLIM: i32 =  5;
   pub static XA_CB_PARMS_SIZE: i32 = 16;
   
   // Constants represent combo failed cases
   // Primary satellite's epoch too far from time span
   pub static FAILED_PRITOOFAR: i32 = 101;
   // Secondary satellite's epoch too far from time span
   pub static FAILED_SECTOOFAR: i32 = 102;
   // Primary/secondary satellites are identical
   pub static FAILED_SAMESAT: i32 = 103;
   // Secondary satellite failed perigee/apogee test
   pub static FAILED_ALTITUDE: i32 = 104;
   // Secondary satellite is considered a brief span
   pub static WARN_BRIEFSPAN: i32 = 105;
   // Secondary satellite is in sustained relative geometry
   pub static WARN_SUSRELGEO: i32 = 106;
   
   // Indexes of LAMOD 7P-card fields
   // Input time format : 0: Minutes since epoch, 1: UTC
   pub static XF_7P_TIMEFLAG: i32 = 1;
   // Begin time
   pub static XF_7P_BEGTIME: i32 = 2;
   // End time
   pub static XF_7P_ENDTIME: i32 = 3;
   // Control flag for computing relative minima
   pub static XF_7P_RELMINFLG: i32 = 4;
   // Control flag for computing absolute minimum
   pub static XF_7P_ABSMINFLG: i32 = 5;
   // Control flag for computing periods of close proximity
   pub static XF_7P_EETIMES: i32 = 6;
   // Control flag for computing relative ephemeris
   pub static XF_7P_RELEPHFLG: i32 = 7;
   // Control flag for computing probability of collision
   pub static XF_7P_POCSIGMA: i32 = 8;
   // Maximum separation for relative minima
   pub static XF_7P_RELMINLIM: i32 = 9;
   // Close proximity limit
   pub static XF_7P_ABSMINLIM: i32 = 10;
   // Relative ephemeris sampling interval
   pub static XF_7P_RELEPHINT: i32 = 11;
   // Print options
   pub static XF_7P_PRTOPT: i32 = 12;
   // Primary satellite effective radius (m)
   pub static XF_7P_PRADIUS: i32 = 13;
   // Secondary satellite effective radius (m)
   pub static XF_7P_SRADIUS: i32 = 14;
   
   // Different input of covariance matrix to compute POC
   // ECI pos, vel, and ECI covariance
   pub static XF_COVTYPE_ECI: i32 = 1;
   // EFG pos, vel, and UVW covariance
   pub static XF_COVTYPE_UVW: i32 = 2;
   
   // Indexes of Combo's POC data
   // Normalized distance (n-sigma) to circumscribing square
   pub static XA_CB_POC_NORMSQR: i32 = 0;
   // POC of square
   pub static XA_CB_POC_SQR: i32 = 1;
   // Normalized distance (n-sigma) to circle
   pub static XA_CB_POC_NORMCIR: i32 = 2;
   // POC of circle
   pub static XA_CB_POC_CIR: i32 = 3;
   
   pub static XA_CB_POC_SIZE: i32 = 4;
   
   
// ========================= End of auto generated code ==========================
