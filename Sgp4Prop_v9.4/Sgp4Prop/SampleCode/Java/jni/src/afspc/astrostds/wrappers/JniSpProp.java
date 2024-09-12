// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: SpProp */
public class JniSpProp
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "spprop";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadSpPropDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadSpPropDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes SpProp DLL for use in the program
   * If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL. 
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if SpProp.dll is initialized successfully, non-0 if there is an error
   */
   public static native int SpInit(long apAddr);


   /**
   * Returns information about the current version of SpProp DLL. The information is placed in the string parameter you pass in
   * The returned string provides information about the version number, build date, and the platform of the Sp DLL. 
   * @param infoStr            A string to hold the information about SpProp.dll (out-Character[128])
   */
   public static native void SpGetInfo(byte[] infoStr);


   /**
   * Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) from a text file
   * @param spInputFile        The name of the file containing SP-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int SpLoadFile(String spInputFile);


   /**
   * Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) and SP elsets from a text file
   * @param spInputFile        The name of the file containing SP-related parameters and SP elsets (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int SpLoadFileAll(String spInputFile);


   /**
   * Saves currently loaded SP-related parameters (SP application controls, prediction controls, integration controls) to a file
   * The purpose of this function is to save the current SP-related settings, usually used in GUI applications, for future use.
   * @param spFile             The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int SpSaveFile(String spFile, int saveMode, int saveForm);


   /**
   * Initializes an SP satellite from an SP TLE, SPVEC, or VCM
   * Internally, when this function is called, the SpProp DLL will look into the right binary tree, based on the vector type extracted from the satKey, and search for the satKey. If found, the SpProp DLL will use the associated SP data to create an SP object for this satellite in its own binary tree. Subsequent calls to propagate this satellite will use the data in the SP object to compute the satellite's new state.
   * 
   * The users need to call this routine only once for each satellite they want to propagate or every time the satellite data, from which it was initialized, is changed. The call needs to be placed before any calls to the SP propagate routines (SpPropMse, SpPropDs50UTC...).
   * @param satKey             The satellite's unique key (in-Long)
   * @return 0 if the satellite is successfully initialized and added to SpProp.dll's set of satellites, non-0 if there is an error
   */
   public static native int SpInitSat(long satKey);


   /**
   * Removes a satellite, represented by the satKey, from the set of currently loaded satellites
   * Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
   * If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   * @param satKey             The unique key of the satellite to be removed (in-Long)
   * @return 0 if the satellite is removed successfully, non-0 if there is an error
   */
   public static native int SpRemoveSat(long satKey);


   /**
   * Removes all currently loaded satellites from memory
   * Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
   * The function returns zero if all the satellites were removed successfully from the SpProp DLL's binary tree.
   * @return 0 if all satellites are removed successfully from memory, non-0 if there is an error
   */
   public static native int SpRemoveAllSats();


   /**
   * Returns the number of SP objects currently created. 
   * @return The number of SP objects currently created.
   */
   public static native int SpGetCount();


   /**
   * Removes all SP-related data from memory (Geo models, Flux records, JPL, DCA, etc.)
   */
   public static native void SpReset();


   /**
   * Retrieves the value of an SP application control parameter
   * <br>
   * The table below shows the values for the xf_SpApp parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>
   * <tr><td>1 </td><td>Geopotential directory path</td></tr>
   * <tr><td>2 </td><td>Buffer size</td></tr>
   * <tr><td>3 </td><td>Run mode</td></tr>
   * <tr><td>4 </td><td>Save partials data</td></tr>
   * <tr><td>5 </td><td>Specter compatibility mode</td></tr>
   * <tr><td>6 </td><td>Consider parameter</td></tr>
   * <tr><td>7 </td><td>Decay altitude</td></tr>
   * <tr><td>8 </td><td>Output coordinate system</td></tr>
   * <tr><td>9 </td><td>Additional VCM options</td></tr>
   * </table>
   * @param xf_SpApp           Predefined value specifying which application control parameter to retrieve (in-Integer)
   * @param valueStr           A string to hold the retrieved application control parameter (out-Character[512])
   */
   public static native void SpGetApCtrl(int xf_SpApp, byte[] valueStr);


   /**
   * Retrieves all SP application control parameters with a single function call
   * @param geoDir             geopotential directory path (out-Character[512])
   * @param bufSize            buffer size [5000] (out-Integer)
   * @param runMode            run mode: 0=performance priority, [1]=memory priority (out-Integer)
   * @param savePartials       propagate covariance matrix: 0=don't propagate, 1=propagate covariance matrix (if VCM has it) (out-Integer)
   * @param isSpectr           spectr mode: 0=not compatible, 1=SPECTR compatible (out-Integer)
   * @param consider           consider parameter (set it to 12 to match operational system) (out-Double)
   * @param decayAlt           decay altitude (km) [10] (out-Integer)
   * @param outCoord           ouput cooridnate system: [0]=TEME of Date, 1=TEME of Epoch, 2=MEME of J2K (out-Integer)
   */
   public static native void SpGetApCtrlAll(byte[] geoDir, int[] bufSize, int[] runMode, int[] savePartials, int[] isSpectr, double[] consider, int[] decayAlt, int[] outCoord);


   /**
   * Sets an SP application control parameter
   * See SpGetApCtrl for a list of the values for the xf_SpApp parameter.
   * @param xf_SpApp           predefined value specifying which application control parameter to set (in-Integer)
   * @param valueStr           the new value of the specified parameter, expressed as a string (in-Character[512])
   */
   public static native void SpSetApCtrl(int xf_SpApp, String valueStr);


   /**
   * Sets all SP application control parameters with a single function call
   * @param geoDir             geopotential directory path (in-Character[512])
   * @param bufSize            buffer size [5000] (in-Integer)
   * @param runMode            run mode: 0=performance priority, [1]=memory priority (in-Integer)
   * @param savePartials       propagate covariance matrix: 0=don't propagate, 1=propagate covariance matrix (if VCM has it) (in-Integer)
   * @param isSpectr           spectr mode: 0=not compatible, 1=SPECTR compatible (in-Integer)
   * @param consider           consider parameter (set it to 12 to match operational system) (in-Double)
   * @param decayAlt           decay altitude (km) [10] (in-Integer)
   * @param outCoord           ouput cooridnate system: [0]=TEME of Date, 1=TEME of Epoch, 2=MEME of J2K (in-Integer)
   */
   public static native void SpSetApCtrlAll(String geoDir, int bufSize, int runMode, int savePartials, int isSpectr, double consider, int decayAlt, int outCoord);


   /**
   * Retrieves the value of a numerical integration control parameter
   * <br>
   * The table below shows the values for xf_4P parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>
   * <tr><td>1  </td><td> Geopotential model to use</td></tr>
   * <tr><td>2  </td><td> Earth gravity pertubations flag</td></tr>
   * <tr><td>3  </td><td> Drag pertubations flag </td></tr>
   * <tr><td>4  </td><td> Radiation pressure pertubations flag</td></tr>
   * <tr><td>5  </td><td> Lunar/Solar pertubations flag</td></tr>
   * <tr><td>6  </td><td> F10 value</td></tr>
   * <tr><td>7  </td><td> F10 average value</td></tr>
   * <tr><td>8  </td><td> Ap value</td></tr>
   * <tr><td>9  </td><td> Geopotential truncation order/degree/zonals</td></tr>
   * <tr><td>10 </td><td> Corrector step convergence criterion; exponent of 1/10; default = 10</td></tr>
   * <tr><td>11 </td><td> Outgassing pertubations flag</td></tr>
   * <tr><td>12 </td><td> Solid earth ocean tide pertubations flag</td></tr>
   * <tr><td>13 </td><td> Input vector coordinate system</td></tr>
   * <tr><td>14 </td><td> Nutation terms</td></tr>
   * <tr><td>15 </td><td> Recompute pertubations at each corrector step</td></tr>
   * <tr><td>16 </td><td> Variable of intergration control</td></tr>
   * <tr><td>17 </td><td> Variable step size control</td></tr>
   * <tr><td>18 </td><td> Initial step size</td></tr>
   * <tr><td>21 </td><td> DCA file name</td></tr>
   * <tr><td>22 </td><td> Solar flux file name</td></tr>
   * <tr><td>23 </td><td> Geopotential file name</td></tr>
   * <tr><td>24 </td><td> JPL file name</td></tr>
   * <tr><td>25 </td><td> JPL start time</td></tr>
   * <tr><td>26 </td><td> JPL stop time</td></tr>
   * </table>
   * @param xf_4P              Predefined value specifying which application control parameter to retrieve (in-Integer)
   * @param valueStr           A string to hold the retrieved application control parameter (out-Character[512])
   */
   public static native void SpGet4P(int xf_4P, byte[] valueStr);


   /**
   * Sets the value of a numerical integration control parameter
   * See SpGet4P for a list of the values for the xf_4P parameter.
   * For flux, dca, and jpl file settings, the actual file loading happens when the first SpSatInit() is called. 
   * If the user needs to load these files instantly, please call the SpLoadFile() instead
   * @param xf_4P              predefined value specifying which application control parameter to set (in-Integer)
   * @param valueStr           the new value of the specified parameter, expressed as a string (in-Character[512])
   */
   public static native void SpSet4P(int xf_4P, String valueStr);


   /**
   * Retrieves prediction control parameters
   * @param startFrEpoch       start time flag: 0=in days since 1950 UTC, 1=in minutes since epoch (out-Integer)
   * @param stopFrEpoch        stop time flag : 0=in days since 1950 UTC, 1=in minutes since epoch (out-Integer)
   * @param startTime          start time value (out-Double)
   * @param stopTime           stop time value (out-Double)
   * @param interval           step size (min) (out-Double)
   */
   public static native void SpGetPredCtrl(int[] startFrEpoch, int[] stopFrEpoch, double[] startTime, double[] stopTime, double[] interval);


   /**
   * Sets prediction control parameters
   * @param startFrEpoch       start time flag: 0=in days since 1950 UTC, 1=in minutes since epoch (in-Integer)
   * @param stopFrEpoch        stop time flag : 0=in days since 1950 UTC, 1=in minutes since epoch (in-Integer)
   * @param startTime          start time value (in-Double)
   * @param stopTime           stop time value (in-Double)
   * @param interval           step size (min) (in-Double)
   */
   public static native void SpSetPredCtrl(int startFrEpoch, int stopFrEpoch, double startTime, double stopTime, double interval);


   /**
   * Retrieves the value of a field of an SP satellite
   * <br>
   * The table below shows the values for the xf_SpSat parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>
   * <tr><td>1 </td><td> Satellite number I5</td></tr>
   * <tr><td>2 </td><td> Satellite's epoch time in days since 1950, UTC </td></tr>
   * <tr><td>3 </td><td> Satellite's epoch time in days since 1950, TAI</td></tr>
   * <tr><td>4 </td><td> Mu value </td></tr>
   * <tr><td>5 </td><td> Covariance Matrix flag</td></tr>
   * <tr><td>6 </td><td> Integration mode</td></tr>
   * <tr><td>7 </td><td> Nutation terms</td></tr>
   * <tr><td>8 </td><td> Specter compatibility mode</td></tr>
   * </table>
   * @param satKey             The satellite's unique key (in-Long)
   * @param xf_SpSat           Predefined number specifying which field to retrieve (in-Integer)
   * @param valueStr           A string containing the value of the specified field (out-Character[512])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpGetSatData(long satKey, int xf_SpSat, byte[] valueStr);


   /**
   * Retrieves all fields of an SP satellite with a single function call
   * @param satKey             The satellite's unique key (in-Long)
   * @param satNum             Satellite number (out-Integer)
   * @param epochDs50UTC       Satellite's epoch time in days since 1950 UTC (out-Double)
   * @param epochDs50TAI       Satellite's epoch time in days since 1950 TAI (out-Double)
   * @param mu                 mu value from Satellite's geopotential model (out-Double)
   * @param hasCovMtx          0=This satellite doesn't have covariance matrix, 1=This satellite has covariance matrix (out-Integer)
   * @param integMode          Partials computation mode: 0=no partials, 1=numerical, 2=semi-analytic (out-Integer)
   * @param nTerms             number of nutation terms (out-Integer)
   * @param isSpectr           Spectr compatible mode: 0=not compatible, 1=compatible (out-Integer)
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpGetSatDataAll(long satKey, int[] satNum, double[] epochDs50UTC, double[] epochDs50TAI, double[] mu, int[] hasCovMtx, int[] integMode, int[] nTerms, int[] isSpectr);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in minutes since the 
   * satellite's epoch time
   * @param satKey             The satellite's unique key (in-Long)
   * @param mse                The requested time in minutes since the satellite's epoch time (in-Double)
   * @param xa_timeTypes       The output array that stores different time types, see XA_TIMETYPES_? for array arrangement (out-Double[5])
   * @param revNum             The resulting revolution number (out-Integer)
   * @param posJ2K             The resulting position vector (km) in MEME of J2K (out-Double[3])
   * @param velJ2K             The resulting velocity vector (km/s) in MEME of J2K (out-Double[3])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpPropMse(long satKey, double mse, double[] xa_timeTypes, int[] revNum, double[] posJ2K, double[] velJ2K);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The requested time in days since 1950 UTC (in-Double)
   * @param xa_timeTypes       The output array that stores different time types, see XA_TIMETYPES_? for array arrangement (out-Double[5])
   * @param revNum             The resulting revolution number (out-Integer)
   * @param posJ2K             The resuling position vector (km) in MEME of J2K (out-Double[3])
   * @param velJ2K             The resulting velocity vector (km/s) in MEME of J2K (out-Double[3])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpPropDs50UTC(long satKey, double ds50UTC, double[] xa_timeTypes, int[] revNum, double[] posJ2K, double[] velJ2K);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   * It only returns the latitude, longitude, and height at that time in coordinate system of Date
   * It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   * 
   * This function is built especially for application that plots ground trace.
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The requested time in days since 1950 UTC (in-Double)
   * @param llh                The resulting array: 1=geodetic latitude (deg), 2=geodetic longitude (deg), 3=height (km) (out-Double[3])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpPropDs50UtcLLH(long satKey, double ds50UTC, double[] llh);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   * It only returns the satellite's ECI position in TEME of DATE
   * It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   * 
   * This function is built especially for application that plots satellites' positions in 3D.
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The requested time in days since 1950 UTC (in-Double)
   * @param pos                The resulting ECI position (km) in TEME of Date (out-Double[3])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpPropDs50UtcPos(long satKey, double ds50UTC, double[] pos);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   * <br>
   * All propagation data is returned by this function.
   * @param satKey             The unique key of the satellite to propagate. (in-Long)
   * @param timeType           The propagation time type: 0 = minutes since epoch, 1 = days since 1950, UTC (in-Integer)
   * @param timeIn             The time to propagate to, expressed in either minutes since epoch or days since 1950, UTC. (in-Double)
   * @param covType            Covariance matrix type, if available: 0=don't propagate, 1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K (in-Integer)
   * @param xa_spOut           The array that stores all Sp propagation data, see XA_SPOUT_? for array arrangement (out-Double[128])
   * @return 0 if the propagation is successful, 2 on error.
   */
   public static native int SpPropAll(long satKey, int timeType, double timeIn, int covType, double[] xa_spOut);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   * It only returns the position and velocity in TEME of Date
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The requested time in days since 1950 UTC (in-Double)
   * @param posDate            The resulting ECI position (km) in TEME of Date (out-Double[3])
   * @param velDate            The resulting ECI velocity (km/s) in TEME of Date (out-Double[3])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpGetStateDs50UTC(long satKey, double ds50UTC, double[] posDate, double[] velDate);


   /**
   * Reepochs the state of an existing SP object associated with the satKey. 
   * Proper initialization is handled internally so no need to call SpSatInit() afterward 
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The requested new epoch time in days since 1950 UTC (in-Double)
   * @param posDate            The initial ECI position (km) in TEME of Date (in-Double[3])
   * @param velDate            The initial ECI velocity (km/s) in TEME of Date (in-Double[3])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpSetStateDs50UTC(long satKey, double ds50UTC, double[] posDate, double[] velDate);


   /**
   * Updates an SP object associated with the satKey with the new input data stored in setDataArr. 
   * Then propagates the updated SP object to the requested time propTimeDs50UTC. 
   * Resulting propagated data will be stored in propDataArr.
   * @param satKey             The satellite's unique key (in-Long)
   * @param setDataArr         0-2: posECI (km), 3-5: velECI (km/s), 6: bTerm (m2/kg), 7: agom (m2/kg) (in-Double[128])
   * @param propTimeDs50UTC    The requested time in days since 1950 UTC (in-Double)
   * @param propDataArr        0-2: out posECI (km), 3-5: out velECI (km/s), 6-127: NA (out-Double[128])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpSetAndProp(long satKey, double[] setDataArr, double propTimeDs50UTC, double[] propDataArr);


   /**
   * This function is reserved for future use. The purpose is to return propagator output data based on user special requests that have not yet been determined
   * Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
   * @param satKey             The satellite's unique key (in-Long)
   * @param index              Index specified ouput data (in-Integer)
   * @param destArr            The resulting array (out-Double[*])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpGetPropOut(long satKey, int index, double[] destArr);


   /**
   * Returns the covariance matrix of a satellite
   * Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
   * @param satKey             The satellite's unique key (in-Long)
   * @param covType            Covariance matrix type: 1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K (in-Integer)
   * @param covMtx             Resulting covariance matrix 6x6 (out-Double[6, 6])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpGetCovMtx(long satKey, int covType, double[][] covMtx);


   /**
   * Returns the covariance matrix of a satellite
   * Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
   * @param satKey             The satellite's unique key (in-Long)
   * @param covType            Covariance matrix type: 1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K (in-Integer)
   * @param covMtx             Resulting covariance matrix 6x6 (out-Double[])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpGetCovMtx2Das1D(long satKey, int covType, double[] covMtx);


   /**
   * Computes the covariance sigma from the input covariance matrix
   * @param covMtx             Input covariance matrix (in-Double[6, 6])
   * @param covSigma           Resulting covariance sigma (out-Double[6])
   */
   public static native void SpCompCovSigma(double[][] covMtx, double[] covSigma);


   /**
   * Sets all numerical integration control parameters with a single function call
   * @param geoIdx             geopotential model (in-Integer)
   * @param bulgePert          earth gravity flag (in-Integer)
   * @param dragPert           drag pertubation flag (in-Integer)
   * @param radPresPert        radiation pressure pertubation flag (in-Integer)
   * @param lunSolPert         lunar/solar pertubation flag (in-Integer)
   * @param f10                f10 value (in-Integer)
   * @param f10Avg             f10 average value (in-Integer)
   * @param ap                 ap (in-Integer)
   * @param trunc              geo truncation order/degree/zonals (in-Integer)
   * @param incr               corrector step convergenece criterion (in-Integer)
   * @param ogPert             outgassing pertubation flag (in-Integer)
   * @param tidePert           solid earth + ocean tide pertubation flag (in-Integer)
   * @param inCoord            input vector coordinate system (in-Integer)
   * @param nTerms             nutation terms (in-Integer)
   * @param reEval             recompute pertubations at each corrector step (in-Integer)
   * @param integStepMode      variable of integration control (in-Integer)
   * @param stepSizeMethod     variable step size control (in-Integer)
   * @param initStepSize       initial step size (in-Double)
   * @param dcaFile            DCA file name (in-Character[512])
   * @param fluxFile           Flux file name (in-Character[512])
   * @param geoFile            Geo file name (in-Character[512])
   * @param jplFile            JPL file name (in-Character[512])
   * @param jplStart           JPL start time (in-Character[512])
   * @param jplStop            JPL stop time (in-Character[512])
   */
   public static native void SpSet4pAll(int geoIdx, int bulgePert, int dragPert, int radPresPert, int lunSolPert, int f10, int f10Avg, int ap, int trunc, int incr, int ogPert, int tidePert, int inCoord, int nTerms, int reEval, int integStepMode, int stepSizeMethod, double initStepSize, String dcaFile, String fluxFile, String geoFile, String jplFile, String jplStart, String jplStop);


   /**
   * Retrieves all numerical integration control parameters with a single function call
   * @param geoIdx             geopotential model (out-Integer)
   * @param bulgePert          earth gravity flag (out-Integer)
   * @param dragPert           drag pertubation flag (out-Integer)
   * @param radPresPert        radiation pressure pertubation flag (out-Integer)
   * @param lunSolPert         lunar/solar pertubation flag (out-Integer)
   * @param f10                f10 value (out-Integer)
   * @param f10Avg             f10 average value (out-Integer)
   * @param ap                 ap (out-Integer)
   * @param trunc              geo truncation order/degree/zonals (out-Integer)
   * @param incr               corrector step convergenece criterion (out-Integer)
   * @param ogPert             outgassing pertubation flag (out-Integer)
   * @param tidePert           solid earth + ocean tide pertubation flag (out-Integer)
   * @param inCoord            input vector coordinate system (out-Integer)
   * @param nTerms             nutation terms (out-Integer)
   * @param reEval             recompute pertubations at each corrector step (out-Integer)
   * @param integStepMode      variable of integration control (out-Integer)
   * @param stepSizeMethod     variable step size control (out-Integer)
   * @param initStepSize       initial step size (out-Double)
   * @param dcaFile            DCA file name (out-Character[512])
   * @param fluxFile           Flux file name (out-Character[512])
   * @param geoFile            Geo file name (out-Character[512])
   * @param jplFile            JPL file name (out-Character[512])
   * @param jplStart           JPL start time (out-Character[512])
   * @param jplStop            JPL stop time (out-Character[512])
   */
   public static native void SpGet4pAll(int[] geoIdx, int[] bulgePert, int[] dragPert, int[] radPresPert, int[] lunSolPert, int[] f10, int[] f10Avg, int[] ap, int[] trunc, int[] incr, int[] ogPert, int[] tidePert, int[] inCoord, int[] nTerms, int[] reEval, int[] integStepMode, int[] stepSizeMethod, double[] initStepSize, byte[] dcaFile, byte[] fluxFile, byte[] geoFile, byte[] jplFile, byte[] jplStart, byte[] jplStop);


   /**
   * Read the integration control settings from a 4P-Card
   * @param card4P             The input 4P card (in-Character[512])
   * @return 0 if the input 4P card is read successfully, non-0 if there is an error
   */
   public static native int SpSet4PCard(String card4P);


   /**
   * Builds and returns the integration control card (4P-Card) from the current settings
   * @param card4P             A string to hold the retrieved 4P card (out-Character[512])
   */
   public static native void SpGet4PCard(byte[] card4P);


   /**
   * Adds one solar flux record to memory. This API can be used to avoid SpLoadFile's file I/O      
   * @param refDs50UTC         Time tag of this record (DS50; UTC) (in-Double)
   * @param f10                f10 value (in-Double)
   * @param f10Avg             f10avg value (in-Double)
   * @param ap                 Array of 3-hourly values of Ap (in-Double[8])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SpAddFluxRec(double refDs50UTC, double f10, double f10Avg, double[] ap);


   /**
   * Returns the times, in days since 1950 UTC, of ephemeris points stored in SP buffer that meet the requirement as specified in the minStepSize
   * This function is used to retrieve times in which SP propagator stored satellite's state vectors in memory (natural integration step size).
   * An error will occur if the actualEphPts reaches the maxEphPts. In this case, the function will return all ephemereris times up to the time when that maxEphPts is reached.
   * @param satKey             The satellite's unique key (in-Long)
   * @param maxEphPts          Maximum number of possible ephemeris points that the function won't go over. That means actualEphPts can't be greater than maxEphPts even though the time span may have more points than that (in-Integer)
   * @param startDs50UTC       Start time in days since 1950 UTC (in-Double)
   * @param stopDs50UTC        Stop time in days since 1950 UTC (in-Double)
   * @param minStepSize        Option to thin ephem points. Only pick ephem point when its next ephem point is older than the specified minStepSize (minutes). Set to 0 to get all ephem points (SP natural integration step size) (in-Double)
   * @param actualEphPts       Actual number of ephem points that meet the requirements (out-Integer)
   * @param ds50UTCArr         The resulting time array, in days since 1950 UTC, of all ephem points that meet the requirements (out-Double[*])
   * @return 0 if the function successfully returns all the ephemeris times of the specified start/stop time span, non-0 if there is an error. Also if
   */
   public static native int SpGetEphemTimes(long satKey, int maxEphPts, double startDs50UTC, double stopDs50UTC, double minStepSize, int[] actualEphPts, double[] ds50UTCArr);


   /**
   * Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
   * Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   * that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   * @param satKey             The unique key of the satellite to generate ephemerides. (in-Long)
   * @param startDs50UTC       Start time expressed in days since 1950, UTC. (in-Double)
   * @param stopDs50UTC        End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes, set to 0 if want to use SP natural integration step size (in-Double)
   * @param sp_ephem           Output ephemeris type: 1=ECI, 2=J2K. (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) (out-Double[*, 7])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int SpGenEphems(long satKey, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int arrSize, double[][] ephemArr, int[] genEphemPts);


   /**
   * Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
   * Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   * that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   * @param satKey             The unique key of the satellite to generate ephemerides. (in-Long)
   * @param startDs50UTC       Start time expressed in days since 1950, UTC. (in-Double)
   * @param stopDs50UTC        End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes, set to 0 if want to use SP natural integration step size (in-Double)
   * @param sp_ephem           Output ephemeris type: 1=ECI, 2=J2K. (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) (out-Double[])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int SpGenEphems2Das1D(long satKey, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int arrSize, double[] ephemArr, int[] genEphemPts);


   /**
   * This function is similar to SpGenEphems but also returns covariance matrix data
   * Notes: Make sure to turn on the "save partials" flag so that covariance matrix data can be generated
   * @param satKey             The unique key of the satellite to generate ephemerides. (in-Long)
   * @param startDs50UTC       Start time expressed in days since 1950, UTC. (in-Double)
   * @param stopDs50UTC        End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes, set to 0 if want to use SP natural integration step size (in-Double)
   * @param sp_ephem           Output ephemeris type: 1=ECI, 2=J2K. (in-Integer)
   * @param covType            Covariance matrix type, if available: 0=don't propagate,  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec), 7-27: 21-elements lower triagular covariance matrix (out-Double[*, 28])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int SpGenEphemsCov(long satKey, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int covType, int arrSize, double[][] ephemArr, int[] genEphemPts);


   /**
   * This function is similar to SpGenEphems but also returns covariance matrix data
   * Notes: Make sure to turn on the "save partials" flag so that covariance matrix data can be generated
   * @param satKey             The unique key of the satellite to generate ephemerides. (in-Long)
   * @param startDs50UTC       Start time expressed in days since 1950, UTC. (in-Double)
   * @param stopDs50UTC        End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes, set to 0 if want to use SP natural integration step size (in-Double)
   * @param sp_ephem           Output ephemeris type: 1=ECI, 2=J2K. (in-Integer)
   * @param covType            Covariance matrix type, if available: 0=don't propagate,  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec), 7-27: 21-elements lower triagular covariance matrix (out-Double[])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int SpGenEphemsCov2Das1D(long satKey, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int covType, int arrSize, double[] ephemArr, int[] genEphemPts);


   /**
   * Generates ephemerides for the input vcm (in string format) for the specified time span and step size
   * Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   * that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   * @param vcmString          1-line or concatenated string representation of the VCM (in-Character[4000])
   * @param startDs50UTC       Start time expressed in days since 1950, UTC. (in-Double)
   * @param stopDs50UTC        End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes, set to 0 if want to use SP natural integration step size (in-Double)
   * @param sp_ephem           Output ephemeris type: 1=ECI, 2=J2K. (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) (out-Double[*, 7])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int SpGenEphemsVcm_OS(String vcmString, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int arrSize, double[][] ephemArr, int[] genEphemPts);


   /**
   * Generates ephemerides for the input vcm (in string format) for the specified time span and step size
   * Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   * that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   * @param vcmString          1-line or concatenated string representation of the VCM (in-Character[])
   * @param startDs50UTC       Start time expressed in days since 1950, UTC. (in-Double)
   * @param stopDs50UTC        End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes, set to 0 if want to use SP natural integration step size (in-Double)
   * @param sp_ephem           Output ephemeris type: 1=ECI, 2=J2K. (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) (out-Double[])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int SpGenEphemsVcm_OS2Das1D(String vcmString, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int arrSize, double[] ephemArr, int[] genEphemPts);


   /**
   * This function is similar to SpGenEphemsVcm_OS but also returns covariance matrix data
   * @param vcmString          1-line or concatenated string representation of the VCM (in-Character[4000])
   * @param startDs50UTC       Start time expressed in days since 1950, UTC. (in-Double)
   * @param stopDs50UTC        End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes, set to 0 if want to use SP natural integration step size (in-Double)
   * @param sp_ephem           Output ephemeris type: 1=ECI, 2=J2K. (in-Integer)
   * @param covType            Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec), 7-27: 21-elements lower triagular covariance matrix (out-Double[*, 28])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int SpGenEphemsVcmCov_OS(String vcmString, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int covType, int arrSize, double[][] ephemArr, int[] genEphemPts);


   /**
   * This function is similar to SpGenEphemsVcm_OS but also returns covariance matrix data
   * @param vcmString          1-line or concatenated string representation of the VCM (in-Character[])
   * @param startDs50UTC       Start time expressed in days since 1950, UTC. (in-Double)
   * @param stopDs50UTC        End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes, set to 0 if want to use SP natural integration step size (in-Double)
   * @param sp_ephem           Output ephemeris type: 1=ECI, 2=J2K. (in-Integer)
   * @param covType            Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec), 7-27: 21-elements lower triagular covariance matrix (out-Double[])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int SpGenEphemsVcmCov_OS2Das1D(String vcmString, double startDs50UTC, double stopDs50UTC, double stepSize, int sp_ephem, int covType, int arrSize, double[] ephemArr, int[] genEphemPts);


   /**
   * Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
   * @param satKeys            The satellite keys of all input satellites (in-Long[*])
   * @param numOfSats          The total number of satellites (in-Integer)
   * @param ds50UTC            The time to propagate all satelllites to, expressed in days since 1950, UTC. (in-Double)
   * @param ephemArr           0-2: pos (km), 3-5: vel (km/sec) - ECI TEME of Date (out-Double[*, 6])
   * @return 0 if the propagation is successful, non-0 if there is an error.
   */
   public static native int SpPropAllSats(long[] satKeys, int numOfSats, double ds50UTC, double[][] ephemArr);


   /**
   * Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
   * @param satKeys            The satellite keys of all input satellites (in-Long[])
   * @param numOfSats          The total number of satellites (in-Integer)
   * @param ds50UTC            The time to propagate all satelllites to, expressed in days since 1950, UTC. (in-Double)
   * @param ephemArr           0-2: pos (km), 3-5: vel (km/sec) - ECI TEME of Date (out-Double[])
   * @return 0 if the propagation is successful, non-0 if there is an error.
   */
   public static native int SpPropAllSats2Das1D(long[] satKeys, int numOfSats, double ds50UTC, double[] ephemArr);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   * <br>
   * All propagation data is returned by this function.
   * @param satKey             The unique key of the satellite to propagate. (in-Long)
   * @param timeType           The propagation time type: 0 = minutes since epoch, 1 = days since 1950, UTC (in-Integer)
   * @param timeIn             The time to propagate to, expressed in either minutes since epoch or days since 1950, UTC. (in-Double)
   * @param spCoord            Output coordinate systems for pos/vel/acc, see SPCOORD_? for options (in-Integer)
   * @param xf_CovMtx          Covariance matrix type, see XF_COVMTX_? for options (in-Integer)
   * @param stmType            State transition matrix type, see STMTYPE_? for options (in-Integer)
   * @param xa_spExt           The array that stores all Sp propagation data, see XA_SPEXT_? for array arrangement (out-Double[128])
   * @return 0 if the propagation is successful, 2 on error.
   */
   public static native int SpPropAllExt(long satKey, int timeType, double timeIn, int spCoord, int xf_CovMtx, int stmType, double[] xa_spExt);
   
   // VCM additional options
   /** use VCM's own data */
   public static final int VCMOPT_USEOWN    = 0;
   /** force VCM to use global solar flux and timing constants data */
   public static final int VCMOPT_USEGLOBAL = 1;
   
   // Run Modes
   /** Perfromance priority. This mode allows the buffer of integration points to extend freely */
   public static final int IDX_RUNMODE_PERF = 0;
   /** Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time */
   public static final int IDX_RUNMODE_MEM  = 1;
   
   //*******************************************************************************
   
   // Partials Saving Modes
   /** Save partials in the buffer */
   public static final int IDX_PARTIALS_SAVE = 1;
   /** Don't save partials in the buffer */
   public static final int IDX_PARTIALS_DONT = 0;
   
   // Indexes of different covariance matrices
   /** UVW convariance matrix - TEME of DATE */
   public static final int XF_COVMTX_UVW_DATE  =  1;
   /** Cartesian covariance matrix - TEME of DATE */
   public static final int XF_COVMTX_XYZ_DATE  =  2;
   /** Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC") */
   public static final int XF_COVMTX_EQNX_DATE =  3;
   /** UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE) */
   public static final int XF_COVMTX_UVW_J2K   = 11;
   /** Cartesian covariance matrix - MEME of J2K */
   public static final int XF_COVMTX_XYZ_J2K   = 12;
   /** Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC") */
   public static final int XF_COVMTX_EQNX_J2K  = 13;
   //*******************************************************************************
   
   // Indexes of Lunar/Solar and Planets perturbation modes
   /** Lunar/Solar perturbation off */
   public static final int LSPERT_NONE      = 0;
   /** Lunar/Solar perturbation on (using Analytic mode) */
   public static final int LSPERT_ANALYTIC  = 1;
   /** Lunar/Solar perturbation using JPL ephemeris file */
   public static final int LSPERT_JPL       = 2;
   /** Lunar/Solar + All planets perturbation using JPL ephemeris file */
   public static final int LSPERT_ALL       = 3;
   /** Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets) */
   public static final int LSPERT_BIG       = 4;
   /** Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets) */
   public static final int LSPERT_MED       = 5;
   /** Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets) */
   public static final int LSPERT_SMA       = 6;
   
   //*******************************************************************************
   
   // State Transition Matrix Types
   /** UVW state transition matrix */
   public static final int STMTYPE_UVW       = 1;
   /** Cartesian state transition matrix */
   public static final int STMTYPE_XYZ       = 2;
   /** Equinoctial state transition matrix */
   public static final int STMTYPE_EQNX      = 3;
   
   // Different output coordinate systems options for pos/vel/acc
   /** Output coordinate systems in TEME of Date */
   public static final int SPCOORD_ECI      = 1;
   /** Output coordinate systems in MEME of J2K */
   public static final int SPCOORD_J2K      = 2;
   
   // Different drag perturbation models
   /** Jacchia 64 model */
   public static final int DRGMDL_JAC64   =  1;
   /** Jacchia 70 model */
   public static final int DRGMDL_JAC70   =  2;
   /** Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model */
   public static final int DRGMDL_DCA1    =  3;
   /** JBH09 model */
   public static final int DRGMDL_JBH09   = 40;
   /** JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2) */
   public static final int DRGMDL_JBHDCA2 = 41;
   
   // Indexes of SP 4P card fields
   /** Geopotential model to use */
   public static final int XF_4P_GEOIDX   = 1;
   /** Earth gravity pertubations flag */
   public static final int XF_4P_BULGEFLG = 2;
   /** Drag pertubations flag */
   public static final int XF_4P_DRAGFLG  = 3;
   /** Radiation pressure pertubations flag */
   public static final int XF_4P_RADFLG   = 4;
   /** Lunar/Solar pertubations flag */
   public static final int XF_4P_LUNSOL   = 5;
   /** F10 value */
   public static final int XF_4P_F10      = 6;
   /** F10 average value */
   public static final int XF_4P_F10AVG   = 7;
   /** Ap value */
   public static final int XF_4P_AP       = 8;
   /** Geopotential truncation order/degree/zonals */
   public static final int XF_4P_TRUNC    = 9;
   /** Corrector step convergence criterion; exponent of 1/10; default = 10 */
   public static final int XF_4P_CONVERG  = 10;
   /** Outgassing pertubations flag */
   public static final int XF_4P_OGFLG    = 11;
   /** Solid earth and ocean tide pertubations flag */
   public static final int XF_4P_TIDESFLG = 12;
   /** Input vector coordinate system */
   public static final int XF_4P_INCOORD  = 13;
   /** Nutation terms */
   public static final int XF_4P_NTERMS   = 14;
   /** Recompute pertubations at each corrector step */
   public static final int XF_4P_REEVAL   = 15;
   /** Variable of intergration control */
   public static final int XF_4P_INTEGCTRL= 16;
   /** Variable step size control */
   public static final int XF_4P_VARSTEP  = 17;
   /** Initial step size */
   public static final int XF_4P_INITSTEP = 18;
   
   /** DCA file name */
   public static final int XF_4P_DCAFILE  = 21;
   /** Solar flux file name */
   public static final int XF_4P_FLUXFILE = 22;
   /** Geopotential file name */
   public static final int XF_4P_GEOFILE  = 23;
   /** JPL file name */
   public static final int XF_4P_JPLFILE  = 24;
   /** JPL start time */
   public static final int XF_4P_JPLSTART = 25;
   /** JPL stop time */
   public static final int XF_4P_JPLSTOP  = 26;
   
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
   /** Geopotential directory path */
   public static final int XF_SPAPP_GEODIR   = 1;
   /** Buffer size */
   public static final int XF_SPAPP_BUFSIZE  = 2;
   /** Run mode */
   public static final int XF_SPAPP_RUNMODE  = 3;
   /** Save partials data */
   public static final int XF_SPAPP_SAVEPART = 4;
   /** Specter compatibility mode */
   public static final int XF_SPAPP_SPECTR   = 5;
   /** Consider parameter */
   public static final int XF_SPAPP_CONSIDER = 6;
   /** Decay altitude */
   public static final int XF_SPAPP_DECAYALT = 7;
   /** Output coordinate system */
   public static final int XF_SPAPP_OUTCOORD = 8;
   /** VCM additional options */
   public static final int XF_SPAPP_VCMOPT   = 9;
   
   //*******************************************************************************
   
   // Indexes of data fields of an initialized SP satellite
   /** Satellite number I5 */
   public static final int XF_SPSAT_SATNUM  = 1;
   /** Satellite's epoch time in days since 1950, UTC */
   public static final int XF_SPSAT_DS50UTC = 2;
   /** Satellite's epoch time in days since 1950, TAI */
   public static final int XF_SPSAT_DS50TAI = 3;
   /** Mu value */
   public static final int XF_SPSAT_MU      = 4;
   /** Covariance Matrix flag */
   public static final int XF_SPSAT_HASCOV  = 5;
   /** Integration mode */
   public static final int XF_SPSAT_INTMODE = 6;
   /** Nutation terms */
   public static final int XF_SPSAT_NTERMS  = 7;
   /** Specter compatibility mode */
   public static final int XF_SPSAT_SPECTR  = 8;
   
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
   /** propagation time is in minutes since epoch */
   public static final int SP_TIMETYPE_MSE      = 0;
   /** propagation time is in days since 1950, UTC */
   public static final int SP_TIMETYPE_DS50UTC  = 1;
   
   
   // Sp propagated data
   /** Propagation time in days since 1950, UTC */
   public static final int XA_SPOUT_UTC       =  0;
   /** Propagation time in minutes since the satellite's epoch time */
   public static final int XA_SPOUT_MSE       =  1;
   /** Propagation time in days since 1950, UT1 */
   public static final int XA_SPOUT_UT1       =  2;
   /** Propagation time in days since 1950, TAI */
   public static final int XA_SPOUT_TAI       =  3;
   /** Propagation time in days since 1950, ET */
   public static final int XA_SPOUT_ET        =  4;
   /** Revolution number */
   public static final int XA_SPOUT_REVNUM    =  5;
   /** Number of nutation terms */
   public static final int XA_SPOUT_NTERMS    =  6;
   /** Spectr compatible mode (0=not compatible, 1=compatible) */
   public static final int XA_SPOUT_ISSPECTR  =  7;
   /** Has input covariance matrix (0=no, 1=yes) */
   public static final int XA_SPOUT_HASCOVMTX =  8;
   
   /** J2K position X (km) */
   public static final int XA_SPOUT_J2KPOSX   = 10;
   /** J2K position Y (km) */
   public static final int XA_SPOUT_J2KPOSY   = 11;
   /** J2K position Z (km) */
   public static final int XA_SPOUT_J2KPOSZ   = 12;
   /** J2K velocity X (km/s) */
   public static final int XA_SPOUT_J2KVELX   = 13;
   /** J2K velocity Y (km/s) */
   public static final int XA_SPOUT_J2KVELY   = 14;
   /** J2K velocity Z (km/s) */
   public static final int XA_SPOUT_J2KVELZ   = 15;
   /** ECI position X (km) */
   public static final int XA_SPOUT_ECIPOSX   = 16;
   /** ECI position Y (km) */
   public static final int XA_SPOUT_ECIPOSY   = 17;
   /** ECI position Z (km) */
   public static final int XA_SPOUT_ECIPOSZ   = 18;
   /** ECI velocity X (km/s) */
   public static final int XA_SPOUT_ECIVELX   = 19;
   /** ECI velocity Y (km/s) */
   public static final int XA_SPOUT_ECIVELY   = 20;
   /** ECI velocity Z (km/s) */
   public static final int XA_SPOUT_ECIVELZ   = 21;
   /** Geodetic latitude (deg) */
   public static final int XA_SPOUT_LAT       = 22;
   /** Geodetic longitude (deg) */
   public static final int XA_SPOUT_LON       = 23;
   /** Height above geoid (km) */
   public static final int XA_SPOUT_HEIGHT    = 24;
   
   /** Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K */
   public static final int XA_SPOUT_COVTYPE   = 30;
   /** 6 by 6 covariance matrix (31-66) */
   public static final int XA_SPOUT_COVMTX    = 31;
   
   /** J2K acceleration X (km/s^2) */
   public static final int XA_SPOUT_J2KACCX   = 70;
   /** J2K acceleration Y (km/s^2) */
   public static final int XA_SPOUT_J2KACCY   = 71;
   /** J2K acceleration Z (km/s^2) */
   public static final int XA_SPOUT_J2KACCZ   = 72;
   /** ECI acceleration X (km/s^2) */
   public static final int XA_SPOUT_ECIACCX   = 73;
   /** ECI acceleration Y (km/s^2) */
   public static final int XA_SPOUT_ECIACCY   = 74;
   /** ECI acceleration Z (km/s^2) */
   public static final int XA_SPOUT_ECIACCZ   = 75;
   
   public static final int XA_SPOUT_SIZE      = 128;
   
   // Sp extended propagation data
   /** Propagation time in days since 1950, UTC */
   public static final int XA_SPEXT_UTC       =  0;
   /** Propagation time in minutes since the satellite's epoch time */
   public static final int XA_SPEXT_MSE       =  1;
   /** Propagation time in days since 1950, UT1 */
   public static final int XA_SPEXT_UT1       =  2;
   /** Propagation time in days since 1950, TAI */
   public static final int XA_SPEXT_TAI       =  3;
   /** Propagation time in days since 1950, ET */
   public static final int XA_SPEXT_ET        =  4;
   /** Revolution number */
   public static final int XA_SPEXT_REVNUM    =  5;
   /** Number of nutation terms */
   public static final int XA_SPEXT_NTERMS    =  6;
   /** Spectr compatible mode (0=not compatible, 1=compatible) */
   public static final int XA_SPEXT_ISSPECTR  =  7;
   /** Has input covariance matrix (0=no, 1=yes) */
   public static final int XA_SPEXT_HASCOVMTX =  8;
   
   /** Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K */
   public static final int XA_SPEXT_COORD     = 10;
   /** position X (km) */
   public static final int XA_SPEXT_POSX      = 11;
   /** position Y (km) */
   public static final int XA_SPEXT_POSY      = 12;
   /** position Z (km) */
   public static final int XA_SPEXT_POSZ      = 13;
   /** velocity X (km/s) */
   public static final int XA_SPEXT_VELX      = 14;
   /** velocity Y (km/s) */
   public static final int XA_SPEXT_VELY      = 15;
   /** velocity Z (km/s) */
   public static final int XA_SPEXT_VELZ      = 16;
   /** acceleration X (km/s^2) */
   public static final int XA_SPEXT_ACCX      = 17;
   /** acceleration Y (km/s^2) */
   public static final int XA_SPEXT_ACCY      = 18;
   /** acceleration Z (km/s^2) */
   public static final int XA_SPEXT_ACCZ      = 19;
   
   /** Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K */
   public static final int XA_SPEXT_COVTYPE   = 30;
   /** 6 by 6 covariance matrix (31-66/1D format - 36 elements) */
   public static final int XA_SPEXT_COVMTX    = 31;
   
   /** State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE */
   public static final int XA_SPEXT_STMTYPE   = 70;
   /** 6x9 state transition matrix  (71-124/1D format - 54 elements - row major) */
   public static final int XA_SPEXT_STM       = 71;
   
   public static final int XA_SPEXT_SIZE      = 128;
   
   
   // Different options for generating ephemerides from SP
   /** ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) */
   public static final int SP_EPHEM_ECI   = 1;
   /** MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) */
   public static final int SP_EPHEM_J2K   = 2;
   
   
   // Different time types returned by the SP propagator
   /** Time in minutes since the satellite's epoch time */
   public static final int XA_TIMETYPES_MSE  = 0;
   /** Time in days since 1950, UTC */
   public static final int XA_TIMETYPES_UTC  = 1;
   /** Time in days since 1950, UT1 */
   public static final int XA_TIMETYPES_UT1  = 2;
   /** Time in days since 1950, TAI */
   public static final int XA_TIMETYPES_TAI  = 3;
   /** Time in days since 1950, ET */
   public static final int XA_TIMETYPES_ET   = 4;
   
   public static final int XA_TIMETYPES_SIZE = 5;
   
   
// ========================= End of auto generated code ==========================
}
