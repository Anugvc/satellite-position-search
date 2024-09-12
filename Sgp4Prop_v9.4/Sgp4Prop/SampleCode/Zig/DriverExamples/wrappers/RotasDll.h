// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes Rotas DLL for use in the program
int RotasInit(long apAddr);

// Returns information about the current version of Rotas DLL. 
// The information is placed in the string parameter passed in.
void RotasGetInfo(char infoStr[128]);

// Loads Rotas-related parameters from an input text file
int RotasLoadFile(char rotasInputFile[512]);

// Loads Rotas control parameters and all Rotas related data (environment, time, elsets, sensors, obs) from an input text file
int RotasLoadFileAll(char rotasInputFile[512]);

// Loads a single Rotas-typed card
int RotasLoadCard(char card[512]);

// Saves current Rotas settings to a file
int RotasSaveFile(char rotasFile[512], int saveMode, int saveForm);

// Builds and returns the Rotas P-Card from the current Rotas settings
void RotasGetPCard(char rotasPCard[512]);

// Retrieves all Rotas control parameters with a single function call
void RotasGetPAll(char rotasMode[5], double* grossBeta, double* betaLimit, double* deltaTLimit, double* deltaHLimit, int* astat2Mult, int* prtFlag, int* retagFlag, int* ltcFlag, int* maxNumAssoc, int* debiasFlag, int* diagMode, int* covPrtFlag, int* isTrackMode, int* remRetagObs, double extArr[128]);

// Sets all Rotas control parameters with a single function call
void RotasSetPAll(char rotasMode[5], double grossBeta, double betaLimit, double deltaTLimit, double deltaHLimit, int astat2Mult, int prtFlag, int retagFlag, int ltcFlag, int maxNumAssoc, int debiasFlag, int diagMode, int covPrtFlag, int isTrackMode, int remRetagObs, double extArr[128]);

// Retrieves the value of a specified Rotas control parameter (P-card field)
// <br>
// The table below shows the values for the xf_RP parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td> 1 </td><td> Rotas processing mode</td></tr>
// <tr><td> 2 </td><td> Gross Beta limit (deg)</td></tr>
// <tr><td> 3 </td><td> ASTAT 0 Beta limit (deg)</td></tr>
// <tr><td> 4 </td><td> ASTAT 0 delta-t limit (min)</td></tr>
// <tr><td> 5 </td><td> ASTAT 0 delta-height limit (km)</td></tr>
// <tr><td> 6 </td><td> ASTAT 2 multiplier</td></tr>
// <tr><td> 7 </td><td> Residual print flag</td></tr>
// <tr><td> 8 </td><td> Retag ASTAT 1 ob flag</td></tr>
// <tr><td> 9 </td><td> Light-time correction flag</td></tr>
// <tr><td>10 </td><td> Maximum number of ALLEL assoc's to compute</td></tr>
// <tr><td>11 </td><td> Diagnostic print flag</td></tr>
// <tr><td>12 </td><td> Covariance print flag</td></tr>
// <tr><td>13 </td><td> Perform track processing</td></tr>
// <tr><td>14 </td><td> Retagged ob are removed from further association</td></tr>
// <tr><td>15 </td><td> Debias ob flag</td></tr>
// </table>
void RotasGetPField(int xf_RP, char retVal[512]);

//  Sets the value of a specified Rotas control parameter (P-card field)
// See RotasGetPField for values for the xf_RP parameter.
void RotasSetPField(int xf_RP, char valueStr[512]);

// Gets ASTAT 1 association multipliers
void RotasGetAssocMultipliers(int xa_assocMultp[12]);

// Sets ASTAT 1 association multipliers
void RotasSetAssocMultipliers(int xa_assocMultp[12]);

// Resets all Rotas control parameters back to their default values
void RotasResetAll();

// Determines if the observation/satellite pair can possibly have an association
int RotasHasASTAT(long obsKey, long satKey);

// Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using global Multipliers)
int RotasHasASTAT_MT(double xa_rt_parms[16], long obsKey, long satKey);

// Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using provided Multipliers)
int RotasHasASTATMultp_MT(int xa_assocMultp[12], double xa_rt_parms[16], long obsKey, long satKey);

// Computes residuals for one observation against one satellite
// Obs type 0 (range rate only) cannot be used to compute residuals.
int RotasComputeObsResiduals(long obsKey, long satKey, double xa_ObsRes[100], double satElts[9], double obElts[9]);

// Computes residuals for one observation against one satellite - suitable for multithread application (using global Multipliers)
// Obs type 0 (range rate only) cannot be used to compute residuals.
int RotasComputeObsResiduals_MT(double xa_rt_parms[16], long obsKey, long satKey, double xa_ObsRes[100], double satElts[9], double obElts[9]);

// Computes residuals for one observation against one satellite - suitable for multithread application (using provided Multipliers)
// Obs type 0 (range rate only) cannot be used to compute residuals.
int RotasComputeObsResidualsMultp_MT(int xa_assocMultp[12], double xa_rt_parms[16], long obsKey, long satKey, double xa_ObsRes[100], double satElts[9], double obElts[9]);

// Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using global parameters)
int RotasComputeTrackResiduals(long obsKeys[], int trackStartIdx, int trackLength, long satKey, double xa_ObsRes[100], long trackObsKeys[3], char b3ObsCard[512], double satElts[9], double obElts[9]);

// Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using provided parameters)
int RotasComputeTrackResiduals_MT(int xa_assocMultp[12], double xa_rt_parms[16], long obsKeys[], int trackStartIdx, int trackLength, long satKey, double xa_ObsRes[100], long trackObsKeys[3], char b3ObsCard[512], double satElts[9], double obElts[9]);

// Computes residuals for one observation against one satellite directly (no need to load ob and propagate satellite)
int RotasCompObResDirect(double obDataArr[16], double satDataArr[16], double xa_ObsRes[100]);

// Returns the name of the retag obs file
void RotasGetRetagObsFile(char retagObsFile[512]);

// Sets the file name of the retag obs file
void RotasSetRetagObsFile(char retagObsFile[512]);

// Different light-time correction (LTC) options
// Don't apply LTC
#define LTC_DONTAPPLY   0
// Apply LTC analytically
#define LTC_ANALYTIC    1
// Apply LTC exactly
#define LTC_EXACT       2

// Residual computation methods
// Delta/427M method
#define RESCOMPMETH_DELTA427M  1
// Spadoc 4 method
#define RESCOMPMETH_SPADOC4    2

// PV Ob data
// ob ECI position X (km) in TEME of Date
#define XA_OBPV_POSX       0
// ob ECI position Y (km) in TEME of Date
#define XA_OBPV_POSY       1
// ob ECI position Z (km) in TEME of Date
#define XA_OBPV_POSZ       2
// ob ECI velocity X (km/sec) in TEME of Date
#define XA_OBPV_VELX       3
// ob ECI velocity Y (km/sec) in TEME of Date
#define XA_OBPV_VELY       4
// ob ECI velocity Z (km/sec) in TEME of Date
#define XA_OBPV_VELZ       5
// ob time in days since 1950, UTC
#define XA_OBPV_TIME       6

// the last available index
#define XA_OBPV_END       15
#define XA_OBPV_SIZE      16

// Satellite state data
// satellite ECI position X (km) in TEME of Date
#define XA_SATPV_POSX      0
// satellite ECI position Y (km) in TEME of Date
#define XA_SATPV_POSY      1
// satellite ECI position Z (km) in TEME of Date
#define XA_SATPV_POSZ      2
// satellite ECI velocity X (km/sec) in TEME of Date
#define XA_SATPV_VELX      3
// satellite ECI velocity Y (km/sec) in TEME of Date
#define XA_SATPV_VELY      4
// satellite ECI velocity Z (km/sec) in TEME of Date
#define XA_SATPV_VELZ      5

// the last available index
#define XA_SATPV_END      15
#define XA_SATPV_SIZE     16


// Obs residual data field indexes
// Azimuth residual (deg)
#define XA_OBSRES_AZ       0
// Elevation residual (deg)
#define XA_OBSRES_EL       1
// Range residual (km)
#define XA_OBSRES_RANGE    2
// Height residual (deg)
#define XA_OBSRES_HEIGHT   3
// Beta residual (deg). asin(dot(priU, secW))
#define XA_OBSRES_BETA     4
// Delta T residual (min)
#define XA_OBSRES_DELTAT   5
// Vector magnitude (km)
#define XA_OBSRES_VMAG     6
// Time since epoch (days)
#define XA_OBSRES_AGE      7
// True argument of latitude (deg)
#define XA_OBSRES_SU       8
// Revolution number
#define XA_OBSRES_REVNUM   9
// Range rate residual (km/sec)
#define XA_OBSRES_RNGRATE 10
// Observation ASTAT
#define XA_OBSRES_ASTAT   11
// Observation type
#define XA_OBSRES_OBSTYPE 12
// Satellite true anomaly (deg)
#define XA_OBSRES_SATANOM 13
// Satellite elevation (deg)
#define XA_OBSRES_SATELEV 14
// Satellite maintenance category
#define XA_OBSRES_SATCAT  15
// Obs time in ds50UTC
#define XA_OBSRES_OBSTIME 16
// Obs azimuth (deg)
#define XA_OBSRES_OBSAZ   17
// Obs elevation (deg)
#define XA_OBSRES_OBSEL   18
// Velocity angle residual (deg)
#define XA_OBSRES_VELANG  19
// Angular momentum residual (deg).  acos(dot(priW, secW))
#define XA_OBSRES_ANGMOM  20
// Right ascension residual (deg) (for ob types 5, 9, 19)
#define XA_OBSRES_RA      21
// Declination residual (deg) (for ob types 5, 9, 19)
#define XA_OBSRES_DEC     22
// Delta X position (km)
#define XA_OBSRES_POSX    23
// Delta Y position (km)
#define XA_OBSRES_POSY    24
// Delta Z position (km)
#define XA_OBSRES_POSZ    25
// Delta X velocity (km/sec)
#define XA_OBSRES_VELX    26
// Delta Y velocity (km/sec)
#define XA_OBSRES_VELY    27
// Delta Z velocity (km/sec)
#define XA_OBSRES_VELZ    28
// Angle only - Obs computed range (km)
#define XA_OBSRES_OBSRNG  29

// Obs right ascension (deg)
#define XA_OBSRES_OBSRA   30
// Obs declination (deg)
#define XA_OBSRES_OBSDEC  31
// Delta east longitude (deg)
#define XA_OBSRES_LON     32

// Delta U position (km)
#define XA_OBSRES_POSU    33
// Delta V position (km)
#define XA_OBSRES_POSV    34
// Delta W position (km)
#define XA_OBSRES_POSW    35
// 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
#define XA_OBSRES_CHI     36

// Angular Separation between Obs and State (Deg)
#define XA_OBSRES_ANGSEP  38
// TDOA Time Difference of Arrival residual (nano-second)
#define XA_OBSRES_TDOA    39
// FDOA Frequency Differecnce of Arrival (Hz)
#define XA_OBSRES_FDOA    40

#define XA_OBSRES_SIZE   100

// Indexes of Rotas Control parameter fields (Rotas P-Card)
// Rotas processing mode
#define XF_RP_MODE         1
// Gross Beta limit (deg)
#define XF_RP_GROSSBETA    2
// ASTAT 0 Beta limit (deg)
#define XF_RP_BETALIM      3
// ASTAT 0 delta-t limit (min)
#define XF_RP_DELTATLIM    4
// ASTAT 0 delta-height limit (km)
#define XF_RP_DELTAHLIM    5
// ASTAT 2 multiplier
#define XF_RP_ASTAT2MULT   6
// Residual print flag
#define XF_RP_PRTFLAG      7
// Retag ASTAT 1 ob flag
#define XF_RP_RETAGFLAG    8
// Light-time correction flag
#define XF_RP_LTC          9
// Maximum number of ALLEL assoc's to compute
#define XF_RP_NUMASSOC    10
// Diagnostic print flag
#define XF_RP_DIAGNOSTIC  11
// Covariance print flag
#define XF_RP_PRTCOV      12
// Perform track processing
#define XF_RP_TRACKFLAG   13
// Retagged ob are removed from further association
#define XF_RP_REMRETAG    14
// Debias ob flag
#define XF_RP_DEBIAS      15
// Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
#define XF_RP_RESCOMPMETH 16

// ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
// Gross Beta limit (deg)
#define XA_RT_PARMS_GROSSBETA     1
// ASTAT 0 Beta limit (deg)
#define XA_RT_PARMS_BETALIM       2
// ASTAT 0 delta-t limit (min)
#define XA_RT_PARMS_DELTATLIM     3
// ASTAT 0 delta-height limit (km)
#define XA_RT_PARMS_DELTAHLIM     4
// ASTAT 2 multiplier
#define XA_RT_PARMS_ASTAT2MULT    5
// Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
#define XA_RT_PARMS_LTC           6
// debias ob flag: 0= do not debias, 1= debias ob
#define XA_RT_PARMS_DEBIAS        7
// Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
#define XA_RT_PARMS_RESCOMPMETH   8
// Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
#define XA_RT_PARMS_ANNUALAB	     9
// Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction
#define XA_RT_PARMS_DIURNALAB    10
#define XA_RT_PARMS_SIZE         16

// ROTAS Association Multipliers
// ASTAT 1 Beta multiplier for Synchronous
#define XA_ASSOCMULTP_BETA_SYN     0
// ASTAT 1 Delta-t multiplier for Synchronous
#define XA_ASSOCMULTP_DELTAT_SYN   1
// ASTAT 1 Delta-height multiplier for Synchronous
#define XA_ASSOCMULTP_DELTAH_SYN   2
// ASTAT 1 Beta multiplier for Deep-space
#define XA_ASSOCMULTP_BETA_DS      3
// ASTAT 1 Delta-t multiplier for Deep-space
#define XA_ASSOCMULTP_DELTAT_DS    4
// ASTAT 1 Delta-height multiplier for Deep-space
#define XA_ASSOCMULTP_DELTAH_DS    5
// ASTAT 1 Beta multiplier for Decaying
#define XA_ASSOCMULTP_BETA_DCY     6
// ASTAT 1 Delta-t multiplier for Decaying
#define XA_ASSOCMULTP_DELTAT_DCY   7
// ASTAT 1 Delta-height multiplier for Decaying
#define XA_ASSOCMULTP_DELTAH_DCY   8
// ASTAT 1 Beta multiplier for Routine
#define XA_ASSOCMULTP_BETA_RTN     9
// ASTAT 1 Delta-t multiplier for Routine
#define XA_ASSOCMULTP_DELTAT_RTN  10
// ASTAT 1 Delta-height multiplier for Routine
#define XA_ASSOCMULTP_DELTAH_RTN  11

#define XA_ASSOCMULTP_SIZE        12

// ========================= End of auto generated code ==========================
