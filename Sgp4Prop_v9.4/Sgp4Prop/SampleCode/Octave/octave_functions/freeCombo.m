% This wrapper file was generated automatically by the GenDllWrappers program.
function freeCombo()   
   % Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
   % input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
   global XA_CB_PARMS_TIMEFLG;
   % begin time
   global XA_CB_PARMS_STARTTIME;
   % end time
   global XA_CB_PARMS_STOPTIME;
   % maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
   global XA_CB_PARMS_MAXSEP;
   % close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value
   global XA_CB_PARMS_PROXLIM;
   global XA_CB_PARMS_SIZE;
   
   % Constants represent combo failed cases
   % Primary satellite's epoch too far from time span
   global FAILED_PRITOOFAR;
   % Secondary satellite's epoch too far from time span
   global FAILED_SECTOOFAR;
   % Primary/secondary satellites are identical
   global FAILED_SAMESAT;
   % Secondary satellite failed perigee/apogee test
   global FAILED_ALTITUDE;
   % Secondary satellite is considered a brief span
   global WARN_BRIEFSPAN;
   % Secondary satellite is in sustained relative geometry
   global WARN_SUSRELGEO;
   
   % Indexes of LAMOD 7P-card fields
   % Input time format : 0: Minutes since epoch, 1: UTC
   global XF_7P_TIMEFLAG;
   % Begin time
   global XF_7P_BEGTIME;
   % End time
   global XF_7P_ENDTIME;
   % Control flag for computing relative minima
   global XF_7P_RELMINFLG;
   % Control flag for computing absolute minimum
   global XF_7P_ABSMINFLG;
   % Control flag for computing periods of close proximity
   global XF_7P_EETIMES;
   % Control flag for computing relative ephemeris
   global XF_7P_RELEPHFLG;
   % Control flag for computing probability of collision
   global XF_7P_POCSIGMA;
   % Maximum separation for relative minima
   global XF_7P_RELMINLIM;
   % Close proximity limit
   global XF_7P_ABSMINLIM;
   % Relative ephemeris sampling interval
   global XF_7P_RELEPHINT;
   % Print options
   global XF_7P_PRTOPT;
   % Primary satellite effective radius (m)
   global XF_7P_PRADIUS;
   % Secondary satellite effective radius (m)
   global XF_7P_SRADIUS;
   
   % Different input of covariance matrix to compute POC
   % ECI pos, vel, and ECI covariance
   global XF_COVTYPE_ECI;
   % EFG pos, vel, and UVW covariance
   global XF_COVTYPE_UVW;
   
   % Indexes of Combo's POC data
   % Normalized distance (n-sigma) to circumscribing square
   global XA_CB_POC_NORMSQR;
   % POC of square
   global XA_CB_POC_SQR;
   % Normalized distance (n-sigma) to circle
   global XA_CB_POC_NORMCIR;
   % POC of circle
   global XA_CB_POC_CIR;
   
   global XA_CB_POC_SIZE;
   
   
   
   % Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
   % input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
   clear XA_CB_PARMS_TIMEFLG;
   % begin time
   clear XA_CB_PARMS_STARTTIME;
   % end time
   clear XA_CB_PARMS_STOPTIME;
   % maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
   clear XA_CB_PARMS_MAXSEP;
   % close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value
   clear XA_CB_PARMS_PROXLIM;
   clear XA_CB_PARMS_SIZE;
   
   % Constants represent combo failed cases
   % Primary satellite's epoch too far from time span
   clear FAILED_PRITOOFAR;
   % Secondary satellite's epoch too far from time span
   clear FAILED_SECTOOFAR;
   % Primary/secondary satellites are identical
   clear FAILED_SAMESAT;
   % Secondary satellite failed perigee/apogee test
   clear FAILED_ALTITUDE;
   % Secondary satellite is considered a brief span
   clear WARN_BRIEFSPAN;
   % Secondary satellite is in sustained relative geometry
   clear WARN_SUSRELGEO;
   
   % Indexes of LAMOD 7P-card fields
   % Input time format : 0: Minutes since epoch, 1: UTC
   clear XF_7P_TIMEFLAG;
   % Begin time
   clear XF_7P_BEGTIME;
   % End time
   clear XF_7P_ENDTIME;
   % Control flag for computing relative minima
   clear XF_7P_RELMINFLG;
   % Control flag for computing absolute minimum
   clear XF_7P_ABSMINFLG;
   % Control flag for computing periods of close proximity
   clear XF_7P_EETIMES;
   % Control flag for computing relative ephemeris
   clear XF_7P_RELEPHFLG;
   % Control flag for computing probability of collision
   clear XF_7P_POCSIGMA;
   % Maximum separation for relative minima
   clear XF_7P_RELMINLIM;
   % Close proximity limit
   clear XF_7P_ABSMINLIM;
   % Relative ephemeris sampling interval
   clear XF_7P_RELEPHINT;
   % Print options
   clear XF_7P_PRTOPT;
   % Primary satellite effective radius (m)
   clear XF_7P_PRADIUS;
   % Secondary satellite effective radius (m)
   clear XF_7P_SRADIUS;
   
   % Different input of covariance matrix to compute POC
   % ECI pos, vel, and ECI covariance
   clear XF_COVTYPE_ECI;
   % EFG pos, vel, and UVW covariance
   clear XF_COVTYPE_UVW;
   
   % Indexes of Combo's POC data
   % Normalized distance (n-sigma) to circumscribing square
   clear XA_CB_POC_NORMSQR;
   % POC of square
   clear XA_CB_POC_SQR;
   % Normalized distance (n-sigma) to circle
   clear XA_CB_POC_NORMCIR;
   % POC of circle
   clear XA_CB_POC_CIR;
   
   clear XA_CB_POC_SIZE;
   
   
   FreeComboDll;
   clear LoadComboDll;
   clear FreeComboDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Combo dll for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
   clear ComboInit
   
   %  Returns information about the current version of Combo.dll. The information is placed in the string parameter you pass in
   %  The returned string provides information about the version number, build date, and the platform of the Combo DLL. 
   clear ComboGetInfo
   
   %  Loads Combo-related parameters (7P/8P/9P cards, and Combo parameter free format) from a text file
   clear ComboLoadFile
   
   %  Loads Combo control parameters and all Combo related data (environment, time, elsets) from an input text file
   clear ComboLoadFileAll
   
   %  Loads a single Combo-typed card (7P, 8P, and 9P)
   clear ComboLoadCard
   
   %  Saves any currently loaded COMBO-related settings to a file
   %  The purpose of this function is to save the current Combo-related settings, usually used in GUI applications, for future use.
   clear ComboSaveFile
   
   %  Returns the number of primary and secondary satellites that were entered via 7P-card, 8P-card, 9P-card, or Combo parameter free format 
   clear ComboGetNumOfPriSecSats
   
   %  Returns an array of primary satellite numbers that were entered via 7P-card, 9P-card, or Combo parameter free format
   clear ComboGetPriSatNums
   
   %  Returns an array of secondary satellite numbers that were entered via 7P-card, 8P-card, or Combo parameter free format
   clear ComboGetSecSatNums
   
   %  Constructs Combo 7P-Card from COMBO control parameters
   clear ComboGet7pCard
   
   %  Retrieves all Combo control parameters with a single function call
   clear ComboGet7pAll
   
   %  Sets all Combo control parameters with a single function call
   clear ComboSet7pAll
   
   %  Retrieves the value of a single Combo control parameter (7P-card)
   clear ComboGet7pField
   
   %  Sets the value of a single Combo control parameter (7P-card)
   %  See ComboGet7pField for a list of index values for the parameter xf_7P.
   clear ComboSet7pField
   
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
   clear ComboCompPriSec
   
   %  Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
   %  This function is similar to ComboCompPriSec but allows the user to enter separate COMBO parameters for each call which is suitable for multithread application
   clear ComboCompPriSec_MT
   
   %  Computes probability of collision between a primary and secondary satellite
   clear ComboPOC
   
   %  Computes probability of collision using data from a CSM/OCM file
   clear ComboCSMPOC
endfunction
% ========================= End of auto generated code ==========================
