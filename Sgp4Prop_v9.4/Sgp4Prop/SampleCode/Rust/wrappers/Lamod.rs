// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes Lamod dll for use in the program
   //  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
   pub fn LamodInit(apAddr: i64) -> i32;
   //  Returns information about the current version of Lamod.dll. The information is placed in the string parameter you pass in
   //  The returned string provides information about the version number, build date, and the platform of the Lamod DLL. 
   pub fn LamodGetInfo(infoStr: *const c_char);
   //  Loads Lamod-related parameters (1P/2P/3P cards, and Lamod parameter free format) from an input text file
   //  Returns zero indicating the file has been read successfully. Other values indicate an error.
   pub fn LamodLoadFile(lamodInputFile: *const c_char) -> i32;
   //  Loads Lamod control parameters and all Lamod related data (environment, time, elsets, sensors) from an input text file
   pub fn LamodLoadFileAll(lamodInputFile: *const c_char) -> i32;
   //  Loads a single Lamod-typed card
   pub fn LamodLoadCard(card: *const c_char) -> i32;
   //  Saves any currently loaded Lamod-related settings to a file
   //  The purpose of this function is to save the current Lamod-related settings, usually used in GUI applications, for future use.
   pub fn LamodSaveFile(lamodFile: *const c_char, saveMode: i32, saveForm: i32) -> i32;
   //  Returns number of sensors/satellites entered via 1P/2P cards
   //  See LamodGetSenNums for example.
   pub fn LamodGetNumOfSensSats(numSens: *mut i32, numSats: *mut i32);
   //  Retrieves all of the input sensor numbers that were entered via 1P-card  (column 38-44), 2P-card, or Lamod parameter free format (SENNO=)
   pub fn LamodGetSenNums(senNums: *mut i32);
   //  Retrieves all of the input satellite numbers that were entered via 1P-card (column 40-62), 2P-card, or Lamod parameter free format (SATNO=)
   //  See LamodGetSenNums for example.
   pub fn LamodGetSatNums(satNums: *mut i32);
   //  Builds and returns the Lamod parameter card (1P-Card) from the current Lamod settings
   pub fn LamodGet1pCard(lamod1PCard: *const c_char);
   //  Retrieves all Lamod control parameters with a single function call
   pub fn LamodGet1pAll(timeFlg: *mut i32, startTime: *mut f64, stopTime: *mut f64, interval: *mut f64, prtOpt: *mut i32, punchObs: *mut i32, visFlg: *mut i32, stepMode: *mut i32, schedMode: *const c_char, diagMode: *mut i32, solAspAngle: *mut f64);
   //  Sets all Lamod control parameters with a single function call
   //  The values of <i>visFlg</i> have been changed to match those of sensor limits. <i>VisFlg</i> = 9 now means using limits record value (from V5.4.2 and earlier versions, this used to be <i>visFlg</i> = 0).
   //  
   //  There are cases when the program switches to step mode even though the users have requested culmination mode:
   //  <ul>
   //  <li>When the sensor is an orbiting sensor</li>
   //  <li>When the target satellite orbit has large period (&gt; 960 minutes)</li>
   //  <li>When the last pass's culmination time passes the requested stopTime (culmination time == 0 and setTime == 0)</li>
   //  <li>When a pass has multiple maximum elevations (culmination time == -1.0)</li>
   //  </ul>
   pub fn LamodSet1pAll(timeFlg: i32, startTime: f64, stopTime: f64, interval: f64, prtOpt: i32, punchObs: i32, visFlg: i32, stepMode: i32, schedMode: c_char, diagMode: i32, solAspAngle: f64);
   //  Retrieves the value of a specified Lamod control parameter (1P-card field) 
   //  <br>
   //  Remember to convert <i>valueStr</i> to the correct data type that it represents.
   //  <br>
   //  The table below shows the values for the xf_1P parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td>1  </td><td> Input time format : 0: Minutes since epoch, 1: UTC</td></tr>
   //  <tr><td>2  </td><td> Begin time</td></tr>
   //  <tr><td>3  </td><td> End time</td></tr>
   //  <tr><td>4  </td><td> Ouput interval</td></tr>
   //  <tr><td>5  </td><td> Print options: 0: print look angles, 1: print look angle and initial conditions</td></tr>
   //  <tr><td>6  </td><td> Generate obs from look angles flag</td></tr>
   //  <tr><td>7  </td><td> Compute optical visibility flag: 0: use limits record value, 1: output optically visible passes only,
   //  2: output pass only if solar aspect angle &lt; masx solar aspect angle</td></tr>
   //  <tr><td>8  </td><td> Step mode flag: 0: use culmination mode; 1: use step mode</td></tr>
   //  <tr><td>9  </td><td> Processing mode: 'O': obsched mode; 'P':P ASCHED mode</td></tr>
   //  <tr><td>10 </td><td> Diagnostic mode: 0: none, 1: print sensor/sat position at each look, 2: print pass by pass diagnostics,
   //  3: both 1 and 2</td></tr>
   //  <tr><td>11 </td><td> Max solar aspect for optical sites</td></tr>   
   //  </table>	
   pub fn LamodGet1pField(xf_1P: i32, retVal: *const c_char);
   //  Sets the value of a specified Lamod control parameter (1P-card field)
   //  See LamodGet1pField for description of the xf_1P parameter values.
   pub fn LamodSet1pField(xf_1P: i32, valueStr: *const c_char);
   //  Retrieves the concurrent viewing options read from the input 3P Parameter card
   //  The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
   pub fn LamodGet3pAll(concurrFlg: *mut i32, concurrSens: *mut [i32; 3]);
   //  Sets concurrent viewing options similar to what is entered in the input 3P Parameter card
   //  The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
   pub fn LamodSet3pAll(concurrFlg: i32, concurrSens: *const [i32; 3]);
   //  Returns the full file name of the output obs file that was specified using "OBSOUT = " in the main input file or using the LamodSetObsFileName() function call
   //  The users need to make sure they have turned on the flag to generate obs from look angles. Otherwise, this function will return an empty string to the obsFile.
   pub fn LamodGetObsFileName(obsFile: *const c_char);
   //  Sets the full file name of the output obs file which will be used to store the generated obs data
   //  Another way to set the output obs file name is entering "OBSOUT = obsFileName" in the input file. 
   //  
   //  The users need to make sure they have also turned on the flag to generate obs from look angles.
   pub fn LamodSetObsFileName(obsFile: *const c_char);
   //  Checks to see whether the input satellite will ever be viewable to the input sensor
   //  This function is for the initial visibility check which screens out sensors that can't possibly acquire the satellite. Internally, the LamodInitSenSat() also calls this function to do the screening.
   //  
   //  If the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
   pub fn LamodSenSatVisible(senKey: i64, satKey: i64) -> i32;
   //  Initializes a sensor/satellite pair in preparation for computing look angles
   //  It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
   //  
   //  The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
   //  
   //  Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
   pub fn LamodInitSenSat(senKey: i64, satKey: i64) -> i64;
   //  Initializes a sensor/satellite pair in preparation for computing look angles using its own LAMOD parameters - suitable for multithread application
   //  This function is similar to LamodInitSenSat but allows the user to enter separate LAMOD parameters for each call which is suitable for multithread application
   //  It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
   //  
   //  The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
   //  
   //  Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
   pub fn LamodInitSenSat_MT(xa_la_parms: *const [f64; 16], senKey: i64, satKey: i64) -> i64;
   //  Retrieves all of the data for an initialized sensor/satellite pair with a single function call
   pub fn LamodGetSenSatDataAll(senSatKey: i64, stepMode: *mut i32, optVisFlg: *mut i32, startDs50TAI: *mut f64, stopDs50TAI: *mut f64, interval: *mut f64, period: *mut f64) -> i32;
   //  Retrieves an individual field of data for an initialized sensor/satellite pair
   //  <br>
   //  Remember to convert <i>valueStr</i> to the correct data type that it represents.
   //  <br>
   //  The table below shows the values for the xf_SenSat parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td> 1 </td><td> Step mode</td></tr>
   //  <tr><td> 2 </td><td> Optical visibility flag</td></tr>
   //  <tr><td> 3 </td><td> Begin time in ds50TAI</td></tr>
   //  <tr><td> 4 </td><td> End time in ds50TAI</td></tr>
   //  <tr><td> 5 </td><td> Print interval </td></tr>
   //  <tr><td> 6 </td><td> Satellite's period</td></tr>
   //  </table>
   pub fn LamodGetSenSatDataField(senSatKey: i64, xf_SenSat: i32, retVal: *const c_char) -> i32;
   //  Retrieves all data fields belonging to the sensor/satellite pair via its senSatKey and store them in the passing array xa_senSat
   pub fn LamodSenSatDataToArray(senSatKey: i64, xa_senSat: *mut [f64; 32]) -> i32;
   //  Returns the number of possible passes of the sensor/satellite pair in the requested time span which pass 
   //  the horizontal limit test. This function only applies when the culmination mode was selected
   //  This is an estimated number of passes. Each pass might not return any valid look angles due to the sensor limits settings.
   pub fn LamodGetNumPasses(senSatKey: i64) -> i32;
   //  Returns an array of rise, culmination, and set times of all possible passes of a sensor/satellite pair during the requested time span
   //  See LamodGetNumPasses for example.
   //  If a possible culmination time of the last pass is after the requested stop time, only the rise time is returned. The culmination and set times are set to zeros. Since there is no culmination time in this case, the host program should switch to step mode to compute look angles.
   //  There are cases when multiple maximum elevations are detected in one pass. In these cases, the culmination times will be set to -1.0. The users need to check for this condition and switch to step mode.
   //  For external ephemeris files, if the provided ephemerides don't cover the requested time span, the possible rise and set times will not be available and will be set to -1.0.
   //  Note: For Fence/Fan typed sensors this function returns enter/penetration-cross/exit times in place of rise/culmination/set times
   pub fn LamodGetRiseCulmSetTimes(senSatKey: i64, rcsTimeArr: *mut f64) -> i32;
   //  Computes a single look angle of the sensor/satellite pair at the specified time
   pub fn LamodComputeLookAngle(senSatKey: i64, currDs50TAI: f64, lookCode: *mut i32, xa_look: *mut [f64; 6], senElts: *mut [f64; 9], satElts: *mut [f64; 9]) -> i32;
   //  Computes at once look and view data of the sensor/satellite pair at the specified time
   //  <br>
   //  Note: This function is a thread safe alternative to LamodComputeLookAngle(), LamodGetOrbSenViewdata(), and LamodGetViewDataField()
   pub fn LamodComputeLookView(senSatKey: i64, currDs50TAI: f64, xa_lv: *mut [f64; 128]) -> i32;
   //  Finds exact time when satellite is IN or OUT of sensor's coverage
   //  <br>
   //  Note: The start and end times must have different look values (valid and invalid looks or vice versa)
   pub fn LamodFindExactIOTime(senSatKey: i64, t1Ds50TAI: f64, t2Ds50TAI: f64) -> f64;
   //  Returns viewing and geometric data for orbiting sensors
   //  <br>
   //  Note: This function is not thread safe, please use LamodComputeLookView() instead   
   pub fn LamodGetOrbSenViewdata(senSatKey: i64, uvSun: *mut [f64; 3], uvMoon: *mut [f64; 3], xa_angle: *mut [f64; 5], nBore1: *mut i32, nBore2: *mut i32, xa_offBore: *mut [f64; 4]) -> i32;
   //  Retrieves a single field of look angle viewing data
   //  <br>
   //  See LamodCompRaDec for an example.
   //  <br>
   //  Note: This function is not thread safe, please use LamodComputeLookView() instead    
   //  <br>
   //  When the users pass the <i>retArray</i> to this function, make sure it has the proper size as shown in the <i>retArray</i> size column.
   //  <br>
   //  The <i>retArray</i> Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element.
   //  <br>
   //  The table below shows the values for the xf_View parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td> 1 </td><td> computed U-vector to object</td></tr>
   //  <tr><td> 2 </td><td> range unit vector</td></tr>
   //  <tr><td> 3 </td><td> topocentric L unit vector</td></tr>
   //  <tr><td> 4 </td><td> station zenith vector</td></tr>
   //  <tr><td> 5 </td><td> computed range vector (km)</td></tr>
   //  <tr><td> 6 </td><td> computed range-rate vector/relative velocity vector (er/kem)</td></tr>
   //  <tr><td> 7 </td><td> vector to sun  (km)</td></tr>
   //  <tr><td> 8 </td><td> vector to moon (km)</td></tr>
   //  <tr><td> 9 </td><td> angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect
   //  angle)</td></tr>
   //  <tr><td>10 </td><td> illumination result</td></tr>
   //  <tr><td>11 </td><td> Relative velocity (km/sec)</td></tr>
   //  <tr><td>12 </td><td> sensor position EFG</td></tr>
   //  <tr><td>13 </td><td> limit check flags</td></tr>
   //  <tr><td>14 </td><td> azimuth and elevation rates (deg/sec)</td></tr>
   //  <tr><td>15 </td><td> moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)</td></tr>
   //  </table>	
   //  <br>
   //  The table below shows the values for the limit check flags (xf_View = 13):
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td>  0</td><td> az limits test flag</td></tr>
   //  <tr><td>  1</td><td> el limits test flag</td></tr>
   //  <tr><td>  2</td><td> earth in background flag</td></tr>
   //  <tr><td>  3</td><td> earth obstructed flag</td></tr>
   //  <tr><td>  4</td><td> lunar exclusion angle fl</td></tr>
   //  <tr><td>  5</td><td> max range test flag</td></tr>
   //  <tr><td>  6</td><td> min range test flag</td></tr>
   //  <tr><td>  7</td><td> penumb eclipse test flag</td></tr>
   //  <tr><td>  8</td><td> relative velocity test fl</td></tr>
   //  <tr><td>  9</td><td> solar aspect angle test</td></tr>
   //  <tr><td> 10</td><td> solar exclusion angle fl</td></tr>
   //  <tr><td> 11</td><td> umbral eclipse test flag</td></tr>
   //  </table>	
   pub fn LamodGetViewDataField(senSatKey: i64, xf_View: i32, retVal: *mut f64) -> i32;
   //  Computes right-ascension and declination from the input sensor's range unit vector (also called local horizon vector)
   //  The users need to be careful when -1 &lt; decDeg &lt; 0 because they might easily display it incorrectly (missing the negative sign of its value).
   pub fn LamodCompRaDec(xlPos: *const [f64; 3], rasc: *mut f64, decl: *mut f64, raHr: *mut i32, raMin: *mut i32, raSec: *mut f64, decDeg: *mut i32, decMin: *mut i32, decSec: *mut f64);
   //  Retrieves the formatted observation strings, either in B3 or transmission format, generated from the most recent look angle data
   //  Note: This function is not thread safe, please use LamodGenObsAtTime() instead 
   //  The function returns one-line or two-line formatted obs string depending on the input <i>punchObs</i> and the sensor's observation type.  The users need to check the returned value of <i>numLines</i> to see what type of the output strings they are.
   pub fn LamodGenObs(senSatKey: i64, punchObs: i32, obsClass: c_char, obsLine1: *const c_char, obsLine2: *const c_char, numLines: *mut i32) -> i32;
   //  Generates formatted observation strings, either in B3 or transmission format, from a VALID look angle obtained at the requested time 
   //  Note: This is a thread-safe version of the LamodGenObs
   pub fn LamodGenObsAtTime(senSatKey: i64, currDs50TAI: f64, punchObs: i32, obsClass: c_char, obsLine1: *const c_char, obsLine2: *const c_char, numLines: *mut i32) -> i32;
   //  Removes a sensor/satellite pair from Lamod.dll's set of loaded sensor/satellite pairs
   pub fn LamodRemoveSenSat(senSatKey: i64) -> i32;
   //  Removes all sensor/satellite pairs from Lamod.dll's set of sensor/satellite pairs
   pub fn LamodRemoveAllSenSats() -> i32;
   //  Resets all Lamod-related parameters back to their default values
   //  See LamodRemoveAllSenSats for example.
   pub fn LamodReset();
   //  Computes all look and view data of the input sensor/satellite at the specified time using their input data directly (no need to provide senSatKey)
   //  <br>
   //  Note: This function doesn't check for sensor limits so all limit flags are returned as passed
   //  <br>
   pub fn LamodSenSatDirect_OS(ds50TAI: f64, xa_locSen: *const [f64; 16], xa_pvSat: *const [f64; 6], xa_lv: *mut [f64; 128]);
}
   
   // Indexes of SenSatData fields
   // Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   pub static XF_SENSAT_STEPMODE: i32 = 1;
   // Optical visibility flag (old name XF_SENSAT_VISPASSONLY)
   pub static XF_SENSAT_OPTVISFLAG: i32 = 2;
   // Obsolete - should use new name XF_SENSAT_OPTVISFLAG instead
   pub static XF_SENSAT_VISPASSONLY: i32 = 2;
   // Begin time in ds50TAI
   pub static XF_SENSAT_BEGDS50TAI: i32 = 3;
   // End time in ds50TAI
   pub static XF_SENSAT_ENDDS50TAI: i32 = 4;
   // Print interval
   pub static XF_SENSAT_INTERVAL: i32 = 5;
   // Satellite's period
   pub static XF_SENSAT_PERIOD: i32 = 6;
   
   
   //*******************************************************************************
   // Indexes of lookCode
   // Valid look
   pub static LOOK_VALID: i32 = 0;
   // Failed horizon break test
   pub static LOOK_HTEST: i32 = 1;
   // Failed limit tests
   pub static LOOK_SENLIMS: i32 = 2;
   
   //*******************************************************************************
   
   // Indexes of look angle data output
   // Look time in ds50UTC
   pub static XA_LOOK_DS50UTC: i32 = 0;
   // Look time in minutes since epoch
   pub static XA_LOOK_MSE: i32 = 1;
   // Elevation (deg)
   pub static XA_LOOK_ELEV: i32 = 2;
   // Azimuth (deg)
   pub static XA_LOOK_AZIM: i32 = 3;
   // Range (km) or ? for optical sensor
   pub static XA_LOOK_RNG: i32 = 4;
   // Range rate (km/sec) or ? for optical sensor
   pub static XA_LOOK_RNGRT: i32 = 5;
   pub static XA_LOOK_SIZE: i32 = 6;
   
   //*******************************************************************************
   
   // Indexes of viewing data output
   // computed U-vector to object
   pub static XF_VIEW_UVEC: i32 =  1;
   // range unit vector
   pub static XF_VIEW_RUVEC: i32 =  2;
   // topocentric L unit vector
   pub static XF_VIEW_LVEC: i32 =  3;
   // station zenith vector
   pub static XF_VIEW_ZVEC: i32 =  4;
   // computed range vector (km)
   pub static XF_VIEW_RNGVEC: i32 =  5;
   // computed range-rate vector/relative velocity vector (km/sec)
   pub static XF_VIEW_RRTVEC: i32 =  6;
   // unit vector of sun
   pub static XF_VIEW_SUNVEC: i32 =  7;
   // unit vector of moon
   pub static XF_VIEW_MOONVEC: i32 =  8;
   // angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect angle)
   pub static XF_VIEW_ANGARR: i32 =  9;
   // illumination result
   pub static XF_VIEW_CVIS: i32 = 10;
   // Relative velocity (km/sec)
   pub static XF_VIEW_RELVEL: i32 = 11;
   // sensor position EFG
   pub static XF_VIEW_SENEFG: i32 = 12;
   // limit check flags
   pub static XF_VIEW_LIMFLGS: i32 = 13;
   // azimuth and elevation rates (deg/sec)
   pub static XF_VIEW_AZELRATES: i32 = 14;
   // moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
   pub static XF_VIEW_MOONANGLES: i32 = 15;
   
   
   //*******************************************************************************
   
   // Indexes of angle array
   // moon/sen/sat angle (deg)
   pub static XA_ANGLE_MOONSENSAT: i32 = 0;
   // sun/earth/sat angle (deg)
   pub static XA_ANGLE_SUNEARTHSAT: i32 = 1;
   // sun/earth/sen angle (deg)
   pub static XA_ANGLE_SUNEARTHSEN: i32 = 2;
   // sun/sen/sat angle (deg) - solar exclusion angle
   pub static XA_ANGLE_SUNSENSAT: i32 = 3;
   // earth/sat/sun angle (deg) - solar aspect angle/solar phase angle
   pub static XA_ANGLE_SOLARASPECT: i32 = 4;
   pub static XA_ANGLE_SIZE: i32 = 5;
   
   // Indexes of moon angle array
   // DHN 18Jan13 - Add moon/earth/sat, moon/earth/sen  angles
   // moon/earth/sat angle (deg)
   pub static XA_ANGLE_MOONEARTHSAT: i32 = 0;
   // moon/earth/sen angle (deg)
   pub static XA_ANGLE_MOONEARTHSEN: i32 = 1;
   
   
   //*******************************************************************************
   
   // Indexes of orbiting sensor's off-boresight/clock  array
   // off-boresight angle 1
   pub static XA_OFFBORE_EL1: i32 = 0;
   // off-boresight clock 1
   pub static XA_OFFBORE_AZ1: i32 = 1;
   // off-boresight angle 2
   pub static XA_OFFBORE_EL2: i32 = 2;
   // off-boresight clock 2
   pub static XA_OFFBORE_AZ2: i32 = 3;
   pub static XA_OFFBORE_SIZE: i32 = 4;
   
   //*******************************************************************************
   
   // Indexes of LAMOD 1P-card data
   // Input time format: 0=Minutes since epoch, 1=UTC
   pub static XF_1P_TIMEFRM: i32 = 1;
   // Begin time
   pub static XF_1P_BEGTIME: i32 = 2;
   // End time
   pub static XF_1P_ENDTIME: i32 = 3;
   // Ouput interval
   pub static XF_1P_INTERVAL: i32 = 4;
   // Print options: 0: print look angles, 1: print look angle and initial conditions
   pub static XF_1P_PRTOPT: i32 = 5;
   // Generate obs from look angles flag
   pub static XF_1P_GENOBS: i32 = 6;
   // Compute optical visibility flag: 0: use sen limits,  1: optically visible passes only, 2: output pass only if SAA less than max SAA
   pub static XF_1P_VISFLG: i32 = 7;
   // Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   pub static XF_1P_STEPMODE: i32 = 8;
   // Processing mode: 'O': obsched mode; 'P': P ASCHED mode
   pub static XF_1P_PROCMODE: i32 = 9;
   // Diagnostic mode: 0: none, 1: print sen/sat pos at each look, 2: print pass by pass diagnostics, 3: both 1 and 2
   pub static XF_1P_DIAGNOST: i32 = 10;
   // Max solar aspect for optical sites
   pub static XF_1P_MAXSAA: i32 = 11;
   
   //*******************************************************************************
   
   // Indexes of limit test flags in the returned array
   // az limits/off-boresight (constant azimuth fan) test flag (0=failed, 1=passed)
   pub static XA_LIMFLG_AZLIM: i32 =  0;
   // el limits test flag (0=failed, 1=passed)
   pub static XA_LIMFLG_ELLIM: i32 =  1;
   // earth in background flag (0=failed, 1=passed)
   pub static XA_LIMFLG_EARTHBK: i32 =  2;
   // earth obstructed flag (0=failed, 1=passed)
   pub static XA_LIMFLG_EARTHOB: i32 =  3;
   // lunar exclusion angle flag (0=failed, 1=passed)
   pub static XA_LIMFLG_LUNEXCL: i32 =  4;
   // max range test flag (0=failed, 1=passed)
   pub static XA_LIMFLG_MAXRANGE: i32 =  5;
   // min range test flag (0=failed, 1=passed)
   pub static XA_LIMFLG_MINRANGE: i32 =  6;
   // penumb eclipse test flag (0=failed, 1=passed)
   pub static XA_LIMFLG_PENECLIP: i32 =  7;
   // relative velocity test flag (0=failed, 1=passed)
   pub static XA_LIMFLG_RVELLIM: i32 =  8;
   // solar aspect angle test flag (0=failed, 1=passed)
   pub static XA_LIMFLG_SAALIM: i32 =  9;
   // solar exclusion angle flag (0=failed, 1=passed)
   pub static XA_LIMFLG_SOLEXCL: i32 = 10;
   // umbral eclipse test flag (0=failed, 1=passed)
   pub static XA_LIMFLG_UMBECLIP: i32 = 11;
   pub static XA_LIMFLG_SIZE: i32 = 12;
   
   
   // Generate obs options
   // Don't generate obs
   pub static GENOBS_NONE: i32 =  0;
   // Generate B3 obs
   pub static GENOBS_B3: i32 =  1;
   // Generate TYY obs
   pub static GENOBS_TTY: i32 =  2;
   // Generate SP TASKER V obsType
   pub static GENOBS_SPTASKER: i32 =  3;
   // Generate CSV obs
   pub static GENOBS_CSV: i32 =  4;
   
   
   // indexes of look and view data in an array
   // look code: 0=valid look; 1=Fail horizon break test; 2=Fail sensor's limit tests
   pub static XA_LV_LOOKCODE: i32 =   0;
   // time in ds50UTC when the look angle is computed
   pub static XA_LV_DS50UTC: i32 =   1;
   // time mse when the look angle is computed
   pub static XA_LV_MSE: i32 =   2;
   // elevation (deg)
   pub static XA_LV_ELEV: i32 =   3;
   // azimuth (deg)
   pub static XA_LV_AZIM: i32 =   4;
   // range (km)
   pub static XA_LV_RNG: i32 =   5;
   // range rate (km/s)
   pub static XA_LV_RNGRT: i32 =   6;
   // right ascension (deg)
   pub static XA_LV_RA: i32 =   7;
   // declination (deg)
   pub static XA_LV_DEC: i32 =   8;
   // azimuth rate (deg/s)
   pub static XA_LV_AZRATE: i32 =   9;
   // elevation rate (deg/s)
   pub static XA_LV_ELRATE: i32 =  10;
   
   // sensor ECI position (X) (km)
   pub static XA_LV_SENPOSX: i32 =  11;
   // sensor ECI position (Y) (km)
   pub static XA_LV_SENPOSY: i32 =  12;
   // sensor ECI position (Z) (km)
   pub static XA_LV_SENPOSZ: i32 =  13;
   // sensor ECI velocity (X) (km/s)
   pub static XA_LV_SENVELX: i32 =  14;
   // sensor ECI velocity (Y) (km/s)
   pub static XA_LV_SENVELY: i32 =  15;
   // sensor ECI velocity (Z) (km/s)
   pub static XA_LV_SENVELZ: i32 =  16;
   // sensor latitude (deg)
   pub static XA_LV_SENLAT: i32 =  17;
   // sensor longitude (deg)
   pub static XA_LV_SENLON: i32 =  18;
   // sensor height (km)
   pub static XA_LV_SENHEIGHT: i32 =  19;
   
   // satellite ECI position (X) (km)
   pub static XA_LV_SATPOSX: i32 =  20;
   // satellite ECI position (Y) (km)
   pub static XA_LV_SATPOSY: i32 =  21;
   // satellite ECI position (Z) (km)
   pub static XA_LV_SATPOSZ: i32 =  22;
   // satellite ECI velocity (X) (km/s)
   pub static XA_LV_SATVELX: i32 =  23;
   // satellite ECI velocity (Y) (km/s)
   pub static XA_LV_SATVELY: i32 =  24;
   // satellite ECI velocity (Z) (km/s)
   pub static XA_LV_SATVELZ: i32 =  25;
   // satellite latitude (deg)
   pub static XA_LV_SATLAT: i32 =  26;
   // satellite longitude (deg)
   pub static XA_LV_SATLON: i32 =  27;
   // satellite height (km)
   pub static XA_LV_SATHEIGHT: i32 =  28;
   
   // computed U-vector to object (X)
   pub static XA_LV_UVECX: i32 =  31;
   // computed U-vector to object (Y)
   pub static XA_LV_UVECY: i32 =  32;
   // computed U-vector to object (Z)
   pub static XA_LV_UVECZ: i32 =  33;
   // slant range unit vector (X)- vector from the sensor to the satellite
   pub static XA_LV_RUVECX: i32 =  34;
   // slant range unit vector (Y)- vector from the sensor to the satellite
   pub static XA_LV_RUVECY: i32 =  35;
   // slant range unit vector (Z)- vector from the sensor to the satellite
   pub static XA_LV_RUVECZ: i32 =  36;
   // station unit vector (X) - vector directed from the center of the earth to the sensor
   pub static XA_LV_LVECX: i32 =  37;
   // station unit vector (Y) - vector directed from the center of the earth to the sensor
   pub static XA_LV_LVECY: i32 =  38;
   // station unit vector (Z) - vector directed from the center of the earth to the sensor
   pub static XA_LV_LVECZ: i32 =  39;
   // station zenith vector (X)
   pub static XA_LV_ZVECX: i32 =  40;
   // station zenith vector (Y)
   pub static XA_LV_ZVECY: i32 =  41;
   // station zenith vector (Z)
   pub static XA_LV_ZVECZ: i32 =  42;
   // slant range vector (X) (km) - vector from the sensor to the satellite
   pub static XA_LV_RNGVECX: i32 =  43;
   // slant range vector (Y) (km) - vector from the sensor to the satellite
   pub static XA_LV_RNGVECY: i32 =  44;
   // slant range vector (Z) (km) - vector from the sensor to the satellite
   pub static XA_LV_RNGVECZ: i32 =  45;
   // range-rate vector - relative velocity vector (X) (km/s)
   pub static XA_LV_RRTVECX: i32 =  46;
   // range-rate vector - relative velocity vector (Y) (km/s)
   pub static XA_LV_RRTVECY: i32 =  47;
   // range-rate vector - relative velocity vector (Z) (km/s)
   pub static XA_LV_RRTVECZ: i32 =  48;
   // unit vector to sun (X)
   pub static XA_LV_USUNX: i32 =  49;
   // unit vector to sun (Y)
   pub static XA_LV_USUNY: i32 =  50;
   // unit vector to sun (Z)
   pub static XA_LV_USUNZ: i32 =  51;
   // unit vector to moon (X)
   pub static XA_LV_UMOONX: i32 =  52;
   // unit vector to moon (Y)
   pub static XA_LV_UMOONY: i32 =  53;
   // unit vector to moon (Z)
   pub static XA_LV_UMOONZ: i32 =  54;
   // moon/sensor/satellite angle (deg)
   pub static XA_LV_MOSESA: i32 =  55;
   // moon/earth/satellite angle (deg)
   pub static XA_LV_MOEASA: i32 =  56;
   // moon/earth/sensor angle (deg)
   pub static XA_LV_MOEASE: i32 =  57;
   // sun/sensor/satellite angle (deg)
   pub static XA_LV_SUSESA: i32 =  58;
   // sun/earth/satellite angle (deg)
   pub static XA_LV_SUEASA: i32 =  59;
   // sun/earth/sensor angle (deg)
   pub static XA_LV_SUEASE: i32 =  60;
   // solar aspect angle (deg)
   pub static XA_LV_SOLAA: i32 =  61;
   // illumination result
   pub static XA_LV_VIS: i32 =  62;
   // relative velocity (km/s)
   pub static XA_LV_RELVEL: i32 =  63;
   // off-boresight angle (deg) - constant azimuth fan only
   pub static XA_LV_OBSANGLE: i32 =  64;
   // angle to fan (deg) - constant azimuth fan only
   pub static XA_LV_ANG2FAN: i32 =  65;
   
   // pass azimuth check (0=failed, 1=passed)
   pub static XA_LV_AZLIM: i32 =  70;
   // pass elevation check (0=failed, 1=passed)
   pub static XA_LV_ELLIM: i32 =  71;
   // pass earth in background check (0=failed, 1=passed)
   pub static XA_LV_EARTHBK: i32 =  72;
   // pass earth obstruction check (0=failed, 1=passed)
   pub static XA_LV_EARTHOB: i32 =  73;
   // pass lunar exclusion check (0=failed, 1=passed)
   pub static XA_LV_LUNEXCL: i32 =  74;
   // pass maximum range check (0=failed, 1=passed)
   pub static XA_LV_MAXRANGE: i32 =  75;
   // pass minimum range check (0=failed, 1=passed)
   pub static XA_LV_MINRANGE: i32 =  76;
   // pass penum eclipse check (0=failed, 1=passed)
   pub static XA_LV_PENECLIP: i32 =  77;
   // pass relative velocity check (0=failed, 1=passed)
   pub static XA_LV_RVELLIM: i32 =  78;
   // pass solar aspect angle check (0=failed, 1=passed)
   pub static XA_LV_SAALIM: i32 =  79;
   // pass solar exclusion angle check (0=failed, 1=passed)
   pub static XA_LV_SOLEXCL: i32 =  80;
   // pass umbral eclipse check (0=failed, 1=passed)
   pub static XA_LV_UMBECLIP: i32 =  81;
   // pass visibility check for optical sensor (0=failed, 1=passed)
   pub static XA_LV_OPTVIS: i32 =  82;
   
   // orbiting sensor EFG position (X) (km)
   pub static XA_LV_SENPOSE: i32 =  90;
   // orbiting sensor EFG position (Y) (km)
   pub static XA_LV_SENPOSF: i32 =  91;
   // orbiting sensor EFG position (Z) (km)
   pub static XA_LV_SENPOSG: i32 =  92;
   // orbiting sensor boresight vector #1 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
   pub static XA_LV_NBORE1: i32 =  93;
   // orbiting sensor boresight vector #2 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
   pub static XA_LV_NBORE2: i32 =  94;
   // orbiting sensor off boresight elevation #1 (deg)
   pub static XA_LV_OBEL1: i32 =  95;
   // orbiting sensor off boresight azimuth #1 (deg)
   pub static XA_LV_OBAZ1: i32 =  96;
   // orbiting sensor off boresight elevation #2 (deg)
   pub static XA_LV_OBAZ2: i32 =  97;
   // orbiting sensor off boresight azimuth #2 (deg)
   pub static XA_LV_OBEL2: i32 =  98;
   
   pub static XA_LV_SIZE: i32 = 128;
   
   
   // indexes of sensor/satellite data in an array
   // Sensor number
   pub static XA_SENSAT_SENNUM: i32 =  0;
   // Satellite number
   pub static XA_SENSAT_SATNUM: i32 =  1;
   // Sensor view type
   pub static XA_SENSAT_VIEWTYPE: i32 =  2;
   // Sensor observation type
   pub static XA_SENSAT_OBSTYPE: i32 =  3;
   // Max number of points per pass
   pub static XA_SENSAT_PTSPERPAS: i32 =  4;
   // Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   pub static XA_SENSAT_STEPMODE: i32 =  5;
   // Optical visibility flag (old name XA_SENSAT_VISPASSONLY)
   pub static XA_SENSAT_OPTVISFLAG: i32 =  6;
   // Obsolete - should use new name XA_SENSAT_OPTVISFLAG instead
   pub static XA_SENSAT_VISPASSONLY: i32 =  6;
   // Start time in ds50TAI
   pub static XA_SENSAT_STARTAI: i32 =  7;
   // Stop time in ds50TAI
   pub static XA_SENSAT_STOPTAI: i32 =  8;
   // Output interval (min)
   pub static XA_SENSAT_INTERVAL: i32 =  9;
   // Satellite's period (min)
   pub static XA_SENSAT_PERIOD: i32 = 10;
   // Sensor number
   pub static XA_SENSAT_SENKEY: i32 = 11;
   
   pub static XA_SENSAT_SIZE: i32 = 32;
   
   
   // LAMOD control parameters in input array xa_la_parms that is used in LamodInitSenSat_MT()
   // input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
   pub static XA_LA_PARMS_TIMEFLG: i32 =  1;
   // begin time
   pub static XA_LA_PARMS_STARTTIME: i32 =  2;
   // end time
   pub static XA_LA_PARMS_STOPTIME: i32 =  3;
   // Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   pub static XA_LA_PARMS_STEPMODE: i32 =  4;
   // optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use limits record
   pub static XA_LA_PARMS_VISFLG: i32 =  5;
   // max solar aspect angle (deg) for optical sites
   pub static XA_LA_PARMS_XMSAA: i32 =  6;
   
   pub static XA_LA_PARMS_SIZE: i32 = 16;
   
   // Different sensor location types
   // Sensor location is in ECI - specific to LAMOD
   pub static SENLOC_TYPE_ECI: i32 =  4;
   
   // Sensor location - for use in LamodSenSatDirect_OS() all ground-based sensor types and also orbiting
   // location type (see SENLOC_TYPE_? for available types)
   pub static XA_LOCSEN_LOCTYPE: i32 =  0;
   // sensor location ECR/EFG X component (km) or LLH/Lat (deg) / orbiting sensor ECI/X component (km) (SENLOC_TYPE_ECI)
   pub static XA_LOCSEN_POS1: i32 =  1;
   // sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg) / orbiting sensor ECI/Y component (km) (SENLOC_TYPE_ECI)
   pub static XA_LOCSEN_POS2: i32 =  2;
   // sensor location ECR/EFG Z component (km) or LLH/Height (km) / or orbiting sensor ECI/Z component (km) (SENLOC_TYPE_ECI)
   pub static XA_LOCSEN_POS3: i32 =  3;
   
   // for ground sensor
   // astronomical latitude (deg) (+: North, -: South)
   pub static XA_LOCSEN_ASTROLAT: i32 =  4;
   // astronomical longitude (deg) (+: West, -: East)
   pub static XA_LOCSEN_ASTROLON: i32 =  5;
   
   // for orbiting sensor
   // orbiting sensor velocity in ECI/X component (km/s)
   pub static XA_LOCSEN_VEL1: i32 =  4;
   // orbiting sensor velocity in ECI/Y component (km/s)
   pub static XA_LOCSEN_VEL2: i32 =  5;
   // orbiting sensor velocity in ECI/Z component (km/s)
   pub static XA_LOCSEN_VEL3: i32 =  6;
   
   pub static XA_LOCSEN_SIZE: i32 = 16;
   
   
   // Satellite state data
   // satellite ECI position X (km) in TEME of Date
   pub static XA_PVSAT_POSX: i32 =  0;
   // satellite ECI position Y (km) in TEME of Date
   pub static XA_PVSAT_POSY: i32 =  1;
   // satellite ECI position Z (km) in TEME of Date
   pub static XA_PVSAT_POSZ: i32 =  2;
   // satellite ECI velocity X (km/sec) in TEME of Date
   pub static XA_PVSAT_VELX: i32 =  3;
   // satellite ECI velocity Y (km/sec) in TEME of Date
   pub static XA_PVSAT_VELY: i32 =  4;
   // satellite ECI velocity Z (km/sec) in TEME of Date
   pub static XA_PVSAT_VELZ: i32 =  5;
   
   pub static XA_PVSAT_SIZE: i32 = 6;
   
// ========================= End of auto generated code ==========================
