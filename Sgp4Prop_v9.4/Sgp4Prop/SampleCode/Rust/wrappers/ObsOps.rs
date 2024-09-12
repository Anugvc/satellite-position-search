// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0.    
   //  Initializes ObsOps DLL for use in the program
   pub fn ObsOpsInit(apAddr: i64) -> i32;
   //  Returns information about the current version of ObsOps DLL. 
   //  The information is placed in the string parameter passed in.
   pub fn ObsOpsGetInfo(infoStr: *const c_char);
   //  Loads Iomod parameters from an input text file
   pub fn IomodLoadFile(iomodInputFile: *const c_char) -> i32;
   //  Loads Iomod control parameters and all Iomod related data (environment, time, sensors, obs) from an input text file
   pub fn IomodLoadFileAll(iomodInputFile: *const c_char) -> i32;
   //  Saves any currently loaded IOMOD-related settings to a file
   pub fn IomodSaveFile(iomodFile: *const c_char, saveMode: i32, saveForm: i32) -> i32;
   //  Builds and returns the IOMOD-parameter card (IP-Card) from the current IOMOD settings
   pub fn IomodGetIpCard(iomodIPCard: *const c_char);
   //  Retrieves all IOMOD parameters with a single function call
   pub fn IomodGetIpAll(printIOHG: *mut i32, useFirst3Obs: *mut i32, satNum: *mut i32, sortOrder: *mut i32, satName: *const c_char, runDC: *mut i32, runRotas: *mut i32, extArr: *mut [f64; 128]);
   //  Sets all IOMOD parameters with a single function call
   pub fn IomodSetIpAll(printIOHG: i32, useFirst3Obs: i32, satNum: i32, sortOrder: i32, satName: *const c_char, runDC: i32, runRotas: i32, extArr: *const [f64; 128]);
   //  Retrieves the value of a specified IOMOD parameter
   //  <br>
   //  The table below indicates which index values for the xf_IP parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>xf_IP named constants/values</b></td>
   //  <td><b>Interpretation</b></td>
   //  </tr>
   //  <tr><td>XF_IP_PRINTIOHG  = 1</td><td>control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print
   //  IOHG</td></tr>
   //  <tr><td>XF_IP_USE1ST3OBS = 2</td><td>use first 3 obs flag</td></tr>
   //  <tr><td>XF_IP_SATNUM     = 3</td><td>satelite number</td></tr>
   //  <tr><td>XF_IP_SORTORDER  = 4</td><td>obs sorting order</td></tr>
   //  <tr><td>XF_IP_SATNAME    = 5</td><td>international designator </td></tr>
   //  <tr><td>XF_IP_RUNDC      = 6</td><td>run DC flag: 1=yes, 0=no [deprecated]</td></tr>
   //  <tr><td>XF_IP_RUNROTAS   = 7</td><td>run ROTAS flag: 1=yes, 0=no [deprecated]</td></tr>
   //  </table>
   pub fn IomodGetIpField(xf_IP: i32, retVal: *const c_char);
   //  Sets the value of a specified IOMOD parameter
   //  See IomodGetIpField for a description of the xf_IP parameter.
   pub fn IomodSetIpField(xf_IP: i32, valueStr: *const c_char);
   //  Computes initial orbit vector from many observations using Herrick-Gibbs method
   pub fn ManyObsToPosVel(obsKeyArr: *const i64, arrSize: i32, timeDs50UTC: *mut f64, pos: *mut [f64; 3], vel: *mut [f64; 3], arr3ObsKeys: *mut [i64; 3]) -> i32;
   //  Computes initial orbit vector from three selected observations using Herrick-Gibbs method
   pub fn ThreeObsToPosVel(arr3ObsKeys: *const [i64; 3], timeDs50UTC: *mut f64, pos: *mut [f64; 3], vel: *mut [f64; 3]) -> i32;
   //  Computes initial orbit vector directly from the input sensor/observation data - thread safe
   pub fn Iomod_OS(xa_senLoc: *const [f64; 16], numObs: i32, xa_obsArr: *const f64, timeDs50UTC: *mut f64, pos: *mut [f64; 3], vel: *mut [f64; 3]) -> i32;
   //  Computes initial orbit vector from two selected observations using Two-Ob method
   //  Note: Two-Ob method only works with ob types: 2, 3, 4, P, and V
   pub fn TwoObsToPosVel(arr2ObsKeys: *const [i64; 2], timeDs50UTC: *mut f64, pos: *mut [f64; 3], vel: *mut [f64; 3]) -> i32;
   //  Computes the initial orbit vector from three selected angle-only observations using the Gooding Algorithm.
   pub fn AnglesOnlyToPosVel(arr3ObsKeys: *const [i64; 3], range1: f64, range3: f64, nhrev: i32, ind: i32, maxIt: i32, pdInc: f64, criVal: f64, timeDs50UTC: *mut f64, pos: *mut [f64; 3], vel: *mut [f64; 3]) -> i32;
   //  Computes the track length of a track whose first observation started at the input startIdx.
   //  This routine can be used in a loop to find all the tracks in the observation list.
   //  Remember to sort obs in the obsKeyArr in the ascending order of sensor, satno, obsType, time, elev 
   //  by calling ObsGetLoaded(-6, pObsKeys) before feeding the array to this routine
   pub fn FindTrack(obsKeyArr: *const i64, arrSize: i32, startIdx: i32, trackLength: *mut i32) -> i32;
   //  Computes initial orbit vector from a track of obs. Also returns the three obs in the track that are used by IOMOD
   pub fn ATrackToPosVel(obsKeys: *const i64, trackStartIdx: i32, trackLength: i32, timeDs50UTC: *mut f64, pos: *mut [f64; 3], vel: *mut [f64; 3], trackObsKeys: *mut [i64; 3]) -> i32;
   //  Returns the default values of the triangulation settings
   pub fn TriGetDefParams(xa_tri: *mut [f64; 32]);
   //  Triangulates the input obs and write generated obs with range data to the specified output file
   pub fn TriComputeToFile(obsKeyArr: *const i64, arrSize: i32, xa_tri: *const [f64; 32], toFile: *const c_char) -> i32;
   //  Triangulates the input obs and returns the overlap and polyfit information; creates and loads obs with range data into memory and returns their associated obsKeys
   pub fn TriCompute1(obsKeyArr: *const i64, arrSize: i32, xa_tri: *const [f64; 32], numOvlps: *mut i32, xa_ovlp: *mut f64, numFits: *mut i32, xa_fit: *mut f64, maxGenObs: i32, nGenObs: *mut i32, genObsKeys: *mut i64) -> i32;
   //  Triangulates the input obs and returns the overlap and polyfit information 
   pub fn TriCompute2(obsKeyArr: *const i64, arrSize: i32, xa_tri: *const [f64; 32], numOvlps: *mut i32, xa_ovlp: *mut f64, numFits: *mut i32, xa_fit: *mut f64) -> i32;
   //  Triangulates the input obs; creates and loads obs with range data (by triangulation) into memory and returns their associated obsKeys
   pub fn TriCompute3(obsKeyArr: *const i64, arrSize: i32, xa_tri: *const [f64; 32], maxGenObs: i32, nGenObs: *mut i32, genObsKeys: *mut i64) -> i32;
   //  Returns the default values of the waterfall altitude (km)
   pub fn GetWaterfallAlt() -> f64;
   //  Converts angle-only observation to lat/lon/height positions
   pub fn AnglesOnlyToLLH(obsKey: i64, assumedAltitude: f64, rho: *mut [f64; 2], llhs: *mut [[f64; 3]; 2], numSols: *mut i32) -> i32;
   //  Calculates length of output arrays for Lomb
   //  Used to allocated px, py, prob before call to Lomb
   pub fn LombLengthOut(ofac: f64, hifac: f64, nSample: i32) -> i32;
   //  Creates Lomb-Scargle periodogram.  Reference: Numerical Recipes   
   //  Used to find frequencies in unevenly sampled data, such as Visual Magnitude vs. Time
   pub fn Lomb(x: *const f64, y: *const f64, nSample: i32, ofac: f64, hifac: f64, px: *mut f64, py: *mut f64, prob: *mut f64, pxmax: *mut f64, pymax: *mut f64, probMax: *mut f64);
   //  Find False Alarm Probablility of given Power (lower is less likely to be a false alarm)
   pub fn LombFalseProb(py: f64, nout: i32, ofac: f64) -> f64;
   //  Find Power of given False Alarm Probablility
   pub fn LombFalseProbInv(prob: f64, nout: i32, ofac: f64) -> f64;
   //  Calculate length of output for LombWaveFit
   pub fn LombLengthCoef(nFreq: i32) -> i32;
   //  Fits user defined frequencies to data to find the magnitudes
   //  Solves the equation
   //  y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
   //  For coefficients A and B corresponding to each frequency
   pub fn LombWaveFit(x: *const f64, y: *const f64, nSamples: i32, freq: *const f64, nfreq: i32, coeffs: *mut f64);
   //  Calculate value of y given time, x, 
   //  and frequencies and magnitudes that were gotten from wavefit
   //  solves the equation
   //  y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
   //  for y
   pub fn LombCalcValueFromTime(x: f64, mags: *const f64, freq: *const f64, nfreq: i32) -> f64;
   //  Given two observations, calculate the angle between them
   //  Supports obsType 1,2,3,4,5,8,9,18,19
   pub fn AngleBetweenObs(obsKey1: i64, obsKey2: i64, angSep: *mut f64, errCode: *mut i32);
}
   
   // Different obs selection options
   // auto select 3 obs among the loaded/selected obs
   pub static OBSSELMODE_AUTO: i32 = 0;
   // use the first 3 obs in list of loaded/selected obs
   pub static OBSSELMODE_1ST3OBS: i32 = 1;
   
   
   // Indexes for accessing Iomod control parameters
   // control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
   pub static XF_IP_PRINTIOHG: i32 = 1;
   // use first 3 obs flag
   pub static XF_IP_USE1ST3OBS: i32 = 2;
   // satelite number
   pub static XF_IP_SATNUM: i32 = 3;
   // obs sorting order
   pub static XF_IP_SORTORDER: i32 = 4;
   // international designator
   pub static XF_IP_SATNAME: i32 = 5;
   // run DC flag: 1=yes, 0=no
   pub static XF_IP_RUNDC: i32 = 6;
   // run ROTAS flag: 1=yes, 0=no
   pub static XF_IP_RUNROTAS: i32 = 7;
   
   // Indexes of TRI configuration parameters
   // I - Flag to specify whether or not to use triangulation's default parameters: =[1]: use them and ignore the rest; =0: not to use them
   pub static XA_TRI_USEDEFAULT: i32 =  0;
   // I - Output obs type (valid values are 0, 2, 3, 4, 6, 8 and 9)
   pub static XA_TRI_OBSTYPEOUT: i32 =  1;
   // I - Flag to specify whether or not to apply sensor bias: =[1]: apply bias, =0: not apply bias
   pub static XA_TRI_APPLYBIAS: i32 =  2;
   // I - apply light time correction (applyLTC) flag: 0=do no apply LTC, [1]=apply LTC
   pub static XA_TRI_LTC: i32 =  3;
   // I - number of obs created for each overlap track
   pub static XA_TRI_CREATEOBSSIZE: i32 =  4;
   // I - default order of the Polyfit for angle RA/DEC
   pub static XA_TRI_DEFANGLEORDER: i32 =  5;
   // I - default order of the Polyfit for range
   pub static XA_TRI_DEFRANGEORDER: i32 =  6;
   // I - default order of the Polyfit for EFG components
   pub static XA_TRI_DEFEFGORDER: i32 =  7;
   // I - whether or not to use auto mode for angle (increase order if needed when doing Polyfit)
   pub static XA_TRI_AUTOFITANGLE: i32 =  8;
   // I - whether or not to use auto for range (increase order if needed when doing Polyfit)
   pub static XA_TRI_AUTOFITRANGE: i32 =  9;
   // I - anchor order of RA/DEC
   pub static XA_TRI_ANCHORRADEC: i32 = 10;
   // I - check to see satellite number is different
   pub static XA_TRI_SEPSATNO: i32 = 11;
   // D - limit RMS for RA (arcsec)
   pub static XA_TRI_RARMSLIM: i32 = 12;
   // D - limit RMS for Dec (arcsec)
   pub static XA_TRI_DECRMSLIM: i32 = 13;
   // D - limit RMS for Range (km)
   pub static XA_TRI_RANGERMSLIM: i32 = 14;
   // D - track separation criteria (minutes)
   pub static XA_TRI_TRKSEPARATION: i32 = 15;
   // D - minimum stereoscopic angle (deg)
   pub static XA_TRI_MINSTEREOANGLE: i32 = 16;
   
   pub static XA_TRI_SIZE: i32 = 32;
   
   // Indexes of overlap track data
   // I - Satellite number
   pub static XA_OVLP_SATNUM: i32 =  0;
   // I - Sensor number of track 1
   pub static XA_OVLP_SENNUM1: i32 =  1;
   // I - Sensor number of track 2
   pub static XA_OVLP_SENNUM2: i32 =  2;
   // D - Overlap track's start time (in DS50UTC)
   pub static XA_OVLP_STARTTIME: i32 =  3;
   // D - Overlap track's end time (in DS50UTC)
   pub static XA_OVLP_ENDTIME: i32 =  4;
   
   // 
   pub static XA_OVLP_SIZE: i32 =  8;
   
   // Indexes of polyfitting track data
   // I - Satellite number
   pub static XA_FIT_SATNUM: i32 =  0;
   // I - Sensor number of track 1
   pub static XA_FIT_SENNUM1: i32 =  1;
   // I - Sensor number of track 2
   pub static XA_FIT_SENNUM2: i32 =  2;
   
   // I - Right ascension polyfit order of track 1
   pub static XA_FIT_RAORDER1: i32 =  3;
   // I - Right ascension polyfit order of track 2
   pub static XA_FIT_RAORDER2: i32 =  4;
   // D - Right ascension RMS of track 1
   pub static XA_FIT_RARMS1: i32 =  5;
   // D - Right ascension RMS of track 2
   pub static XA_FIT_RARMS2: i32 =  6;
   
   // I - Declination polyfit order of track 1
   pub static XA_FIT_DECORDER1: i32 =  7;
   // I - Declination polyfit order of track 2
   pub static XA_FIT_DECORDER2: i32 =  8;
   // D - Declination RMS of track 1
   pub static XA_FIT_DECMS1: i32 =  9;
   // D - Declination RMS of track 2
   pub static XA_FIT_DECRMS2: i32 = 10;
   
   // I - Declination polyfit order of track 1
   pub static XA_FIT_RANGEORDER1: i32 = 11;
   // I - Declination polyfit order of track 2
   pub static XA_FIT_RANGEORDER2: i32 = 12;
   // D - Declination RMS of track 1
   pub static XA_FIT_RANGERMS1: i32 = 13;
   // D - Declination RMS of track 2
   pub static XA_FIT_RANGERMS2: i32 = 14;
   
   // D - First stereoscopic angle (deg)
   pub static XA_FIT_THETA1: i32 = 15;
   // D - Second stereoscopic angle (deg)
   pub static XA_FIT_THETA2: i32 = 16;
   // D - Third stereoscopic angle (deg)
   pub static XA_FIT_THETA3: i32 = 17;
   
   // 
   pub static XA_FIT_SIZE: i32 =  32;
   
   
// ========================= End of auto generated code ==========================
