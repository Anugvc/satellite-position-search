// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes SpProp DLL for use in the program
   //  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL. 
   pub fn SpInit(apAddr: i64) -> i32;
   //  Returns information about the current version of SpProp DLL. The information is placed in the string parameter you pass in
   //  The returned string provides information about the version number, build date, and the platform of the Sp DLL. 
   pub fn SpGetInfo(infoStr: *const c_char);
   //  Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) from a text file
   pub fn SpLoadFile(spInputFile: *const c_char) -> i32;
   //  Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) and SP elsets from a text file
   pub fn SpLoadFileAll(spInputFile: *const c_char) -> i32;
   //  Saves currently loaded SP-related parameters (SP application controls, prediction controls, integration controls) to a file
   //  The purpose of this function is to save the current SP-related settings, usually used in GUI applications, for future use.
   pub fn SpSaveFile(spFile: *const c_char, saveMode: i32, saveForm: i32) -> i32;
   //  Initializes an SP satellite from an SP TLE, SPVEC, or VCM
   //  Internally, when this function is called, the SpProp DLL will look into the right binary tree, based on the vector type extracted from the satKey, and search for the satKey. If found, the SpProp DLL will use the associated SP data to create an SP object for this satellite in its own binary tree. Subsequent calls to propagate this satellite will use the data in the SP object to compute the satellite's new state.
   //  
   //  The users need to call this routine only once for each satellite they want to propagate or every time the satellite data, from which it was initialized, is changed. The call needs to be placed before any calls to the SP propagate routines (SpPropMse, SpPropDs50UTC...).
   pub fn SpInitSat(satKey: i64) -> i32;
   //  Removes a satellite, represented by the satKey, from the set of currently loaded satellites
   //  Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
   //  If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   pub fn SpRemoveSat(satKey: i64) -> i32;
   //  Removes all currently loaded satellites from memory
   //  Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
   //  The function returns zero if all the satellites were removed successfully from the SpProp DLL's binary tree.
   pub fn SpRemoveAllSats() -> i32;
   //  Returns the number of SP objects currently created. 
   pub fn SpGetCount() -> i32;
   //  Removes all SP-related data from memory (Geo models, Flux records, JPL, DCA, etc.)
   pub fn SpReset();
   //  Retrieves the value of an SP application control parameter
   //  <br>
   //  The table below shows the values for the xf_SpApp parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td>1 </td><td>Geopotential directory path</td></tr>
   //  <tr><td>2 </td><td>Buffer size</td></tr>
   //  <tr><td>3 </td><td>Run mode</td></tr>
   //  <tr><td>4 </td><td>Save partials data</td></tr>
   //  <tr><td>5 </td><td>Specter compatibility mode</td></tr>
   //  <tr><td>6 </td><td>Consider parameter</td></tr>
   //  <tr><td>7 </td><td>Decay altitude</td></tr>
   //  <tr><td>8 </td><td>Output coordinate system</td></tr>
   //  <tr><td>9 </td><td>Additional VCM options</td></tr>
   //  </table>
   pub fn SpGetApCtrl(xf_SpApp: i32, valueStr: *const c_char);
   //  Retrieves all SP application control parameters with a single function call
   pub fn SpGetApCtrlAll(geoDir: *const c_char, bufSize: *mut i32, runMode: *mut i32, savePartials: *mut i32, isSpectr: *mut i32, consider: *mut f64, decayAlt: *mut i32, outCoord: *mut i32);
   //  Sets an SP application control parameter
   //  See SpGetApCtrl for a list of the values for the xf_SpApp parameter.
   pub fn SpSetApCtrl(xf_SpApp: i32, valueStr: *const c_char);
   //  Sets all SP application control parameters with a single function call
   pub fn SpSetApCtrlAll(geoDir: *const c_char, bufSize: i32, runMode: i32, savePartials: i32, isSpectr: i32, consider: f64, decayAlt: i32, outCoord: i32);
   //  Retrieves the value of a numerical integration control parameter
   //  <br>
   //  The table below shows the values for xf_4P parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td>1  </td><td> Geopotential model to use</td></tr>
   //  <tr><td>2  </td><td> Earth gravity pertubations flag</td></tr>
   //  <tr><td>3  </td><td> Drag pertubations flag </td></tr>
   //  <tr><td>4  </td><td> Radiation pressure pertubations flag</td></tr>
   //  <tr><td>5  </td><td> Lunar/Solar pertubations flag</td></tr>
   //  <tr><td>6  </td><td> F10 value</td></tr>
   //  <tr><td>7  </td><td> F10 average value</td></tr>
   //  <tr><td>8  </td><td> Ap value</td></tr>
   //  <tr><td>9  </td><td> Geopotential truncation order/degree/zonals</td></tr>
   //  <tr><td>10 </td><td> Corrector step convergence criterion; exponent of 1/10; default = 10</td></tr>
   //  <tr><td>11 </td><td> Outgassing pertubations flag</td></tr>
   //  <tr><td>12 </td><td> Solid earth ocean tide pertubations flag</td></tr>
   //  <tr><td>13 </td><td> Input vector coordinate system</td></tr>
   //  <tr><td>14 </td><td> Nutation terms</td></tr>
   //  <tr><td>15 </td><td> Recompute pertubations at each corrector step</td></tr>
   //  <tr><td>16 </td><td> Variable of intergration control</td></tr>
   //  <tr><td>17 </td><td> Variable step size control</td></tr>
   //  <tr><td>18 </td><td> Initial step size</td></tr>
   //  <tr><td>21 </td><td> DCA file name</td></tr>
   //  <tr><td>22 </td><td> Solar flux file name</td></tr>
   //  <tr><td>23 </td><td> Geopotential file name</td></tr>
   //  <tr><td>24 </td><td> JPL file name</td></tr>
   //  <tr><td>25 </td><td> JPL start time</td></tr>
   //  <tr><td>26 </td><td> JPL stop time</td></tr>
   //  </table>
   pub fn SpGet4P(xf_4P: i32, valueStr: *const c_char);
   //  Sets the value of a numerical integration control parameter
   //  See SpGet4P for a list of the values for the xf_4P parameter.
   //  For flux, dca, and jpl file settings, the actual file loading happens when the first SpSatInit() is called. 
   //  If the user needs to load these files instantly, please call the SpLoadFile() instead
   pub fn SpSet4P(xf_4P: i32, valueStr: *const c_char);
   //  Retrieves prediction control parameters
   pub fn SpGetPredCtrl(startFrEpoch: *mut i32, stopFrEpoch: *mut i32, startTime: *mut f64, stopTime: *mut f64, interval: *mut f64);
   //  Sets prediction control parameters
   pub fn SpSetPredCtrl(startFrEpoch: i32, stopFrEpoch: i32, startTime: f64, stopTime: f64, interval: f64);
   //  Retrieves the value of a field of an SP satellite
   //  <br>
   //  The table below shows the values for the xf_SpSat parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td>1 </td><td> Satellite number I5</td></tr>
   //  <tr><td>2 </td><td> Satellite's epoch time in days since 1950, UTC </td></tr>
   //  <tr><td>3 </td><td> Satellite's epoch time in days since 1950, TAI</td></tr>
   //  <tr><td>4 </td><td> Mu value </td></tr>
   //  <tr><td>5 </td><td> Covariance Matrix flag</td></tr>
   //  <tr><td>6 </td><td> Integration mode</td></tr>
   //  <tr><td>7 </td><td> Nutation terms</td></tr>
   //  <tr><td>8 </td><td> Specter compatibility mode</td></tr>
   //  </table>
   pub fn SpGetSatData(satKey: i64, xf_SpSat: i32, valueStr: *const c_char) -> i32;
   //  Retrieves all fields of an SP satellite with a single function call
   pub fn SpGetSatDataAll(satKey: i64, satNum: *mut i32, epochDs50UTC: *mut f64, epochDs50TAI: *mut f64, mu: *mut f64, hasCovMtx: *mut i32, integMode: *mut i32, nTerms: *mut i32, isSpectr: *mut i32) -> i32;
   //  Propagates a satellite, represented by the satKey, to the time expressed in minutes since the 
   //  satellite's epoch time
   pub fn SpPropMse(satKey: i64, mse: f64, xa_timeTypes: *mut [f64; 5], revNum: *mut i32, posJ2K: *mut [f64; 3], velJ2K: *mut [f64; 3]) -> i32;
   //  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   pub fn SpPropDs50UTC(satKey: i64, ds50UTC: f64, xa_timeTypes: *mut [f64; 5], revNum: *mut i32, posJ2K: *mut [f64; 3], velJ2K: *mut [f64; 3]) -> i32;
   //  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   //  It only returns the latitude, longitude, and height at that time in coordinate system of Date
   //  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   //  
   //  This function is built especially for application that plots ground trace.
   pub fn SpPropDs50UtcLLH(satKey: i64, ds50UTC: f64, llh: *mut [f64; 3]) -> i32;
   //  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   //  It only returns the satellite's ECI position in TEME of DATE
   //  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   //  
   //  This function is built especially for application that plots satellites' positions in 3D.
   pub fn SpPropDs50UtcPos(satKey: i64, ds50UTC: f64, pos: *mut [f64; 3]) -> i32;
   //  Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   //  <br>
   //  All propagation data is returned by this function.
   pub fn SpPropAll(satKey: i64, timeType: i32, timeIn: f64, covType: i32, xa_spOut: *mut [f64; 128]) -> i32;
   //  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   //  It only returns the position and velocity in TEME of Date
   pub fn SpGetStateDs50UTC(satKey: i64, ds50UTC: f64, posDate: *mut [f64; 3], velDate: *mut [f64; 3]) -> i32;
   //  Reepochs the state of an existing SP object associated with the satKey. 
   //  Proper initialization is handled internally so no need to call SpSatInit() afterward 
   pub fn SpSetStateDs50UTC(satKey: i64, ds50UTC: f64, posDate: *const [f64; 3], velDate: *const [f64; 3]) -> i32;
   //  Updates an SP object associated with the satKey with the new input data stored in setDataArr. 
   //  Then propagates the updated SP object to the requested time propTimeDs50UTC. 
   //  Resulting propagated data will be stored in propDataArr.
   pub fn SpSetAndProp(satKey: i64, setDataArr: *const [f64; 128], propTimeDs50UTC: f64, propDataArr: *mut [f64; 128]) -> i32;
   //  This function is reserved for future use. The purpose is to return propagator output data based on user special requests that have not yet been determined
   //  Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
   pub fn SpGetPropOut(satKey: i64, index: i32, destArr: *mut f64) -> i32;
   //  Returns the covariance matrix of a satellite
   //  Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
   pub fn SpGetCovMtx(satKey: i64, covType: i32, covMtx: *mut [[f64; 6]; 6]) -> i32;
   //  Computes the covariance sigma from the input covariance matrix
   pub fn SpCompCovSigma(covMtx: *const [[f64; 6]; 6], covSigma: *mut [f64; 6]);
   //  Sets all numerical integration control parameters with a single function call
   pub fn SpSet4pAll(geoIdx: i32, bulgePert: i32, dragPert: i32, radPresPert: i32, lunSolPert: i32, f10: i32, f10Avg: i32, ap: i32, trunc: i32, incr: i32, ogPert: i32, tidePert: i32, inCoord: i32, nTerms: i32, reEval: i32, integStepMode: i32, stepSizeMethod: i32, initStepSize: f64, dcaFile: *const c_char, fluxFile: *const c_char, geoFile: *const c_char, jplFile: *const c_char, jplStart: *const c_char, jplStop: *const c_char);
   //  Retrieves all numerical integration control parameters with a single function call
   pub fn SpGet4pAll(geoIdx: *mut i32, bulgePert: *mut i32, dragPert: *mut i32, radPresPert: *mut i32, lunSolPert: *mut i32, f10: *mut i32, f10Avg: *mut i32, ap: *mut i32, trunc: *mut i32, incr: *mut i32, ogPert: *mut i32, tidePert: *mut i32, inCoord: *mut i32, nTerms: *mut i32, reEval: *mut i32, integStepMode: *mut i32, stepSizeMethod: *mut i32, initStepSize: *mut f64, dcaFile: *const c_char, fluxFile: *const c_char, geoFile: *const c_char, jplFile: *const c_char, jplStart: *const c_char, jplStop: *const c_char);
   //  Read the integration control settings from a 4P-Card
   pub fn SpSet4PCard(card4P: *const c_char) -> i32;
   //  Builds and returns the integration control card (4P-Card) from the current settings
   pub fn SpGet4PCard(card4P: *const c_char);
   //  Adds one solar flux record to memory. This API can be used to avoid SpLoadFile's file I/O      
   pub fn SpAddFluxRec(refDs50UTC: f64, f10: f64, f10Avg: f64, ap: *const [f64; 8]) -> i32;
   //  Returns the times, in days since 1950 UTC, of ephemeris points stored in SP buffer that meet the requirement as specified in the minStepSize
   //  This function is used to retrieve times in which SP propagator stored satellite's state vectors in memory (natural integration step size).
   //  An error will occur if the actualEphPts reaches the maxEphPts. In this case, the function will return all ephemereris times up to the time when that maxEphPts is reached.
   pub fn SpGetEphemTimes(satKey: i64, maxEphPts: i32, startDs50UTC: f64, stopDs50UTC: f64, minStepSize: f64, actualEphPts: *mut i32, ds50UTCArr: *mut f64) -> i32;
   //  Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
   //  Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   //  that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   pub fn SpGenEphems(satKey: i64, startDs50UTC: f64, stopDs50UTC: f64, stepSize: f64, sp_ephem: i32, arrSize: i32, ephemArr: *mut f64, genEphemPts: *mut i32) -> i32;
   //  This function is similar to SpGenEphems but also returns covariance matrix data
   //  Notes: Make sure to turn on the "save partials" flag so that covariance matrix data can be generated
   pub fn SpGenEphemsCov(satKey: i64, startDs50UTC: f64, stopDs50UTC: f64, stepSize: f64, sp_ephem: i32, covType: i32, arrSize: i32, ephemArr: *mut f64, genEphemPts: *mut i32) -> i32;
   //  Generates ephemerides for the input vcm (in string format) for the specified time span and step size
   //  Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   //  that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   pub fn SpGenEphemsVcm_OS(vcmString: *const c_char, startDs50UTC: f64, stopDs50UTC: f64, stepSize: f64, sp_ephem: i32, arrSize: i32, ephemArr: *mut f64, genEphemPts: *mut i32) -> i32;
   //  This function is similar to SpGenEphemsVcm_OS but also returns covariance matrix data
   pub fn SpGenEphemsVcmCov_OS(vcmString: *const c_char, startDs50UTC: f64, stopDs50UTC: f64, stepSize: f64, sp_ephem: i32, covType: i32, arrSize: i32, ephemArr: *mut f64, genEphemPts: *mut i32) -> i32;
   //  Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
   pub fn SpPropAllSats(satKeys: *const i64, numOfSats: i32, ds50UTC: f64, ephemArr: *mut f64) -> i32;
   //  Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   //  <br>
   //  All propagation data is returned by this function.
   pub fn SpPropAllExt(satKey: i64, timeType: i32, timeIn: f64, spCoord: i32, xf_CovMtx: i32, stmType: i32, xa_spExt: *mut [f64; 128]) -> i32;
}
   
   // VCM additional options
   // use VCM's own data
   pub static VCMOPT_USEOWN: i32 = 0;
   // force VCM to use global solar flux and timing constants data
   pub static VCMOPT_USEGLOBAL: i32 = 1;
   
   // Run Modes
   // Perfromance priority. This mode allows the buffer of integration points to extend freely
   pub static IDX_RUNMODE_PERF: i32 = 0;
   // Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
   pub static IDX_RUNMODE_MEM: i32 = 1;
   
   //*******************************************************************************
   
   // Partials Saving Modes
   // Save partials in the buffer
   pub static IDX_PARTIALS_SAVE: i32 = 1;
   // Don't save partials in the buffer
   pub static IDX_PARTIALS_DONT: i32 = 0;
   
   // Indexes of different covariance matrices
   // UVW convariance matrix - TEME of DATE
   pub static XF_COVMTX_UVW_DATE: i32 =  1;
   // Cartesian covariance matrix - TEME of DATE
   pub static XF_COVMTX_XYZ_DATE: i32 =  2;
   // Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
   pub static XF_COVMTX_EQNX_DATE: i32 =  3;
   // UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
   pub static XF_COVMTX_UVW_J2K: i32 = 11;
   // Cartesian covariance matrix - MEME of J2K
   pub static XF_COVMTX_XYZ_J2K: i32 = 12;
   // Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
   pub static XF_COVMTX_EQNX_J2K: i32 = 13;
   //*******************************************************************************
   
   // Indexes of Lunar/Solar and Planets perturbation modes
   // Lunar/Solar perturbation off
   pub static LSPERT_NONE: i32 = 0;
   // Lunar/Solar perturbation on (using Analytic mode)
   pub static LSPERT_ANALYTIC: i32 = 1;
   // Lunar/Solar perturbation using JPL ephemeris file
   pub static LSPERT_JPL: i32 = 2;
   // Lunar/Solar + All planets perturbation using JPL ephemeris file
   pub static LSPERT_ALL: i32 = 3;
   // Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets)
   pub static LSPERT_BIG: i32 = 4;
   // Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets)
   pub static LSPERT_MED: i32 = 5;
   // Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
   pub static LSPERT_SMA: i32 = 6;
   
   //*******************************************************************************
   
   // State Transition Matrix Types
   // UVW state transition matrix
   pub static STMTYPE_UVW: i32 = 1;
   // Cartesian state transition matrix
   pub static STMTYPE_XYZ: i32 = 2;
   // Equinoctial state transition matrix
   pub static STMTYPE_EQNX: i32 = 3;
   
   // Different output coordinate systems options for pos/vel/acc
   // Output coordinate systems in TEME of Date
   pub static SPCOORD_ECI: i32 = 1;
   // Output coordinate systems in MEME of J2K
   pub static SPCOORD_J2K: i32 = 2;
   
   // Different drag perturbation models
   // Jacchia 64 model
   pub static DRGMDL_JAC64: i32 =  1;
   // Jacchia 70 model
   pub static DRGMDL_JAC70: i32 =  2;
   // Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
   pub static DRGMDL_DCA1: i32 =  3;
   // JBH09 model
   pub static DRGMDL_JBH09: i32 = 40;
   // JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2)
   pub static DRGMDL_JBHDCA2: i32 = 41;
   
   // Indexes of SP 4P card fields
   // Geopotential model to use
   pub static XF_4P_GEOIDX: i32 = 1;
   // Earth gravity pertubations flag
   pub static XF_4P_BULGEFLG: i32 = 2;
   // Drag pertubations flag
   pub static XF_4P_DRAGFLG: i32 = 3;
   // Radiation pressure pertubations flag
   pub static XF_4P_RADFLG: i32 = 4;
   // Lunar/Solar pertubations flag
   pub static XF_4P_LUNSOL: i32 = 5;
   // F10 value
   pub static XF_4P_F10: i32 = 6;
   // F10 average value
   pub static XF_4P_F10AVG: i32 = 7;
   // Ap value
   pub static XF_4P_AP: i32 = 8;
   // Geopotential truncation order/degree/zonals
   pub static XF_4P_TRUNC: i32 = 9;
   // Corrector step convergence criterion; exponent of 1/10; default = 10
   pub static XF_4P_CONVERG: i32 = 10;
   // Outgassing pertubations flag
   pub static XF_4P_OGFLG: i32 = 11;
   // Solid earth and ocean tide pertubations flag
   pub static XF_4P_TIDESFLG: i32 = 12;
   // Input vector coordinate system
   pub static XF_4P_INCOORD: i32 = 13;
   // Nutation terms
   pub static XF_4P_NTERMS: i32 = 14;
   // Recompute pertubations at each corrector step
   pub static XF_4P_REEVAL: i32 = 15;
   // Variable of intergration control
   pub static XF_4P_INTEGCTRL: i32 = 16;
   // Variable step size control
   pub static XF_4P_VARSTEP: i32 = 17;
   // Initial step size
   pub static XF_4P_INITSTEP: i32 = 18;
   
   // DCA file name
   pub static XF_4P_DCAFILE: i32 = 21;
   // Solar flux file name
   pub static XF_4P_FLUXFILE: i32 = 22;
   // Geopotential file name
   pub static XF_4P_GEOFILE: i32 = 23;
   // JPL file name
   pub static XF_4P_JPLFILE: i32 = 24;
   // JPL start time
   pub static XF_4P_JPLSTART: i32 = 25;
   // JPL stop time
   pub static XF_4P_JPLSTOP: i32 = 26;
   
   //XF_4P_PLANETS  = 27, &    // Sets perturbations from all planets to on
   //XF_4P_MERCURY  = 28, &    // Sets perturbation from Mercury to on
   //XF_4P_VENUS    = 29, &    // Sets perturbation from Venus to on
   //XF_4P_MARS     = 30, &    // Sets perturbation from Mars to on
   //XF_4P_JUPITER  = 31, &    // Sets perturbation from Jupiter to on
   //XF_4P_SATURN   = 32, &    // Sets perturbation from Saturn to on
   //XF_4P_URANUS   = 33, &    // Sets perturbation from Uranus to on
   //XF_4P_NEPTUNE  = 34, &    // Sets perturbation from Neptune to on
   //XF_4P_PLUTO    = 35;      // Sets perturbation from Pluto to on
   
   //*******************************************************************************
   
   // Indexes of SP application control (preference) parameters
   // Geopotential directory path
   pub static XF_SPAPP_GEODIR: i32 = 1;
   // Buffer size
   pub static XF_SPAPP_BUFSIZE: i32 = 2;
   // Run mode
   pub static XF_SPAPP_RUNMODE: i32 = 3;
   // Save partials data
   pub static XF_SPAPP_SAVEPART: i32 = 4;
   // Specter compatibility mode
   pub static XF_SPAPP_SPECTR: i32 = 5;
   // Consider parameter
   pub static XF_SPAPP_CONSIDER: i32 = 6;
   // Decay altitude
   pub static XF_SPAPP_DECAYALT: i32 = 7;
   // Output coordinate system
   pub static XF_SPAPP_OUTCOORD: i32 = 8;
   // VCM additional options
   pub static XF_SPAPP_VCMOPT: i32 = 9;
   
   //*******************************************************************************
   
   // Indexes of data fields of an initialized SP satellite
   // Satellite number I5
   pub static XF_SPSAT_SATNUM: i32 = 1;
   // Satellite's epoch time in days since 1950, UTC
   pub static XF_SPSAT_DS50UTC: i32 = 2;
   // Satellite's epoch time in days since 1950, TAI
   pub static XF_SPSAT_DS50TAI: i32 = 3;
   // Mu value
   pub static XF_SPSAT_MU: i32 = 4;
   // Covariance Matrix flag
   pub static XF_SPSAT_HASCOV: i32 = 5;
   // Integration mode
   pub static XF_SPSAT_INTMODE: i32 = 6;
   // Nutation terms
   pub static XF_SPSAT_NTERMS: i32 = 7;
   // Specter compatibility mode
   pub static XF_SPSAT_SPECTR: i32 = 8;
   
   //*******************************************************************************
   
   //// Indexes of Planetary Control
   //   XAI_PLANET_MERCURY = 1, & // 0 = off, 1 = on
   //   XAI_PLANET_VENUS   = 2, & // 0 = off, 1 = on
   //   XAI_PLANET_EARTH   = 3, & // Not used
   //   XAI_PLANET_MARS    = 4, & // 0 = off, 1 = on
   //   XAI_PLANET_JUPITER = 5, & // 0 = off, 1 = on
   //   XAI_PLANET_SATRUN  = 6, & // 0 = off, 1 = on
   //   XAI_PLANET_URANUS  = 7, & // 0 = off, 1 = on
   //   XAI_PLANET_NEPTUNE = 8, & // 0 = off, 1 = on
   //   XAI_PLANET_PLUTO   = 9, & // 0 = off, 1 = on
   //   XAI_PLANET_SIZE    = 9;   // Size of array
   //
   ////*******************************************************************************
   
   // Different time types for passing to SpPropAll
   // propagation time is in minutes since epoch
   pub static SP_TIMETYPE_MSE: i32 = 0;
   // propagation time is in days since 1950, UTC
   pub static SP_TIMETYPE_DS50UTC: i32 = 1;
   
   
   // Sp propagated data
   // Propagation time in days since 1950, UTC
   pub static XA_SPOUT_UTC: i32 =  0;
   // Propagation time in minutes since the satellite's epoch time
   pub static XA_SPOUT_MSE: i32 =  1;
   // Propagation time in days since 1950, UT1
   pub static XA_SPOUT_UT1: i32 =  2;
   // Propagation time in days since 1950, TAI
   pub static XA_SPOUT_TAI: i32 =  3;
   // Propagation time in days since 1950, ET
   pub static XA_SPOUT_ET: i32 =  4;
   // Revolution number
   pub static XA_SPOUT_REVNUM: i32 =  5;
   // Number of nutation terms
   pub static XA_SPOUT_NTERMS: i32 =  6;
   // Spectr compatible mode (0=not compatible, 1=compatible)
   pub static XA_SPOUT_ISSPECTR: i32 =  7;
   // Has input covariance matrix (0=no, 1=yes)
   pub static XA_SPOUT_HASCOVMTX: i32 =  8;
   
   // J2K position X (km)
   pub static XA_SPOUT_J2KPOSX: i32 = 10;
   // J2K position Y (km)
   pub static XA_SPOUT_J2KPOSY: i32 = 11;
   // J2K position Z (km)
   pub static XA_SPOUT_J2KPOSZ: i32 = 12;
   // J2K velocity X (km/s)
   pub static XA_SPOUT_J2KVELX: i32 = 13;
   // J2K velocity Y (km/s)
   pub static XA_SPOUT_J2KVELY: i32 = 14;
   // J2K velocity Z (km/s)
   pub static XA_SPOUT_J2KVELZ: i32 = 15;
   // ECI position X (km)
   pub static XA_SPOUT_ECIPOSX: i32 = 16;
   // ECI position Y (km)
   pub static XA_SPOUT_ECIPOSY: i32 = 17;
   // ECI position Z (km)
   pub static XA_SPOUT_ECIPOSZ: i32 = 18;
   // ECI velocity X (km/s)
   pub static XA_SPOUT_ECIVELX: i32 = 19;
   // ECI velocity Y (km/s)
   pub static XA_SPOUT_ECIVELY: i32 = 20;
   // ECI velocity Z (km/s)
   pub static XA_SPOUT_ECIVELZ: i32 = 21;
   // Geodetic latitude (deg)
   pub static XA_SPOUT_LAT: i32 = 22;
   // Geodetic longitude (deg)
   pub static XA_SPOUT_LON: i32 = 23;
   // Height above geoid (km)
   pub static XA_SPOUT_HEIGHT: i32 = 24;
   
   // Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   pub static XA_SPOUT_COVTYPE: i32 = 30;
   // 6 by 6 covariance matrix (31-66)
   pub static XA_SPOUT_COVMTX: i32 = 31;
   
   // J2K acceleration X (km/s^2)
   pub static XA_SPOUT_J2KACCX: i32 = 70;
   // J2K acceleration Y (km/s^2)
   pub static XA_SPOUT_J2KACCY: i32 = 71;
   // J2K acceleration Z (km/s^2)
   pub static XA_SPOUT_J2KACCZ: i32 = 72;
   // ECI acceleration X (km/s^2)
   pub static XA_SPOUT_ECIACCX: i32 = 73;
   // ECI acceleration Y (km/s^2)
   pub static XA_SPOUT_ECIACCY: i32 = 74;
   // ECI acceleration Z (km/s^2)
   pub static XA_SPOUT_ECIACCZ: i32 = 75;
   
   pub static XA_SPOUT_SIZE: i32 = 128;
   
   // Sp extended propagation data
   // Propagation time in days since 1950, UTC
   pub static XA_SPEXT_UTC: i32 =  0;
   // Propagation time in minutes since the satellite's epoch time
   pub static XA_SPEXT_MSE: i32 =  1;
   // Propagation time in days since 1950, UT1
   pub static XA_SPEXT_UT1: i32 =  2;
   // Propagation time in days since 1950, TAI
   pub static XA_SPEXT_TAI: i32 =  3;
   // Propagation time in days since 1950, ET
   pub static XA_SPEXT_ET: i32 =  4;
   // Revolution number
   pub static XA_SPEXT_REVNUM: i32 =  5;
   // Number of nutation terms
   pub static XA_SPEXT_NTERMS: i32 =  6;
   // Spectr compatible mode (0=not compatible, 1=compatible)
   pub static XA_SPEXT_ISSPECTR: i32 =  7;
   // Has input covariance matrix (0=no, 1=yes)
   pub static XA_SPEXT_HASCOVMTX: i32 =  8;
   
   // Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
   pub static XA_SPEXT_COORD: i32 = 10;
   // position X (km)
   pub static XA_SPEXT_POSX: i32 = 11;
   // position Y (km)
   pub static XA_SPEXT_POSY: i32 = 12;
   // position Z (km)
   pub static XA_SPEXT_POSZ: i32 = 13;
   // velocity X (km/s)
   pub static XA_SPEXT_VELX: i32 = 14;
   // velocity Y (km/s)
   pub static XA_SPEXT_VELY: i32 = 15;
   // velocity Z (km/s)
   pub static XA_SPEXT_VELZ: i32 = 16;
   // acceleration X (km/s^2)
   pub static XA_SPEXT_ACCX: i32 = 17;
   // acceleration Y (km/s^2)
   pub static XA_SPEXT_ACCY: i32 = 18;
   // acceleration Z (km/s^2)
   pub static XA_SPEXT_ACCZ: i32 = 19;
   
   // Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   pub static XA_SPEXT_COVTYPE: i32 = 30;
   // 6 by 6 covariance matrix (31-66/1D format - 36 elements)
   pub static XA_SPEXT_COVMTX: i32 = 31;
   
   // State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
   pub static XA_SPEXT_STMTYPE: i32 = 70;
   // 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
   pub static XA_SPEXT_STM: i32 = 71;
   
   pub static XA_SPEXT_SIZE: i32 = 128;
   
   
   // Different options for generating ephemerides from SP
   // ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   pub static SP_EPHEM_ECI: i32 = 1;
   // MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   pub static SP_EPHEM_J2K: i32 = 2;
   
   
   // Different time types returned by the SP propagator
   // Time in minutes since the satellite's epoch time
   pub static XA_TIMETYPES_MSE: i32 = 0;
   // Time in days since 1950, UTC
   pub static XA_TIMETYPES_UTC: i32 = 1;
   // Time in days since 1950, UT1
   pub static XA_TIMETYPES_UT1: i32 = 2;
   // Time in days since 1950, TAI
   pub static XA_TIMETYPES_TAI: i32 = 3;
   // Time in days since 1950, ET
   pub static XA_TIMETYPES_ET: i32 = 4;
   
   pub static XA_TIMETYPES_SIZE: i32 = 5;
   
   
// ========================= End of auto generated code ==========================
