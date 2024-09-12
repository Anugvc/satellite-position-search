// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes Combo dll for use in the program
// If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
int ComboInit(long apAddr);

// Returns information about the current version of Combo.dll. The information is placed in the string parameter you pass in
// The returned string provides information about the version number, build date, and the platform of the Combo DLL. 
void ComboGetInfo(char infoStr[128]);

// Loads Combo-related parameters (7P/8P/9P cards, and Combo parameter free format) from a text file
int ComboLoadFile(char comboInputFile[512]);

// Loads Combo control parameters and all Combo related data (environment, time, elsets) from an input text file
int ComboLoadFileAll(char comboInputFile[512]);

// Loads a single Combo-typed card (7P, 8P, and 9P)
int ComboLoadCard(char card[512]);

// Saves any currently loaded COMBO-related settings to a file
// The purpose of this function is to save the current Combo-related settings, usually used in GUI applications, for future use.
int ComboSaveFile(char comboFile[512], int saveMode, int saveForm);

// Returns the number of primary and secondary satellites that were entered via 7P-card, 8P-card, 9P-card, or Combo parameter free format 
void ComboGetNumOfPriSecSats(int* numPriSats, int* numSecSats);

// Returns an array of primary satellite numbers that were entered via 7P-card, 9P-card, or Combo parameter free format
void ComboGetPriSatNums(int priSatNums[]);

// Returns an array of secondary satellite numbers that were entered via 7P-card, 8P-card, or Combo parameter free format
void ComboGetSecSatNums(int secSatNums[]);

// Constructs Combo 7P-Card from COMBO control parameters
void ComboGet7pCard(char combo7pCard[512]);

// Retrieves all Combo control parameters with a single function call
void ComboGet7pAll(int* timeFlg, double* startTime, double* stopTime, int* relMinFlg, int* absMinFlg, int* closeProxFlg, int* relEphFlg, double* pocSigma, double* relMinLim, double* closeProxLim, double* relEphInterval, int* prtOpt);

// Sets all Combo control parameters with a single function call
void ComboSet7pAll(int timeFlg, double startTime, double stopTime, int relMinFlg, int absMinFlg, int closeProxFlg, int relEphFlg, double pocSigma, double relMinLim, double closeProxLim, double relEphInterval, int prtOpt);

// Retrieves the value of a single Combo control parameter (7P-card)
void ComboGet7pField(int xf_7P, char retVal[512]);

// Sets the value of a single Combo control parameter (7P-card)
// See ComboGet7pField for a list of index values for the parameter xf_7P.
void ComboSet7pField(int xf_7P, char valueStr[512]);

// Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
// <br>
// If <i>absMinDs50UTC</i> = 0 or <i>absMinDist</i> = 1.0E20, this means no absolute minimum found. Otherwise, the <i>absMinDs50UTC</i> and <i>absMinDist</i> are returned whether or not <i>absMinDist</i> is greater than the specified "Close proximity limit".
// <br>
// Returns zero indicating the COMBO data was computed successfully. Other values indicate an error. Here is the list of possible error/warning code it returns:
// <table>
//     <caption>table</caption>
// <tr>
// <td><b>Value</b></td>
// <td><b>Value Interpretation</b></td>
// </tr>
// <tr><td>101 </td><td>Primary satellite's epoch too far from the time span</td></tr>
// <tr><td>102 </td><td>Secondary satellite's epoch too far from the time span</td></tr>
// <tr><td>103 </td><td>Primary/secondary satellites are identical</td></tr>
// <tr><td>104 </td><td>Secondary satellite failed perigee/apogee test</td></tr>
// <tr><td>105 </td><td>Secondary satellite is considered a brief span</td></tr>
// <tr><td>106 </td><td>Secondary satellite is in sustained relative geometry</td></tr>
// </table>
// <br>
// When the function's returned value is 108 (secondary satellite is in sustained relative geometry), the entry/exit times should be ignored.
int ComboCompPriSec(long priSatKey, long secSatKey, double* absMinDs50UTC, double* absMinDist, double relMinDs50UTCs[1000], int* numOfRelMins, double entryDs50UTCs[1000], double exitDs50UTCs[1000], int* numOfEntryExits);

// Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
// This function is similar to ComboCompPriSec but allows the user to enter separate COMBO parameters for each call which is suitable for multithread application
int ComboCompPriSec_MT(double xa_cb_parms[16], long priSatKey, long secSatKey, double* absMinDs50UTC, double* absMinDist, double relMinDs50UTCs[1000], int* numOfRelMins, double entryDs50UTCs[1000], double exitDs50UTCs[1000], int* numOfEntryExits);

// Computes probability of collision between a primary and secondary satellite
int ComboPOC(double priSatPos[3], double priSatVel[3], double priSatCov[3][3], double priSatRad, double secSatPos[3], double secSatVel[3], double secSatCov[3][3], double secSatRad, int xf_CovType, double xa_cb_poc[4]);

// Computes probability of collision using data from a CSM/OCM file
int ComboCSMPOC(char csmFile[512], double sumR, double xa_cb_poc[4]);

// Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
// input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
#define XA_CB_PARMS_TIMEFLG       1
// begin time
#define XA_CB_PARMS_STARTTIME     2
// end time
#define XA_CB_PARMS_STOPTIME      3
// maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
#define XA_CB_PARMS_MAXSEP        4
// close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value
#define XA_CB_PARMS_PROXLIM       5
#define XA_CB_PARMS_SIZE         16

// Constants represent combo failed cases
// Primary satellite's epoch too far from time span
#define FAILED_PRITOOFAR  101
// Secondary satellite's epoch too far from time span
#define FAILED_SECTOOFAR  102
// Primary/secondary satellites are identical
#define FAILED_SAMESAT    103
// Secondary satellite failed perigee/apogee test
#define FAILED_ALTITUDE   104
// Secondary satellite is considered a brief span
#define WARN_BRIEFSPAN    105
// Secondary satellite is in sustained relative geometry
#define WARN_SUSRELGEO    106

// Indexes of LAMOD 7P-card fields
// Input time format : 0: Minutes since epoch, 1: UTC
#define XF_7P_TIMEFLAG     1
// Begin time
#define XF_7P_BEGTIME      2
// End time
#define XF_7P_ENDTIME      3
// Control flag for computing relative minima
#define XF_7P_RELMINFLG    4
// Control flag for computing absolute minimum
#define XF_7P_ABSMINFLG    5
// Control flag for computing periods of close proximity
#define XF_7P_EETIMES      6
// Control flag for computing relative ephemeris
#define XF_7P_RELEPHFLG    7
// Control flag for computing probability of collision
#define XF_7P_POCSIGMA     8
// Maximum separation for relative minima
#define XF_7P_RELMINLIM    9
// Close proximity limit
#define XF_7P_ABSMINLIM    10
// Relative ephemeris sampling interval
#define XF_7P_RELEPHINT    11
// Print options
#define XF_7P_PRTOPT       12
// Primary satellite effective radius (m)
#define XF_7P_PRADIUS      13
// Secondary satellite effective radius (m)
#define XF_7P_SRADIUS      14

// Different input of covariance matrix to compute POC
// ECI pos, vel, and ECI covariance
#define XF_COVTYPE_ECI    1
// EFG pos, vel, and UVW covariance
#define XF_COVTYPE_UVW    2

// Indexes of Combo's POC data
// Normalized distance (n-sigma) to circumscribing square
#define XA_CB_POC_NORMSQR   0
// POC of square
#define XA_CB_POC_SQR       1
// Normalized distance (n-sigma) to circle
#define XA_CB_POC_NORMCIR   2
// POC of circle
#define XA_CB_POC_CIR       3

#define XA_CB_POC_SIZE      4


// ========================= End of auto generated code ==========================
