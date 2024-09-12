// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: Saas */
public class JniSaas
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "saas";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadSaasDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadSaasDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes Saas dll for use in the program
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if Saas.dll is initialized successfully, non-0 if there is an error
   */
   public static native int SaasInit(long apAddr);


   /**
   * Returns information about the current version of Saas.dll. The information is placed in the
   * string parameter passed-in
   * @param infoStr            A string to hold information about the Saas.dll (out-Character[128])
   */
   public static native void SaasGetInfo(byte[] infoStr);


   /**
   * SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
   *   (Direct Ascent Anti-Satellite). 
   * <br>
   * <br>
   * SAAS software description:
   * <br>
   *   SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
   *   (Direct Ascent Anti-Satellite). Developed by HQ SpOC, SAAS assesses attack opportunities
   *   for a direct ascent ASAT attack, similar to F-15 ASAT of the 1980's.  By its use of SGP4
   *   propagation, SAAS is designed as a high-speed screening tool to identify potential target
   *   objects in vulnerable orbits relative to the specified missile site/capability; however it
   *   should not be considered a precision analysis model.
   * <br>
   * <br>
   * SAAS algorithm:
   * <br>
   *   SAAS computes a ring of potential intercept points around a launch site.  The size of the
   *   ring (also known as 'the kill ring') is based on the altitude limit and missile profile
   *   specified for the direct ascent booster.  Each target altitude has a unique kill ring with
   *   two intercept points, defined as 'pierce/entry' and exit.  The ring of potential intercept
   *   points span over 360 degrees azimuth above the launch site.  The ring of intercept points
   *   is circumscribed by a cone looking up from the launch site.  Target orbits are flown
   *   (propagated by SGP4) over a specified period of interest and penetrations of the launch site
   *   cone determine a viable intercept passes.  The time of the cone penetration, and/or cone
   *   exit, are the 'intercept times'.  (Note that as the target altitude decreases, the intercept
   *   point moves farther down-range from the launch site; then it moves up-range after the
   *   specified missile max range is reached.) The azimuth from the launch site to the cone
   *   penetration point is the launch azimuth.  Lastly, the launch time is determined as the cone
   *   penetration time minus the missile time-of-flight to the target.
   * <br>
   * <br>
   * INPUTS include:
   * <br>
   * <table>
   *   <caption>table</caption>
   *   <tr><td>(a)</td><td> a set of target input SGP4 two-line element sets (TLEs)</td></tr>
   *   <tr><td>(b)</td><td> coefficient-based missile profile used for the direct ascent attack trajectory</td></tr>
   *   <tr><td>(c)</td><td> missile profile limits including min and max height, maximum sun angle, and maximum
   *        attack angle</td></tr>
   *   <tr><td>(d)</td><td> ground missile location(s) including N. latitude, E. longitude, and height for one or
   *        more test sites</td></tr>
   *   <tr><td>(e)</td><td> a specified evaluation period of interest for assessment</td></tr>
   * </table>
   * <br>
   * <br>
   * OUTPUTS include:
   *   (a) attack launch time, launch azimuth, and intercept time, for each viable target pass over
   *        a launch site within the specified period of interest
   * <br>
   * Order of elements in the input xa_msl array:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td>  0 </td><td>missile profile minimum height limit [km]</td></tr>
   * <tr><td>  1 </td><td>missile profile maximum height limit [km]</td></tr>
   * <tr><td>  2 </td><td>maximum allowed solar aspect angle [deg], pass qualifies 
   * <tr><td>  3 </td><td>maximum allowed missile attack angle [deg], pass qualifies only 
   * <tr><td>  4 </td><td>rejection flag*: -1=reject negative; 0=reject neither negative nor positive; 1=reject positive. 
   * <tr><td>  5 </td><td>missile profile time coefficient for the X^2 term</td></tr>
   * <tr><td>  6 </td><td>missile profile time coefficient for the X term</td></tr>
   * <tr><td>  7 </td><td>missile profile time constant for the C term</td></tr>
   * <tr><td>  8 </td><td>missile profile range coefficient for the X^2 term</td></tr>
   * <tr><td>  9 </td><td>missile profile range coefficient for the X term</td></tr>
   * <tr><td> 10 </td><td>missile profile range constant for the C term</td></tr>
   * <tr><td> 11-31 </td><td>unused at this time</td></tr>
   * </table>   
   *  (*) The missile rejection flag designation is used by SAAS to check for sign of the desired
   *      attack angles in the results.  It evaluates the sign (+ or -) of the computed attack
   *      angle vs. the maximum allowed attack angle.  For example if set to -1, only positive
   *      attack angles less than the max attack angle will be returned.  If set to 0, either a
   *      positive or negative computed attack angle is acceptable as long as long it is less
   *      than the max allowed attack angle.  If set to 1, only negative attack angles less than
   *      the maximum will be accepted and returned.
   * <br>
   * Order of elements in the input xa_ls array:   
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td>launch test site's latitude (+North, -South)</td></tr>
   * <tr><td> 1 </td><td>launch test site longitude (+East, -West)</td></tr>
   * <tr><td> 2 </td><td>launch test site local height above Earth average equatorial radius (meters). 
   * <tr><td> 3-7 </td><td>unused at this time</td></tr>
   * </table>   
   * <br>
   * Order of elements in the input xa_saasRun array:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td>Maximum number of penetration points allowed. 
   * <tr><td> 1 </td><td>SAAS assessment period-of-interest (POI) start time in fractional days since 1950, UTC</td></tr>
   * <tr><td> 2 </td><td>SAAS assessment period-of-interest (POI) stop time in fractional days since 1950, UTC. 
   * 								 Note: if a stop time is not specified, it is defaulted by SAAS to 1 day after the specified start
   * 								 time</td></tr>
   * <tr><td> 3 </td><td>Specified half-angle of attack cone, where if set to 0, SAAS will automatically determine the attack cone half angle. 
   *   								 Note:  if a input cone angle is &gt; 90 degrees, it is defaulted by SAAS to 90
   *   								 degrees</td></tr>
   * <tr><td> 4-7 </td><td>unused at this time</td></tr>
   * </table>   
   * <br>
   * Order of elements in the returned in the first dimension of xa_satPen array (second array
   *  dimension allows similar same results Elements for other viable penetration solutions at
   *  different times during the assessment period of interest):
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td>impact time in fractional days since 1950, UTC</td></tr>
   * <tr><td> 1 </td><td>missile launch time in fractional days since 1950, UTC</td></tr>
   * <tr><td> 2 </td><td>satellite penetration azimuth [deg]</td></tr>
   * <tr><td> 3 </td><td>satellite penetration elevation [deg]</td></tr>
   * <tr><td> 4 </td><td>satellite penetration range [km]</td></tr>
   * <tr><td> 5 </td><td>satellite penetration range rate [km/s]</td></tr>
   * <tr><td> 6 </td><td>satellite penetration solar aspect angle [deg]</td></tr>
   * <tr><td> 7 </td><td>satellite penetration attack angle [deg]</td></tr>
   * <tr><td> 8 </td><td>satellite height at penetration [km] </td></tr>
   * <tr><td> 9 </td><td>ring penetration indicator:  0 = impact time is an 'entry' time; 1 = ring penetration is an 'exit'
   * time</td></tr>
   * <tr><td> 10-15 </td><td>unused at this time</td></tr>
   * </table>   
   * <br>
   * Order of elements in the output xa_Ret array:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td>number of potential viable attack penetrations (opportunities) identified vs. the target set within the
   * POI</td></tr>
   * <tr><td> 1-15 </td><td>unused at this time</td></tr>
   * </table>   
   * <br>
   * xa_saasRet(16) - other saas output:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td> number of actual satellite penetrations found</td></tr>
   * <tr><td> 1 </td><td> satellite apogee height (km)</td></tr>
   * <tr><td> 2 </td><td> satellite perigee height (km)</td></tr>
   * <tr><td> 3 </td><td> autocone minimum cone half angle (deg)</td></tr>
   * <tr><td> 4 </td><td> autocone maximum cone half angle (deg)</td></tr>
   * <tr><td> 5-15 </td><td> not used at this time</td></tr>
   * </table>   
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_saasrun         run parameters (in-Double[8])
   * @param xa_msl             missile profile data.  see XA_MSL_? (in-Double[32])
   * @param xa_ls              launch site data.  see XA_LS_? (in-Double[8])
   * @param xa_satPen          array that stores data of satellite penetrations.  see XA_SATPEN_? (out-Double[*, 16])
   * @param xa_saasRet         array that stores other SAAS output.  see XA_SAASRET_? (out-Double[16])
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int SaasGetResults(long satKey, double[] xa_saasrun, double[] xa_msl, double[] xa_ls, double[][] xa_satPen, double[] xa_saasRet);


   /**
   * SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
   *   (Direct Ascent Anti-Satellite). 
   * <br>
   * <br>
   * SAAS software description:
   * <br>
   *   SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
   *   (Direct Ascent Anti-Satellite). Developed by HQ SpOC, SAAS assesses attack opportunities
   *   for a direct ascent ASAT attack, similar to F-15 ASAT of the 1980's.  By its use of SGP4
   *   propagation, SAAS is designed as a high-speed screening tool to identify potential target
   *   objects in vulnerable orbits relative to the specified missile site/capability; however it
   *   should not be considered a precision analysis model.
   * <br>
   * <br>
   * SAAS algorithm:
   * <br>
   *   SAAS computes a ring of potential intercept points around a launch site.  The size of the
   *   ring (also known as 'the kill ring') is based on the altitude limit and missile profile
   *   specified for the direct ascent booster.  Each target altitude has a unique kill ring with
   *   two intercept points, defined as 'pierce/entry' and exit.  The ring of potential intercept
   *   points span over 360 degrees azimuth above the launch site.  The ring of intercept points
   *   is circumscribed by a cone looking up from the launch site.  Target orbits are flown
   *   (propagated by SGP4) over a specified period of interest and penetrations of the launch site
   *   cone determine a viable intercept passes.  The time of the cone penetration, and/or cone
   *   exit, are the 'intercept times'.  (Note that as the target altitude decreases, the intercept
   *   point moves farther down-range from the launch site; then it moves up-range after the
   *   specified missile max range is reached.) The azimuth from the launch site to the cone
   *   penetration point is the launch azimuth.  Lastly, the launch time is determined as the cone
   *   penetration time minus the missile time-of-flight to the target.
   * <br>
   * <br>
   * INPUTS include:
   * <br>
   * <table>
   *   <caption>table</caption>
   *   <tr><td>(a)</td><td> a set of target input SGP4 two-line element sets (TLEs)</td></tr>
   *   <tr><td>(b)</td><td> coefficient-based missile profile used for the direct ascent attack trajectory</td></tr>
   *   <tr><td>(c)</td><td> missile profile limits including min and max height, maximum sun angle, and maximum
   *        attack angle</td></tr>
   *   <tr><td>(d)</td><td> ground missile location(s) including N. latitude, E. longitude, and height for one or
   *        more test sites</td></tr>
   *   <tr><td>(e)</td><td> a specified evaluation period of interest for assessment</td></tr>
   * </table>
   * <br>
   * <br>
   * OUTPUTS include:
   *   (a) attack launch time, launch azimuth, and intercept time, for each viable target pass over
   *        a launch site within the specified period of interest
   * <br>
   * Order of elements in the input xa_msl array:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td>  0 </td><td>missile profile minimum height limit [km]</td></tr>
   * <tr><td>  1 </td><td>missile profile maximum height limit [km]</td></tr>
   * <tr><td>  2 </td><td>maximum allowed solar aspect angle [deg], pass qualifies 
   * <tr><td>  3 </td><td>maximum allowed missile attack angle [deg], pass qualifies only 
   * <tr><td>  4 </td><td>rejection flag*: -1=reject negative; 0=reject neither negative nor positive; 1=reject positive. 
   * <tr><td>  5 </td><td>missile profile time coefficient for the X^2 term</td></tr>
   * <tr><td>  6 </td><td>missile profile time coefficient for the X term</td></tr>
   * <tr><td>  7 </td><td>missile profile time constant for the C term</td></tr>
   * <tr><td>  8 </td><td>missile profile range coefficient for the X^2 term</td></tr>
   * <tr><td>  9 </td><td>missile profile range coefficient for the X term</td></tr>
   * <tr><td> 10 </td><td>missile profile range constant for the C term</td></tr>
   * <tr><td> 11-31 </td><td>unused at this time</td></tr>
   * </table>   
   *  (*) The missile rejection flag designation is used by SAAS to check for sign of the desired
   *      attack angles in the results.  It evaluates the sign (+ or -) of the computed attack
   *      angle vs. the maximum allowed attack angle.  For example if set to -1, only positive
   *      attack angles less than the max attack angle will be returned.  If set to 0, either a
   *      positive or negative computed attack angle is acceptable as long as long it is less
   *      than the max allowed attack angle.  If set to 1, only negative attack angles less than
   *      the maximum will be accepted and returned.
   * <br>
   * Order of elements in the input xa_ls array:   
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td>launch test site's latitude (+North, -South)</td></tr>
   * <tr><td> 1 </td><td>launch test site longitude (+East, -West)</td></tr>
   * <tr><td> 2 </td><td>launch test site local height above Earth average equatorial radius (meters). 
   * <tr><td> 3-7 </td><td>unused at this time</td></tr>
   * </table>   
   * <br>
   * Order of elements in the input xa_saasRun array:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td>Maximum number of penetration points allowed. 
   * <tr><td> 1 </td><td>SAAS assessment period-of-interest (POI) start time in fractional days since 1950, UTC</td></tr>
   * <tr><td> 2 </td><td>SAAS assessment period-of-interest (POI) stop time in fractional days since 1950, UTC. 
   * 								 Note: if a stop time is not specified, it is defaulted by SAAS to 1 day after the specified start
   * 								 time</td></tr>
   * <tr><td> 3 </td><td>Specified half-angle of attack cone, where if set to 0, SAAS will automatically determine the attack cone half angle. 
   *   								 Note:  if a input cone angle is &gt; 90 degrees, it is defaulted by SAAS to 90
   *   								 degrees</td></tr>
   * <tr><td> 4-7 </td><td>unused at this time</td></tr>
   * </table>   
   * <br>
   * Order of elements in the returned in the first dimension of xa_satPen array (second array
   *  dimension allows similar same results Elements for other viable penetration solutions at
   *  different times during the assessment period of interest):
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td>impact time in fractional days since 1950, UTC</td></tr>
   * <tr><td> 1 </td><td>missile launch time in fractional days since 1950, UTC</td></tr>
   * <tr><td> 2 </td><td>satellite penetration azimuth [deg]</td></tr>
   * <tr><td> 3 </td><td>satellite penetration elevation [deg]</td></tr>
   * <tr><td> 4 </td><td>satellite penetration range [km]</td></tr>
   * <tr><td> 5 </td><td>satellite penetration range rate [km/s]</td></tr>
   * <tr><td> 6 </td><td>satellite penetration solar aspect angle [deg]</td></tr>
   * <tr><td> 7 </td><td>satellite penetration attack angle [deg]</td></tr>
   * <tr><td> 8 </td><td>satellite height at penetration [km] </td></tr>
   * <tr><td> 9 </td><td>ring penetration indicator:  0 = impact time is an 'entry' time; 1 = ring penetration is an 'exit'
   * time</td></tr>
   * <tr><td> 10-15 </td><td>unused at this time</td></tr>
   * </table>   
   * <br>
   * Order of elements in the output xa_Ret array:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td>number of potential viable attack penetrations (opportunities) identified vs. the target set within the
   * POI</td></tr>
   * <tr><td> 1-15 </td><td>unused at this time</td></tr>
   * </table>   
   * <br>
   * xa_saasRet(16) - other saas output:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>   
   * <tr><td> 0 </td><td> number of actual satellite penetrations found</td></tr>
   * <tr><td> 1 </td><td> satellite apogee height (km)</td></tr>
   * <tr><td> 2 </td><td> satellite perigee height (km)</td></tr>
   * <tr><td> 3 </td><td> autocone minimum cone half angle (deg)</td></tr>
   * <tr><td> 4 </td><td> autocone maximum cone half angle (deg)</td></tr>
   * <tr><td> 5-15 </td><td> not used at this time</td></tr>
   * </table>   
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_saasrun         run parameters (in-Double[])
   * @param xa_msl             missile profile data.  see XA_MSL_? (in-Double[])
   * @param xa_ls              launch site data.  see XA_LS_? (in-Double[])
   * @param xa_satPen          array that stores data of satellite penetrations.  see XA_SATPEN_? (out-Double[])
   * @param xa_saasRet         array that stores other SAAS output.  see XA_SAASRET_? (out-Double[])
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int SaasGetResults2Das1D(long satKey, double[] xa_saasrun, double[] xa_msl, double[] xa_ls, double[] xa_satPen, double[] xa_saasRet);


   /**
   * Computes auto cone size based on satellite height and missile profile      
   * @param satHeight          satelite height (km) (in-Double)
   * @param xa_msl             missile profile data.  see XA_MSL_? (in-Double[32])
   * @return computed auto cone size (deg)
   */
   public static native double SaasAutoConeSize(double satHeight, double[] xa_msl);


   /**
   * Computes missile time of flight based on satellite height and missile profile  
   * @param satHeight          satellite height (km) (in-Double)
   * @param xa_msl             missile profile data.  see XA_MSL_? (in-Double[32])
   * @return computed missile flight time (sec)
   */
   public static native double SaasMissileFlightTime(double satHeight, double[] xa_msl);


   /**
   * Computes launch orbital plane (inclination and node) based on the launch data
   * @param xa_lnch            The input launch data (see XA_LNCH_? for array arrangement) (in-Double[8])
   * @param incli              The output planer's inclination (deg) (out-Double)
   * @param node               The output planer's node (deg) (out-Double)
   */
   public static native void ComputeLnchOrbPlane(double[] xa_lnch, double[] incli, double[] node);


   /**
   * Compares a satellite elset against a new launch to find planer intersection time and associated data
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_plnr            The input new launch and time of flight data.  see XA_PLNR_? (in-Double[16])
   * @param xa_intxn           The output planer intersection data.  see XA_INTXN_? (out-Double[16])
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int FindPlanerIntersection(long satKey, double[] xa_plnr, double[] xa_intxn);
   
   //*******************************************************************************
   
   // Missile Profile
   /** missile profile's minimum height limit (km) */
   public static final int XA_MSL_MINHGT  =  0;
   /** missile profile's maximum height limit (km) */
   public static final int XA_MSL_MAXHGT  =  1;
   /** maximum allowed solar aspect angle (deg) */
   public static final int XA_MSL_MAXSA   =  2;
   /** maximum allowed missile attack angle (deg) */
   public static final int XA_MSL_ANGMAX  =  3;
   /** rejection flag (-1: reject negative, 0: reject neg and pos, 1: reject pos) */
   public static final int XA_MSL_REJFLG  =  4;
   /** missile trajectory time coefficient for the *X**2 term [sec] */
   public static final int XA_MSL_TIMCOE1 =  5;
   /** missile trajectory time coefficient for the *X term [sec] */
   public static final int XA_MSL_TIMCOE2 =  6;
   /** missile trajectory time constant for the C term [sec] */
   public static final int XA_MSL_TIMCOE3 =  7;
   /** missile trajectory range coefficient *X**2 term [km] */
   public static final int XA_MSL_RNGCOE1 =  8;
   /** missile trajectory range coefficient *X term [km] */
   public static final int XA_MSL_RNGCOE2 =  9;
   /** missile trajectory range constant for the C term [km] */
   public static final int XA_MSL_RNGCOE3 = 10;
   
   public static final int XA_MSL_SIZE    = 32;
   
   //*******************************************************************************
   
   // Launch site location
   /** launch site's latitude (deg)  (+N) (-S) */
   public static final int XA_LS_LAT     = 0;
   /** launch site's longitude (deg) (+E) (-W) */
   public static final int XA_LS_LON     = 1;
   /** launch site's height(m) */
   public static final int XA_LS_HEIGHT  = 2;
   
   public static final int XA_LS_SIZE    = 8;
   
   //*******************************************************************************
   
   // Saas run parameters
   /** Maximum number of penetration points that are allowed */
   public static final int XA_SAASRUN_MAXPENS  = 0;
   /** SAAS start time in days since 1950, UTC */
   public static final int XA_SAASRUN_START    = 1;
   /** SAAS stop time in days since 1950, UTC */
   public static final int XA_SAASRUN_STOP     = 2;
   /** Half angle of attack cone (0=auto) */
   public static final int XA_SAASRUN_HALFCONE = 3;
   
   public static final int XA_SAASRUN_SIZE     = 8;
   
   //*******************************************************************************
   
   // Satellite penetration data
   /** impact time in days since 1950, UTC */
   public static final int XA_SATPEN_IMPTIME  =  0;
   /** msl launch time in days since 1950, UTC */
   public static final int XA_SATPEN_LAUTIME  =  1;
   /** azimuth (deg) */
   public static final int XA_SATPEN_AZ       =  2;
   /** elevation (deg) */
   public static final int XA_SATPEN_EL       =  3;
   /** range (km) */
   public static final int XA_SATPEN_RANGE    =  4;
   /** range rate (km/s) */
   public static final int XA_SATPEN_RNGRATE  =  5;
   /** solar aspect angle (deg) */
   public static final int XA_SATPEN_SOLANG   =  6;
   /** attack angle (deg) */
   public static final int XA_SATPEN_ATTCKANG =  7;
   /** satellite's height (km) */
   public static final int XA_SATPEN_SATHGHT  =  8;
   /** ring penetration entry or exit time (0=entry, 1=exit) */
   public static final int XA_SATPEN_EN0EX1   =  9;
   
   public static final int XA_SATPEN_SIZE     = 16;
   
   //*******************************************************************************
   
   // SAAS ouput data
   /** number of actual satellite penetrations */
   public static final int XA_SAASRET_NUMOFPENS =  0;
   /** satellite apogee height (km) */
   public static final int XA_SAASRET_SATAHT    =  1;
   /** satellite perigee height (km) */
   public static final int XA_SAASRET_SATPHT    =  2;
   /** autocone minimum cone half angle (deg) */
   public static final int XA_SAASRET_MINCONE   =  3;
   /** autocone maximum cone half angle (deg) */
   public static final int XA_SAASRET_MAXCONE   =  4;
   
   
   
   
   public static final int XA_SAASRET_SIZE     = 16;
   
   //*******************************************************************************
   
   // predefined values for different orbit types used in planer program
   /** orbit type LEO */
   public static final int ORBTYPE_LEO = 1;
   /** orbit type MEO */
   public static final int ORBTYPE_MEO = 2;
   /** orbit type GEO */
   public static final int ORBTYPE_GEO = 3;
   
   //*******************************************************************************
   
   // indexes of fields specifying parameters for planer intersection program
   /** launch site latitude (deg) */
   public static final int XA_LNCH_LAT     = 0;
   /** launch site longitude (deg) */
   public static final int XA_LNCH_LON     = 1;
   /** injection azimuth (deg) */
   public static final int XA_LNCH_INJAZ   = 2;
   /** launch time in days since 1950 UTC */
   public static final int XA_LNCH_DS50UTC = 3;
   
   public static final int XA_LNCH_SIZE    = 8;
   
   //*******************************************************************************
   
   // indexes of fields specifying parameters for planer intersection program
   /** orbital type (LEO = 1, MEO = 2, GEO = 3) */
   public static final int XA_PLNR_ORBTYPE  = 0;
   /** launch site latitude (deg) */
   public static final int XA_PLNR_LSLAT    = 1;
   /** launch site longitude (deg) */
   public static final int XA_PLNR_LSLON    = 2;
   /** launch time in days since 1950 UTC */
   public static final int XA_PLNR_DS50UTC  = 4;
   /** time of flight start (min) */
   public static final int XA_PLNR_TOFFR    = 5;
   /** time of flight end (min) */
   public static final int XA_PLNR_TOFTO    = 6;
   /** planer's inclination (deg) */
   public static final int XA_PLNR_INCLI    = 7;
   /** planer's node (deg) */
   public static final int XA_PLNR_NODE     = 8;
   
   public static final int XA_PLNR_SIZE     = 16;
   
   //*******************************************************************************
   
   // indexes of output data returned by planer intersection program
   /** time of intersection in days since 1950 UTC */
   public static final int XA_INTXN_DS50UTC = 0;
   /** satellite inclination (deg) */
   public static final int XA_INTXN_INCLI   = 1;
   /** satellite latitude (deg) at the time of the intersection */
   public static final int XA_INTXN_LAT     = 2;
   /** satellite longitude (deg) at the time of the intersection */
   public static final int XA_INTXN_LON     = 3;
   /** satellite height (km) at the time of the intersection */
   public static final int XA_INTXN_HEIGHT  = 4;
   /** time of flight (min) since launch time */
   public static final int XA_INTXN_TOF     = 5;
   /** coplaner angle (deg) */
   public static final int XA_INTXN_COPLANG = 6;
   
   public static final int XA_INTXN_SIZE    = 16;
   
   //*******************************************************************************
   
// ========================= End of auto generated code ==========================
}
