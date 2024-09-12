// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import com.sun.jna.*;
import com.sun.jna.ptr.*;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNA component of the wrapper for: ElOps */
public class JnaElOps
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNA class wraps. */
   public static final String DLL_NAME = "elops";

   static
   {
      Native.register(DLL_NAME);
   }


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes ElOps dll for use in the program
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if the ElOps dll is initialized successfully, non-0 if there is an error
   */
   public static native int ElOpsInit(long apAddr);


   /**
   * Returns information about the current version of ElOps.dll. The information is placed in the string parameter you pass in
   * @param infoStr            A string to hold the information about ElOps.dll (out-Character[128])
   */
   public static native void ElOpsGetInfo(byte[] infoStr);


   /**
   * Checks to see if satellite has geo orbit
   * @param incli              satellite's inclination (deg) (in-Double)
   * @param period             satellite's period (min) (in-Double)
   * @return Return 1 if satellite has geo orbit, 0 if it doesn't
   */
   public static native int IsGeoOrbit(double incli, double period);


   /**
   * Estimates the approx long east subpt
   * @param ds50UTC            time in days since 1950, UTC (in-Double)
   * @param node               right ascension of the ascending node (deg) (in-Double)
   * @param omega              argument of perigee (deg) (in-Double)
   * @param mnAnomaly          mean anomaly (deg) (in-Double)
   * @return estimated long east sub point (deg)
   */
   public static native double CompLonEastSubPt(double ds50UTC, double node, double omega, double mnAnomaly);


   /**
   * Computes the decay time of the input satellite
   * @param satKey             The input satKey of the satellite needs to compute decay time (in-Long)
   * @param f10Avg             Input F10 average value (in-Double)
   * @param decayDs50UTC       The output decay time in days since 1950 UTC (out-Double)
   * @return Returns 0 if success, 1 if nDot/2 lt 0, 2 if mean motion lt 1.5, and 3 if f2log lt 0
   */
   public static native int FindSatDecayTime(long satKey, double f10Avg, DoubleByReference decayDs50UTC);


   /**
   * Returs parameters of a satellite via its satKey
   * @param satKey             The input satKey of the satellite needs to compute gobs parameters (in-Long)
   * @param xa_satparm         Output satellite's parameters.  see XA_SATPARM_? (out-Double[32])
   * @return 0 if the satellite parameters are successfully retrieved, non-0 if there is an error
   */
   public static native int GetSatParameters(long satKey, double[] xa_satparm);


   /**
   * Returs the satellite number associated with the input satKey
   * @param satKey             The input satKey (in-Long)
   * @return The satellite number associated with the input satKey (satNum = -1 if satKey doesn't exist)
   */
   public static native int SatNumOf(long satKey);


   /**
   * Adds an impulsive maneuver (using VP-card string format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
   * Note: All maneuvers have to be entered before the satellite's initialization step
   * @param satKey             The unique key of the satellite of which impulsive maneuver is added to (in-Long)
   * @param vpString           Impulse manuever using VP-card string format (in-Character[512])
   * @return 0 if the impulsive maneuver is added successfully, non-0 if there is an error.
   */
   public static native int AddManeuverVPStr(long satKey, String vpString);


   /**
   * Adds an impulsive maneuver (using VP-card array format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
   * Note: All maneuvers have to be entered before the satellite's initialization step
   * @param satKey             The unique key of the satellite of which impulsive maneuver is added to (in-Long)
   * @param xa_vp              Impulsive maneuver using VP-card array format - see XA_VP_? for array arrangement (in-Double[16])
   * @return 0 if the impulsive maneuver is added successfully, non-0 if there is an error.
   */
   public static native int AddManeuverVPArr(long satKey, double[] xa_vp);
   
   // Satellite maintenance category
   /** Synchronous */
   public static final int SATCAT_SYNCHRONOUS = 1;
   /** Deep space (not synchronous) */
   public static final int SATCAT_DEEPSPACE   = 2;
   /** Decaying (perigee height below 575 km) */
   public static final int SATCAT_DECAYING    = 3;
   /** Routine (everything else) */
   public static final int SATCAT_ROUTINE     = 4;
   
   // Indexes of available satellite data fields
   /** epoch in days since 1950, UTC */
   public static final int XF_ELFIELD_EPOCHUTC =  1;
   /** mean anomaly (deg) */
   public static final int XF_ELFIELD_MNANOM   =  2;
   /** right ascension of the asending node (deg) */
   public static final int XF_ELFIELD_NODE     =  3;
   /** argument of perigee (deg) */
   public static final int XF_ELFIELD_OMEGA    =  4;
   /** period (min) */
   public static final int XF_ELFIELD_PERIOD   =  5;
   /** eccentricity (unitless) */
   public static final int XF_ELFIELD_ECCEN    =  6;
   /** inclination (deg) */
   public static final int XF_ELFIELD_INCLI    =  7;
   /** mean motion (revs/day) */
   public static final int XF_ELFIELD_MNMOTION =  8;
   /** either SGP4 bStar (1/er) or SP bTerm (m2/kg) */
   public static final int XF_ELFIELD_BFIELD   =  9;
   /** perigee height (km) */
   public static final int XF_ELFIELD_PERIGEEHT= 10;
   /** apogee height (km) */
   public static final int XF_ELFIELD_APOGEEHT = 11;
   /** perigee (km) */
   public static final int XF_ELFIELD_PERIGEE  = 12;
   /** apogee (km) */
   public static final int XF_ELFIELD_APOGEE   = 13;
   /** semi major axis (km) */
   public static final int XF_ELFIELD_A        = 14;
   /** Satellite category (Synchronous, Deep space, Decaying, Routine) */
   public static final int XF_ELFIELD_SATCAT   = 15;
   /** Astat 3 Height multiplier */
   public static final int XF_ELFIELD_HTM3     = 16;
   /** Center of mass offset (m) */
   public static final int XF_ELFIELD_CMOFFSET = 17;
   /** n-double-dot/6  (for SGP, eph-type = 0) */
   public static final int XF_ELFIELD_N2DOT    = 18;
   
   
   // Indexes of available satellite parameters
   /** satellite's epoch in days since 1950, UTC */
   public static final int XA_SATPARM_EPOCHUTC =  0;
   /** satellite's mean anomaly (deg) */
   public static final int XA_SATPARM_MNANOM   =  1;
   /** satellite's right ascension of the asending node (deg) */
   public static final int XA_SATPARM_NODE     =  2;
   /** satellite's argument of perigee (deg) */
   public static final int XA_SATPARM_OMEGA    =  3;
   /** satellite's period (min) */
   public static final int XA_SATPARM_PERIOD   =  4;
   /** satellite's eccentricity (unitless) */
   public static final int XA_SATPARM_ECCEN    =  5;
   /** satellite's inclination (deg) */
   public static final int XA_SATPARM_INCLI    =  6;
   /** satellite's mean motion (revs/day) */
   public static final int XA_SATPARM_MNMOTION =  7;
   /** satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg) */
   public static final int XA_SATPARM_BFIELD   =  8;
   /** satellite's perigee height (km) */
   public static final int XA_SATPARM_PERIGEEHT=  9;
   /** satellite's apogee height (km) */
   public static final int XA_SATPARM_APOGEEHT = 10;
   /** satellite's perigee (km) */
   public static final int XA_SATPARM_PERIGEE  = 11;
   /** satellite's apogee (km) */
   public static final int XA_SATPARM_APOGEE   = 12;
   /** satellite's semi major axis (km) */
   public static final int XA_SATPARM_A        = 13;
   /** satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine) */
   public static final int XA_SATPARM_SATCAT   = 14;
   /** satellite's center of mass offset (m) */
   public static final int XA_SATPARM_CMOFFSET = 15;
   /** satellite's east longitude east subpoint (deg) - only for synchronous orbits */
   public static final int XA_SATPARM_LONE     = 16;
   /** satellite's longitude drift rate (deg East/day) - only for synchronous orbits */
   public static final int XA_SATPARM_DRIFT    = 17;
   /** satellite's omega rate of change (deg/day) */
   public static final int XA_SATPARM_OMEGADOT = 18;
   /** satellite's nodal precession rate (deg/day) */
   public static final int XA_SATPARM_RADOT    = 19;
   /** satellite's nodal period (min) */
   public static final int XA_SATPARM_NODALPRD = 20;
   /** satellite's nodal crossing time prior to its epoch (ds50UTC) */
   public static final int XA_SATPARM_NODALX   = 21;
   /** satellite is GEO: 0=no, 1=yes */
   public static final int XA_SATPARM_ISGEO    = 22;
   /** satellite's relative energy - only for GOBS */
   public static final int XA_SATPARM_RELENERGY= 23;
   /** satellite's number */
   public static final int XA_SATPARM_SATNUM   = 24;
   /** satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET) */
   public static final int XA_SATPARM_ELTTYPE  = 25;
   /** obsolete - should use new name XA_SATPARM_ELTTYPE intead */
   public static final int XA_SATPARM_OET      = 25;
   /** satellite's propagation type - see PROPTYPE_? for list of available values */
   public static final int XA_SATPARM_PROPTYPE = 26;
   /** satellite's element number */
   public static final int XA_SATPARM_ELSETNUM = 27;
   /** sin(incl)*sin(r.a. node) */
   public static final int XA_SATPARM_WX       = 28;
   /** -sin(incl)*cos(r.a. node) */
   public static final int XA_SATPARM_WY       = 29;
   /** cos(incl) */
   public static final int XA_SATPARM_WZ       = 30;
   /** Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift */
   public static final int XA_SATPARM_TROUGH   = 31;
   
   public static final int XA_SATPARM_SIZE     = 32;
   
   // Different input time options of VP card
   /** VP's input time is in days since 1950 UTC */
   public static final int VP_TIME_DS50UTC = 0;
   /** VP's input time is in minutes since epoch */
   public static final int VP_TIME_MSE     = 1;
   
   // VP record arrangement in array format
   /** VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE) */
   public static final int XA_VP_TIMETYPE    = 0;
   /** VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE) */
   public static final int XA_VP_TIMEVAL     = 1;
   /** impulse U-component of delta-velocity (km/sec) */
   public static final int XA_VP_IMPULSE_U   = 2;
   /** impulse V-component of delta-velocity (km/sec) */
   public static final int XA_VP_IMPULSE_V   = 3;
   /** impulse W-component of delta-velocity (km/sec) */
   public static final int XA_VP_IMPULSE_W   = 4;
   /** apply above delta-v this number of times at the interval specified below */
   public static final int XA_VP_REPETITIONS = 5;
   /** time interval in minutes between repetitions specified above */
   public static final int XA_VP_INTERVAL    = 6;
   
   public static final int XA_VP_SIZE        = 16;
   
   
   
   //*******************************************************************************
   
// ========================= End of auto generated code ==========================
}
