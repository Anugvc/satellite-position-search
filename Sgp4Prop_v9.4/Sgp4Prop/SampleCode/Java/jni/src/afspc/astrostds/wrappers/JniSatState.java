// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: SatState */
public class JniSatState
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "satstate";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadSatStateDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadSatStateDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes SatState DLL for use in the program
   * If this function returns an error, it is recommended that the users stop the program immediately. 
   * The error occurs if the users forget to load and initialize all the prerequisite DLLs, 
   * as listed in the DLL Prerequisite section, before using this DLL.
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if SatState.dll is initialized successfully, non-0 if there is an error
   */
   public static native int SatStateInit(long apAddr);


   /**
   * Returns information about the current version of SatState DLL. 
   * The information is placed in the string parameter passed in.
   * The returned string provides information about the version number, build date, and the platform of the SatState DLL. 
   * @param infoStr            A string to hold the information about SatState.dll (out-Character[128])
   */
   public static native void SatStateGetInfo(byte[] infoStr);


   /**
   * Loads any orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls from an input text file
   * Internally, if taskMode = 1, this function calls SpProp.SpLoadFile(); 
   * and if taskMode = 2, this function calls Tle.TleLoadFile(), SpVec.SpVecLoadFile(), Vcm.VcmLoadFile(), ExtEphem.ExtEphLoadFile(); 
   * if taskMode = 3, both tasks (1 and 2) are executed.
   * @param inputFile          The name of the input file to load (in-Character[512])
   * @param xf_Task            Specified task mode: 1=load SP control parameters, 2=load elsets only, 3=both 1 + 2 (in-Integer)
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int SatStateLoadFile(String inputFile, int xf_Task);


   /**
   * Saves currently loaded orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls to a file
   * The purpose of this function is to save the current SatState-related settings, usually used in GUI applications, for future use.
   * 
   * Internally, if taskMode = 1, this function calls SpProp.SpSaveFile(); 
   * and if taskMode = 2, this function calls Tle.TleSaveFile(), SpVec.SpVecSavedFile(), Vcm.VcmSaveFile(), ExtEphem.ExtEphSaveFile(); 
   * if taskMode = 3, both tasks (1 and 2) are executed.
   * @param outFile            The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @param xf_Task            Specified task mode: 1=Only save propagator control parameters, 2=Only save orbital elements/external ephemeris data,	3=Save both 1 + 2 (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int SatStateSaveFile(String outFile, int saveMode, int saveForm, int xf_Task);


   /**
   * Removes a satellite from the appropriate elset DLL's set of loaded satellites. 
   * The function will automatically choose the proper set of elsets from which to remove the satellite. 
   * The choices are: Tle.dll, SpVec.dll, Vcm.dll, or ExtEphem.dll   
   * If the users enter an invalid satKey (a satKey that does not exist in memory), the function will return a non-zero value indicating an error.
   * @param satKey             The unique key of the satellite to be removed (in-Long)
   * @return 0 if the satellite is successfully removed from memory, non-0 if there is an error
   */
   public static native int SatStateRemoveSat(long satKey);


   /**
   * Removes a satellite from the appropriate sets of loaded satellites (elset dll and propagator dll). 
   * The function will remove the satellite from the elset DLL's sets as in SatStateRemoveSat() and 
   * from the appropriate propagator's set of initialized satellites if it exists there.
   * @param satKey             The unique key of the satellite to be removed (in-Long)
   * @return 0 if the satellite is successfully removed from memory, non-0 if there is an error
   */
   public static native int SatStateRemoveSatAll(long satKey);


   /**
   * Removes all satellites from all of the loaded data sets. 
   * It will remove all satellites from the following sets: Tle, SpVec, Vcm, ExtEphem, Sgp4Prop, and SpProp
   * @return 0 if all of the data sets are cleared successfully, non-0 if there is an error
   */
   public static native int SatStateRemoveAllSats();


   /**
   * Resets propagator settings back to their default values
   */
   public static native void SatStateReset();


   /**
   * Returns the total number of satellites (TLE's, SPVEC's, VCM's, and EXTEPHEM's) currently loaded in memory
   * See SatStateGetLoaded for example.
   * This function is useful for dynamically allocating memory for the array that is passed to the function SatStateGetLoaded.
   * @return The total number of currently loaded satellites
   */
   public static native int SatStateGetCount();


   /**
   * Retrieves all of the currently loaded satKeys. 
   * These satKeys can be used to access the internal data for the satellites.
   * It is recommended that SatStateGetCount() is used to count how many satellites are currently loaded in memory. 
   * The user can then use this number to dynamically allocate the satKeys array and pass it to this function.
   * 
   * If the user prefers to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   * @param order              Specifies the order in which the satKeys should be returned:	0=ascending order, 1=descending order, 2=order in which the satKeys were loaded in memory (in-Integer)
   * @param satKeys            The array in which to store the satKeys (out-Long[*])
   */
   public static native void SatStateGetLoaded(int order, long[] satKeys);


   /**
   * Returns the first satKey that contains the specified satellite number in all sets of loaded satellites. 
   * These sets will be searched: Tle, SpVec, Vcm, and ExtEphem.
   * This function is useful when a satellite is used in applications that require only one record for one 
   * satellite and the applications refer to that satellite by its satellite number. 
   * However, the Astrodynamic Standard Shared library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   * @param satNum             The satellite number to search for (in-Integer)
   * @return The satKey of the matching satellite if one is found, a negative value indicating an error if not
   */
   public static native long SatStateNumToKey(int satNum);


   /**
   * Retrieves the data which is common to all satellite types. 
   * All common fields are retrieved with a single function call.
   * The apogee height and perigee height are defined as the distance above an ellipsoid 
   * created using the earth flattening factor from the selected geopotential model.
   * Note:  When using SP elsets (TLE type 6, SPVEC, or VCM), calling SatStateGetSatDataAll 
   * will implicitly call SpInit in order to extract the mu value from the GEO file the elset is tied to.  
   * The elset must have a valid GEO directory available or an error will be returned.
   * @param satKey             The satellite's unique key (in-Long)
   * @param satNum             Satellite number (out-Integer)
   * @param satName            Satellite international designator (out-Character[8])
   * @param eltType            Element type (see ELTTYPE_? which is listed in DllMain for list of possible element types) (out-Integer)
   * @param revNum             Revolution number at epoch (out-Integer)
   * @param epochDs50UTC       Epoch time time in days since 1950 UTC (out-Double)
   * @param bField             Ballistic coefficient (m^2/kg) (out-Double)
   * @param elsetNum           Element set number (out-Integer)
   * @param incli              Inclination (deg) (out-Double)
   * @param node               Right ascension of ascending node (deg) (out-Double)
   * @param eccen              Eccentricity (out-Double)
   * @param omega              Argument of perigee (deg) (out-Double)
   * @param mnAnomaly          Mean anomaly (deg) (out-Double)
   * @param mnMotion           Mean motion (rev/day) (out-Double)
   * @param period             Satellite period (min) (out-Double)
   * @param perigeeHt          Satellite perigee height (km) above the ellipsoid (out-Double)
   * @param apogeeHt           Satellite apogee height (km) above the ellipsoid (out-Double)
   * @param perigee            Satellite perigee height from the center of the earth (km) (out-Double)
   * @param apogee             Satellite apogee height from the center of the earth (km) (out-Double)
   * @param a                  Semi-major axis (km) (out-Double)
   * @return 0 if all satellite data fields are retrieved successfully, non-0 if there is an error
   */
   public static native int SatStateGetSatDataAll(long satKey, int[] satNum, byte[] satName, int[] eltType, int[] revNum, double[] epochDs50UTC, double[] bField, int[] elsetNum, double[] incli, double[] node, double[] eccen, double[] omega, double[] mnAnomaly, double[] mnMotion, double[] period, double[] perigeeHt, double[] apogeeHt, double[] perigee, double[] apogee, double[] a);


   /**
   * Retrieves an individual field of a satellite. 
   * @param satKey             The satellite's unique key (in-Long)
   * @param xf_Sat             Predefined number specifying which field to retrieve, see XF_SAT_? for field specification (in-Integer)
   * @param retVal             A string to contain the value of the requested field (out-Character[512])
   * @return 0 if the satellite data is successfully retrieved, non-0 if there is an error
   */
   public static native int SatStateGetSatDataField(long satKey, int xf_Sat, byte[] retVal);


   /**
   * Initializes a TLE, SPVEC, or VCM in preparation for propagation, or an EXTEPHEM in preparation for interpolation
   * @param satKey             The satellite's unique key (in-Long)
   * @return 0 if the satellite is successfully initialized, non-0 if there is an error
   */
   public static native int SatStateInitSat(long satKey);


   /**
   * Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
   * The satellite is propagated/interpolated to the specified time calculated in minutes since the satellite's epoch time
   * @param satKey             The satellite's unique key (in-Long)
   * @param mse                The time to propagate to, specified in minutes since the satellite's epoch time (in-Double)
   * @param ds50UTC            Resulting time in days since 1950, UTC (out-Double)
   * @param revNum             Revolution number (out-Integer)
   * @param pos                Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch (out-Double[3])
   * @param vel                Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch (out-Double[3])
   * @param llh                Resulting geodetic latitude (deg), longitude(deg), and height (km) (out-Double[3])
   * @return 0 if the satellite is propagated/interpolated successfully, non-0 if there is an error
   */
   public static native int SatStateMse(long satKey, double mse, double[] ds50UTC, int[] revNum, double[] pos, double[] vel, double[] llh);


   /**
   * Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
   * The satellite is propagated/interpolated to the specified time calculated in days since 1950, UTC.
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The time to propagate to, specified in days since 1950, UTC (in-Double)
   * @param mse                Resulting time in minutes since the satellite's epoch time (out-Double)
   * @param revNum             Revolution number (out-Integer)
   * @param pos                Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch (out-Double[3])
   * @param vel                Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch (out-Double[3])
   * @param llh                Resulting geodetic latitude (deg), longitude(deg), and height (km) (out-Double[3])
   * @return 0 if the satellite is propagated/interpolated successfully, non-0 if there is an error
   */
   public static native int SatStateDs50UTC(long satKey, double ds50UTC, double[] mse, int[] revNum, double[] pos, double[] vel, double[] llh);


   /**
   * Returns additional propagated/interpolated results (reserved for future implementation)
   * Reserved for future implementation
   * Use this function immediately after the call to SatStateMse or SatStateDs50UTC. 
   * @param satKey             the satellite's unique key (in-Long)
   * @param index              type of returned data (in-Integer)
   * @param destArr            the resulting array (out-Double[128])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int SatStateGetPropOut(long satKey, int index, double[] destArr);


   /**
   * Returns various ephemeris comparison results between two satellite states.
   * <br>
   * The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
   * defined by the position vector (radial) and the angular momentum vector (cross-track).
   * @param primSatKey         The primary satellite's unique key (in-Long)
   * @param secSatKey          The secondary satellite's unique key (in-Long)
   * @param ds50UTC            Requested time in days since 1950 UTC (in-Double)
   * @param uvwFlag            UVW coordinate system flag: 0=use rotating UVW, 1=use inertial UVW (in-Integer)
   * @param xa_Delta           The resulting ephemeris comparison deltas, see XA_DELTA_? for array arrangement (out-Double[100])
   * @return 0 if the comparison results are computed successfully, non-0 if there is an error
   */
   public static native int SatStateEphCom(long primSatKey, long secSatKey, double ds50UTC, int uvwFlag, double[] xa_Delta);


   /**
   * Returns various ephemeris comparison results between two satellite states (_OS one step) .
   * <br>
   * The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
   * defined by the position vector (radial) and the angular momentum vector (cross-track).
   * @param priPosVel          The primary satellite's state (TEME of Date) in an array (position(1st-3rd, km), velocity(4th-6th, km/s)) (in-Double[6])
   * @param secPosVel          The secondary satellite's state (TEME of Date) in an array (position(1st-3rd, km), velocity(4th-6th, km/s)) (in-Double[6])
   * @param ds50UTC            Requested time in days since 1950 UTC (in-Double)
   * @param uvwFlag            UVW coordinate system flag: 0=use rotating UVW, 1=use inertial UVW (in-Integer)
   * @param xa_Delta           The resulting ephemeris comparison deltas, see XA_DELTA_? for array arrangement (out-Double[100])
   */
   public static native void SatStateEphCom_OS(double[] priPosVel, double[] secPosVel, double ds50UTC, int uvwFlag, double[] xa_Delta);


   /**
   * Determines if a satellite contains covariance matrix. 
   * 0=no, 1=yes
   * @param satKey             the satellite's unique key (in-Long)
   * @return 0=sat doesn't have cov mtx, 1=sat has cov mtx
   */
   public static native int SatStateHasCovMtx(long satKey);


   /**
   * Propagates/Interpolates UVW covariance matrix from VCM/External ephemeris to the time in days since 1950
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The input time in days since 1950 UTC (in-Double)
   * @param covUVW             6x6 UVW covariance matrix (out-Double[6, 6])
   * @return 0 if the UVW covariance matrix is propagated/interpolated successfully, non-0 if there is an error
   */
   public static native int SatStateGetCovUVW(long satKey, double ds50UTC, double[][] covUVW);


   /**
   * Propagates/Interpolates UVW covariance matrix from VCM/External ephemeris to the time in days since 1950
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The input time in days since 1950 UTC (in-Double)
   * @param covUVW             6x6 UVW covariance matrix (out-Double[])
   * @return 0 if the UVW covariance matrix is propagated/interpolated successfully, non-0 if there is an error
   */
   public static native int SatStateGetCovUVW2Das1D(long satKey, double ds50UTC, double[] covUVW);


   /**
   * Generate external ephemeris file for the specified satellite (via its unique satKey) 
   * Note: No need to initialize the satellite before this call. If it was intialized, it will be removed after this call
   * @param satKey             The satellite's unique key (in-Long)
   * @param startDs50UTC       Start time in days since 1950 UTC (in-Double)
   * @param stopDs50UTC        Stop time in days since 1950 UTC (in-Double)
   * @param stepSizeSecs       Step size in seconds. Set to zero if natural integration step size (auto adjust) is desired for SP propagator (in-Double)
   * @param ephFileName        The generated external ephemeris file name (in-Character[512])
   * @param ephFileType        External ephemeris file type, see EPHFILETYPE_? for available options (in-Integer)
   * @return 0 if the external ephemeris file was generated successfully, non-0 if there is an error
   */
   public static native int SatStateGenEphFile(long satKey, double startDs50UTC, double stopDs50UTC, double stepSizeSecs, String ephFileName, int ephFileType);


   /**
   * Finds the time of ascending nodal crossing of the specified satellite prior to an input time in days since 1950 TAI
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50TAI            Input time in ds50TAI (in-Double)
   * @return Time at nodal crossing ds50TAI
   */
   public static native double GetNodalCrossingPriorToTime(long satKey, double ds50TAI);


   /**
   * Get the Gobs parameters for a TLE
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            Propagation in days since 1950 UTC (in-Double)
   * @param xa_gobs            See XA_GOBS? for array arrangement (out-Double[32])
   * @param errCode            Error code (out-Integer)
   */
   public static native void GetGobsParams(long satKey, double ds50UTC, double[] xa_gobs, int[] errCode);


   /**
   * Does an XP GOBS comparison
   * @param primSatKey         The primary satellite's unique key (in-Long)
   * @param secSatKey          The secondary satellite's unique key (in-Long)
   * @param ds50UTC            Common epoch to compare in days since 1950 UTC (in-Double)
   * @param xa_gobs_lim        The gobs comparison limits, see XA_GOBS_LIM? for array arrangement (in-Double[16])
   * @param xa_gobs_delta      The resulting gobs comparison deltas, see XA_GOBS_DELTA? for array arrangement (out-Double[16])
   * @return 0 if the comparison results are computed successfully, non-0 if there is an error
   */
   public static native int GobsCom(long primSatKey, long secSatKey, double ds50UTC, double[] xa_gobs_lim, double[] xa_gobs_delta);


   /**
   * Does an XP GOBS comparison using gobs arrays
   * @param xa_gobs_prim       Primary sat GOBS parameters, See XA_GOBS? for array arrangement (in-Double[32])
   * @param xa_gobs_sec        Secondary sat GOBS parameters, See XA_GOBS? for array arrangement (in-Double[32])
   * @param xa_gobs_lim        The gobs comparison limits, see XA_GOBS_LIM? for array arrangement (in-Double[16])
   * @param xa_gobs_delta      The resulting gobs comparison deltas, see XA_GOBS_DELTA? for array arrangement (out-Double[16])
   */
   public static native void GobsComArr(double[] xa_gobs_prim, double[] xa_gobs_sec, double[] xa_gobs_lim, double[] xa_gobs_delta);
   
   // Indexes of available satellite data fields
   /** Satellite epoch time in days since 1950 UTC */
   public static final int XF_SATFIELD_EPOCHUTC =  1;
   /** Mean anomaly (deg) */
   public static final int XF_SATFIELD_MNANOM   =  2;
   /** Right ascension of asending node (deg) */
   public static final int XF_SATFIELD_NODE     =  3;
   /** Argument of perigee (deg) */
   public static final int XF_SATFIELD_OMEGA    =  4;
   /** Satellite's period (min) */
   public static final int XF_SATFIELD_PERIOD   =  5;
   /** Eccentricity */
   public static final int XF_SATFIELD_ECCEN    =  6;
   /** Orbit inclination (deg) */
   public static final int XF_SATFIELD_INCLI    =  7;
   /** Mean motion (rev/day) */
   public static final int XF_SATFIELD_MNMOTION =  8;
   /** GP B* drag term (1/er)  or SP Radiation Pressure Coefficient */
   public static final int XF_SATFIELD_BFIELD   =  9;
   /** Perigee height above the geoid (km) */
   public static final int XF_SATFIELD_PERIGEEHT= 10;
   /** Apogee height above the geoid (km) */
   public static final int XF_SATFIELD_APOGEEHT = 11;
   /** Perigee height above the center of the earth (km) */
   public static final int XF_SATFIELD_PERIGEE  = 12;
   /** Apogee height above the center of the earth (km) */
   public static final int XF_SATFIELD_APOGEE   = 13;
   /** Semimajor axis (km) */
   public static final int XF_SATFIELD_A        = 14;
   /** Mean motion derivative (rev/day /2) */
   public static final int XF_SATFIELD_NDOT     = 15;
   /** Satellite category (Synchronous, Deep space, Decaying, Routine) */
   public static final int XF_SATFIELD_SATCAT   = 16;
   /** Astat 3 Height multiplier */
   public static final int XF_SATFIELD_HTM3     = 17;
   /** Center of mass offset (m) */
   public static final int XF_SATFIELD_CMOFFSET = 18;
   /** Unused */
   public static final int XF_SATFIELD_N2DOT    = 19;
   /** GP node dot (deg/s) */
   public static final int XF_SATFIELD_NODEDOT  = 20;
   /** GP only - the last time when propagation has error */
   public static final int XF_SATFIELD_ERRORTIME= 21;
   /** value of mu */
   public static final int XF_SATFIELD_MU       = 22;
   
   
   //*******************************************************************************
   
   // Indexes of available deltas
   /** delta position (km) */
   public static final int XA_DELTA_POS         =  0;
   /** delta time (sec) */
   public static final int XA_DELTA_TIME        =  1;
   /** delta position in radial direction (km) */
   public static final int XA_DELTA_PRADIAL     =  2;
   /** delta position in in-track direction (km) */
   public static final int XA_DELTA_PINTRCK     =  3;
   /** delta position in cross-track direction (km) */
   public static final int XA_DELTA_PCRSSTRCK   =  4;
   /** delta velocity (km/sec) */
   public static final int XA_DELTA_VEL         =  5;
   /** delta velocity in radial direction (km/sec) */
   public static final int XA_DELTA_VRADIAL     =  6;
   /** delta velocity in in-track direction (km/sec) */
   public static final int XA_DELTA_VINTRCK     =  7;
   /** delta velocity in cross-track direction (km/sec) */
   public static final int XA_DELTA_VCRSSTRCK   =  8;
   /** delta Beta (deg) */
   public static final int XA_DELTA_BETA        =  9;
   /** delta height (km) */
   public static final int XA_DELTA_HEIGHT      = 10;
   /** delta angular momentum (deg) */
   public static final int XA_DELTA_ANGMOM      = 11;
   /** 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on) */
   public static final int XA_DELTA_MHLNBS_UVW  = 12;
   /** 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on) */
   public static final int XA_DELTA_MHLNBS_HTB  = 13;
   
   public static final int XA_DELTA_SIZE        =100;
   
   // Indexes of Satellite data fields
   /** Satellite number I5 */
   public static final int XF_SAT_NUM      =  1;
   /** Satellite international designator A8 */
   public static final int XF_SAT_NAME     =  2;
   /** Element type I1 (old name XF_SAT_EPHTYPE) */
   public static final int XF_SAT_ELTTYPE  =  3;
   /** Obsolete - should use new name XF_SAT_ELTTYPE instead */
   public static final int XF_SAT_EPHTYPE  =  3;
   /** Epoch revolution number I6 */
   public static final int XF_SAT_REVNUM   =  4;
   /** Epoch time in days since 1950 */
   public static final int XF_SAT_EPOCH    =  5;
   /** BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg) */
   public static final int XF_SAT_BFIELD   =  6;
   /** Element set number */
   public static final int XF_SAT_ELSETNUM =  7;
   /** Inclination (deg) */
   public static final int XF_SAT_INCLI    =  8;
   /** Right ascension of ascending node (deg) */
   public static final int XF_SAT_NODE     =  9;
   /** Eccentricity */
   public static final int XF_SAT_ECCEN    = 10;
   /** Argument of perigee (deg) */
   public static final int XF_SAT_OMEGA    = 11;
   /** Mean anomaly (deg) */
   public static final int XF_SAT_MNANOM   = 12;
   /** Mean motion (revs/day) */
   public static final int XF_SAT_MNMOTN   = 13;
   /** Satellite period (min) */
   public static final int XF_SAT_PERIOD   = 14;
   /** Perigee Height(km) */
   public static final int XF_SAT_PERIGEEHT= 15;
   /** Apogee Height (km) */
   public static final int XF_SAT_APOGEEHT = 16;
   /** Perigee(km) */
   public static final int XF_SAT_PERIGEE  = 17;
   /** Apogee (km) */
   public static final int XF_SAT_APOGEE   = 18;
   /** Semi-major axis (km) */
   public static final int XF_SAT_A        = 19;
   
   
   // Indexes of SatState's load/save file task mode
   /** Only load/save propagator control parameters */
   public static final int XF_TASK_CTRLONLY = 1;
   /** Only load/save orbital elements/external ephemeris data */
   public static final int XF_TASK_SATONLY  = 2;
   /** Load/Save both 1 and 2 */
   public static final int XF_TASK_BOTH     = 3;
   
   
   // Different external ephemeris file types
   /** ITC file format */
   public static final int EPHFILETYPE_ITC         =  1;
   /** ITC compact (without covariance matrix) file format */
   public static final int EPHFILETYPE_ITC_WOCOV   =  2;
   
   
   // Gobs records
   /** Satellite number */
   public static final int XA_GOBS_SATNUM    =  0;
   /** East Longitude */
   public static final int XA_GOBS_LONE      =  1;
   /** Longitude Drift Rate */
   public static final int XA_GOBS_DRIFT     =  2;
   /** satellite's relative energy (deg^2/sec^2) - only for GOBS */
   public static final int XA_GOBS_RELENERGY =  3;
   /** sin(incl)*sin(r.a. node) */
   public static final int XA_GOBS_WX        =  4;
   /** -sin(incl)*cos(r.a. node) */
   public static final int XA_GOBS_WY        =  5;
   /** cos(incl) */
   public static final int XA_GOBS_WZ        =  6;
   /** af */
   public static final int XA_GOBS_AF        =  7;
   /** ag */
   public static final int XA_GOBS_AG        =  8;
   /** AGOM */
   public static final int XA_GOBS_AGOM      =  9;
   /** Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift */
   public static final int XA_GOBS_TROUGH    = 10;
   
   public static final int XA_GOBS_SIZE      = 32;
   
   
   // Indexes of GOBS limits
   /** 0 - ignore trough logic, 1 - implement trough logic */
   public static final int XA_GOBS_LIM_TROUGH      =  0;
   /** Primary satellite is plane changer */
   public static final int XA_GOBS_LIM_PCP         =  1;
   /** Secondary satellite is plane changer */
   public static final int XA_GOBS_LIM_PCS         =  2;
   /** Primary satellite is plane changer */
   public static final int XA_GOBS_LIM_ACTIVEP     =  3;
   /** Secondary satellite is plane changer */
   public static final int XA_GOBS_LIM_ACTIVES     =  4;
   /** Min Longitude of sat */
   public static final int XA_GOBS_LIM_LONGMIN     =  5;
   /** Max Longitude of sat */
   public static final int XA_GOBS_LIM_LONGMAX     =  6;
   /** Min Agom of sat */
   public static final int XA_GOBS_LIM_AGOMMIN     =  7;
   /** Max Agom of sat */
   public static final int XA_GOBS_LIM_AGOMMAX     =  8;
   
   public static final int XA_GOBS_LIM_SIZE        = 16;
   
   
   // Indexes of available deltas
   /** Primary satellite number */
   public static final int XA_GOBS_DELTA_PRIMESAT     =  0;
   /** Secondary satellite number */
   public static final int XA_GOBS_DELTA_SECONDARYSAT =  1;
   /** GOBS correlation score */
   public static final int XA_GOBS_DELTA_ASTAT        =  2;
   /** delta orbital plane */
   public static final int XA_GOBS_DELTA_DOP          =  3;
   /** delta shape */
   public static final int XA_GOBS_DELTA_DSHAPE       =  4;
   /** delta Relative Energy (deg^2/day^2) */
   public static final int XA_GOBS_DELTA_DRELENERGY   =  5;
   /** Longitude of Primary */
   public static final int XA_GOBS_DELTA_LONGP        =  6;
   /** Minimum Longitude of Secondary */
   public static final int XA_GOBS_DELTA_LONGMIN      =  7;
   /** Maximum Longitude of Secondary */
   public static final int XA_GOBS_DELTA_LONGMAX      =  8;
   /** 0 - opposite throughs or drift rates, 1 - trough or drift rates match */
   public static final int XA_GOBS_DELTA_TROUGH       =  9;
   /** 0|1    Plane Match Flag */
   public static final int XA_GOBS_DELTA_PLANE        = 10;
   /** 0|1    Shape Match Flag */
   public static final int XA_GOBS_DELTA_SHAPE        = 11;
   /** 0|1    Energy Match Flag */
   public static final int XA_GOBS_DELTA_ENERGY       = 12;
   /** 0|1|2  Longitude Match Flag (2 is fuzzy match) */
   public static final int XA_GOBS_DELTA_LONG         = 13;
   /** 0|1    Agom Match Flag */
   public static final int XA_GOBS_DELTA_AGOM         = 14;
   
   public static final int XA_GOBS_DELTA_SIZE         = 16;
   
   
   //*******************************************************************************
   
// ========================= End of auto generated code ==========================
}
