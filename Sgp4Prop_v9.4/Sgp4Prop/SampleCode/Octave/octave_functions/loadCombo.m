% This wrapper file was generated automatically by the GenDllWrappers program.
function loadCombo(OctFilePath)   
   % Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
   % input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
   global  XA_CB_PARMS_TIMEFLG;
   % begin time
   global  XA_CB_PARMS_STARTTIME;
   % end time
   global  XA_CB_PARMS_STOPTIME;
   % maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
   global  XA_CB_PARMS_MAXSEP;
   % close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value
   global  XA_CB_PARMS_PROXLIM;
   global  XA_CB_PARMS_SIZE
   
   % Constants represent combo failed cases
   % Primary satellite's epoch too far from time span
   global  FAILED_PRITOOFAR;
   % Secondary satellite's epoch too far from time span
   global  FAILED_SECTOOFAR;
   % Primary/secondary satellites are identical
   global  FAILED_SAMESAT;
   % Secondary satellite failed perigee/apogee test
   global  FAILED_ALTITUDE;
   % Secondary satellite is considered a brief span
   global  WARN_BRIEFSPAN;
   % Secondary satellite is in sustained relative geometry
   global  WARN_SUSRELGEO;
   
   % Indexes of LAMOD 7P-card fields
   % Input time format : 0: Minutes since epoch, 1: UTC
   global  XF_7P_TIMEFLAG;
   % Begin time
   global  XF_7P_BEGTIME;
   % End time
   global  XF_7P_ENDTIME;
   % Control flag for computing relative minima
   global  XF_7P_RELMINFLG;
   % Control flag for computing absolute minimum
   global  XF_7P_ABSMINFLG;
   % Control flag for computing periods of close proximity
   global  XF_7P_EETIMES;
   % Control flag for computing relative ephemeris
   global  XF_7P_RELEPHFLG;
   % Control flag for computing probability of collision
   global  XF_7P_POCSIGMA;
   % Maximum separation for relative minima
   global  XF_7P_RELMINLIM;
   % Close proximity limit
   global  XF_7P_ABSMINLIM;
   % Relative ephemeris sampling interval
   global  XF_7P_RELEPHINT;
   % Print options
   global  XF_7P_PRTOPT;
   % Primary satellite effective radius (m)
   global  XF_7P_PRADIUS;
   % Secondary satellite effective radius (m)
   global  XF_7P_SRADIUS;
   
   % Different input of covariance matrix to compute POC
   % ECI pos, vel, and ECI covariance
   global  XF_COVTYPE_ECI;
   % EFG pos, vel, and UVW covariance
   global  XF_COVTYPE_UVW;
   
   % Indexes of Combo's POC data
   % Normalized distance (n-sigma) to circumscribing square
   global  XA_CB_POC_NORMSQR;
   % POC of square
   global  XA_CB_POC_SQR;
   % Normalized distance (n-sigma) to circle
   global  XA_CB_POC_NORMCIR;
   % POC of circle
   global  XA_CB_POC_CIR;
   
   global  XA_CB_POC_SIZE
   
   
   
   % Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
   % input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
   XA_CB_PARMS_TIMEFLG     =  1;
   % begin time
   XA_CB_PARMS_STARTTIME   =  2;
   % end time
   XA_CB_PARMS_STOPTIME    =  3;
   % maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
   XA_CB_PARMS_MAXSEP      =  4;
   % close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value
   XA_CB_PARMS_PROXLIM     =  5;
   XA_CB_PARMS_SIZE        = 16;
   
   % Constants represent combo failed cases
   % Primary satellite's epoch too far from time span
   FAILED_PRITOOFAR = 101;
   % Secondary satellite's epoch too far from time span
   FAILED_SECTOOFAR = 102;
   % Primary/secondary satellites are identical
   FAILED_SAMESAT   = 103;
   % Secondary satellite failed perigee/apogee test
   FAILED_ALTITUDE  = 104;
   % Secondary satellite is considered a brief span
   WARN_BRIEFSPAN   = 105;
   % Secondary satellite is in sustained relative geometry
   WARN_SUSRELGEO   = 106;
   
   % Indexes of LAMOD 7P-card fields
   % Input time format : 0: Minutes since epoch, 1: UTC
   XF_7P_TIMEFLAG    = 1;
   % Begin time
   XF_7P_BEGTIME     = 2;
   % End time
   XF_7P_ENDTIME     = 3;
   % Control flag for computing relative minima
   XF_7P_RELMINFLG   = 4;
   % Control flag for computing absolute minimum
   XF_7P_ABSMINFLG   = 5;
   % Control flag for computing periods of close proximity
   XF_7P_EETIMES     = 6;
   % Control flag for computing relative ephemeris
   XF_7P_RELEPHFLG   = 7;
   % Control flag for computing probability of collision
   XF_7P_POCSIGMA    = 8;
   % Maximum separation for relative minima
   XF_7P_RELMINLIM   = 9;
   % Close proximity limit
   XF_7P_ABSMINLIM   = 10;
   % Relative ephemeris sampling interval
   XF_7P_RELEPHINT   = 11;
   % Print options
   XF_7P_PRTOPT      = 12;
   % Primary satellite effective radius (m)
   XF_7P_PRADIUS     = 13;
   % Secondary satellite effective radius (m)
   XF_7P_SRADIUS     = 14;
   
   % Different input of covariance matrix to compute POC
   % ECI pos, vel, and ECI covariance
   XF_COVTYPE_ECI   = 1;
   % EFG pos, vel, and UVW covariance
   XF_COVTYPE_UVW   = 2;
   
   % Indexes of Combo's POC data
   % Normalized distance (n-sigma) to circumscribing square
   XA_CB_POC_NORMSQR  = 0;
   % POC of square
   XA_CB_POC_SQR      = 1;
   % Normalized distance (n-sigma) to circle
   XA_CB_POC_NORMCIR  = 2;
   % POC of circle
   XA_CB_POC_CIR      = 3;
   
   XA_CB_POC_SIZE     = 4;
   
   
   autoload("LoadComboDll",strcat(OctFilePath,"Combo.oct"));
   autoload("FreeComboDll",strcat(OctFilePath,"Combo.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Combo dll for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
   autoload("ComboInit",strcat(OctFilePath,"Combo.oct"));
   
   %  Returns information about the current version of Combo.dll. The information is placed in the string parameter you pass in
   %  The returned string provides information about the version number, build date, and the platform of the Combo DLL. 
   autoload("ComboGetInfo",strcat(OctFilePath,"Combo.oct"));
   
   %  Loads Combo-related parameters (7P/8P/9P cards, and Combo parameter free format) from a text file
   autoload("ComboLoadFile",strcat(OctFilePath,"Combo.oct"));
   
   %  Loads Combo control parameters and all Combo related data (environment, time, elsets) from an input text file
   autoload("ComboLoadFileAll",strcat(OctFilePath,"Combo.oct"));
   
   %  Loads a single Combo-typed card (7P, 8P, and 9P)
   autoload("ComboLoadCard",strcat(OctFilePath,"Combo.oct"));
   
   %  Saves any currently loaded COMBO-related settings to a file
   %  The purpose of this function is to save the current Combo-related settings, usually used in GUI applications, for future use.
   autoload("ComboSaveFile",strcat(OctFilePath,"Combo.oct"));
   
   %  Returns the number of primary and secondary satellites that were entered via 7P-card, 8P-card, 9P-card, or Combo parameter free format 
   autoload("ComboGetNumOfPriSecSats",strcat(OctFilePath,"Combo.oct"));
   
   %  Returns an array of primary satellite numbers that were entered via 7P-card, 9P-card, or Combo parameter free format
   autoload("ComboGetPriSatNums",strcat(OctFilePath,"Combo.oct"));
   
   %  Returns an array of secondary satellite numbers that were entered via 7P-card, 8P-card, or Combo parameter free format
   autoload("ComboGetSecSatNums",strcat(OctFilePath,"Combo.oct"));
   
   %  Constructs Combo 7P-Card from COMBO control parameters
   autoload("ComboGet7pCard",strcat(OctFilePath,"Combo.oct"));
   
   %  Retrieves all Combo control parameters with a single function call
   autoload("ComboGet7pAll",strcat(OctFilePath,"Combo.oct"));
   
   %  Sets all Combo control parameters with a single function call
   autoload("ComboSet7pAll",strcat(OctFilePath,"Combo.oct"));
   
   %  Retrieves the value of a single Combo control parameter (7P-card)
   autoload("ComboGet7pField",strcat(OctFilePath,"Combo.oct"));
   
   %  Sets the value of a single Combo control parameter (7P-card)
   %  See ComboGet7pField for a list of index values for the parameter xf_7P.
   autoload("ComboSet7pField",strcat(OctFilePath,"Combo.oct"));
   
   %  Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
   %  <br>
   %  If <i>absMinDs50UTC</i> = 0 or <i>absMinDist</i> = 1.0E20, this means no absolute minimum found. Otherwise, the <i>absMinDs50UTC</i> and <i>absMinDist</i> are returned whether or not <i>absMinDist</i> is greater than the specified "Close proximity limit".
   %  <br>
   %  Returns zero indicating the COMBO data was computed successfully. Other values indicate an error. Here is the list of possible error/warning code it returns:
   %  <table>
   %      <caption>table</caption>
   %  <tr>
   %  <td><b>Value</b></td>
   %  <td><b>Value Interpretation</b></td>
   %  </tr>
   %  <tr><td>101 </td><td>Primary satellite's epoch too far from the time span</td></tr>
   %  <tr><td>102 </td><td>Secondary satellite's epoch too far from the time span</td></tr>
   %  <tr><td>103 </td><td>Primary/secondary satellites are identical</td></tr>
   %  <tr><td>104 </td><td>Secondary satellite failed perigee/apogee test</td></tr>
   %  <tr><td>105 </td><td>Secondary satellite is considered a brief span</td></tr>
   %  <tr><td>106 </td><td>Secondary satellite is in sustained relative geometry</td></tr>
   %  </table>
   %  <br>
   %  When the function's returned value is 108 (secondary satellite is in sustained relative geometry), the entry/exit times should be ignored.
   autoload("ComboCompPriSec",strcat(OctFilePath,"Combo.oct"));
   
   %  Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
   %  This function is similar to ComboCompPriSec but allows the user to enter separate COMBO parameters for each call which is suitable for multithread application
   autoload("ComboCompPriSec_MT",strcat(OctFilePath,"Combo.oct"));
   
   %  Computes probability of collision between a primary and secondary satellite
   autoload("ComboPOC",strcat(OctFilePath,"Combo.oct"));
   
   %  Computes probability of collision using data from a CSM/OCM file
   autoload("ComboCSMPOC",strcat(OctFilePath,"Combo.oct"));
   LoadComboDll;
endfunction
% ========================= End of auto generated code ==========================
