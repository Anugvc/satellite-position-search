// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes Rotas DLL for use in the program
   pub fn RotasInit(apAddr: i64) -> i32;
   //  Returns information about the current version of Rotas DLL. 
   //  The information is placed in the string parameter passed in.
   pub fn RotasGetInfo(infoStr: *const c_char);
   //  Loads Rotas-related parameters from an input text file
   pub fn RotasLoadFile(rotasInputFile: *const c_char) -> i32;
   //  Loads Rotas control parameters and all Rotas related data (environment, time, elsets, sensors, obs) from an input text file
   pub fn RotasLoadFileAll(rotasInputFile: *const c_char) -> i32;
   //  Loads a single Rotas-typed card
   pub fn RotasLoadCard(card: *const c_char) -> i32;
   //  Saves current Rotas settings to a file
   pub fn RotasSaveFile(rotasFile: *const c_char, saveMode: i32, saveForm: i32) -> i32;
   //  Builds and returns the Rotas P-Card from the current Rotas settings
   pub fn RotasGetPCard(rotasPCard: *const c_char);
   //  Retrieves all Rotas control parameters with a single function call
   pub fn RotasGetPAll(rotasMode: *const c_char, grossBeta: *mut f64, betaLimit: *mut f64, deltaTLimit: *mut f64, deltaHLimit: *mut f64, astat2Mult: *mut i32, prtFlag: *mut i32, retagFlag: *mut i32, ltcFlag: *mut i32, maxNumAssoc: *mut i32, debiasFlag: *mut i32, diagMode: *mut i32, covPrtFlag: *mut i32, isTrackMode: *mut i32, remRetagObs: *mut i32, extArr: *mut [f64; 128]);
   //  Sets all Rotas control parameters with a single function call
   pub fn RotasSetPAll(rotasMode: *const c_char, grossBeta: f64, betaLimit: f64, deltaTLimit: f64, deltaHLimit: f64, astat2Mult: i32, prtFlag: i32, retagFlag: i32, ltcFlag: i32, maxNumAssoc: i32, debiasFlag: i32, diagMode: i32, covPrtFlag: i32, isTrackMode: i32, remRetagObs: i32, extArr: *const [f64; 128]);
   //  Retrieves the value of a specified Rotas control parameter (P-card field)
   //  <br>
   //  The table below shows the values for the xf_RP parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td> 1 </td><td> Rotas processing mode</td></tr>
   //  <tr><td> 2 </td><td> Gross Beta limit (deg)</td></tr>
   //  <tr><td> 3 </td><td> ASTAT 0 Beta limit (deg)</td></tr>
   //  <tr><td> 4 </td><td> ASTAT 0 delta-t limit (min)</td></tr>
   //  <tr><td> 5 </td><td> ASTAT 0 delta-height limit (km)</td></tr>
   //  <tr><td> 6 </td><td> ASTAT 2 multiplier</td></tr>
   //  <tr><td> 7 </td><td> Residual print flag</td></tr>
   //  <tr><td> 8 </td><td> Retag ASTAT 1 ob flag</td></tr>
   //  <tr><td> 9 </td><td> Light-time correction flag</td></tr>
   //  <tr><td>10 </td><td> Maximum number of ALLEL assoc's to compute</td></tr>
   //  <tr><td>11 </td><td> Diagnostic print flag</td></tr>
   //  <tr><td>12 </td><td> Covariance print flag</td></tr>
   //  <tr><td>13 </td><td> Perform track processing</td></tr>
   //  <tr><td>14 </td><td> Retagged ob are removed from further association</td></tr>
   //  <tr><td>15 </td><td> Debias ob flag</td></tr>
   //  </table>
   pub fn RotasGetPField(xf_RP: i32, retVal: *const c_char);
   //   Sets the value of a specified Rotas control parameter (P-card field)
   //  See RotasGetPField for values for the xf_RP parameter.
   pub fn RotasSetPField(xf_RP: i32, valueStr: *const c_char);
   //  Gets ASTAT 1 association multipliers
   pub fn RotasGetAssocMultipliers(xa_assocMultp: *mut [i32; 12]);
   //  Sets ASTAT 1 association multipliers
   pub fn RotasSetAssocMultipliers(xa_assocMultp: *const [i32; 12]);
   //  Resets all Rotas control parameters back to their default values
   pub fn RotasResetAll();
   //  Determines if the observation/satellite pair can possibly have an association
   pub fn RotasHasASTAT(obsKey: i64, satKey: i64) -> i32;
   //  Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using global Multipliers)
   pub fn RotasHasASTAT_MT(xa_rt_parms: *const [f64; 16], obsKey: i64, satKey: i64) -> i32;
   //  Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using provided Multipliers)
   pub fn RotasHasASTATMultp_MT(xa_assocMultp: *const [i32; 12], xa_rt_parms: *const [f64; 16], obsKey: i64, satKey: i64) -> i32;
   //  Computes residuals for one observation against one satellite
   //  Obs type 0 (range rate only) cannot be used to compute residuals.
   pub fn RotasComputeObsResiduals(obsKey: i64, satKey: i64, xa_ObsRes: *mut [f64; 100], satElts: *mut [f64; 9], obElts: *mut [f64; 9]) -> i32;
   //  Computes residuals for one observation against one satellite - suitable for multithread application (using global Multipliers)
   //  Obs type 0 (range rate only) cannot be used to compute residuals.
   pub fn RotasComputeObsResiduals_MT(xa_rt_parms: *const [f64; 16], obsKey: i64, satKey: i64, xa_ObsRes: *mut [f64; 100], satElts: *mut [f64; 9], obElts: *mut [f64; 9]) -> i32;
   //  Computes residuals for one observation against one satellite - suitable for multithread application (using provided Multipliers)
   //  Obs type 0 (range rate only) cannot be used to compute residuals.
   pub fn RotasComputeObsResidualsMultp_MT(xa_assocMultp: *const [i32; 12], xa_rt_parms: *const [f64; 16], obsKey: i64, satKey: i64, xa_ObsRes: *mut [f64; 100], satElts: *mut [f64; 9], obElts: *mut [f64; 9]) -> i32;
   //  Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using global parameters)
   pub fn RotasComputeTrackResiduals(obsKeys: *const i64, trackStartIdx: i32, trackLength: i32, satKey: i64, xa_ObsRes: *mut [f64; 100], trackObsKeys: *mut [i64; 3], b3ObsCard: *const c_char, satElts: *mut [f64; 9], obElts: *mut [f64; 9]) -> i32;
   //  Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using provided parameters)
   pub fn RotasComputeTrackResiduals_MT(xa_assocMultp: *const [i32; 12], xa_rt_parms: *const [f64; 16], obsKeys: *const i64, trackStartIdx: i32, trackLength: i32, satKey: i64, xa_ObsRes: *mut [f64; 100], trackObsKeys: *mut [i64; 3], b3ObsCard: *const c_char, satElts: *mut [f64; 9], obElts: *mut [f64; 9]) -> i32;
   //  Computes residuals for one observation against one satellite directly (no need to load ob and propagate satellite)
   pub fn RotasCompObResDirect(obDataArr: *const [f64; 16], satDataArr: *const [f64; 16], xa_ObsRes: *mut [f64; 100]) -> i32;
   //  Returns the name of the retag obs file
   pub fn RotasGetRetagObsFile(retagObsFile: *const c_char);
   //  Sets the file name of the retag obs file
   pub fn RotasSetRetagObsFile(retagObsFile: *const c_char);
}
   
   // Different light-time correction (LTC) options
   // Don't apply LTC
   pub static LTC_DONTAPPLY: i32 = 0;
   // Apply LTC analytically
   pub static LTC_ANALYTIC: i32 = 1;
   // Apply LTC exactly
   pub static LTC_EXACT: i32 = 2;
   
   // Residual computation methods
   // Delta/427M method
   pub static RESCOMPMETH_DELTA427M: i32 = 1;
   // Spadoc 4 method
   pub static RESCOMPMETH_SPADOC4: i32 = 2;
   
   // PV Ob data
   // ob ECI position X (km) in TEME of Date
   pub static XA_OBPV_POSX: i32 =  0;
   // ob ECI position Y (km) in TEME of Date
   pub static XA_OBPV_POSY: i32 =  1;
   // ob ECI position Z (km) in TEME of Date
   pub static XA_OBPV_POSZ: i32 =  2;
   // ob ECI velocity X (km/sec) in TEME of Date
   pub static XA_OBPV_VELX: i32 =  3;
   // ob ECI velocity Y (km/sec) in TEME of Date
   pub static XA_OBPV_VELY: i32 =  4;
   // ob ECI velocity Z (km/sec) in TEME of Date
   pub static XA_OBPV_VELZ: i32 =  5;
   // ob time in days since 1950, UTC
   pub static XA_OBPV_TIME: i32 =  6;
   
   // the last available index
   pub static XA_OBPV_END: i32 = 15;
   pub static XA_OBPV_SIZE: i32 = 16;
   
   // Satellite state data
   // satellite ECI position X (km) in TEME of Date
   pub static XA_SATPV_POSX: i32 =  0;
   // satellite ECI position Y (km) in TEME of Date
   pub static XA_SATPV_POSY: i32 =  1;
   // satellite ECI position Z (km) in TEME of Date
   pub static XA_SATPV_POSZ: i32 =  2;
   // satellite ECI velocity X (km/sec) in TEME of Date
   pub static XA_SATPV_VELX: i32 =  3;
   // satellite ECI velocity Y (km/sec) in TEME of Date
   pub static XA_SATPV_VELY: i32 =  4;
   // satellite ECI velocity Z (km/sec) in TEME of Date
   pub static XA_SATPV_VELZ: i32 =  5;
   
   // the last available index
   pub static XA_SATPV_END: i32 = 15;
   pub static XA_SATPV_SIZE: i32 = 16;
   
   
   // Obs residual data field indexes
   // Azimuth residual (deg)
   pub static XA_OBSRES_AZ: i32 =  0;
   // Elevation residual (deg)
   pub static XA_OBSRES_EL: i32 =  1;
   // Range residual (km)
   pub static XA_OBSRES_RANGE: i32 =  2;
   // Height residual (deg)
   pub static XA_OBSRES_HEIGHT: i32 =  3;
   // Beta residual (deg). asin(dot(priU, secW))
   pub static XA_OBSRES_BETA: i32 =  4;
   // Delta T residual (min)
   pub static XA_OBSRES_DELTAT: i32 =  5;
   // Vector magnitude (km)
   pub static XA_OBSRES_VMAG: i32 =  6;
   // Time since epoch (days)
   pub static XA_OBSRES_AGE: i32 =  7;
   // True argument of latitude (deg)
   pub static XA_OBSRES_SU: i32 =  8;
   // Revolution number
   pub static XA_OBSRES_REVNUM: i32 =  9;
   // Range rate residual (km/sec)
   pub static XA_OBSRES_RNGRATE: i32 = 10;
   // Observation ASTAT
   pub static XA_OBSRES_ASTAT: i32 = 11;
   // Observation type
   pub static XA_OBSRES_OBSTYPE: i32 = 12;
   // Satellite true anomaly (deg)
   pub static XA_OBSRES_SATANOM: i32 = 13;
   // Satellite elevation (deg)
   pub static XA_OBSRES_SATELEV: i32 = 14;
   // Satellite maintenance category
   pub static XA_OBSRES_SATCAT: i32 = 15;
   // Obs time in ds50UTC
   pub static XA_OBSRES_OBSTIME: i32 = 16;
   // Obs azimuth (deg)
   pub static XA_OBSRES_OBSAZ: i32 = 17;
   // Obs elevation (deg)
   pub static XA_OBSRES_OBSEL: i32 = 18;
   // Velocity angle residual (deg)
   pub static XA_OBSRES_VELANG: i32 = 19;
   // Angular momentum residual (deg).  acos(dot(priW, secW))
   pub static XA_OBSRES_ANGMOM: i32 = 20;
   // Right ascension residual (deg) (for ob types 5, 9, 19)
   pub static XA_OBSRES_RA: i32 = 21;
   // Declination residual (deg) (for ob types 5, 9, 19)
   pub static XA_OBSRES_DEC: i32 = 22;
   // Delta X position (km)
   pub static XA_OBSRES_POSX: i32 = 23;
   // Delta Y position (km)
   pub static XA_OBSRES_POSY: i32 = 24;
   // Delta Z position (km)
   pub static XA_OBSRES_POSZ: i32 = 25;
   // Delta X velocity (km/sec)
   pub static XA_OBSRES_VELX: i32 = 26;
   // Delta Y velocity (km/sec)
   pub static XA_OBSRES_VELY: i32 = 27;
   // Delta Z velocity (km/sec)
   pub static XA_OBSRES_VELZ: i32 = 28;
   // Angle only - Obs computed range (km)
   pub static XA_OBSRES_OBSRNG: i32 = 29;
   
   // Obs right ascension (deg)
   pub static XA_OBSRES_OBSRA: i32 = 30;
   // Obs declination (deg)
   pub static XA_OBSRES_OBSDEC: i32 = 31;
   // Delta east longitude (deg)
   pub static XA_OBSRES_LON: i32 = 32;
   
   // Delta U position (km)
   pub static XA_OBSRES_POSU: i32 = 33;
   // Delta V position (km)
   pub static XA_OBSRES_POSV: i32 = 34;
   // Delta W position (km)
   pub static XA_OBSRES_POSW: i32 = 35;
   // 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
   pub static XA_OBSRES_CHI: i32 = 36;
   
   // Angular Separation between Obs and State (Deg)
   pub static XA_OBSRES_ANGSEP: i32 = 38;
   // TDOA Time Difference of Arrival residual (nano-second)
   pub static XA_OBSRES_TDOA: i32 = 39;
   // FDOA Frequency Differecnce of Arrival (Hz)
   pub static XA_OBSRES_FDOA: i32 = 40;
   
   pub static XA_OBSRES_SIZE: i32 =100;
   
   // Indexes of Rotas Control parameter fields (Rotas P-Card)
   // Rotas processing mode
   pub static XF_RP_MODE: i32 =  1;
   // Gross Beta limit (deg)
   pub static XF_RP_GROSSBETA: i32 =  2;
   // ASTAT 0 Beta limit (deg)
   pub static XF_RP_BETALIM: i32 =  3;
   // ASTAT 0 delta-t limit (min)
   pub static XF_RP_DELTATLIM: i32 =  4;
   // ASTAT 0 delta-height limit (km)
   pub static XF_RP_DELTAHLIM: i32 =  5;
   // ASTAT 2 multiplier
   pub static XF_RP_ASTAT2MULT: i32 =  6;
   // Residual print flag
   pub static XF_RP_PRTFLAG: i32 =  7;
   // Retag ASTAT 1 ob flag
   pub static XF_RP_RETAGFLAG: i32 =  8;
   // Light-time correction flag
   pub static XF_RP_LTC: i32 =  9;
   // Maximum number of ALLEL assoc's to compute
   pub static XF_RP_NUMASSOC: i32 = 10;
   // Diagnostic print flag
   pub static XF_RP_DIAGNOSTIC: i32 = 11;
   // Covariance print flag
   pub static XF_RP_PRTCOV: i32 = 12;
   // Perform track processing
   pub static XF_RP_TRACKFLAG: i32 = 13;
   // Retagged ob are removed from further association
   pub static XF_RP_REMRETAG: i32 = 14;
   // Debias ob flag
   pub static XF_RP_DEBIAS: i32 = 15;
   // Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   pub static XF_RP_RESCOMPMETH: i32 = 16;
   
   // ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
   // Gross Beta limit (deg)
   pub static XA_RT_PARMS_GROSSBETA: i32 =  1;
   // ASTAT 0 Beta limit (deg)
   pub static XA_RT_PARMS_BETALIM: i32 =  2;
   // ASTAT 0 delta-t limit (min)
   pub static XA_RT_PARMS_DELTATLIM: i32 =  3;
   // ASTAT 0 delta-height limit (km)
   pub static XA_RT_PARMS_DELTAHLIM: i32 =  4;
   // ASTAT 2 multiplier
   pub static XA_RT_PARMS_ASTAT2MULT: i32 =  5;
   // Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
   pub static XA_RT_PARMS_LTC: i32 =  6;
   // debias ob flag: 0= do not debias, 1= debias ob
   pub static XA_RT_PARMS_DEBIAS: i32 =  7;
   // Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   pub static XA_RT_PARMS_RESCOMPMETH: i32 =  8;
   // Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
   pub static XA_RT_PARMS_ANNUALAB	: i32 =  9;
   // Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction
   pub static XA_RT_PARMS_DIURNALAB: i32 = 10;
   pub static XA_RT_PARMS_SIZE: i32 = 16;
   
   // ROTAS Association Multipliers
   // ASTAT 1 Beta multiplier for Synchronous
   pub static XA_ASSOCMULTP_BETA_SYN: i32 =  0;
   // ASTAT 1 Delta-t multiplier for Synchronous
   pub static XA_ASSOCMULTP_DELTAT_SYN: i32 =  1;
   // ASTAT 1 Delta-height multiplier for Synchronous
   pub static XA_ASSOCMULTP_DELTAH_SYN: i32 =  2;
   // ASTAT 1 Beta multiplier for Deep-space
   pub static XA_ASSOCMULTP_BETA_DS: i32 =  3;
   // ASTAT 1 Delta-t multiplier for Deep-space
   pub static XA_ASSOCMULTP_DELTAT_DS: i32 =  4;
   // ASTAT 1 Delta-height multiplier for Deep-space
   pub static XA_ASSOCMULTP_DELTAH_DS: i32 =  5;
   // ASTAT 1 Beta multiplier for Decaying
   pub static XA_ASSOCMULTP_BETA_DCY: i32 =  6;
   // ASTAT 1 Delta-t multiplier for Decaying
   pub static XA_ASSOCMULTP_DELTAT_DCY: i32 =  7;
   // ASTAT 1 Delta-height multiplier for Decaying
   pub static XA_ASSOCMULTP_DELTAH_DCY: i32 =  8;
   // ASTAT 1 Beta multiplier for Routine
   pub static XA_ASSOCMULTP_BETA_RTN: i32 =  9;
   // ASTAT 1 Delta-t multiplier for Routine
   pub static XA_ASSOCMULTP_DELTAT_RTN: i32 = 10;
   // ASTAT 1 Delta-height multiplier for Routine
   pub static XA_ASSOCMULTP_DELTAH_RTN: i32 = 11;
   
   pub static XA_ASSOCMULTP_SIZE: i32 = 12;
   
// ========================= End of auto generated code ==========================
