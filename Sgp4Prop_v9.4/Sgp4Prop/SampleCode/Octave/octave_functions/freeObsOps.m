% This wrapper file was generated automatically by the GenDllWrappers program.
function freeObsOps()   
   % Different obs selection options
   % auto select 3 obs among the loaded/selected obs
   global OBSSELMODE_AUTO;
   % use the first 3 obs in list of loaded/selected obs
   global OBSSELMODE_1ST3OBS;
   
   
   % Indexes for accessing Iomod control parameters
   % control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
   global XF_IP_PRINTIOHG;
   % use first 3 obs flag
   global XF_IP_USE1ST3OBS;
   % satelite number
   global XF_IP_SATNUM;
   % obs sorting order
   global XF_IP_SORTORDER;
   % international designator
   global XF_IP_SATNAME;
   % run DC flag: 1=yes, 0=no
   global XF_IP_RUNDC;
   % run ROTAS flag: 1=yes, 0=no
   global XF_IP_RUNROTAS;
   
   % Indexes of TRI configuration parameters
   % I - Flag to specify whether or not to use triangulation's default parameters: =[1]: use them and ignore the rest; =0: not to use them
   global XA_TRI_USEDEFAULT;
   % I - Output obs type (valid values are 0, 2, 3, 4, 6, 8 and 9)
   global XA_TRI_OBSTYPEOUT;
   % I - Flag to specify whether or not to apply sensor bias: =[1]: apply bias, =0: not apply bias
   global XA_TRI_APPLYBIAS;
   % I - apply light time correction (applyLTC) flag: 0=do no apply LTC, [1]=apply LTC
   global XA_TRI_LTC;
   % I - number of obs created for each overlap track
   global XA_TRI_CREATEOBSSIZE;
   % I - default order of the Polyfit for angle RA/DEC
   global XA_TRI_DEFANGLEORDER;
   % I - default order of the Polyfit for range
   global XA_TRI_DEFRANGEORDER;
   % I - default order of the Polyfit for EFG components
   global XA_TRI_DEFEFGORDER;
   % I - whether or not to use auto mode for angle (increase order if needed when doing Polyfit)
   global XA_TRI_AUTOFITANGLE;
   % I - whether or not to use auto for range (increase order if needed when doing Polyfit)
   global XA_TRI_AUTOFITRANGE;
   % I - anchor order of RA/DEC
   global XA_TRI_ANCHORRADEC;
   % I - check to see satellite number is different
   global XA_TRI_SEPSATNO;
   % D - limit RMS for RA (arcsec)
   global XA_TRI_RARMSLIM;
   % D - limit RMS for Dec (arcsec)
   global XA_TRI_DECRMSLIM;
   % D - limit RMS for Range (km)
   global XA_TRI_RANGERMSLIM;
   % D - track separation criteria (minutes)
   global XA_TRI_TRKSEPARATION;
   % D - minimum stereoscopic angle (deg)
   global XA_TRI_MINSTEREOANGLE;
   
   global XA_TRI_SIZE;
   
   % Indexes of overlap track data
   % I - Satellite number
   global XA_OVLP_SATNUM;
   % I - Sensor number of track 1
   global XA_OVLP_SENNUM1;
   % I - Sensor number of track 2
   global XA_OVLP_SENNUM2;
   % D - Overlap track's start time (in DS50UTC)
   global XA_OVLP_STARTTIME;
   % D - Overlap track's end time (in DS50UTC)
   global XA_OVLP_ENDTIME;
   
   % 
   global XA_OVLP_SIZE;
   
   % Indexes of polyfitting track data
   % I - Satellite number
   global XA_FIT_SATNUM;
   % I - Sensor number of track 1
   global XA_FIT_SENNUM1;
   % I - Sensor number of track 2
   global XA_FIT_SENNUM2;
   
   % I - Right ascension polyfit order of track 1
   global XA_FIT_RAORDER1;
   % I - Right ascension polyfit order of track 2
   global XA_FIT_RAORDER2;
   % D - Right ascension RMS of track 1
   global XA_FIT_RARMS1;
   % D - Right ascension RMS of track 2
   global XA_FIT_RARMS2;
   
   % I - Declination polyfit order of track 1
   global XA_FIT_DECORDER1;
   % I - Declination polyfit order of track 2
   global XA_FIT_DECORDER2;
   % D - Declination RMS of track 1
   global XA_FIT_DECMS1;
   % D - Declination RMS of track 2
   global XA_FIT_DECRMS2;
   
   % I - Declination polyfit order of track 1
   global XA_FIT_RANGEORDER1;
   % I - Declination polyfit order of track 2
   global XA_FIT_RANGEORDER2;
   % D - Declination RMS of track 1
   global XA_FIT_RANGERMS1;
   % D - Declination RMS of track 2
   global XA_FIT_RANGERMS2;
   
   % D - First stereoscopic angle (deg)
   global XA_FIT_THETA1;
   % D - Second stereoscopic angle (deg)
   global XA_FIT_THETA2;
   % D - Third stereoscopic angle (deg)
   global XA_FIT_THETA3;
   
   % 
   global XA_FIT_SIZE;
   
   
   
   % Different obs selection options
   % auto select 3 obs among the loaded/selected obs
   clear OBSSELMODE_AUTO;
   % use the first 3 obs in list of loaded/selected obs
   clear OBSSELMODE_1ST3OBS;
   
   
   % Indexes for accessing Iomod control parameters
   % control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
   clear XF_IP_PRINTIOHG;
   % use first 3 obs flag
   clear XF_IP_USE1ST3OBS;
   % satelite number
   clear XF_IP_SATNUM;
   % obs sorting order
   clear XF_IP_SORTORDER;
   % international designator
   clear XF_IP_SATNAME;
   % run DC flag: 1=yes, 0=no
   clear XF_IP_RUNDC;
   % run ROTAS flag: 1=yes, 0=no
   clear XF_IP_RUNROTAS;
   
   % Indexes of TRI configuration parameters
   % I - Flag to specify whether or not to use triangulation's default parameters: =[1]: use them and ignore the rest; =0: not to use them
   clear XA_TRI_USEDEFAULT;
   % I - Output obs type (valid values are 0, 2, 3, 4, 6, 8 and 9)
   clear XA_TRI_OBSTYPEOUT;
   % I - Flag to specify whether or not to apply sensor bias: =[1]: apply bias, =0: not apply bias
   clear XA_TRI_APPLYBIAS;
   % I - apply light time correction (applyLTC) flag: 0=do no apply LTC, [1]=apply LTC
   clear XA_TRI_LTC;
   % I - number of obs created for each overlap track
   clear XA_TRI_CREATEOBSSIZE;
   % I - default order of the Polyfit for angle RA/DEC
   clear XA_TRI_DEFANGLEORDER;
   % I - default order of the Polyfit for range
   clear XA_TRI_DEFRANGEORDER;
   % I - default order of the Polyfit for EFG components
   clear XA_TRI_DEFEFGORDER;
   % I - whether or not to use auto mode for angle (increase order if needed when doing Polyfit)
   clear XA_TRI_AUTOFITANGLE;
   % I - whether or not to use auto for range (increase order if needed when doing Polyfit)
   clear XA_TRI_AUTOFITRANGE;
   % I - anchor order of RA/DEC
   clear XA_TRI_ANCHORRADEC;
   % I - check to see satellite number is different
   clear XA_TRI_SEPSATNO;
   % D - limit RMS for RA (arcsec)
   clear XA_TRI_RARMSLIM;
   % D - limit RMS for Dec (arcsec)
   clear XA_TRI_DECRMSLIM;
   % D - limit RMS for Range (km)
   clear XA_TRI_RANGERMSLIM;
   % D - track separation criteria (minutes)
   clear XA_TRI_TRKSEPARATION;
   % D - minimum stereoscopic angle (deg)
   clear XA_TRI_MINSTEREOANGLE;
   
   clear XA_TRI_SIZE;
   
   % Indexes of overlap track data
   % I - Satellite number
   clear XA_OVLP_SATNUM;
   % I - Sensor number of track 1
   clear XA_OVLP_SENNUM1;
   % I - Sensor number of track 2
   clear XA_OVLP_SENNUM2;
   % D - Overlap track's start time (in DS50UTC)
   clear XA_OVLP_STARTTIME;
   % D - Overlap track's end time (in DS50UTC)
   clear XA_OVLP_ENDTIME;
   
   % 
   clear XA_OVLP_SIZE;
   
   % Indexes of polyfitting track data
   % I - Satellite number
   clear XA_FIT_SATNUM;
   % I - Sensor number of track 1
   clear XA_FIT_SENNUM1;
   % I - Sensor number of track 2
   clear XA_FIT_SENNUM2;
   
   % I - Right ascension polyfit order of track 1
   clear XA_FIT_RAORDER1;
   % I - Right ascension polyfit order of track 2
   clear XA_FIT_RAORDER2;
   % D - Right ascension RMS of track 1
   clear XA_FIT_RARMS1;
   % D - Right ascension RMS of track 2
   clear XA_FIT_RARMS2;
   
   % I - Declination polyfit order of track 1
   clear XA_FIT_DECORDER1;
   % I - Declination polyfit order of track 2
   clear XA_FIT_DECORDER2;
   % D - Declination RMS of track 1
   clear XA_FIT_DECMS1;
   % D - Declination RMS of track 2
   clear XA_FIT_DECRMS2;
   
   % I - Declination polyfit order of track 1
   clear XA_FIT_RANGEORDER1;
   % I - Declination polyfit order of track 2
   clear XA_FIT_RANGEORDER2;
   % D - Declination RMS of track 1
   clear XA_FIT_RANGERMS1;
   % D - Declination RMS of track 2
   clear XA_FIT_RANGERMS2;
   
   % D - First stereoscopic angle (deg)
   clear XA_FIT_THETA1;
   % D - Second stereoscopic angle (deg)
   clear XA_FIT_THETA2;
   % D - Third stereoscopic angle (deg)
   clear XA_FIT_THETA3;
   
   % 
   clear XA_FIT_SIZE;
   
   
   FreeObsOpsDll;
   clear LoadObsOpsDll;
   clear FreeObsOpsDll;
   
   %  Notes: This function has been deprecated since v9.0.    
   %  Initializes ObsOps DLL for use in the program
   clear ObsOpsInit
   
   %  Returns information about the current version of ObsOps DLL. 
   %  The information is placed in the string parameter passed in.
   clear ObsOpsGetInfo
   
   %  Loads Iomod parameters from an input text file
   clear IomodLoadFile
   
   %  Loads Iomod control parameters and all Iomod related data (environment, time, sensors, obs) from an input text file
   clear IomodLoadFileAll
   
   %  Saves any currently loaded IOMOD-related settings to a file
   clear IomodSaveFile
   
   %  Builds and returns the IOMOD-parameter card (IP-Card) from the current IOMOD settings
   clear IomodGetIpCard
   
   %  Retrieves all IOMOD parameters with a single function call
   clear IomodGetIpAll
   
   %  Sets all IOMOD parameters with a single function call
   clear IomodSetIpAll
   
   %  Retrieves the value of a specified IOMOD parameter
   %  <br>
   %  The table below indicates which index values for the xf_IP parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>xf_IP named constants/values</b></td>
   %  <td><b>Interpretation</b></td>
   %  </tr>
   %  <tr><td>XF_IP_PRINTIOHG  = 1</td><td>control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print
   %  IOHG</td></tr>
   %  <tr><td>XF_IP_USE1ST3OBS = 2</td><td>use first 3 obs flag</td></tr>
   %  <tr><td>XF_IP_SATNUM     = 3</td><td>satelite number</td></tr>
   %  <tr><td>XF_IP_SORTORDER  = 4</td><td>obs sorting order</td></tr>
   %  <tr><td>XF_IP_SATNAME    = 5</td><td>international designator </td></tr>
   %  <tr><td>XF_IP_RUNDC      = 6</td><td>run DC flag: 1=yes, 0=no [deprecated]</td></tr>
   %  <tr><td>XF_IP_RUNROTAS   = 7</td><td>run ROTAS flag: 1=yes, 0=no [deprecated]</td></tr>
   %  </table>
   clear IomodGetIpField
   
   %  Sets the value of a specified IOMOD parameter
   %  See IomodGetIpField for a description of the xf_IP parameter.
   clear IomodSetIpField
   
   %  Computes initial orbit vector from many observations using Herrick-Gibbs method
   clear ManyObsToPosVel
   
   %  Computes initial orbit vector from three selected observations using Herrick-Gibbs method
   clear ThreeObsToPosVel
   
   %  Computes initial orbit vector directly from the input sensor/observation data - thread safe
   clear Iomod_OS
   
   %  Computes initial orbit vector from two selected observations using Two-Ob method
   %  Note: Two-Ob method only works with ob types: 2, 3, 4, P, and V
   clear TwoObsToPosVel
   
   %  Computes the initial orbit vector from three selected angle-only observations using the Gooding Algorithm.
   clear AnglesOnlyToPosVel
   
   %  Computes the track length of a track whose first observation started at the input startIdx.
   %  This routine can be used in a loop to find all the tracks in the observation list.
   %  Remember to sort obs in the obsKeyArr in the ascending order of sensor, satno, obsType, time, elev 
   %  by calling ObsGetLoaded(-6, pObsKeys) before feeding the array to this routine
   clear FindTrack
   
   %  Computes initial orbit vector from a track of obs. Also returns the three obs in the track that are used by IOMOD
   clear ATrackToPosVel
   
   %  Returns the default values of the triangulation settings
   clear TriGetDefParams
   
   %  Triangulates the input obs and write generated obs with range data to the specified output file
   clear TriComputeToFile
   
   %  Triangulates the input obs and returns the overlap and polyfit information; creates and loads obs with range data into memory and returns their associated obsKeys
   clear TriCompute1
   
   %  Triangulates the input obs and returns the overlap and polyfit information 
   clear TriCompute2
   
   %  Triangulates the input obs; creates and loads obs with range data (by triangulation) into memory and returns their associated obsKeys
   clear TriCompute3
   
   %  Returns the default values of the waterfall altitude (km)
   clear GetWaterfallAlt
   
   %  Converts angle-only observation to lat/lon/height positions
   clear AnglesOnlyToLLH
   
   %  Calculates length of output arrays for Lomb
   %  Used to allocated px, py, prob before call to Lomb
   clear LombLengthOut
   
   %  Creates Lomb-Scargle periodogram.  Reference: Numerical Recipes   
   %  Used to find frequencies in unevenly sampled data, such as Visual Magnitude vs. Time
   clear Lomb
   
   %  Find False Alarm Probablility of given Power (lower is less likely to be a false alarm)
   clear LombFalseProb
   
   %  Find Power of given False Alarm Probablility
   clear LombFalseProbInv
   
   %  Calculate length of output for LombWaveFit
   clear LombLengthCoef
   
   %  Fits user defined frequencies to data to find the magnitudes
   %  Solves the equation
   %  y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
   %  For coefficients A and B corresponding to each frequency
   clear LombWaveFit
   
   %  Calculate value of y given time, x, 
   %  and frequencies and magnitudes that were gotten from wavefit
   %  solves the equation
   %  y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
   %  for y
   clear LombCalcValueFromTime
   
   %  Given two observations, calculate the angle between them
   %  Supports obsType 1,2,3,4,5,8,9,18,19
   clear AngleBetweenObs
endfunction
% ========================= End of auto generated code ==========================
