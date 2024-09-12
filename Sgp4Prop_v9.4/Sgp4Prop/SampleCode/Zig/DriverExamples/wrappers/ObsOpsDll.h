// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0.    
// Initializes ObsOps DLL for use in the program
int ObsOpsInit(long apAddr);

// Returns information about the current version of ObsOps DLL. 
// The information is placed in the string parameter passed in.
void ObsOpsGetInfo(char infoStr[128]);

// Loads Iomod parameters from an input text file
int IomodLoadFile(char iomodInputFile[512]);

// Loads Iomod control parameters and all Iomod related data (environment, time, sensors, obs) from an input text file
int IomodLoadFileAll(char iomodInputFile[512]);

// Saves any currently loaded IOMOD-related settings to a file
int IomodSaveFile(char iomodFile[512], int saveMode, int saveForm);

// Builds and returns the IOMOD-parameter card (IP-Card) from the current IOMOD settings
void IomodGetIpCard(char iomodIPCard[512]);

// Retrieves all IOMOD parameters with a single function call
void IomodGetIpAll(int* printIOHG, int* useFirst3Obs, int* satNum, int* sortOrder, char satName[8], int* runDC, int* runRotas, double extArr[128]);

// Sets all IOMOD parameters with a single function call
void IomodSetIpAll(int printIOHG, int useFirst3Obs, int satNum, int sortOrder, char satName[8], int runDC, int runRotas, double extArr[128]);

// Retrieves the value of a specified IOMOD parameter
// <br>
// The table below indicates which index values for the xf_IP parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>xf_IP named constants/values</b></td>
// <td><b>Interpretation</b></td>
// </tr>
// <tr><td>XF_IP_PRINTIOHG  = 1</td><td>control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print
// IOHG</td></tr>
// <tr><td>XF_IP_USE1ST3OBS = 2</td><td>use first 3 obs flag</td></tr>
// <tr><td>XF_IP_SATNUM     = 3</td><td>satelite number</td></tr>
// <tr><td>XF_IP_SORTORDER  = 4</td><td>obs sorting order</td></tr>
// <tr><td>XF_IP_SATNAME    = 5</td><td>international designator </td></tr>
// <tr><td>XF_IP_RUNDC      = 6</td><td>run DC flag: 1=yes, 0=no [deprecated]</td></tr>
// <tr><td>XF_IP_RUNROTAS   = 7</td><td>run ROTAS flag: 1=yes, 0=no [deprecated]</td></tr>
// </table>
void IomodGetIpField(int xf_IP, char retVal[512]);

// Sets the value of a specified IOMOD parameter
// See IomodGetIpField for a description of the xf_IP parameter.
void IomodSetIpField(int xf_IP, char valueStr[512]);

// Computes initial orbit vector from many observations using Herrick-Gibbs method
int ManyObsToPosVel(long obsKeyArr[], int arrSize, double* timeDs50UTC, double pos[3], double vel[3], long arr3ObsKeys[3]);

// Computes initial orbit vector from three selected observations using Herrick-Gibbs method
int ThreeObsToPosVel(long arr3ObsKeys[3], double* timeDs50UTC, double pos[3], double vel[3]);

// Computes initial orbit vector directly from the input sensor/observation data - thread safe
int Iomod_OS(double xa_senLoc[16], int numObs, double xa_obsArr[][64], double* timeDs50UTC, double pos[3], double vel[3]);

// Computes initial orbit vector from two selected observations using Two-Ob method
// Note: Two-Ob method only works with ob types: 2, 3, 4, P, and V
int TwoObsToPosVel(long arr2ObsKeys[2], double* timeDs50UTC, double pos[3], double vel[3]);

// Computes the initial orbit vector from three selected angle-only observations using the Gooding Algorithm.
int AnglesOnlyToPosVel(long arr3ObsKeys[3], double range1, double range3, int nhrev, int ind, int maxIt, double pdInc, double criVal, double* timeDs50UTC, double pos[3], double vel[3]);

// Computes the track length of a track whose first observation started at the input startIdx.
// This routine can be used in a loop to find all the tracks in the observation list.
// Remember to sort obs in the obsKeyArr in the ascending order of sensor, satno, obsType, time, elev 
// by calling ObsGetLoaded(-6, pObsKeys) before feeding the array to this routine
int FindTrack(long obsKeyArr[], int arrSize, int startIdx, int* trackLength);

// Computes initial orbit vector from a track of obs. Also returns the three obs in the track that are used by IOMOD
int ATrackToPosVel(long obsKeys[], int trackStartIdx, int trackLength, double* timeDs50UTC, double pos[3], double vel[3], long trackObsKeys[3]);

// Returns the default values of the triangulation settings
void TriGetDefParams(double xa_tri[32]);

// Triangulates the input obs and write generated obs with range data to the specified output file
int TriComputeToFile(long obsKeyArr[], int arrSize, double xa_tri[32], char toFile[512]);

// Triangulates the input obs and returns the overlap and polyfit information; creates and loads obs with range data into memory and returns their associated obsKeys
int TriCompute1(long obsKeyArr[], int arrSize, double xa_tri[32], int* numOvlps, double xa_ovlp[][8], int* numFits, double xa_fit[][32], int maxGenObs, int* nGenObs, long genObsKeys[]);

// Triangulates the input obs and returns the overlap and polyfit information 
int TriCompute2(long obsKeyArr[], int arrSize, double xa_tri[32], int* numOvlps, double xa_ovlp[][8], int* numFits, double xa_fit[][32]);

// Triangulates the input obs; creates and loads obs with range data (by triangulation) into memory and returns their associated obsKeys
int TriCompute3(long obsKeyArr[], int arrSize, double xa_tri[32], int maxGenObs, int* nGenObs, long genObsKeys[]);

// Returns the default values of the waterfall altitude (km)
double GetWaterfallAlt();

// Converts angle-only observation to lat/lon/height positions
int AnglesOnlyToLLH(long obsKey, double assumedAltitude, double rho[2], double llhs[2][3], int* numSols);

// Calculates length of output arrays for Lomb
// Used to allocated px, py, prob before call to Lomb
int LombLengthOut(double ofac, double hifac, int nSample);

// Creates Lomb-Scargle periodogram.  Reference: Numerical Recipes   
// Used to find frequencies in unevenly sampled data, such as Visual Magnitude vs. Time
void Lomb(double x[], double y[], int nSample, double ofac, double hifac, double px[], double py[], double prob[], double* pxmax, double* pymax, double* probMax);

// Find False Alarm Probablility of given Power (lower is less likely to be a false alarm)
double LombFalseProb(double py, int nout, double ofac);

// Find Power of given False Alarm Probablility
double LombFalseProbInv(double prob, int nout, double ofac);

// Calculate length of output for LombWaveFit
int LombLengthCoef(int nFreq);

// Fits user defined frequencies to data to find the magnitudes
// Solves the equation
// y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
// For coefficients A and B corresponding to each frequency
void LombWaveFit(double x[], double y[], int nSamples, double freq[], int nfreq, double coeffs[]);

// Calculate value of y given time, x, 
// and frequencies and magnitudes that were gotten from wavefit
// solves the equation
// y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
// for y
double LombCalcValueFromTime(double x, double mags[], double freq[], int nfreq);

// Given two observations, calculate the angle between them
// Supports obsType 1,2,3,4,5,8,9,18,19
void AngleBetweenObs(long obsKey1, long obsKey2, double* angSep, int* errCode);

// Different obs selection options
// auto select 3 obs among the loaded/selected obs
#define OBSSELMODE_AUTO    0
// use the first 3 obs in list of loaded/selected obs
#define OBSSELMODE_1ST3OBS 1


// Indexes for accessing Iomod control parameters
// control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
#define XF_IP_PRINTIOHG   1
// use first 3 obs flag
#define XF_IP_USE1ST3OBS  2
// satelite number
#define XF_IP_SATNUM      3
// obs sorting order
#define XF_IP_SORTORDER   4
// international designator
#define XF_IP_SATNAME     5
// run DC flag: 1=yes, 0=no
#define XF_IP_RUNDC       6
// run ROTAS flag: 1=yes, 0=no
#define XF_IP_RUNROTAS    7

// Indexes of TRI configuration parameters
// I - Flag to specify whether or not to use triangulation's default parameters: =[1]: use them and ignore the rest; =0: not to use them
#define XA_TRI_USEDEFAULT         0
// I - Output obs type (valid values are 0, 2, 3, 4, 6, 8 and 9)
#define XA_TRI_OBSTYPEOUT         1
// I - Flag to specify whether or not to apply sensor bias: =[1]: apply bias, =0: not apply bias
#define XA_TRI_APPLYBIAS          2
// I - apply light time correction (applyLTC) flag: 0=do no apply LTC, [1]=apply LTC
#define XA_TRI_LTC                3
// I - number of obs created for each overlap track
#define XA_TRI_CREATEOBSSIZE      4
// I - default order of the Polyfit for angle RA/DEC
#define XA_TRI_DEFANGLEORDER      5
// I - default order of the Polyfit for range
#define XA_TRI_DEFRANGEORDER      6
// I - default order of the Polyfit for EFG components
#define XA_TRI_DEFEFGORDER        7
// I - whether or not to use auto mode for angle (increase order if needed when doing Polyfit)
#define XA_TRI_AUTOFITANGLE       8
// I - whether or not to use auto for range (increase order if needed when doing Polyfit)
#define XA_TRI_AUTOFITRANGE       9
// I - anchor order of RA/DEC
#define XA_TRI_ANCHORRADEC       10
// I - check to see satellite number is different
#define XA_TRI_SEPSATNO          11
// D - limit RMS for RA (arcsec)
#define XA_TRI_RARMSLIM          12
// D - limit RMS for Dec (arcsec)
#define XA_TRI_DECRMSLIM         13
// D - limit RMS for Range (km)
#define XA_TRI_RANGERMSLIM       14
// D - track separation criteria (minutes)
#define XA_TRI_TRKSEPARATION     15
// D - minimum stereoscopic angle (deg)
#define XA_TRI_MINSTEREOANGLE    16

#define XA_TRI_SIZE              32

// Indexes of overlap track data
// I - Satellite number
#define XA_OVLP_SATNUM         0
// I - Sensor number of track 1
#define XA_OVLP_SENNUM1        1
// I - Sensor number of track 2
#define XA_OVLP_SENNUM2        2
// D - Overlap track's start time (in DS50UTC)
#define XA_OVLP_STARTTIME      3
// D - Overlap track's end time (in DS50UTC)
#define XA_OVLP_ENDTIME        4

// 
#define XA_OVLP_SIZE           8

// Indexes of polyfitting track data
// I - Satellite number
#define XA_FIT_SATNUM          0
// I - Sensor number of track 1
#define XA_FIT_SENNUM1         1
// I - Sensor number of track 2
#define XA_FIT_SENNUM2         2

// I - Right ascension polyfit order of track 1
#define XA_FIT_RAORDER1        3
// I - Right ascension polyfit order of track 2
#define XA_FIT_RAORDER2        4
// D - Right ascension RMS of track 1
#define XA_FIT_RARMS1          5
// D - Right ascension RMS of track 2
#define XA_FIT_RARMS2          6

// I - Declination polyfit order of track 1
#define XA_FIT_DECORDER1       7
// I - Declination polyfit order of track 2
#define XA_FIT_DECORDER2       8
// D - Declination RMS of track 1
#define XA_FIT_DECMS1          9
// D - Declination RMS of track 2
#define XA_FIT_DECRMS2        10

// I - Declination polyfit order of track 1
#define XA_FIT_RANGEORDER1    11
// I - Declination polyfit order of track 2
#define XA_FIT_RANGEORDER2    12
// D - Declination RMS of track 1
#define XA_FIT_RANGERMS1      13
// D - Declination RMS of track 2
#define XA_FIT_RANGERMS2      14

// D - First stereoscopic angle (deg)
#define XA_FIT_THETA1         15
// D - Second stereoscopic angle (deg)
#define XA_FIT_THETA2         16
// D - Third stereoscopic angle (deg)
#define XA_FIT_THETA3         17

// 
#define XA_FIT_SIZE            32


// ========================= End of auto generated code ==========================
