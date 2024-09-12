// This wrapper file was generated automatically by the GenDllWrappers program.
using System.Runtime.InteropServices;



namespace AFSPC.AstroStds.Wrappers
{
   public static partial class ElOpsWrapper
   {
      // Provide the path to the dll
      const string ElOpsDll = "elops";

      // static constructor
      static ElOpsWrapper()
      {
         // Set AS library default path/LD_LIBRARY_PATH environment
         Utilities.Utility.Init();
      }



      /// <summary>
      /// Notes: This function has been deprecated since v9.0. 
      /// Initializes ElOps dll for use in the program
      /// </summary>
      /// <param name="apAddr">The handle that was returned from DllMainInit() (in-Long)</param>
      /// <returns>0 if the ElOps dll is initialized successfully, non-0 if there is an error</returns>
      [DllImport(ElOpsDll, CallingConvention = CallingConvention.Cdecl)]
      public static extern int ElOpsInit(long apAddr);


      /// <summary>
      /// Returns information about the current version of ElOps.dll. The information is placed in the string parameter you pass in
      /// </summary>
      /// <param name="infoStr">A string to hold the information about ElOps.dll (out-Character[128])</param>
      [DllImport(ElOpsDll, CallingConvention = CallingConvention.Cdecl)]
      public static extern void ElOpsGetInfo(byte[] infoStr);


      /// <summary>
      /// Checks to see if satellite has geo orbit
      /// </summary>
      /// <param name="incli">satellite's inclination (deg) (in-Double)</param>
      /// <param name="period">satellite's period (min) (in-Double)</param>
      /// <returns>Return 1 if satellite has geo orbit, 0 if it doesn't</returns>
      [DllImport(ElOpsDll, CallingConvention = CallingConvention.Cdecl)]
      public static extern int IsGeoOrbit(double incli, double period);


      /// <summary>
      /// Estimates the approx long east subpt
      /// </summary>
      /// <param name="ds50UTC">time in days since 1950, UTC (in-Double)</param>
      /// <param name="node">right ascension of the ascending node (deg) (in-Double)</param>
      /// <param name="omega">argument of perigee (deg) (in-Double)</param>
      /// <param name="mnAnomaly">mean anomaly (deg) (in-Double)</param>
      /// <returns>estimated long east sub point (deg)</returns>
      [DllImport(ElOpsDll, CallingConvention = CallingConvention.Cdecl)]
      public static extern double CompLonEastSubPt(double ds50UTC, double node, double omega, double mnAnomaly);


      /// <summary>
      /// Computes the decay time of the input satellite
      /// </summary>
      /// <param name="satKey">The input satKey of the satellite needs to compute decay time (in-Long)</param>
      /// <param name="f10Avg">Input F10 average value (in-Double)</param>
      /// <param name="decayDs50UTC">The output decay time in days since 1950 UTC (out-Double)</param>
      /// <returns>Returns 0 if success, 1 if nDot/2 lt 0, 2 if mean motion lt 1.5, and 3 if f2log lt 0</returns>
      [DllImport(ElOpsDll, CallingConvention = CallingConvention.Cdecl)]
      public static extern int FindSatDecayTime(long satKey, double f10Avg, out double decayDs50UTC);


      /// <summary>
      /// Returs parameters of a satellite via its satKey
      /// </summary>
      /// <param name="satKey">The input satKey of the satellite needs to compute gobs parameters (in-Long)</param>
      /// <param name="xa_satparm">Output satellite's parameters.  see XA_SATPARM_? (out-Double[32])</param>
      /// <returns>0 if the satellite parameters are successfully retrieved, non-0 if there is an error</returns>
      [DllImport(ElOpsDll, CallingConvention = CallingConvention.Cdecl)]
      public static extern int GetSatParameters(long satKey, double[] xa_satparm);


      /// <summary>
      /// Returs the satellite number associated with the input satKey
      /// </summary>
      /// <param name="satKey">The input satKey (in-Long)</param>
      /// <returns>The satellite number associated with the input satKey (satNum = -1 if satKey doesn't exist)</returns>
      [DllImport(ElOpsDll, CallingConvention = CallingConvention.Cdecl)]
      public static extern int SatNumOf(long satKey);


      /// <summary>
      /// Adds an impulsive maneuver (using VP-card string format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
      /// Note: All maneuvers have to be entered before the satellite's initialization step
      /// </summary>
      /// <param name="satKey">The unique key of the satellite of which impulsive maneuver is added to (in-Long)</param>
      /// <param name="vpString">Impulse manuever using VP-card string format (in-Character[512])</param>
      /// <returns>0 if the impulsive maneuver is added successfully, non-0 if there is an error.</returns>
      [DllImport(ElOpsDll, CallingConvention = CallingConvention.Cdecl)]
      public static extern int AddManeuverVPStr(long satKey, string vpString);


      /// <summary>
      /// Adds an impulsive maneuver (using VP-card array format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
      /// Note: All maneuvers have to be entered before the satellite's initialization step
      /// </summary>
      /// <param name="satKey">The unique key of the satellite of which impulsive maneuver is added to (in-Long)</param>
      /// <param name="xa_vp">Impulsive maneuver using VP-card array format - see XA_VP_? for array arrangement (in-Double[16])</param>
      /// <returns>0 if the impulsive maneuver is added successfully, non-0 if there is an error.</returns>
      [DllImport(ElOpsDll, CallingConvention = CallingConvention.Cdecl)]
      public static extern int AddManeuverVPArr(long satKey, double[] xa_vp);
      
      // Satellite maintenance category
      public static int  
         SATCAT_SYNCHRONOUS = 1,       // Synchronous
         SATCAT_DEEPSPACE   = 2,       // Deep space (not synchronous)
         SATCAT_DECAYING    = 3,       // Decaying (perigee height below 575 km)
         SATCAT_ROUTINE     = 4;       // Routine (everything else)   
         
      // Indexes of available satellite data fields
      public static int  
         XF_ELFIELD_EPOCHUTC =  1,     // epoch in days since 1950, UTC
         XF_ELFIELD_MNANOM   =  2,     // mean anomaly (deg)
         XF_ELFIELD_NODE     =  3,     // right ascension of the asending node (deg) 
         XF_ELFIELD_OMEGA    =  4,     // argument of perigee (deg) 
         XF_ELFIELD_PERIOD   =  5,     // period (min)
         XF_ELFIELD_ECCEN    =  6,     // eccentricity (unitless)    
         XF_ELFIELD_INCLI    =  7,     // inclination (deg)
         XF_ELFIELD_MNMOTION =  8,     // mean motion (revs/day)
         XF_ELFIELD_BFIELD   =  9,     // either SGP4 bStar (1/er) or SP bTerm (m2/kg)
         XF_ELFIELD_PERIGEEHT= 10,     // perigee height (km) 
         XF_ELFIELD_APOGEEHT = 11,     // apogee height (km) 
         XF_ELFIELD_PERIGEE  = 12,     // perigee (km)
         XF_ELFIELD_APOGEE   = 13,     // apogee (km)
         XF_ELFIELD_A        = 14,     // semi major axis (km)
         XF_ELFIELD_SATCAT   = 15,     // Satellite category (Synchronous, Deep space, Decaying, Routine)
         XF_ELFIELD_HTM3     = 16,     // Astat 3 Height multiplier
         XF_ELFIELD_CMOFFSET = 17,     // Center of mass offset (m)
         XF_ELFIELD_N2DOT    = 18;     // n-double-dot/6  (for SGP, eph-type = 0)  
      
         
      // Indexes of available satellite parameters
      public static int  
         XA_SATPARM_EPOCHUTC =  0,     // satellite's epoch in days since 1950, UTC
         XA_SATPARM_MNANOM   =  1,     // satellite's mean anomaly (deg)
         XA_SATPARM_NODE     =  2,     // satellite's right ascension of the asending node (deg) 
         XA_SATPARM_OMEGA    =  3,     // satellite's argument of perigee (deg) 
         XA_SATPARM_PERIOD   =  4,     // satellite's period (min)
         XA_SATPARM_ECCEN    =  5,     // satellite's eccentricity (unitless)    
         XA_SATPARM_INCLI    =  6,     // satellite's inclination (deg)
         XA_SATPARM_MNMOTION =  7,     // satellite's mean motion (revs/day)
         XA_SATPARM_BFIELD   =  8,     // satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg)
         XA_SATPARM_PERIGEEHT=  9,     // satellite's perigee height (km) 
         XA_SATPARM_APOGEEHT = 10,     // satellite's apogee height (km) 
         XA_SATPARM_PERIGEE  = 11,     // satellite's perigee (km)
         XA_SATPARM_APOGEE   = 12,     // satellite's apogee (km)
         XA_SATPARM_A        = 13,     // satellite's semi major axis (km)
         XA_SATPARM_SATCAT   = 14,     // satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine)
         XA_SATPARM_CMOFFSET = 15,     // satellite's center of mass offset (m)
         XA_SATPARM_LONE     = 16,     // satellite's east longitude east subpoint (deg) - only for synchronous orbits
         XA_SATPARM_DRIFT    = 17,     // satellite's longitude drift rate (deg East/day) - only for synchronous orbits
         XA_SATPARM_OMEGADOT = 18,     // satellite's omega rate of change (deg/day)
         XA_SATPARM_RADOT    = 19,     // satellite's nodal precession rate (deg/day)
         XA_SATPARM_NODALPRD = 20,     // satellite's nodal period (min)
         XA_SATPARM_NODALX   = 21,     // satellite's nodal crossing time prior to its epoch (ds50UTC)
         XA_SATPARM_ISGEO    = 22,     // satellite is GEO: 0=no, 1=yes
         XA_SATPARM_RELENERGY= 23,     // satellite's relative energy - only for GOBS
         XA_SATPARM_SATNUM   = 24,     // satellite's number
         XA_SATPARM_ELTTYPE  = 25,     // satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET)
         XA_SATPARM_OET      = 25,     // obsolete - should use new name XA_SATPARM_ELTTYPE intead
         XA_SATPARM_PROPTYPE = 26,     // satellite's propagation type - see PROPTYPE_? for list of available values
         XA_SATPARM_ELSETNUM = 27,     // satellite's element number
         XA_SATPARM_WX       = 28,     // sin(incl)*sin(r.a. node)
         XA_SATPARM_WY       = 29,     // -sin(incl)*cos(r.a. node)
         XA_SATPARM_WZ       = 30,     // cos(incl)
         XA_SATPARM_TROUGH   = 31,     // Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
      
         XA_SATPARM_SIZE     = 32;
      
      // Different input time options of VP card
      public static int  
         VP_TIME_DS50UTC = 0,   // VP's input time is in days since 1950 UTC
         VP_TIME_MSE     = 1;   // VP's input time is in minutes since epoch
         
      // VP record arrangement in array format
      public static int  
         XA_VP_TIMETYPE    = 0,   // VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
         XA_VP_TIMEVAL     = 1,   // VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
         XA_VP_IMPULSE_U   = 2,   // impulse U-component of delta-velocity (km/sec)
         XA_VP_IMPULSE_V   = 3,   // impulse V-component of delta-velocity (km/sec)
         XA_VP_IMPULSE_W   = 4,   // impulse W-component of delta-velocity (km/sec)
         XA_VP_REPETITIONS = 5,   // apply above delta-v this number of times at the interval specified below
         XA_VP_INTERVAL    = 6,   // time interval in minutes between repetitions specified above
      
         XA_VP_SIZE        = 16; 
      
      
      
      //*******************************************************************************
      
   }
// ========================= End of auto generated code ==========================
}
