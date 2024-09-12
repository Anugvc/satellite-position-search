// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: BatchDC */
public class JniBatchDC
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "batchdc";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadBatchDCDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadBatchDCDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes BatchDC DLL for use in the program
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if BatchDC.dll is initialized successfully, non-0 if there is an error
   */
   public static native int BatchDCInit(long apAddr);


   /**
   * Returns information about the current version of BatchDC DLL. 
   * The information is placed in the string parameter passed in.
   * @param infoStr            A string to hold the information about BatchDC.dll (out-Character[128])
   */
   public static native void BatchDCGetInfo(byte[] infoStr);


   /**
   * Read/Load BatchDC input data from an input file
   * @param batchDCInputFile   The name of the file containing BatchDC-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int BatchDCLoadFile(String batchDCInputFile);


   /**
   * Loads BatchDC control parameters and all BatchDC related data (environment, time, elsets, sensors) from an input text file
   * @param batchDCInputFile   The name of the file containing BatchDC and BatchDC-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int BatchDCLoadFileAll(String batchDCInputFile);


   /**
   * Read/Load BatchDC-typed input data from an input card
   * @param card               BatchDC-type input card (in-Character[512])
   * @return 0 if the input card is read successfully, non-0 if there is an error
   */
   public static native int BatchDCLoadCard(String card);


   /**
   * Builds and returns the DC parameter card (1P-Card) from the current DC settings
   * @param dcPCard            the resulting DC 1P-Card (out-Character[512])
   */
   public static native void BatchDCGetPCard(byte[] dcPCard);


   /**
   * Saves any currently loaded BatchDC-related settings to a file
   * @param batchDCFile        The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int BatchDCSaveFile(String batchDCFile, int saveMode, int saveForm);


   /**
   * Gets BatchDC parameter data (P Card) - all fields
   * <br>
   * The table below shows the structure of the integer array xai_ctrl:
   * <table>
   *     <caption>table</caption>
   *     <tr>
   *         <td><b>Index</b></td>
   *         <td><b>Index Interpretation</b></td>
   *     </tr>
   *     <tr><td>0</td><td>DC print option</td></tr>
   *     <tr><td>1</td><td>Apply biases from sensor file</td></tr>
   *     <tr><td>2</td><td>Weighed DC flag</td></tr>
   *     <tr><td>3</td><td>Epoch placement control</td></tr>
   *     <tr><td>4</td><td>Element correction flag - Ag</td></tr>
   *     <tr><td>5</td><td>Element correction flag - Af</td></tr>
   *     <tr><td>6</td><td>Element correction flag - Psi</td></tr>
   *     <tr><td>7</td><td>Element correction flag - Chi</td></tr>
   *     <tr><td>8</td><td>Element correction flag - L</td></tr>
   *     <tr><td>9</td><td>Element correction flag - N</td></tr>
   *     <tr><td>10</td><td>Element correction flag - B* (SGP4) B (SP)</td></tr>
   *     <tr><td>11</td><td>Element correction flag - Agom (SP)</td></tr>
   *     <tr><td>12</td><td>Correction order</td></tr>
   *     <tr><td>13</td><td>Correct by the specified correction order for 1 iteration only</td></tr>
   *     <tr><td>14</td><td>Flag specifies which residuals are used for RMS calculation and convergence</td></tr>
   *     <tr><td>15</td><td>Flag; if set, produce sensor performance analysis summary</td></tr>
   *     <tr><td>16</td><td>Flag; if set, deweight according to # of obs per track</td></tr>
   *     <tr><td>17</td><td>Iteration summary control</td></tr>
   *     <tr><td>18</td><td>Partials method</td></tr>
   *     <tr><td>19</td><td>Light time correction control</td></tr>
   *     <tr><td>20</td><td>Number of iteration to allow no auto rejection of residuals</td></tr>
   *     <tr><td>21</td><td>Propagation method</td></tr>
   *     <tr><td>22</td><td>Flag; if set, correct B* vs X</td></tr>
   *     <tr><td>23</td><td>Max # of iterations before declaring divergence</td></tr>
   *     <tr><td>24</td><td>Use predicted RMS versus previous RMS for convergence testing</td></tr>
   * </table>
   * <br>
   * The table below shows the structure of the real array xar_ctrl:
   * <table>
   *     <caption>table</caption>
   *     <tr>
   *         <td><b>Index</b></td>
   *         <td><b>Index Interpretation</b></td>
   *     </tr>
   *     <tr><td>0</td><td>RMS multiplier</td></tr>
   *     <tr><td>1</td><td>Time of specified epoch</td></tr>
   *     <tr><td>2</td><td>Convergence criteria on time correction (%)</td></tr>
   *     <tr><td>3</td><td>First pass delta-t rejection criteria</td></tr>
   *     <tr><td>4</td><td>Convergence criteria on 7-elt correction (%)</td></tr>
   *     <tr><td>5</td><td>Reset value for B term in subset correction</td></tr>
   * </table>
   * @param xai_ctrl           Array contains integer BatchDC parameters, see XAI_CTRL_? for array arrangement (out-Integer[256])
   * @param xar_ctrl           Array contains double BatchDC parameters, see XAR_CTRL_? for array arrangement (out-Double[256])
   * @param xas_ctrl           BatchDC parameters in character string format - not yet used (out-Character[512])
   */
   public static native void BatchDCGetParams(int[] xai_ctrl, double[] xar_ctrl, byte[] xas_ctrl);


   /**
   * Sets BatchDC parameter data (P Card) - all fields
   * See BatchDCGetParams for the structure of the xai_ctrl and xar_ctrl arrays.
   * @param xai_ctrl           Array contains integer BatchDC parameters, see XAI_CTRL_? for array arrangement (in-Integer[256])
   * @param xar_ctrl           Array contains double BatchDC parameters, see XAR_CTRL_? for array arrangement (in-Double[256])
   * @param xas_ctrl           BatchDC parameters in character string format - not yet used (in-Character[512])
   */
   public static native void BatchDCSetParams(int[] xai_ctrl, double[] xar_ctrl, String xas_ctrl);


   /**
   * Returns DC control parameters using array format
   * @param xa_dcCtrl          Output DC control parameters, see XA_DCCTRL_? for array arrangement (out-Double[64])
   */
   public static native void BatchDCGetCtrlArr(double[] xa_dcCtrl);


   /**
   * Sets DC control parameters using array format
   * @param xa_dcCtrl          Input DC control parameters, see XA_DCCTRL_? for array arrangement (in-Double[64])
   * @return 0 if the input parameters are set successfully, non-0 if there is an error
   */
   public static native int BatchDCSetCtrlArr(double[] xa_dcCtrl);


   /**
   * Initializes DC parameters for the satellite
   * See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   * @param satKey             The satellite's unique key (in-Long)
   * @param numObs             Actual number of obs being selected to be used in the DC (out-Integer)
   * @param obsKeys            The array in which to store the obsKeys (out-Long[*])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int BatchDCInitSat(long satKey, int[] numObs, long[] obsKeys, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Initializes DC parameters for the satellite using only the provided/preselected obsKeys (not all loaded obs) (Thread-Safe)
   * See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_dcCtrl          Input DC control parameters (in-Double[64])
   * @param numObs             Actual number of obs being selected to be used in the DC (in-Integer)
   * @param obsKeys            The array contains preselected obsKeys (in-Long[*])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int BatchDCInitSatObsKeys(long satKey, double[] xa_dcCtrl, int numObs, long[] obsKeys, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Initializes DC parameters for the satellite using only obs that match the provided obs selection criteria (not all loaded obs) (Thread-Safe)
   * See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   * Note: This can be accomplished by using ObsGetSelected() and BatchDCInitSatObsKeys() as well
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_dcCtrl          Input DC control parameters (in-Double[64])
   * @param xa_selob           Input obs selection criteria for the DC of this satellite, see XA_SELOB_? for array arrangement (in-Double[128])
   * @param numObs             Actual number of obs being selected (matching the specified obs selection criteria) to be used in the DC (out-Integer)
   * @param obsKeys            The array in which to store the obsKeys (out-Long[*])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int BatchDCInitSatObsSel(long satKey, double[] xa_dcCtrl, double[] xa_selob, int[] numObs, long[] obsKeys, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Performs batch-least-square differential corrections to the specified satellite and
   * return the corrected elements and related data - using all loaded obs
   * <br>
   * Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
   * <br>
   * See BatchDCGetParams for the structure of the xai_dcElts array.
   * <br>
   * The table below shows the structure of the integer array xar_dcElts:
   * <table>
   *     <caption>table</caption>
   *     <tr>
   *         <td><b>Index</b></td>
   *         <td><b>Index Interpretation</b></td>
   *     </tr>
   *     <tr><td>0</td><td>elset's epoch time in days since 1950 UTC</td></tr>
   *     <tr><td>1</td><td>n-dot/2  (for SGP, eph-type = 0)</td></tr>
   *     <tr><td>2</td><td>n-double-dot/6  (for SGP, eph-type = 0)</td></tr>
   *     <tr><td>3</td><td>either SGP4 bStar (1/er) or SP bTerm (m2/kg)</td></tr>
   *     <tr><td>4</td><td>SP agom (m**2/kg)</td></tr>
   *     <tr><td>5</td><td>SP outgassing parameter (km/s**2)</td></tr>
   *     <tr><td>6</td><td>semi major axis (km)</td></tr>
   *     <tr><td>7</td><td>eccentricity</td></tr>
   *     <tr><td>8</td><td>inclination (deg)</td></tr>
   *     <tr><td>9</td><td>mean anamoly (deg)</td></tr>
   *     <tr><td>10</td><td>right ascension of the ascending node (deg)</td></tr>
   *     <tr><td>11</td><td>argument of perigee (deg)</td></tr>
   *     <tr><td>12</td><td>AF</td></tr>
   *     <tr><td>13</td><td>AG</td></tr>
   *     <tr><td>14</td><td>CHI</td></tr>
   *     <tr><td>15</td><td>PSI</td></tr>
   *     <tr><td>16</td><td>mean longitude (deg)</td></tr>
   *     <tr><td>17</td><td>mean motion (revs/day)</td></tr>
   *     <tr><td>18</td><td>ECI posX (km)</td></tr>
   *     <tr><td>19</td><td>ECI posY (km)</td></tr>
   *     <tr><td>20</td><td>ECI posZ (km)</td></tr>
   *     <tr><td>21</td><td>ECI velX (km/s)</td></tr>
   *     <tr><td>22</td><td>ECI velY (km/s)</td></tr>
   *     <tr><td>23</td><td>ECI velZ (km/s)</td></tr>
   *     <tr><td></td><td></td></tr>
   *     <tr><td>40</td><td>RMS (km)</td></tr>
   *     <tr><td>41</td><td>unweighted RMS (km)</td></tr>
   *     <tr><td>42</td><td>delta T RMS (min)</td></tr>
   *     <tr><td>43</td><td>beta RMS (deg)</td></tr>
   *     <tr><td>44</td><td>delta height RMS (km)</td></tr>
   *     <tr><td>45</td><td>convergence value (km)</td></tr>
   *     <tr><td>46</td><td>predicted RMS (km)</td></tr>
   *     <tr><td></td><td></td></tr>
   *     <tr><td>60</td><td>covariance diagonal L</td></tr>
   *     <tr><td>61</td><td>covariance diagonal N</td></tr>
   *     <tr><td>62</td><td>covariance diagonal CHI</td></tr>
   *     <tr><td>63</td><td>covariance diagonal PSI</td></tr>
   *     <tr><td>64</td><td>covariance diagonal AF</td></tr>
   *     <tr><td>65</td><td>covariance diagonal AG</td></tr>
   *     <tr><td>66</td><td>covariance diagonal BTERM</td></tr>
   *     <tr><td>67</td><td>covariance not used</td></tr>
   *     <tr><td>68</td><td>covariance diagonal AGOM</td></tr>
   *     <tr><td></td><td></td></tr>
   *     <tr><td>200-244</td><td>equinoctial covariance matrix - the lower triangular half 200-244</td></tr>
   * </table>
   * @param satKey             The satellite's unique key (in-Long)
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, 1: dc fails, best elset returned, 2: dc fails, no eleset returned
   */
   public static native int BatchDCSolve(long satKey, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Performs batch-least-square differential corrections to the specified satellite and
   * return the corrected elements and related data - using only the provided obsKeys (not all loaded obs)
   * Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
   * See BatchDCGetParams for the structure of the xai_dcElts array.
   * See BatchDCSolve for the structure of the xar_dcElts array.
   * @param satKey             The satellite's unique key (in-Long)
   * @param obsKeys            The array of obs keys that wil be used in the DC (in-Long[*])
   * @param numObs             The size of the obsKeys array (in-Integer)
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, 1: dc fails, best elset returned, 2: dc fails, no eleset returned
   */
   public static native int BatchDCSolveSelObs(long satKey, long[] obsKeys, int numObs, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Removes a satellite, represented by the satKey, from BatchDC's memory
   * @param satKey             The unique key of the satellite to be removed (in-Long)
   * @return 0 if the satellite is removed successfully, non-0 if there is an error
   */
   public static native int BatchDCRemoveSat(long satKey);


   /**
   * Iterates DC for the satellite
   * <br>
   * xa_ObsRes size is [numObs, 100].  xa_rejFlg size is [numObs, 32].
   * <br>
   * The table below shows the values contained in xa_ObsRes for each ob:
   * <table>
   *     <caption>table</caption>
   *     <tr>
   *         <td><b>Index</b></td>
   *         <td><b>Index Interpretation</b></td>
   *     </tr>
   *     <tr><td> 0 </td><td> Azimuth residual (deg)</td></tr>
   *     <tr><td> 1 </td><td> Elevation residual (deg)</td></tr>
   *     <tr><td> 2 </td><td> Range residual (km)</td></tr>
   *     <tr><td> 3 </td><td> Height residual (deg)</td></tr>
   *     <tr><td> 4 </td><td> Beta residual (deg)</td></tr>
   *     <tr><td> 5 </td><td> Delta T residual (min)</td></tr>
   *     <tr><td> 6 </td><td> Vector magnitude (km)</td></tr>
   *     <tr><td> 7 </td><td> Time since epoch (days)</td></tr>
   *     <tr><td> 8 </td><td> True argument of latitude (deg)</td></tr>
   *     <tr><td> 9 </td><td> Revolution number  </td></tr>
   *     <tr><td>10 </td><td> Range rate residual (km/sec)</td></tr>
   *     <tr><td>11 </td><td> observation ASTAT</td></tr>
   *     <tr><td>12 </td><td> observation type</td></tr>
   *     <tr><td>13 </td><td> satellite true anomaly (deg)</td></tr>
   *     <tr><td>14 </td><td> satellite elevation (deg)</td></tr>
   *     <tr><td>15 </td><td> satellite maintenance category</td></tr>
   *     <tr><td>16 </td><td> obs time in ds50UTC</td></tr>
   *     <tr><td>17 </td><td> obs azimuth (deg)</td></tr>
   *     <tr><td>18 </td><td> obs elevation (deg)</td></tr>
   *     <tr><td>19 </td><td> Velocity angle residual (deg)</td></tr>
   *     <tr><td>20 </td><td> Angular momentum residual (deg)</td></tr>
   *     <tr><td>21 </td><td> Right ascension residual (deg) (for ob types 5, 9, 19)</td></tr>
   *     <tr><td>22 </td><td> Declination residual (deg) (for ob types 5, 9, 19)</td></tr>
   *     <tr><td>23 </td><td> Delta X position (km)</td></tr>
   *     <tr><td>24 </td><td> Delta Y position (km)</td></tr>
   *     <tr><td>25 </td><td> Delta Z position (km)</td></tr>
   *     <tr><td>26 </td><td> Delta X velocity (km/sec)</td></tr>
   *     <tr><td>27 </td><td> Delta Y velocity (km/sec)</td></tr>
   *     <tr><td>28 </td><td> Delta Z velocity (km/sec)</td></tr>
   *     <tr><td>29 </td><td> Angle only obs computed range (km)</td></tr>
   *     <tr><td>30 </td><td> obs azimuth (deg)</td></tr>
   *     <tr><td>31 </td><td> obs elevation (deg)</td></tr>
   * </table>
   * <br>
   * See BatchDCGetParams for the structure of the xai_dcElts array.
   * <br>
   * See BatchDCSolve for the structure of the xar_dcElts array.
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_ObsRes          The resulting array of obs residuals, see XA_OBSRES_? for array arrangement (out-Double[*, 100])
   * @param xa_rejFlg          Obs rejection flag array, see XA_REJFLG_? for array arrangement (out-Integer[*, 32])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return iterating code: 0=successful, 1=has error, 2=iterating, 3=diverged (try to recover)
   */
   public static native int BatchDCIterate(long satKey, double[][] xa_ObsRes, int[][] xa_rejFlg, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Iterates DC for the satellite
   * <br>
   * xa_ObsRes size is [numObs, 100].  xa_rejFlg size is [numObs, 32].
   * <br>
   * The table below shows the values contained in xa_ObsRes for each ob:
   * <table>
   *     <caption>table</caption>
   *     <tr>
   *         <td><b>Index</b></td>
   *         <td><b>Index Interpretation</b></td>
   *     </tr>
   *     <tr><td> 0 </td><td> Azimuth residual (deg)</td></tr>
   *     <tr><td> 1 </td><td> Elevation residual (deg)</td></tr>
   *     <tr><td> 2 </td><td> Range residual (km)</td></tr>
   *     <tr><td> 3 </td><td> Height residual (deg)</td></tr>
   *     <tr><td> 4 </td><td> Beta residual (deg)</td></tr>
   *     <tr><td> 5 </td><td> Delta T residual (min)</td></tr>
   *     <tr><td> 6 </td><td> Vector magnitude (km)</td></tr>
   *     <tr><td> 7 </td><td> Time since epoch (days)</td></tr>
   *     <tr><td> 8 </td><td> True argument of latitude (deg)</td></tr>
   *     <tr><td> 9 </td><td> Revolution number  </td></tr>
   *     <tr><td>10 </td><td> Range rate residual (km/sec)</td></tr>
   *     <tr><td>11 </td><td> observation ASTAT</td></tr>
   *     <tr><td>12 </td><td> observation type</td></tr>
   *     <tr><td>13 </td><td> satellite true anomaly (deg)</td></tr>
   *     <tr><td>14 </td><td> satellite elevation (deg)</td></tr>
   *     <tr><td>15 </td><td> satellite maintenance category</td></tr>
   *     <tr><td>16 </td><td> obs time in ds50UTC</td></tr>
   *     <tr><td>17 </td><td> obs azimuth (deg)</td></tr>
   *     <tr><td>18 </td><td> obs elevation (deg)</td></tr>
   *     <tr><td>19 </td><td> Velocity angle residual (deg)</td></tr>
   *     <tr><td>20 </td><td> Angular momentum residual (deg)</td></tr>
   *     <tr><td>21 </td><td> Right ascension residual (deg) (for ob types 5, 9, 19)</td></tr>
   *     <tr><td>22 </td><td> Declination residual (deg) (for ob types 5, 9, 19)</td></tr>
   *     <tr><td>23 </td><td> Delta X position (km)</td></tr>
   *     <tr><td>24 </td><td> Delta Y position (km)</td></tr>
   *     <tr><td>25 </td><td> Delta Z position (km)</td></tr>
   *     <tr><td>26 </td><td> Delta X velocity (km/sec)</td></tr>
   *     <tr><td>27 </td><td> Delta Y velocity (km/sec)</td></tr>
   *     <tr><td>28 </td><td> Delta Z velocity (km/sec)</td></tr>
   *     <tr><td>29 </td><td> Angle only obs computed range (km)</td></tr>
   *     <tr><td>30 </td><td> obs azimuth (deg)</td></tr>
   *     <tr><td>31 </td><td> obs elevation (deg)</td></tr>
   * </table>
   * <br>
   * See BatchDCGetParams for the structure of the xai_dcElts array.
   * <br>
   * See BatchDCSolve for the structure of the xar_dcElts array.
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_ObsRes          The resulting array of obs residuals, see XA_OBSRES_? for array arrangement (out-Double[])
   * @param xa_rejFlg          Obs rejection flag array, see XA_REJFLG_? for array arrangement (out-Integer[])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[])
   * @return iterating code: 0=successful, 1=has error, 2=iterating, 3=diverged (try to recover)
   */
   public static native int BatchDCIterate2Das1D(long satKey, double[] xa_ObsRes, int[][] xa_rejFlg, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Returns a concatenated string representation of a VCM generated by a successful DC
   * @param satKey             The satellite's unique key (in-Long)
   * @param vcmLines           The resulting concatenated string representation of the VCM, (out-Character[4000])
   * @return 0 if successful, non-0 on error
   */
   public static native int BatchDCGetVcm(long satKey, byte[] vcmLines);


   /**
   * Returns the full file name of the output SP Vector file that was specified using "SPVOUT = " 
   * in the main input file or using the BatchDCSetSpVOutFileName() function call
   * @param spVOutFile         The output file that stores SP output message (out-Character[512])
   */
   public static native void BatchDCGetSpVOut(byte[] spVOutFile);


   /**
   * Sets the full file name of the SP Vector output file which will be used to store the generated SP vector data
   * @param spVOutFile         The output file that stores SP vector output (VCM message) (in-Character[512])
   */
   public static native void BatchDCSetSpVOut(String spVOutFile);


   /**
   * Resets all BatchDC control parameters back to their default values and empties the DC binary tree (objects created by BatchDCInitSat)
   */
   public static native void BatchDCResetAll();


   /**
   * Returns DC acceptance criteria data for the specified satellite
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_ac              acceptance criteria values in an array, see XA_AC_? for array arrangement (out-Double[64])
   * @return 0 if the acceptance criteria is successfully returned, non-0 if there is an error
   */
   public static native int BatchDCGetAccptCrit(long satKey, double[] xa_ac);


   /**
   * Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   * returns the corrected SGP4/SGP4-XP elements and related data
   * Note: No need to initialize VCM before calling this method
   * @param satKey             The satellite's unique key of the specified satellite (must be VCM or SPVEC) (in-Long)
   * @param xa_egpCtrl         Array (in/out) containing settings for SpToEGP conversion, see XA_EGPCTRL_? for array arrangement (inout-Double[64])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, 1: dc fails, best elset returned, 2: dc fails, no eleset returned
   */
   public static native int SpToEGP(long satKey, double[] xa_egpCtrl, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   * returns the corrected elements SGP4/SGP4-XP in form of a TLE
   * Note: No need to initialize VCM before calling this method
   * @param satKey             The satellite's unique key of the specified satellite (must be VCM or SPVEC) (in-Long)
   * @param xa_egpCtrl         Array (in/out) containing settings for SpToEGP conversion, see XA_EGPCTRL_? for array arrangement (inout-Double[64])
   * @param line1              Returned first line of a TLE. (out-Character[512])
   * @param line2              Returned second line of a TLE (out-Character[512])
   * @return 0 if successful, 1: dc fails, best elset returned, 2: dc fails, no eleset returned
   */
   public static native int SpToTle(long satKey, double[] xa_egpCtrl, byte[] line1, byte[] line2);


   /**
   * Combines SpToEGP and SpToTle functions into just one function call
   * Note: No need to initialize VCM before calling this method
   * @param satKey             The satellite's unique key of the specified satellite (must be VCM or SPVEC) (in-Long)
   * @param xa_egpCtrl         Array (in/out) containing settings for SpToEGP conversion, see XA_EGPCTRL_? for array arrangement (inout-Double[64])
   * @param line1              Returned first line of a TLE. (out-Character[512])
   * @param line2              Returned second line of a TLE (out-Character[512])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, 1: dc fails, best elset returned, 2: dc fails, no eleset returned
   */
   public static native int SpToTleComb(long satKey, double[] xa_egpCtrl, byte[] line1, byte[] line2, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   * returns the corrected elements SGP4/SGP4-XP in form of a TLE
   * Note: No need to initialize VCM before calling this method
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_egpCtrl         Array (in/out) containing settings for SpToEGP conversion, see XA_EGPCTRL_? for array arrangement (inout-Double[64])
   * @param csvLine            A string to hold the TLE in csv format. (out-Character[512])
   * @return 0 if successful, 1: dc fails, best elset returned, 2: dc fails, no eleset returned
   */
   public static native int SpToCsv(long satKey, double[] xa_egpCtrl, byte[] csvLine);


   /**
   * Combines SpToEGP and SpToCsv functions into just one function call
   * Note: No need to initialize VCM before calling this method
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_egpCtrl         Array (in/out) containing settings for SpToEGP conversion, see XA_EGPCTRL_? for array arrangement (inout-Double[64])
   * @param csvLine            A string to hold the TLE in csv format. (out-Character[512])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, 1: dc fails, best elset returned, 2: dc fails, no eleset returned
   */
   public static native int SpToCsvComb(long satKey, double[] xa_egpCtrl, byte[] csvLine, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Performs batch-least-square differential corrections using the input external ephemeris and treating them as observations and
   * returns the corrected SGP4/SGP4-XP elements and related data
   * @param extEphFile         The name of the file containing external ephemeris data to be used in EGP (in-Character[512])
   * @param xa_egpCtrl         Array (in/out) containing settings for SpToEGP conversion, see XA_EGPCTRL_? for array arrangement (inout-Double[64])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, 1: dc fails, best elset returned, 2: dc fails, no eleset returned
   */
   public static native int ExtEphemToEGP(String extEphFile, double[] xa_egpCtrl, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);


   /**
   * Performs IOMOD/IODET and then batch-least-square differential corrections on the input observations via their obsKeys (Thread-Safe) 
   * @param numObs             Number of preselected obs to be used in IOMOD and then DC (in-Integer)
   * @param obsKeys            The array contains preselected obsKeys (in-Long[*])
   * @param xa_iomdc           Array containing settings for the DC, see XA_IOMDC_? for array arrangement (in-Double[64])
   * @param xai_dcElts         Array of integers containing resulting BatchDC data, see XAI_DCELTS_? for array arrangement (out-Integer[256])
   * @param xar_dcElts         Array of doubles containing resulting BatchDC data, see XAR_DCELTS_? for array arrangement (out-Double[256])
   * @param xas_dcElts         String containing resulting BatchDC data, see XAS_DCELTS_? for substring arrangement (out-Character[512])
   * @return 0 if successful, 1: dc fails, best elset returned, 2: dc fails, no eleset returned
   */
   public static native int IomodDC(int numObs, long[] obsKeys, double[] xa_iomdc, int[] xai_dcElts, double[] xar_dcElts, byte[] xas_dcElts);
   // Different DC propagation method
   /** DC propagator method is GP */
   public static final int DCPROPTYPE_GP =  0;
   /** DC propagator method is SGP4-XP */
   public static final int DCPROPTYPE_XP =  4;
   /** DC propagator method is SP */
   public static final int DCPROPTYPE_SP = 99;
   
   // DC iterating returned code
   /** DC was successful */
   public static final int ITERCODE_DONE      = 0;
   /** DC has error */
   public static final int ITERCODE_ERROR     = 1;
   /** DC is still iterating */
   public static final int ITERCODE_ITERATING = 2;
   /** DC diverged but trying to recover */
   public static final int ITERCODE_DIVERGED  = 3;
   
   // indexes represent epoch placement options
   /** Nodal crossing nearest latest obs */
   public static final int EPFLG_NODALXINGLATESTOB = 0;
   /** Exact time of latest obs */
   public static final int EPFLG_LATESTOB          = 1;
   /** Nodal crossing closest to specified time */
   public static final int EPFLG_NODALXINGATTIME   = 2;
   /** Do not change epoch */
   public static final int EPFLG_ATEPOCH           = 3;
   /** Exact at specified time */
   public static final int EPFLG_ATSPECIFIEDTIME   = 4;
   /** Middle of obs span */
   public static final int EPFLG_MIDDLEOBSSPAN     = 5;
   /** Exact time of earliest obs */
   public static final int EPFLG_EARLIESTOB        = 6;
   /** Beginning of day of Epoch, good for eGP */
   public static final int EPFLG_BEGINDAYEPOCH     = 7;
   /** Beginning of day of Last obs */
   public static final int EPFLG_BEGINDAYLATESTOB  = 8;
   /** Nodal crossing nearest epoch, good for eGP */
   public static final int EPFLG_NODALXINGEPOCH    = 9;
   
   // Different correction types
   public static final int CORT_TIME   = 0;
   public static final int CORT_PLANE  = 1;
   public static final int CORT_7ELT   = 2;
   public static final int CORT_INTRK  = 3;
   public static final int CORT_8ELT   = 4;
   public static final int CORT_SUBELT = 5;
   
   // Different element correction order
   /** 7-element only [default] */
   public static final int CORORD_7ELT       = 0;
   /** time (SP: L, n, B), then 7-element */
   public static final int CORORD_TIM7ELT    = 1;
   /** time, plane, then 7-element (SGP4) or 7-elt only; pht/pi vs Af/Ag (SP) */
   public static final int CORORD_TIMPLN7ELT = 2;
   /** plane, time, then 7-element (SGP4) or 7-elt only; e/pi vs Af/Ag (SP) */
   public static final int CORORD_PLNTIM7ELT = 3;
   /** plane, then 7-element (SGP4) or L, n, B, then 7-elt, with pht/pi vs Af/Ag (SP) */
   public static final int CORORD_PLN7ELT    = 4;
   /** n-only, then 7-element */
   public static final int CORORD_N7ELT      = 5;
   /** L-only, then 7-element */
   public static final int CORORD_L7ELT      = 6;
   /** L & n only, then 7-element */
   public static final int CORORD_LN7ELT     = 7;
   /** Af/Ag, L, n only, then 7-element */
   public static final int CORORD_AFAGLN7ELT = 8;
   /** 6-element, then 7-element */
   public static final int CORORD_6ELT7ELT   = 9;
   
   
   // indexes for EGP control parameters for input VCM/SPVEC-typed elsets or external ephemeris file
   /** Not being used yet */
   public static final int XA_EGPCTRL_OPTION     =  0;
   /** DC element type: 0=SPG4, 4=SGP4-XP */
   public static final int XA_EGPCTRL_DCELTTYPE  =  1;
   /** Fit span start time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select) */
   public static final int XA_EGPCTRL_STARTMSE   =  2;
   /** Fit span stop time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select) */
   public static final int XA_EGPCTRL_STOPMSE    =  3;
   /** Step size in minutes (how often obs are generated) (set to zero to auto select and then actual step size will be returned) */
   public static final int XA_EGPCTRL_STEPMIN    =  4;
   /** Drag correction: 0=no correction, 1=correct BStar(SGP4)/BTerm(SGP4-XP), 2=correct X(SGP4 only) */
   public static final int XA_EGPCTRL_DRAGCOR    =  5;
   /** agom correction: 0=no correction, 1=correct agom (only when DC element = SGP4-XP) */
   public static final int XA_EGPCTRL_AGOMCOR    =  6;
   /** Epoch placement flag - see EPFLG_? for available options */
   public static final int XA_EGPCTRL_EPFLG      =  7;
   /** Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)                 * */
   public static final int XA_EGPCTRL_NEWEPOCH   =  8;
   
   /** Addtional option if input is external ephemeris file - BStar(SGP4)/BTerm(SGP4-XP) if XA_EGPCTRL_DRAGCOR is set (= 1) */
   public static final int XA_EGPCTRL_BVAL       =  9;
   /** Addtional option if input is external ephemeris file - agom value if XA_EGPCTRL_AGOMCOR is set (= 1) */
   public static final int XA_EGPCTRL_AGOMVAL    = 10;
   
   /** correction order */
   public static final int XA_EGPCTRL_ORDERCOR   = 11;
   /** Max # of iterations before declaring divergence [10] */
   public static final int XA_EGPCTRL_MAXOFITERS = 12;
   
   /** satellite number */
   public static final int XA_EGPCTRL_SATNUM     = 63;
   
   public static final int XA_EGPCTRL_SIZE       = 64;
   
   
   
   // DC setting parameters
   
   public static final int MAX_PARAMS = 256;
   
   
   // DC print options
   /** print first and last iteration */
   public static final int DC_PRINT_FIRSTBEST   =  0;
   /** print every pass and summary */
   public static final int DC_PRINT_ALLPASS     =  1;
   /** print summary only */
   public static final int DC_PRINT_SUMONLY     =  2;
   /** print output elemenets only */
   public static final int DC_PRINT_ELTONLY     =  3;
   /** do not print anything */
   public static final int DC_PRINT_NONE        =  4;
   
   // Iteration summary options
   /** print summary every iteration in Keplerian elts */
   public static final int ITER_SUM_KEP         =  1;
   /** print summary every iteration in Equinoctial elts */
   public static final int ITER_SUM_EQNX        =  2;
   
   // indexes for integer data fields
   /** DC print option */
   public static final int XAI_CTRL_PRINTOPTION  =  0;
   /** Apply biases from sensor file */
   public static final int XAI_CTRL_DEBIASOBS    =  1;
   /** Weighed DC flag */
   public static final int XAI_CTRL_WEIGHTEDDC   =  2;
   /** Epoch placement flag - see EPFLG_? for available options */
   public static final int XAI_CTRL_EPOCHOPTION  =  3;
   /** Element correction flag - Ag */
   public static final int XAI_CTRL_CORRECT_AG   =  4;
   /** Element correction flag - Af */
   public static final int XAI_CTRL_CORRECT_AF   =  5;
   /** Element correction flag - Psi */
   public static final int XAI_CTRL_CORRECT_PSI  =  6;
   /** Element correction flag - Chi */
   public static final int XAI_CTRL_CORRECT_CHI  =  7;
   /** Element correction flag - L */
   public static final int XAI_CTRL_CORRECT_L    =  8;
   /** Element correction flag - N */
   public static final int XAI_CTRL_CORRECT_N    =  9;
   /** Element correction flag - B* (SGP4) B (SP) */
   public static final int XAI_CTRL_CORRECT_B    = 10;
   /** Element correction flag - Agom (SP) */
   public static final int XAI_CTRL_CORRECT_AGOM = 11;
   /** Correction order */
   public static final int XAI_CTRL_CORRECTORDER = 12;
   /** Correct by the specified correction order for 1 iteration only */
   public static final int XAI_CTRL_FOR1ITERONLY = 13;
   /** Flag specifies which residuals are used for RMS calculation and convergence */
   public static final int XAI_CTRL_RESIDSELECT  = 14;
   /** Flag; if set, produce sensor performance analysis summary */
   public static final int XAI_CTRL_SENPERFORM   = 15;
   /** Flag; if set, deweight according to # of obs per track */
   public static final int XAI_CTRL_DWOBSPERTRCK = 16;
   /** Iteration summary control */
   public static final int XAI_CTRL_ITERSUMOPT   = 17;
   /** Partials method */
   public static final int XAI_CTRL_PARTIALMETH  = 18;
   /** Light time correction control */
   public static final int XAI_CTRL_LTC          = 19;
   /** Number of iteration to allow no auto rejection of residuals */
   public static final int XAI_CTRL_BRUCE        = 20;
   /** Propagation method - GP=0, XP=4, SP=99 */
   public static final int XAI_CTRL_PROPMETHOD   = 21;
   /** Flag; if set, correct B* vs X */
   public static final int XAI_CTRL_CORRECTBVSX  = 22;
   /** Max # of iterations before declaring divergence */
   public static final int XAI_CTRL_MAXOFITERS   = 23;
   /** Use predicted RMS versus previous RMS for convergence testing */
   public static final int XAI_CTRL_USEPREDRMS   = 24;
   /** Residual computation method (GP only): DELTA/427M=1, SPADOC4=2 */
   public static final int XAI_CTRL_RESCOMPMETH  = 25;
   /** Flag; if set, use angle rates (obstypes = 4, 11) */
   public static final int XAI_CTRL_USEANGRATES  = 26;
   
   public static final int XAI_CTRL_SIZE         = 256;
   
   
   
   // indexes for real data fields
   /** RMS multiplier */
   public static final int XAR_CTRL_RMSMULT        =   0;
   /** Time of specified epoch */
   public static final int XAR_CTRL_USEREPOCH      =   1;
   /** Convergence criteria on time correction (%) */
   public static final int XAR_CTRL_CNVCRITONT     =   2;
   /** First pass delta-t rejection criteria */
   public static final int XAR_CTRL_1STPASDELTAT   =   3;
   /** Convergence criteria on 7-elt correction (%) */
   public static final int XAR_CTRL_CNVCRITON7ELT  =   4;
   /** reset value for B term in subset correction */
   public static final int XAR_CTRL_BRESET         =   5;
   public static final int XAR_CTRL_SIZE           = 256;
   
   
   // indexes for accessing DC's integer data
   /** satellite number */
   public static final int XAI_DCELTS_SATNUM       =   0;
   /** elset number */
   public static final int XAI_DCELTS_ELSETNUM     =   1;
   /** elset's orbital/element type - see ELTTYPE_ constants for a list of possible values */
   public static final int XAI_DCELTS_ORBTYPE      =   2;
   /** propagation method - see PROPTYPE_ constants for a list of possible values (GP=1, SP=2, External Ephemeris=3) */
   public static final int XAI_DCELTS_PROPTYPE     =   3;
   /** spectr mode */
   public static final int XAI_DCELTS_SPECTR       =   4;
   /** epoch revolution number */
   public static final int XAI_DCELTS_REVNUM       =   5;
   /** correction type: 0=TIME, 1=PLANE", 2=7-ELT, 3=IN-TRK, 4=8-ELT, 5=SUBELT; see CORT_? for available values */
   public static final int XAI_DCELTS_CORRTYPE     =   6;
   
   /** total iteration count */
   public static final int XAI_DCELTS_ITERCOUNT    =  10;
   /** sub iteration count */
   public static final int XAI_DCELTS_SUBITER      =  11;
   /** # residual accepted */
   public static final int XAI_DCELTS_RESACC       =  12;
   /** # residual rejected */
   public static final int XAI_DCELTS_RESREJ       =  13;
   
   /** 20-28 correction element flags */
   public static final int XAI_DCELTS_CORRFLGS     =  20;
   
   public static final int XAI_DCELTS_SIZE         = 256;
   
   // indexes for accessing DC's real data
   /** elset's epoch time in days since 1950 UTC */
   public static final int XAR_DCELTS_EPOCHDS50UTC =   0;
   /** n-dot/2  (for SGP, eph-type = 0) */
   public static final int XAR_DCELTS_NDOT         =   1;
   /** n-double-dot/6  (for SGP, eph-type = 0) */
   public static final int XAR_DCELTS_N2DOT        =   2;
   /** either SGP4 bStar (1/er) or SGP4-XP/SP bTerm (m2/kg) */
   public static final int XAR_DCELTS_BFIELD       =   3;
   /** SGP4-XP/SP agom (m**2/kg) */
   public static final int XAR_DCELTS_AGOM         =   4;
   /** SP outgassing parameter (km/s**2) */
   public static final int XAR_DCELTS_OGPARM       =   5;
   /** semi major axis (km) */
   public static final int XAR_DCELTS_KEP_A        =   6;
   /** eccentricity */
   public static final int XAR_DCELTS_KEP_E        =   7;
   /** inclination (deg) */
   public static final int XAR_DCELTS_KEP_INCLI    =   8;
   /** mean anamoly (deg) */
   public static final int XAR_DCELTS_KEP_MA       =   9;
   /** right ascension of the ascending node (deg) */
   public static final int XAR_DCELTS_KEP_NODE     =  10;
   /** argument of perigee (deg) */
   public static final int XAR_DCELTS_KEP_OMEGA    =  11;
   /** AF */
   public static final int XAR_DCELTS_EQNX_AF      =  12;
   /** AG */
   public static final int XAR_DCELTS_EQNX_AG      =  13;
   /** CHI */
   public static final int XAR_DCELTS_EQNX_CHI     =  14;
   /** PSI */
   public static final int XAR_DCELTS_EQNX_PSI     =  15;
   /** mean longitude (deg) */
   public static final int XAR_DCELTS_EQNX_L       =  16;
   /** mean motion (revs/day) */
   public static final int XAR_DCELTS_EQNX_N       =  17;
   /** ECI posX (km) */
   public static final int XAR_DCELTS_POSX         =  18;
   /** ECI posY (km) */
   public static final int XAR_DCELTS_POSY         =  19;
   /** ECI posZ (km) */
   public static final int XAR_DCELTS_POSZ         =  20;
   /** ECI velX (km/s) */
   public static final int XAR_DCELTS_VELX         =  21;
   /** ECI velY (km/s) */
   public static final int XAR_DCELTS_VELY         =  22;
   /** ECI velZ (km/s) */
   public static final int XAR_DCELTS_VELZ         =  23;
   
   /** RMS (km) */
   public static final int XAR_DCELTS_RMS          =  40;
   /** unweighted RMS (km) */
   public static final int XAR_DCELTS_RMSUNWTD     =  41;
   /** delta T RMS (min) */
   public static final int XAR_DCELTS_DELTATRMS    =  42;
   /** beta RMS (deg) */
   public static final int XAR_DCELTS_BETARMS      =  43;
   /** delta height RMS (km) */
   public static final int XAR_DCELTS_DELTAHTRMS   =  44;
   /** convergence value (km) */
   public static final int XAR_DCELTS_CONVQLTY     =  45;
   /** predicted RMS (km) */
   public static final int XAR_DCELTS_RMSPD        =  46;
   
   /** covariance diagonal L */
   public static final int XAR_DCELTS_COVL         =  60;
   /** covariance diagonal N */
   public static final int XAR_DCELTS_COVN         =  61;
   /** covariance diagonal CHI */
   public static final int XAR_DCELTS_COVCHI       =  62;
   /** covariance diagonal PSI */
   public static final int XAR_DCELTS_COVPSI       =  63;
   /** covariance diagonal AF */
   public static final int XAR_DCELTS_COVAF        =  64;
   /** covariance diagonal AG */
   public static final int XAR_DCELTS_COVAG        =  65;
   /** covariance diagonal BTERM */
   public static final int XAR_DCELTS_COVBTERM     =  66;
   /** covariance not used */
   public static final int XAR_DCELTS_COVNA        =  67;
   /** covariance diagonal AGOM */
   public static final int XAR_DCELTS_COVAGOM      =  68;
   
   /** max partial residual (km) */
   public static final int XAR_DCELTS_XMAX         =  70;
   /** max velocity resid (km/sec) */
   public static final int XAR_DCELTS_XMAX2        =  71;
   /** max beta residual (deg) */
   public static final int XAR_DCELTS_XMAX3        =  72;
   /** max delta-t residual (min) */
   public static final int XAR_DCELTS_XMAX4        =  73;
   /** low argument of latitude coverage (deg) */
   public static final int XAR_DCELTS_PATCL        =  74;
   /** high argument of latitude coverage (deg) */
   public static final int XAR_DCELTS_PATCH        =  75;
   
   /** equinoctial covariance matrix - the lower triangular half 200-244 */
   public static final int XAR_DCELTS_EQNXCOVMTX   = 200;
   
   public static final int XAR_DCELTS_SIZE         = 256;
   
   // indexes for accessing obs rejection flags
   /** satellite has decayed at the time of obs */
   public static final int XA_REJFLG_DECAYED      =   0;
   /** obs residual computation error code */
   public static final int XA_REJFLG_ERROR        =   1;
   /** right ascension residual rejected */
   public static final int XA_REJFLG_RA           =   2;
   /** beta residual rejected */
   public static final int XA_REJFLG_BETA         =   3;
   /** declination residual rejected */
   public static final int XA_REJFLG_DEC          =   4;
   /** delta h residual rejected */
   public static final int XA_REJFLG_HEIGHT       =   5;
   /** range residual rejected */
   public static final int XA_REJFLG_RANGE        =   6;
   /** range rate residual rejected */
   public static final int XA_REJFLG_RR           =   7;
   /** delta t residual rejected */
   public static final int XA_REJFLG_TIME         =   8;
   
   public static final int XA_REJFLG_SIZE         =  32;
   
   // indexes for accessing DC's acceptance criteria data
   /** standard - days from epoch */
   public static final int XA_AC_STD_EPOCH    =   0;
   /** standard - number of residuals */
   public static final int XA_AC_STD_NORES    =   1;
   /** standard - percent residual */
   public static final int XA_AC_STD_PRCNTRES =   2;
   /** standard - RMS (km) */
   public static final int XA_AC_STD_RMS      =   3;
   /** standard - obs span (days) */
   public static final int XA_AC_STD_OBSSPAN  =   4;
   /** standard - change in plan (deg) */
   public static final int XA_AC_STD_DELTAW   =   5;
   /** standard - change in abar */
   public static final int XA_AC_STD_DELTAABAR=   6;
   /** standard - change in N (rev/day) */
   public static final int XA_AC_STD_DELTAN   =   7;
   /** standard - change in B term */
   public static final int XA_AC_STD_DELTAB   =   8;
   
   /** actual - days from epoch */
   public static final int XA_AC_ACT_EPOCH    =  20;
   /** actual - number of residuals */
   public static final int XA_AC_ACT_NORES    =  21;
   /** actual - percent residual */
   public static final int XA_AC_ACT_PRCNTRES =  22;
   /** actual - RMS (km) */
   public static final int XA_AC_ACT_RMS      =  23;
   /** actual - obs span (days) */
   public static final int XA_AC_ACT_OBSSPAN  =  24;
   /** actual - change in plan (deg) */
   public static final int XA_AC_ACT_DELTAW   =  25;
   /** actual - change in abar */
   public static final int XA_AC_ACT_DELTAABAR=  26;
   /** actual - change in N (rev/day) */
   public static final int XA_AC_ACT_DELTAN   =  27;
   /** actual - change in B term */
   public static final int XA_AC_ACT_DELTAB   =  28;
   
   public static final int XA_AC_SIZE         =  64;
   
   
   // indexes for accessing DC's string character data - index to index of a substring
   /** satellite's international designator */
   public static final int XAS_DCELTS_SATNAME_0TO7 =   0;
   
   public static final int XAS_DCELTS_SIZE         = 512;
   
   // Different DC control modes
   /** Use DC global settings settings */
   public static final int DCCTRL_MODE_GLOBAL   = 0;
   /** Use provided/local DC settings */
   public static final int DCCTRL_MODE_LOCAL    = 1;
   
   
   // indexes of DC control parameters
   /** DC control mode: 0= use global settings (ignore the rest), 1= use the provided/local settings (thread-safe) - N/A for BatchDC(Get/Set)CtrlArr() */
   public static final int XA_DCCTRL_MODE             =  0;
   /** propagation method: SGP4 = 0, SP = 99, XP = 4, or see DCPROPTYPE_? for available options */
   public static final int XA_DCCTRL_PROPMETHOD 		=  1;
   /** debias obs flag: 0= do not debias obs, 1= debias obs */
   public static final int XA_DCCTRL_DEBIASOBS    		=  2;
   /** element correction order */
   public static final int XA_DCCTRL_CORRECTORDER		=  3;
   /** epoch placement flag - see EPFLG_? for available options */
   public static final int XA_DCCTRL_EPOCHOPTION  		=  4;
   /** use predicted RMS versus previous RMS for convergenece testing */
   public static final int XA_DCCTRL_USEPREDRMS		   =  5;
   /** residual computation selection */
   public static final int XA_DCCTRL_RESIDSELECT      =  6;
   /** correct by the specified correction order for 1 iteration only */
   public static final int XA_DCCTRL_FOR1ITERONLY		=  7;
   /** max # of iterations before declaring divergence */
   public static final int XA_DCCTRL_MAXOFITERS       =  8;
   /** apply weighed DC flag */
   public static final int XA_DCCTRL_WEIGHTEDDC		   =  9;
   /** light time correction control */
   public static final int XA_DCCTRL_LTC              = 10;
   /** number of iteration to allow no auto rejection of residuals */
   public static final int XA_DCCTRL_BRUCE            = 11;
   /** flag; if set, deweight according to # of obs per track */
   public static final int XA_DCCTRL_DWOBSPERTRCK     = 12;
   /** partials method */
   public static final int XA_DCCTRL_PARTIALMETH      = 13;
   /** Element correction flag - Ag */
   public static final int XA_DCCTRL_CORRECT_AG    	= 20;
   /** Element correction flag - Af */
   public static final int XA_DCCTRL_CORRECT_AF    	= 21;
   /** Element correction flag - Psi */
   public static final int XA_DCCTRL_CORRECT_PSI   	= 22;
   /** Element correction flag - Chi */
   public static final int XA_DCCTRL_CORRECT_CHI   	= 23;
   /** Element correction flag - L */
   public static final int XA_DCCTRL_CORRECT_L     	= 24;
   /** Element correction flag - N */
   public static final int XA_DCCTRL_CORRECT_N     	= 25;
   /** Element correction flag - B* (SGP4) B (SP) */
   public static final int XA_DCCTRL_CORRECT_B     	= 26;
   /** Element correction flag - Agom (SP) */
   public static final int XA_DCCTRL_CORRECT_AGOM  	= 27;
   /** Convergence criteria on time (%) [5.0%] */
   public static final int XA_DCCTRL_CNVCRITONT       = 30;
   /** First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes] */
   public static final int XA_DCCTRL_1STPASDELTAT     = 31;
   /** Convergence criteria on 7-elt correction (%) [1.0%] */
   public static final int XA_DCCTRL_CNVCRITON7ELT    = 32;
   /** RMS multiplier [4.0] */
   public static final int XA_DCCTRL_RMSMULT          = 33;
   /** reset value for B term in subset correction [0.01] */
   public static final int XA_DCCTRL_BRESET           = 34;
   /** user's specified epoch - only when epoch placement option = 4 exact at specified time */
   public static final int XA_DCCTRL_USEREPOCH        = 35;
   /** SP only - density consider parameter */
   public static final int XA_DCCTRL_CONSIDER         = 40;
   /** GP only - residual computation method */
   public static final int XA_DCCTRL_GPRCM 			   = 40;
   /** GP only - SGP4: correct B* vs X, SGP4-XP: correct B */
   public static final int XA_DCCTRL_CORRECTBVSX		= 41;
   
   public static final int XA_DCCTRL_SIZE             = 64;
   
   // Indexes of paramters using in IomodDC()
   /** Iomod/DC control mode (not yet used) */
   public static final int XA_IOMDC_MODE           =  0;
   /** DC element type, see DCPROPTYPE_? for available options */
   public static final int XA_IOMDC_DCELTTYPE      =  1;
   /** Epoch placement flag - see EPFLG_? for available options */
   public static final int XA_IOMDC_EPFLG          =  2;
   /** Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4) */
   public static final int XA_IOMDC_NEWEPOCH       =  3;
   /** Correction order */
   public static final int XA_IOMDC_ORDERCOR       =  4;
   /** IOMOD obs selection mode: 0= auto select, 1= use first 3 obs in the provided list of obs (see OBSSELMODE_? for available options) */
   public static final int XA_IOMDC_OBSSELMODE     =  5;
   /** residual computation selection */
   public static final int XA_IOMDC_RESIDSELECT    =  6;
   /** correct by the specified correction order for 1 iteration only */
   public static final int XA_IOMDC_FOR1ITERONLY   =  7;
   /** max # of iterations before declaring divergence */
   public static final int XA_IOMDC_MAXOFITERS     =  8;
   /** apply weighed DC flag */
   public static final int XA_IOMDC_WEIGHTEDDC		=  9;
   /** light time correction control */
   public static final int XA_IOMDC_LTC            = 10;
   /** number of iteration to allow no auto rejection of residuals */
   public static final int XA_IOMDC_BRUCE          = 11;
   /** flag; if set, deweight according to # of obs per track */
   public static final int XA_IOMDC_DWOBSPERTRCK   = 12;
   /** partials method */
   public static final int XA_IOMDC_PARTIALMETH    = 13;
   /** debias obs flag: 0= do not debias obs, 1= debias obs */
   public static final int XA_IOMDC_DEBIASOBS    	= 14;
   /** use predicted RMS versus previous RMS for convergenece testing */
   public static final int XA_IOMDC_USEPREDRMS		= 15;
   
   /** Element correction flag - Ag */
   public static final int XA_IOMDC_CORRECT_AG    	= 20;
   /** Element correction flag - Af */
   public static final int XA_IOMDC_CORRECT_AF    	= 21;
   /** Element correction flag - Psi */
   public static final int XA_IOMDC_CORRECT_PSI   	= 22;
   /** Element correction flag - Chi */
   public static final int XA_IOMDC_CORRECT_CHI   	= 23;
   /** Element correction flag - L */
   public static final int XA_IOMDC_CORRECT_L     	= 24;
   /** Element correction flag - N */
   public static final int XA_IOMDC_CORRECT_N     	= 25;
   /** Element correction flag - B* (SGP4) B (SP) */
   public static final int XA_IOMDC_CORRECT_B     	= 26;
   /** Element correction flag - Agom (SP) */
   public static final int XA_IOMDC_CORRECT_AGOM  	= 27;
   /** Convergence criteria on time (%) [5.0%] */
   public static final int XA_IOMDC_CNVCRITONT     = 30;
   /** First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes] */
   public static final int XA_IOMDC_1STPASDELTAT   = 31;
   /** Convergence criteria on 7-elt correction (%) [1.0%] */
   public static final int XA_IOMDC_CNVCRITON7ELT  = 32;
   /** RMS multiplier [4.0] */
   public static final int XA_IOMDC_RMSMULT        = 33;
   /** reset value for B term in subset correction [0.01] */
   public static final int XA_IOMDC_BRESET         = 34;
   /** SP only - density consider parameter */
   public static final int XA_IOMDC_CONSIDER       = 40;
   /** GP only - residual computation method */
   public static final int XA_IOMDC_GPRCM 			= 40;
   /** GP only - SGP4: correct B* vs X, SGP4-XP: correct B */
   public static final int XA_IOMDC_CORRECTBVSX		= 41;
   
   /** see IOMDC_METHOD_? for available options */
   public static final int XA_IOMDC_METHOD         = 50;
   // The below parameters only apply when XA_IOMDC_METHOD is set to 2 (use customized Gooding settings)
   /** number of half revolutions [0] */
   public static final int XA_IOMDC_NHREV          = 51;
   /** solution number [0] */
   public static final int XA_IOMDC_IND            = 52;
   /** maximum number of iterations [20] */
   public static final int XA_IOMDC_MAXIT          = 53;
   /** the range guess to first observation (km) [36000] */
   public static final int XA_IOMDC_RNG1           = 54;
   /** the range guess to third observation (km) [36000] */
   public static final int XA_IOMDC_RNG3           = 55;
   /** partial derivative increment [1e-5] */
   public static final int XA_IOMDC_PDINC          = 56;
   /** convergence criterion [1e-9] */
   public static final int XA_IOMDC_CONVCR         = 57;
   
   /** IOMOD/DC parameter list size */
   public static final int XA_IOMDC_SIZE           = 64;
   
   // Different options for doing IOMOD/DC
   /** Default option which uses Herrick-Gibbs for all obs types */
   public static final int IOMDC_METHOD_HB      = 0;
   /** Use Gooding (with default settings) for angle only type obs and Herrick-Gibbs for other obs types */
   public static final int IOMDC_METHOD_GDDEFLT = 1;
   /** Use Gooding (with customized settings) for angle only type obs and Herrick-Gibbs for other obs types */
   public static final int IOMDC_METHOD_GDSPEC  = 2;
   
// ========================= End of auto generated code ==========================
}
