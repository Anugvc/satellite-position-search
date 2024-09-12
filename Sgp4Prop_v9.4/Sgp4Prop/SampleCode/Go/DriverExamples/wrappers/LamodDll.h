// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes Lamod dll for use in the program
// If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
int LamodInit(long apAddr);

// Returns information about the current version of Lamod.dll. The information is placed in the string parameter you pass in
// The returned string provides information about the version number, build date, and the platform of the Lamod DLL. 
void LamodGetInfo(char infoStr[128]);

// Loads Lamod-related parameters (1P/2P/3P cards, and Lamod parameter free format) from an input text file
// Returns zero indicating the file has been read successfully. Other values indicate an error.
int LamodLoadFile(char lamodInputFile[512]);

// Loads Lamod control parameters and all Lamod related data (environment, time, elsets, sensors) from an input text file
int LamodLoadFileAll(char lamodInputFile[512]);

// Loads a single Lamod-typed card
int LamodLoadCard(char card[512]);

// Saves any currently loaded Lamod-related settings to a file
// The purpose of this function is to save the current Lamod-related settings, usually used in GUI applications, for future use.
int LamodSaveFile(char lamodFile[512], int saveMode, int saveForm);

// Returns number of sensors/satellites entered via 1P/2P cards
// See LamodGetSenNums for example.
void LamodGetNumOfSensSats(int* numSens, int* numSats);

// Retrieves all of the input sensor numbers that were entered via 1P-card  (column 38-44), 2P-card, or Lamod parameter free format (SENNO=)
void LamodGetSenNums(int senNums[]);

// Retrieves all of the input satellite numbers that were entered via 1P-card (column 40-62), 2P-card, or Lamod parameter free format (SATNO=)
// See LamodGetSenNums for example.
void LamodGetSatNums(int satNums[]);

// Builds and returns the Lamod parameter card (1P-Card) from the current Lamod settings
void LamodGet1pCard(char lamod1PCard[512]);

// Retrieves all Lamod control parameters with a single function call
void LamodGet1pAll(int* timeFlg, double* startTime, double* stopTime, double* interval, int* prtOpt, int* punchObs, int* visFlg, int* stepMode, char schedMode[1], int* diagMode, double* solAspAngle);

// Sets all Lamod control parameters with a single function call
// The values of <i>visFlg</i> have been changed to match those of sensor limits. <i>VisFlg</i> = 9 now means using limits record value (from V5.4.2 and earlier versions, this used to be <i>visFlg</i> = 0).
// 
// There are cases when the program switches to step mode even though the users have requested culmination mode:
// <ul>
// <li>When the sensor is an orbiting sensor</li>
// <li>When the target satellite orbit has large period (&gt; 960 minutes)</li>
// <li>When the last pass's culmination time passes the requested stopTime (culmination time == 0 and setTime == 0)</li>
// <li>When a pass has multiple maximum elevations (culmination time == -1.0)</li>
// </ul>
void LamodSet1pAll(int timeFlg, double startTime, double stopTime, double interval, int prtOpt, int punchObs, int visFlg, int stepMode, char schedMode, int diagMode, double solAspAngle);

// Retrieves the value of a specified Lamod control parameter (1P-card field) 
// <br>
// Remember to convert <i>valueStr</i> to the correct data type that it represents.
// <br>
// The table below shows the values for the xf_1P parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>1  </td><td> Input time format : 0: Minutes since epoch, 1: UTC</td></tr>
// <tr><td>2  </td><td> Begin time</td></tr>
// <tr><td>3  </td><td> End time</td></tr>
// <tr><td>4  </td><td> Ouput interval</td></tr>
// <tr><td>5  </td><td> Print options: 0: print look angles, 1: print look angle and initial conditions</td></tr>
// <tr><td>6  </td><td> Generate obs from look angles flag</td></tr>
// <tr><td>7  </td><td> Compute optical visibility flag: 0: use limits record value, 1: output optically visible passes only,
// 2: output pass only if solar aspect angle &lt; masx solar aspect angle</td></tr>
// <tr><td>8  </td><td> Step mode flag: 0: use culmination mode; 1: use step mode</td></tr>
// <tr><td>9  </td><td> Processing mode: 'O': obsched mode; 'P':P ASCHED mode</td></tr>
// <tr><td>10 </td><td> Diagnostic mode: 0: none, 1: print sensor/sat position at each look, 2: print pass by pass diagnostics,
// 3: both 1 and 2</td></tr>
// <tr><td>11 </td><td> Max solar aspect for optical sites</td></tr>   
// </table>	
void LamodGet1pField(int xf_1P, char retVal[512]);

// Sets the value of a specified Lamod control parameter (1P-card field)
// See LamodGet1pField for description of the xf_1P parameter values.
void LamodSet1pField(int xf_1P, char valueStr[512]);

// Retrieves the concurrent viewing options read from the input 3P Parameter card
// The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
void LamodGet3pAll(int* concurrFlg, int concurrSens[3]);

// Sets concurrent viewing options similar to what is entered in the input 3P Parameter card
// The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
void LamodSet3pAll(int concurrFlg, int concurrSens[3]);

// Returns the full file name of the output obs file that was specified using "OBSOUT = " in the main input file or using the LamodSetObsFileName() function call
// The users need to make sure they have turned on the flag to generate obs from look angles. Otherwise, this function will return an empty string to the obsFile.
void LamodGetObsFileName(char obsFile[512]);

// Sets the full file name of the output obs file which will be used to store the generated obs data
// Another way to set the output obs file name is entering "OBSOUT = obsFileName" in the input file. 
// 
// The users need to make sure they have also turned on the flag to generate obs from look angles.
void LamodSetObsFileName(char obsFile[512]);

// Checks to see whether the input satellite will ever be viewable to the input sensor
// This function is for the initial visibility check which screens out sensors that can't possibly acquire the satellite. Internally, the LamodInitSenSat() also calls this function to do the screening.
// 
// If the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
int LamodSenSatVisible(long senKey, long satKey);

// Initializes a sensor/satellite pair in preparation for computing look angles
// It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
// 
// The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
// 
// Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
long LamodInitSenSat(long senKey, long satKey);

// Initializes a sensor/satellite pair in preparation for computing look angles using its own LAMOD parameters - suitable for multithread application
// This function is similar to LamodInitSenSat but allows the user to enter separate LAMOD parameters for each call which is suitable for multithread application
// It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
// 
// The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
// 
// Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
long LamodInitSenSat_MT(double xa_la_parms[16], long senKey, long satKey);

// Retrieves all of the data for an initialized sensor/satellite pair with a single function call
int LamodGetSenSatDataAll(long senSatKey, int* stepMode, int* optVisFlg, double* startDs50TAI, double* stopDs50TAI, double* interval, double* period);

// Retrieves an individual field of data for an initialized sensor/satellite pair
// <br>
// Remember to convert <i>valueStr</i> to the correct data type that it represents.
// <br>
// The table below shows the values for the xf_SenSat parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td> 1 </td><td> Step mode</td></tr>
// <tr><td> 2 </td><td> Optical visibility flag</td></tr>
// <tr><td> 3 </td><td> Begin time in ds50TAI</td></tr>
// <tr><td> 4 </td><td> End time in ds50TAI</td></tr>
// <tr><td> 5 </td><td> Print interval </td></tr>
// <tr><td> 6 </td><td> Satellite's period</td></tr>
// </table>
int LamodGetSenSatDataField(long senSatKey, int xf_SenSat, char retVal[512]);

// Retrieves all data fields belonging to the sensor/satellite pair via its senSatKey and store them in the passing array xa_senSat
int LamodSenSatDataToArray(long senSatKey, double xa_senSat[32]);

// Returns the number of possible passes of the sensor/satellite pair in the requested time span which pass 
// the horizontal limit test. This function only applies when the culmination mode was selected
// This is an estimated number of passes. Each pass might not return any valid look angles due to the sensor limits settings.
int LamodGetNumPasses(long senSatKey);

// Returns an array of rise, culmination, and set times of all possible passes of a sensor/satellite pair during the requested time span
// See LamodGetNumPasses for example.
// If a possible culmination time of the last pass is after the requested stop time, only the rise time is returned. The culmination and set times are set to zeros. Since there is no culmination time in this case, the host program should switch to step mode to compute look angles.
// There are cases when multiple maximum elevations are detected in one pass. In these cases, the culmination times will be set to -1.0. The users need to check for this condition and switch to step mode.
// For external ephemeris files, if the provided ephemerides don't cover the requested time span, the possible rise and set times will not be available and will be set to -1.0.
// Note: For Fence/Fan typed sensors this function returns enter/penetration-cross/exit times in place of rise/culmination/set times
int LamodGetRiseCulmSetTimes(long senSatKey, double rcsTimeArr[][3]);

// Computes a single look angle of the sensor/satellite pair at the specified time
int LamodComputeLookAngle(long senSatKey, double currDs50TAI, int* lookCode, double xa_look[6], double senElts[9], double satElts[9]);

// Computes at once look and view data of the sensor/satellite pair at the specified time
// <br>
// Note: This function is a thread safe alternative to LamodComputeLookAngle(), LamodGetOrbSenViewdata(), and LamodGetViewDataField()
int LamodComputeLookView(long senSatKey, double currDs50TAI, double xa_lv[128]);

// Finds exact time when satellite is IN or OUT of sensor's coverage
// <br>
// Note: The start and end times must have different look values (valid and invalid looks or vice versa)
double LamodFindExactIOTime(long senSatKey, double t1Ds50TAI, double t2Ds50TAI);

// Returns viewing and geometric data for orbiting sensors
// <br>
// Note: This function is not thread safe, please use LamodComputeLookView() instead   
int LamodGetOrbSenViewdata(long senSatKey, double uvSun[3], double uvMoon[3], double xa_angle[5], int* nBore1, int* nBore2, double xa_offBore[4]);

// Retrieves a single field of look angle viewing data
// <br>
// See LamodCompRaDec for an example.
// <br>
// Note: This function is not thread safe, please use LamodComputeLookView() instead    
// <br>
// When the users pass the <i>retArray</i> to this function, make sure it has the proper size as shown in the <i>retArray</i> size column.
// <br>
// The <i>retArray</i> Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element.
// <br>
// The table below shows the values for the xf_View parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td> 1 </td><td> computed U-vector to object</td></tr>
// <tr><td> 2 </td><td> range unit vector</td></tr>
// <tr><td> 3 </td><td> topocentric L unit vector</td></tr>
// <tr><td> 4 </td><td> station zenith vector</td></tr>
// <tr><td> 5 </td><td> computed range vector (km)</td></tr>
// <tr><td> 6 </td><td> computed range-rate vector/relative velocity vector (er/kem)</td></tr>
// <tr><td> 7 </td><td> vector to sun  (km)</td></tr>
// <tr><td> 8 </td><td> vector to moon (km)</td></tr>
// <tr><td> 9 </td><td> angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect
// angle)</td></tr>
// <tr><td>10 </td><td> illumination result</td></tr>
// <tr><td>11 </td><td> Relative velocity (km/sec)</td></tr>
// <tr><td>12 </td><td> sensor position EFG</td></tr>
// <tr><td>13 </td><td> limit check flags</td></tr>
// <tr><td>14 </td><td> azimuth and elevation rates (deg/sec)</td></tr>
// <tr><td>15 </td><td> moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)</td></tr>
// </table>	
// <br>
// The table below shows the values for the limit check flags (xf_View = 13):
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>  0</td><td> az limits test flag</td></tr>
// <tr><td>  1</td><td> el limits test flag</td></tr>
// <tr><td>  2</td><td> earth in background flag</td></tr>
// <tr><td>  3</td><td> earth obstructed flag</td></tr>
// <tr><td>  4</td><td> lunar exclusion angle fl</td></tr>
// <tr><td>  5</td><td> max range test flag</td></tr>
// <tr><td>  6</td><td> min range test flag</td></tr>
// <tr><td>  7</td><td> penumb eclipse test flag</td></tr>
// <tr><td>  8</td><td> relative velocity test fl</td></tr>
// <tr><td>  9</td><td> solar aspect angle test</td></tr>
// <tr><td> 10</td><td> solar exclusion angle fl</td></tr>
// <tr><td> 11</td><td> umbral eclipse test flag</td></tr>
// </table>	
int LamodGetViewDataField(long senSatKey, int xf_View, double retVal[]);

// Computes right-ascension and declination from the input sensor's range unit vector (also called local horizon vector)
// The users need to be careful when -1 &lt; decDeg &lt; 0 because they might easily display it incorrectly (missing the negative sign of its value).
void LamodCompRaDec(double xlPos[3], double* rasc, double* decl, int* raHr, int* raMin, double* raSec, int* decDeg, int* decMin, double* decSec);

// Retrieves the formatted observation strings, either in B3 or transmission format, generated from the most recent look angle data
// Note: This function is not thread safe, please use LamodGenObsAtTime() instead 
// The function returns one-line or two-line formatted obs string depending on the input <i>punchObs</i> and the sensor's observation type.  The users need to check the returned value of <i>numLines</i> to see what type of the output strings they are.
int LamodGenObs(long senSatKey, int punchObs, char obsClass, char obsLine1[512], char obsLine2[512], int* numLines);

// Generates formatted observation strings, either in B3 or transmission format, from a VALID look angle obtained at the requested time 
// Note: This is a thread-safe version of the LamodGenObs
int LamodGenObsAtTime(long senSatKey, double currDs50TAI, int punchObs, char obsClass, char obsLine1[512], char obsLine2[512], int* numLines);

// Removes a sensor/satellite pair from Lamod.dll's set of loaded sensor/satellite pairs
int LamodRemoveSenSat(long senSatKey);

// Removes all sensor/satellite pairs from Lamod.dll's set of sensor/satellite pairs
int LamodRemoveAllSenSats();

// Resets all Lamod-related parameters back to their default values
// See LamodRemoveAllSenSats for example.
void LamodReset();

// Computes all look and view data of the input sensor/satellite at the specified time using their input data directly (no need to provide senSatKey)
// <br>
// Note: This function doesn't check for sensor limits so all limit flags are returned as passed
// <br>
void LamodSenSatDirect_OS(double ds50TAI, double xa_locSen[16], double xa_pvSat[6], double xa_lv[128]);

// Indexes of SenSatData fields
// Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
#define XF_SENSAT_STEPMODE      1
// Optical visibility flag (old name XF_SENSAT_VISPASSONLY)
#define XF_SENSAT_OPTVISFLAG    2
// Obsolete - should use new name XF_SENSAT_OPTVISFLAG instead
#define XF_SENSAT_VISPASSONLY   2
// Begin time in ds50TAI
#define XF_SENSAT_BEGDS50TAI    3
// End time in ds50TAI
#define XF_SENSAT_ENDDS50TAI    4
// Print interval
#define XF_SENSAT_INTERVAL      5
// Satellite's period
#define XF_SENSAT_PERIOD        6


//*******************************************************************************
// Indexes of lookCode
// Valid look
#define LOOK_VALID    0
// Failed horizon break test
#define LOOK_HTEST    1
// Failed limit tests
#define LOOK_SENLIMS  2

//*******************************************************************************

// Indexes of look angle data output
// Look time in ds50UTC
#define XA_LOOK_DS50UTC 0
// Look time in minutes since epoch
#define XA_LOOK_MSE     1
// Elevation (deg)
#define XA_LOOK_ELEV    2
// Azimuth (deg)
#define XA_LOOK_AZIM    3
// Range (km) or ? for optical sensor
#define XA_LOOK_RNG     4
// Range rate (km/sec) or ? for optical sensor
#define XA_LOOK_RNGRT   5
#define XA_LOOK_SIZE    6

//*******************************************************************************

// Indexes of viewing data output
// computed U-vector to object
#define XF_VIEW_UVEC        1
// range unit vector
#define XF_VIEW_RUVEC       2
// topocentric L unit vector
#define XF_VIEW_LVEC        3
// station zenith vector
#define XF_VIEW_ZVEC        4
// computed range vector (km)
#define XF_VIEW_RNGVEC      5
// computed range-rate vector/relative velocity vector (km/sec)
#define XF_VIEW_RRTVEC      6
// unit vector of sun
#define XF_VIEW_SUNVEC      7
// unit vector of moon
#define XF_VIEW_MOONVEC     8
// angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect angle)
#define XF_VIEW_ANGARR      9
// illumination result
#define XF_VIEW_CVIS       10
// Relative velocity (km/sec)
#define XF_VIEW_RELVEL     11
// sensor position EFG
#define XF_VIEW_SENEFG     12
// limit check flags
#define XF_VIEW_LIMFLGS    13
// azimuth and elevation rates (deg/sec)
#define XF_VIEW_AZELRATES  14
// moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
#define XF_VIEW_MOONANGLES 15


//*******************************************************************************

// Indexes of angle array
// moon/sen/sat angle (deg)
#define XA_ANGLE_MOONSENSAT   0
// sun/earth/sat angle (deg)
#define XA_ANGLE_SUNEARTHSAT  1
// sun/earth/sen angle (deg)
#define XA_ANGLE_SUNEARTHSEN  2
// sun/sen/sat angle (deg) - solar exclusion angle
#define XA_ANGLE_SUNSENSAT    3
// earth/sat/sun angle (deg) - solar aspect angle/solar phase angle
#define XA_ANGLE_SOLARASPECT  4
#define XA_ANGLE_SIZE         5

// Indexes of moon angle array
// DHN 18Jan13 - Add moon/earth/sat, moon/earth/sen  angles
// moon/earth/sat angle (deg)
#define XA_ANGLE_MOONEARTHSAT  0
// moon/earth/sen angle (deg)
#define XA_ANGLE_MOONEARTHSEN  1


//*******************************************************************************

// Indexes of orbiting sensor's off-boresight/clock  array
// off-boresight angle 1
#define XA_OFFBORE_EL1  0
// off-boresight clock 1
#define XA_OFFBORE_AZ1  1
// off-boresight angle 2
#define XA_OFFBORE_EL2  2
// off-boresight clock 2
#define XA_OFFBORE_AZ2  3
#define XA_OFFBORE_SIZE 4

//*******************************************************************************

// Indexes of LAMOD 1P-card data
// Input time format: 0=Minutes since epoch, 1=UTC
#define XF_1P_TIMEFRM  1
// Begin time
#define XF_1P_BEGTIME  2
// End time
#define XF_1P_ENDTIME  3
// Ouput interval
#define XF_1P_INTERVAL 4
// Print options: 0: print look angles, 1: print look angle and initial conditions
#define XF_1P_PRTOPT   5
// Generate obs from look angles flag
#define XF_1P_GENOBS   6
// Compute optical visibility flag: 0: use sen limits,  1: optically visible passes only, 2: output pass only if SAA less than max SAA
#define XF_1P_VISFLG   7
// Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
#define XF_1P_STEPMODE  8
// Processing mode: 'O': obsched mode; 'P': P ASCHED mode
#define XF_1P_PROCMODE  9
// Diagnostic mode: 0: none, 1: print sen/sat pos at each look, 2: print pass by pass diagnostics, 3: both 1 and 2
#define XF_1P_DIAGNOST  10
// Max solar aspect for optical sites
#define XF_1P_MAXSAA    11

//*******************************************************************************

// Indexes of limit test flags in the returned array
// az limits/off-boresight (constant azimuth fan) test flag (0=failed, 1=passed)
#define XA_LIMFLG_AZLIM      0
// el limits test flag (0=failed, 1=passed)
#define XA_LIMFLG_ELLIM      1
// earth in background flag (0=failed, 1=passed)
#define XA_LIMFLG_EARTHBK    2
// earth obstructed flag (0=failed, 1=passed)
#define XA_LIMFLG_EARTHOB    3
// lunar exclusion angle flag (0=failed, 1=passed)
#define XA_LIMFLG_LUNEXCL    4
// max range test flag (0=failed, 1=passed)
#define XA_LIMFLG_MAXRANGE   5
// min range test flag (0=failed, 1=passed)
#define XA_LIMFLG_MINRANGE   6
// penumb eclipse test flag (0=failed, 1=passed)
#define XA_LIMFLG_PENECLIP   7
// relative velocity test flag (0=failed, 1=passed)
#define XA_LIMFLG_RVELLIM    8
// solar aspect angle test flag (0=failed, 1=passed)
#define XA_LIMFLG_SAALIM     9
// solar exclusion angle flag (0=failed, 1=passed)
#define XA_LIMFLG_SOLEXCL   10
// umbral eclipse test flag (0=failed, 1=passed)
#define XA_LIMFLG_UMBECLIP  11
#define XA_LIMFLG_SIZE      12


// Generate obs options
// Don't generate obs
#define GENOBS_NONE        0
// Generate B3 obs
#define GENOBS_B3          1
// Generate TYY obs
#define GENOBS_TTY         2
// Generate SP TASKER V obsType
#define GENOBS_SPTASKER    3
// Generate CSV obs
#define GENOBS_CSV         4


// indexes of look and view data in an array
// look code: 0=valid look; 1=Fail horizon break test; 2=Fail sensor's limit tests
#define XA_LV_LOOKCODE    0
// time in ds50UTC when the look angle is computed
#define XA_LV_DS50UTC     1
// time mse when the look angle is computed
#define XA_LV_MSE         2
// elevation (deg)
#define XA_LV_ELEV        3
// azimuth (deg)
#define XA_LV_AZIM        4
// range (km)
#define XA_LV_RNG         5
// range rate (km/s)
#define XA_LV_RNGRT       6
// right ascension (deg)
#define XA_LV_RA          7
// declination (deg)
#define XA_LV_DEC         8
// azimuth rate (deg/s)
#define XA_LV_AZRATE      9
// elevation rate (deg/s)
#define XA_LV_ELRATE     10

// sensor ECI position (X) (km)
#define XA_LV_SENPOSX    11
// sensor ECI position (Y) (km)
#define XA_LV_SENPOSY    12
// sensor ECI position (Z) (km)
#define XA_LV_SENPOSZ    13
// sensor ECI velocity (X) (km/s)
#define XA_LV_SENVELX    14
// sensor ECI velocity (Y) (km/s)
#define XA_LV_SENVELY    15
// sensor ECI velocity (Z) (km/s)
#define XA_LV_SENVELZ    16
// sensor latitude (deg)
#define XA_LV_SENLAT     17
// sensor longitude (deg)
#define XA_LV_SENLON     18
// sensor height (km)
#define XA_LV_SENHEIGHT  19

// satellite ECI position (X) (km)
#define XA_LV_SATPOSX    20
// satellite ECI position (Y) (km)
#define XA_LV_SATPOSY    21
// satellite ECI position (Z) (km)
#define XA_LV_SATPOSZ    22
// satellite ECI velocity (X) (km/s)
#define XA_LV_SATVELX    23
// satellite ECI velocity (Y) (km/s)
#define XA_LV_SATVELY    24
// satellite ECI velocity (Z) (km/s)
#define XA_LV_SATVELZ    25
// satellite latitude (deg)
#define XA_LV_SATLAT     26
// satellite longitude (deg)
#define XA_LV_SATLON     27
// satellite height (km)
#define XA_LV_SATHEIGHT  28

// computed U-vector to object (X)
#define XA_LV_UVECX      31
// computed U-vector to object (Y)
#define XA_LV_UVECY      32
// computed U-vector to object (Z)
#define XA_LV_UVECZ      33
// slant range unit vector (X)- vector from the sensor to the satellite
#define XA_LV_RUVECX     34
// slant range unit vector (Y)- vector from the sensor to the satellite
#define XA_LV_RUVECY     35
// slant range unit vector (Z)- vector from the sensor to the satellite
#define XA_LV_RUVECZ     36
// station unit vector (X) - vector directed from the center of the earth to the sensor
#define XA_LV_LVECX      37
// station unit vector (Y) - vector directed from the center of the earth to the sensor
#define XA_LV_LVECY      38
// station unit vector (Z) - vector directed from the center of the earth to the sensor
#define XA_LV_LVECZ      39
// station zenith vector (X)
#define XA_LV_ZVECX      40
// station zenith vector (Y)
#define XA_LV_ZVECY      41
// station zenith vector (Z)
#define XA_LV_ZVECZ      42
// slant range vector (X) (km) - vector from the sensor to the satellite
#define XA_LV_RNGVECX    43
// slant range vector (Y) (km) - vector from the sensor to the satellite
#define XA_LV_RNGVECY    44
// slant range vector (Z) (km) - vector from the sensor to the satellite
#define XA_LV_RNGVECZ    45
// range-rate vector - relative velocity vector (X) (km/s)
#define XA_LV_RRTVECX    46
// range-rate vector - relative velocity vector (Y) (km/s)
#define XA_LV_RRTVECY    47
// range-rate vector - relative velocity vector (Z) (km/s)
#define XA_LV_RRTVECZ    48
// unit vector to sun (X)
#define XA_LV_USUNX      49
// unit vector to sun (Y)
#define XA_LV_USUNY      50
// unit vector to sun (Z)
#define XA_LV_USUNZ      51
// unit vector to moon (X)
#define XA_LV_UMOONX     52
// unit vector to moon (Y)
#define XA_LV_UMOONY     53
// unit vector to moon (Z)
#define XA_LV_UMOONZ     54
// moon/sensor/satellite angle (deg)
#define XA_LV_MOSESA     55
// moon/earth/satellite angle (deg)
#define XA_LV_MOEASA     56
// moon/earth/sensor angle (deg)
#define XA_LV_MOEASE     57
// sun/sensor/satellite angle (deg)
#define XA_LV_SUSESA     58
// sun/earth/satellite angle (deg)
#define XA_LV_SUEASA     59
// sun/earth/sensor angle (deg)
#define XA_LV_SUEASE     60
// solar aspect angle (deg)
#define XA_LV_SOLAA      61
// illumination result
#define XA_LV_VIS        62
// relative velocity (km/s)
#define XA_LV_RELVEL     63
// off-boresight angle (deg) - constant azimuth fan only
#define XA_LV_OBSANGLE   64
// angle to fan (deg) - constant azimuth fan only
#define XA_LV_ANG2FAN    65

// pass azimuth check (0=failed, 1=passed)
#define XA_LV_AZLIM      70
// pass elevation check (0=failed, 1=passed)
#define XA_LV_ELLIM      71
// pass earth in background check (0=failed, 1=passed)
#define XA_LV_EARTHBK    72
// pass earth obstruction check (0=failed, 1=passed)
#define XA_LV_EARTHOB    73
// pass lunar exclusion check (0=failed, 1=passed)
#define XA_LV_LUNEXCL    74
// pass maximum range check (0=failed, 1=passed)
#define XA_LV_MAXRANGE   75
// pass minimum range check (0=failed, 1=passed)
#define XA_LV_MINRANGE   76
// pass penum eclipse check (0=failed, 1=passed)
#define XA_LV_PENECLIP   77
// pass relative velocity check (0=failed, 1=passed)
#define XA_LV_RVELLIM    78
// pass solar aspect angle check (0=failed, 1=passed)
#define XA_LV_SAALIM     79
// pass solar exclusion angle check (0=failed, 1=passed)
#define XA_LV_SOLEXCL    80
// pass umbral eclipse check (0=failed, 1=passed)
#define XA_LV_UMBECLIP   81
// pass visibility check for optical sensor (0=failed, 1=passed)
#define XA_LV_OPTVIS     82

// orbiting sensor EFG position (X) (km)
#define XA_LV_SENPOSE    90
// orbiting sensor EFG position (Y) (km)
#define XA_LV_SENPOSF    91
// orbiting sensor EFG position (Z) (km)
#define XA_LV_SENPOSG    92
// orbiting sensor boresight vector #1 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
#define XA_LV_NBORE1     93
// orbiting sensor boresight vector #2 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
#define XA_LV_NBORE2     94
// orbiting sensor off boresight elevation #1 (deg)
#define XA_LV_OBEL1      95
// orbiting sensor off boresight azimuth #1 (deg)
#define XA_LV_OBAZ1      96
// orbiting sensor off boresight elevation #2 (deg)
#define XA_LV_OBAZ2      97
// orbiting sensor off boresight azimuth #2 (deg)
#define XA_LV_OBEL2      98

#define XA_LV_SIZE      128


// indexes of sensor/satellite data in an array
// Sensor number
#define XA_SENSAT_SENNUM       0
// Satellite number
#define XA_SENSAT_SATNUM       1
// Sensor view type
#define XA_SENSAT_VIEWTYPE     2
// Sensor observation type
#define XA_SENSAT_OBSTYPE      3
// Max number of points per pass
#define XA_SENSAT_PTSPERPAS    4
// Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
#define XA_SENSAT_STEPMODE     5
// Optical visibility flag (old name XA_SENSAT_VISPASSONLY)
#define XA_SENSAT_OPTVISFLAG   6
// Obsolete - should use new name XA_SENSAT_OPTVISFLAG instead
#define XA_SENSAT_VISPASSONLY  6
// Start time in ds50TAI
#define XA_SENSAT_STARTAI      7
// Stop time in ds50TAI
#define XA_SENSAT_STOPTAI      8
// Output interval (min)
#define XA_SENSAT_INTERVAL     9
// Satellite's period (min)
#define XA_SENSAT_PERIOD      10
// Sensor number
#define XA_SENSAT_SENKEY      11

#define XA_SENSAT_SIZE        32


// LAMOD control parameters in input array xa_la_parms that is used in LamodInitSenSat_MT()
// input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
#define XA_LA_PARMS_TIMEFLG       1
// begin time
#define XA_LA_PARMS_STARTTIME     2
// end time
#define XA_LA_PARMS_STOPTIME      3
// Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
#define XA_LA_PARMS_STEPMODE      4
// optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use limits record
#define XA_LA_PARMS_VISFLG        5
// max solar aspect angle (deg) for optical sites
#define XA_LA_PARMS_XMSAA         6

#define XA_LA_PARMS_SIZE         16

// Different sensor location types
// Sensor location is in ECI - specific to LAMOD
#define SENLOC_TYPE_ECI   4

// Sensor location - for use in LamodSenSatDirect_OS() all ground-based sensor types and also orbiting
// location type (see SENLOC_TYPE_? for available types)
#define XA_LOCSEN_LOCTYPE     0
// sensor location ECR/EFG X component (km) or LLH/Lat (deg) / orbiting sensor ECI/X component (km) (SENLOC_TYPE_ECI)
#define XA_LOCSEN_POS1        1
// sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg) / orbiting sensor ECI/Y component (km) (SENLOC_TYPE_ECI)
#define XA_LOCSEN_POS2        2
// sensor location ECR/EFG Z component (km) or LLH/Height (km) / or orbiting sensor ECI/Z component (km) (SENLOC_TYPE_ECI)
#define XA_LOCSEN_POS3        3

// for ground sensor
// astronomical latitude (deg) (+: North, -: South)
#define XA_LOCSEN_ASTROLAT    4
// astronomical longitude (deg) (+: West, -: East)
#define XA_LOCSEN_ASTROLON    5

// for orbiting sensor
// orbiting sensor velocity in ECI/X component (km/s)
#define XA_LOCSEN_VEL1        4
// orbiting sensor velocity in ECI/Y component (km/s)
#define XA_LOCSEN_VEL2        5
// orbiting sensor velocity in ECI/Z component (km/s)
#define XA_LOCSEN_VEL3        6

#define XA_LOCSEN_SIZE       16


// Satellite state data
// satellite ECI position X (km) in TEME of Date
#define XA_PVSAT_POSX      0
// satellite ECI position Y (km) in TEME of Date
#define XA_PVSAT_POSY      1
// satellite ECI position Z (km) in TEME of Date
#define XA_PVSAT_POSZ      2
// satellite ECI velocity X (km/sec) in TEME of Date
#define XA_PVSAT_VELX      3
// satellite ECI velocity Y (km/sec) in TEME of Date
#define XA_PVSAT_VELY      4
// satellite ECI velocity Z (km/sec) in TEME of Date
#define XA_PVSAT_VELZ      5

#define XA_PVSAT_SIZE     6

// ========================= End of auto generated code ==========================
