// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: Sgp4Prop */
public class JniSgp4Prop
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "sgp4prop";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadSgp4PropDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadSgp4PropDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes the Sgp4 DLL for use in the program.
   * <br>
   * If this function returns an error, it is recommended that you stop the program immediately.
   * <br>
   * An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   * @param apAddr             The handle that was returned from DllMainInit(). See the documentation for DllMain.dll for details. (in-Long)
   * @return 0 if Sgp4Prop.dll is initialized successfully, non-0 if there is an error.
   */
   public static native int Sgp4Init(long apAddr);


   /**
   * Returns information about the current version of Sgp4Prop.dll. The information is placed in the string parameter you pass in.
   * The returned string provides information about the version number, build date, and platform.
   * @param infoStr            A string to hold the information about Sgp4Prop.dll. (out-Character[128])
   */
   public static native void Sgp4GetInfo(byte[] infoStr);


   /**
   * Loads SGP4-related parameters (prediction controls, JPL settings) and SGP4 elsets from a text file
   * @param sgp4InputFile      The name of the file containing SGP4-related parameters and SGP4 elsets (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int Sgp4LoadFileAll(String sgp4InputFile);


   /**
   * Saves currently loaded SGP4-related parameters (SGP4 application controls, prediction controls, integration controls) to a file
   * The purpose of this function is to save the current SGP4-related settings, usually used in GUI applications, for future use.
   * @param sgp4File           The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Sgp4ecifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Sgp4ecifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int Sgp4SaveFile(String sgp4File, int saveMode, int saveForm);


   /**
   * Initializes an SGP4 satellite from an SGP or SGP4 TLE.
   * Internally, when this function is called, Tle.dll's set of TLEs is searched for the provided satKey. If found, the associated TLE data will be used to create an SGP4 satellite which then will be added to Sgp4Prop.dll's set of satellites. Subsequent calls to propagate this satellite will use the data in this set to compute the satellite's new state.
   * 
   * This routine should be called once for each satellite you wish to propagate before propagation begins, or any time the associated data that is stored by Tle.dll is changed.
   * 
   * The call to this routine needs to be placed before any calls to the SGP4 propagator routines (Sgp4PropMse(), Sgp4PropDs50UTC(), etc.).
   * @param satKey             The satellite's unique key. This key will have been returned by one of the routines in Tle.dll. (in-Long)
   * @return 0 if the satellite is successfully initialized and added to Sgp4Prop.dll's set of satellites, non-0 if there is an error.
   */
   public static native int Sgp4InitSat(long satKey);


   /**
   * Removing a satellite from the propagator's set of satellites does not affect the corresponding TLE data loaded by calls to routines in Tle.dll.
   * @param satKey             The satellite's unique key. (in-Long)
   * @return 0 if the satellite is removed successfully, non-0 if there is an error.
   */
   public static native int Sgp4RemoveSat(long satKey);


   /**
   * Removes all currently loaded satellites from memory.
   * Calling this function removes all satellites from the set maintained by Sgp4Prop.dll. However, the TLE data loaded by Tle.dll is unaffected by this function.
   * @return 0 if all satellites are removed successfully from memory, non-0 if there is an error.
   */
   public static native int Sgp4RemoveAllSats();


   /**
   * Returns the number of GP objects currently created. 
   * @return The number of GP objects currently created.
   */
   public static native int Sgp4GetCount();


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in minutes since the satellite's epoch time. 
   * The resulting data about the satellite is placed in the various reference parameters.
   * It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   * 
   * This function can be called in random time requests.
   * The following cases will result in an error:
   * <ul>
   * <li>Semi major axis A &lt;= 0 or A &gt;1.0D6</li>
   * <li>Eccentricity E &gt;= 1.0 or E &lt; -1.0D-3</li>
   * <li>Mean anomaly MA&gt;=1.0D10</li>
   * <li>Hyperbolic orbit E<sup>2</sup>&gt;= 1.0</li>
   * <li>satKey doesn't exist in the set of loaded satellites</li>
   * <li>FK model not set to FK5</li>
   * </ul>
   * @param satKey             The satellite's unique key. (in-Long)
   * @param mse                The time to propagate to, specified in minutes since the satellite's epoch time. (in-Double)
   * @param ds50UTC            Resulting time in days since 1950, UTC. (out-Double)
   * @param pos                Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch. (out-Double[3])
   * @param vel                Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch. (out-Double[3])
   * @param llh                Resulting geodetic latitude (deg), longitude(deg), and height (km). (out-Double[3])
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4PropMse(long satKey, double mse, double[] ds50UTC, double[] pos, double[] vel, double[] llh);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   * The resulting data about the satellite is placed in the pos (position), vel (velocity), and llh (Lat/Lon/Height) parameters.
   * It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   * The following cases will result in an error:
   * <ul>
   * <li>Semi major axis A &lt;= 0 or A &gt;1.0D6</li>
   * <li>Eccentricity E &gt;= 1.0 or E &lt; -1.0D-3</li>
   * <li>Mean anomaly MA&gt;=1.0D10</li>
   * <li>Hyperbolic orbit E<sup>2</sup>&gt;= 1.0</li>
   * <li>satKey doesn't exist in the set of loaded satellites</li>
   * <li>GEO model not set to WGS-72 and/or FK model not set to FK5</li>
   * </ul>
   * @param satKey             The unique key of the satellite to propagate. (in-Long)
   * @param ds50UTC            The time to propagate to, expressed in days since 1950, UTC. (in-Double)
   * @param mse                Resulting time in minutes since the satellite's epoch time. (out-Double)
   * @param pos                Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch. (out-Double[3])
   * @param vel                Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch. (out-Double[3])
   * @param llh                Resulting geodetic latitude (deg), longitude(deg), and height (km). (out-Double[3])
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4PropDs50UTC(long satKey, double ds50UTC, double[] mse, double[] pos, double[] vel, double[] llh);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   * The resulting data about the satellite is placed in the pos (position), vel (velocity) parameters.
   * @param satKey             The unique key of the satellite to propagate. (in-Long)
   * @param ds50UTC            The time to propagate to, expressed in days since 1950, UTC. (in-Double)
   * @param pos                Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch. (out-Double[3])
   * @param vel                Resulting ECI velocity vector (km/s) in True Equator and Mean Equinox of Epoch. (out-Double[3])
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4PropDs50UtcPosVel(long satKey, double ds50UTC, double[] pos, double[] vel);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   * Only the geodetic information is returned by this function.
   * It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   * 
   * This function is similar to Sgp4PropDs50UTC but returns only LLH.  This function is designed especially for applications which plot ground traces.
   * The following cases will result in an error:
   * <ul>
   * <li>Semi major axis A &lt;= 0 or A &gt;1.0D6</li>
   * <li>Eccentricity E &gt;= 1.0 or E &lt; -1.0D-3</li>
   * <li>Mean anomaly MA&gt;=1.0D10</li>
   * <li>Hyperbolic orbit E<sup>2</sup>&gt;= 1.0</li>
   * <li>satKey doesn't exist in the set of loaded satellites</li>
   * <li>GEO model not set to WGS-72 and/or FK model not set to FK5</li>
   * </ul>
   * @param satKey             The unique key of the satellite to propagate. (in-Long)
   * @param ds50UTC            The time to propagate to, expressed in days since 1950, UTC. (in-Double)
   * @param llh                Resulting geodetic latitude (deg), longitude(deg), and height (km). (out-Double[3])
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4PropDs50UtcLLH(long satKey, double ds50UTC, double[] llh);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   * Only the ECI position vector is returned by this function.
   * It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   * 
   * This function is similar to Sgp4PropDs50UTC but returns only ECI position vector.  This function is designed especially for applications which plot satellite position in 3D.
   * The following cases will result in an error:
   * <ul>
   * <li>Semi major axis A &lt;= 0 or A &gt;1.0D6</li>
   * <li>Eccentricity E &gt;= 1.0 or E &lt; -1.0D-3</li>
   * <li>Mean anomaly MA&gt;=1.0D10</li>
   * <li>Hyperbolic orbit E<sup>2</sup>&gt;= 1.0</li>
   * <li>satKey doesn't exist in the set of loaded satellites</li>
   * <li>GEO model not set to WGS-72 and/or FK model not set to FK5</li>
   * </ul>
   * @param satKey             The unique key of the satellite to propagate. (in-Long)
   * @param ds50UTC            The time to propagate to, expressed in days since 1950, UTC. (in-Double)
   * @param pos                Resulting ECI position vector (km) in True Equator and Mean Equinox of Epoch. (out-Double[3])
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4PropDs50UtcPos(long satKey, double ds50UTC, double[] pos);


   /**
   * Retrieves propagator's precomputed results. This function can be used to obtain results from 
   * a propagation which are not made available through calls to the propagation functions themselves.
   * <br>
   * See example in Sgp4PropMse or Sgp4PropDs50UTC.
   * <br>
   * This function should be called immediately after a successful call to Sgp4PropMse() or Sgp4PropDs50UTC() to retrieve the desired values.
   * <br>
   * It is the caller's responsibility to ensure that the array passed in the destArray parameter is large enough to hold the requested values. The required size can be found by looking at the destArray size column of the table below describing valid index values.
   * <br>
   * The destArray Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element. In other programming languages, the subscript of the first element is 1.
   * <br>
   * Note: This function is not thread safe, please use Sgp4PropAll() instead 
   * <br>
   * The table below shows the values for the xf_Sgp4Out parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * <td><b>DestArray size</b></td>
   * <td><b>DestArray Arrangement</b></td>
   * </tr>
   * <tr><td>1</td><td>Revolution number</td><td>1</td><td><ol><li>Revolution number (based on the Osculating Keplerian
   * Elements)</li></ol></td></tr>
   * <tr><td>2</td><td>Nodal Apogee Perigee</td><td>3</td><td><ol><li>nodal period (minutes)</li><li>apogee
   * (km)</li><li>perigee (km)</li></ol></td></tr>
   * <tr><td>3</td><td>Mean Keplerian Elements</td><td>6</td><td><ol><li>semi-major axis (km)</li><li>eccentricity
   * (unitless)</li><li>inclination (degree)</li><li>mean anomaly (degree)</li><li>right ascension of the ascending node
   * (degree)</li><li>argument of perigee (degree)</li></ol></td></tr>
   * <tr><td>4</td><td>Osculating Keplerian Elements</td><td>6</td><td>Same as Mean Keplerian Elements</td></tr>
   * </table>
   * @param satKey             The unique key of the satellite for which to retrieve results. (in-Long)
   * @param xf_Sgp4Out         Specifies which propagator outputs to retrieve. (in-Integer)
   * @param destArr            Array to receive the resulting propagator outputs. (out-Double[*])
   * @return 0 if the requested information is retrieved successfully, non-0 if there is an error.
   */
   public static native int Sgp4GetPropOut(long satKey, int xf_Sgp4Out, double[] destArr);


   /**
   * Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   * All propagation data is returned by this function.
   * @param satKey             The unique key of the satellite to propagate. (in-Long)
   * @param timeType           The propagation time type: 0 = minutes since epoch, 1 = days since 1950, UTC (in-Integer)
   * @param timeIn             The time to propagate to, expressed in either minutes since epoch or days since 1950, UTC. (in-Double)
   * @param xa_Sgp4Out         The array that stores all Sgp4 propagation data, see XA_SGP4OUT_? for array arrangement (out-Double[64])
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4PropAll(long satKey, int timeType, double timeIn, double[] xa_Sgp4Out);


   /**
   * Converts osculating position and velocity vectors to a set of mean Keplerian SGP4 elements.
   * The new position and velocity vectors are the results of using SGP4 propagator to propagate the computed sgp4MeanKep to the time specified in year and day of epoch time. 
   * They should be closely matched with the input osculating position and velocity vectors.
   * 
   * The mean Keplerian elements are SGP4's Brouwer mean motion not SGP's Kozai mean motion.
   * Notes: Even if the function fails, the less acurate results may still be availalbe 
   * @param yr                 2 or 4 digit year of the epoch time. (in-Integer)
   * @param day                Day of year of the epoch time. (in-Double)
   * @param pos                Input osculating position vector (km). (in-Double[3])
   * @param vel                Input osculating velocity vector (km/s). (in-Double[3])
   * @param posNew             Resulting position vector (km) propagated from the input xa_kep. (out-Double[3])
   * @param velNew             Resulting velocity vector (km/s) propagated from the input xa_kep. (out-Double[3])
   * @param xa_kep             Resulting set of Sgp4 mean Keplerian elements, see XA_KEP_? for array arrangement. (out-Double[6])
   * @return 0 if the conversion is successful, non-0 if there is an error.
   */
   public static native int Sgp4PosVelToKep(int yr, double day, double[] pos, double[] vel, double[] posNew, double[] velNew, double[] xa_kep);


   /**
   * Converts osculating position and velocity vectors to TLE array - allows bstar/bterm, drag values to be used in the conversion if desired
   * The function is similar to Sgp4PosVelToKep but allows the user to specify agom (XP mode) and bstar/bterm values, if desired, to be used in solving for the new Keplerian elements.
   * 
   * The updated elements returned in the xa_tle array is of type SGP and the mean motion is Kozai mean motion.
   * Notes: Even if the function fails, the less acurate results may still be availalbe 
   * @param pos                Input osculating position vector (km). (in-Double[3])
   * @param vel                Input osculating velocity vector (km/s). (in-Double[3])
   * @param xa_tle             Input/Output array containing TLE's numerical fields, see XA_TLE_? for array arrangement; required data include epoch, ephemType, drag, bstar/bterm (inout-Double[64])
   * @return 0 if the conversion is successful, non-0 if there is an error.
   */
   public static native int Sgp4PosVelToTleArr(double[] pos, double[] vel, double[] xa_tle);


   /**
   * Reepochs a loaded TLE, represented by the satKey, to a new epoch.
   * @param satKey             The unique key of the satellite to reepoch. (in-Long)
   * @param reEpochDs50UTC     The new epoch, express in days since 1950, UTC. (in-Double)
   * @param line1Out           A string to hold the first line of the reepoched TLE. (out-Character[512])
   * @param line2Out           A string to hold the second line of the reepoched TLE. (out-Character[512])
   * @return 0 if the reepoch is successful, non-0 if there is an error.
   */
   public static native int Sgp4ReepochTLE(long satKey, double reEpochDs50UTC, byte[] line1Out, byte[] line2Out);


   /**
   * Reepochs a loaded TLE, represented by the satKey, to a new epoch in Csv format.
   * @param satKey             The unique key of the satellite to reepoch. (in-Long)
   * @param reEpochDs50UTC     The new epoch, express in days since 1950, UTC. (in-Double)
   * @param csvLine            A string to hold the reepoched CSV. (out-Character[512])
   * @return 0 if the reepoch is successful, non-0 if there is an error.
   */
   public static native int Sgp4ReepochCsv(long satKey, double reEpochDs50UTC, byte[] csvLine);


   /**
   * This function has been deprecated since v8.2
   * Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
   * @param licFilePath        The file path to the Sgp4 Open License file (in-Character[512])
   */
   public static native void Sgp4SetLicFilePath(String licFilePath);


   /**
   * This function has been deprecated since v8.2
   * Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
   * @param licFilePath        The file path to the Sgp4 Open License file (out-Character[512])
   */
   public static native void Sgp4GetLicFilePath(byte[] licFilePath);


   /**
   * Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
   * Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   * that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   * @param satKey             The unique key of the satellite to generate ephemerides. (in-Long)
   * @param startTime          Start time expressed in days since 1950, UTC. (in-Double)
   * @param endTime            End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes (static); enter predefine negative values (DYN_SS_?) to request dynamic step size (in-Double)
   * @param sgp4_ephem         Output ephemeris type 1=ECI, 2=J2K. (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) (out-Double[*, 7])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4GenEphems(long satKey, double startTime, double endTime, double stepSize, int sgp4_ephem, int arrSize, double[][] ephemArr, int[] genEphemPts);


   /**
   * Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
   * Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   * that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   * @param satKey             The unique key of the satellite to generate ephemerides. (in-Long)
   * @param startTime          Start time expressed in days since 1950, UTC. (in-Double)
   * @param endTime            End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes (static); enter predefine negative values (DYN_SS_?) to request dynamic step size (in-Double)
   * @param sgp4_ephem         Output ephemeris type 1=ECI, 2=J2K. (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) (out-Double[])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4GenEphems2Das1D(long satKey, double startTime, double endTime, double stepSize, int sgp4_ephem, int arrSize, double[] ephemArr, int[] genEphemPts);


   /**
   * Generates ephemerides for the input TLE - in an array format - for the specified time span and step size (OS - in One Step)
   * Notes: <br>
   * - This function takes in TLE data directly and doesn't need to go through loading/geting satKey/initializing steps<br>
   * - if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   *   that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   * @param xa_tle             Input array containing TLE's numerical fields, see XA_TLE_? for array arrangement (in-Double[64])
   * @param startTime          Start time expressed in days since 1950, UTC. (in-Double)
   * @param endTime            End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes (static); enter predefine negative values (DYN_SS_?) to request dynamic step size (in-Double)
   * @param sgp4_ephem         Output ephemeris type 1=ECI, 2=J2K. (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) (out-Double[*, 7])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4GenEphems_OS(double[] xa_tle, double startTime, double endTime, double stepSize, int sgp4_ephem, int arrSize, double[][] ephemArr, int[] genEphemPts);


   /**
   * Generates ephemerides for the input TLE - in an array format - for the specified time span and step size (OS - in One Step)
   * Notes: <br>
   * - This function takes in TLE data directly and doesn't need to go through loading/geting satKey/initializing steps<br>
   * - if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   *   that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   * @param xa_tle             Input array containing TLE's numerical fields, see XA_TLE_? for array arrangement (in-Double[])
   * @param startTime          Start time expressed in days since 1950, UTC. (in-Double)
   * @param endTime            End time expressed in days since 1950, UTC. (in-Double)
   * @param stepSize           Step size in minutes (static); enter predefine negative values (DYN_SS_?) to request dynamic step size (in-Double)
   * @param sgp4_ephem         Output ephemeris type 1=ECI, 2=J2K. (in-Integer)
   * @param arrSize            Size of input ephemArr (in-Integer)
   * @param ephemArr           Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) (out-Double[])
   * @param genEphemPts        Actual number of ephemeris points generated (always &le; arrSize) (out-Integer)
   * @return 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   */
   public static native int Sgp4GenEphems_OS2Das1D(double[] xa_tle, double startTime, double endTime, double stepSize, int sgp4_ephem, int arrSize, double[] ephemArr, int[] genEphemPts);


   /**
   * Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
   * @param satKeys            The satellite keys of all input satellites (in-Long[*])
   * @param numOfSats          The total number of satellites (in-Integer)
   * @param ds50UTC            The time to propagate all satelllites to, expressed in days since 1950, UTC. (in-Double)
   * @param ephemArr           0-2: pos (km), 3-5: vel (km/sec) (out-Double[*, 6])
   * @return 0 if the propagation is successful, non-0 if there is an error.
   */
   public static native int Sgp4PropAllSats(long[] satKeys, int numOfSats, double ds50UTC, double[][] ephemArr);


   /**
   * Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
   * @param satKeys            The satellite keys of all input satellites (in-Long[])
   * @param numOfSats          The total number of satellites (in-Integer)
   * @param ds50UTC            The time to propagate all satelllites to, expressed in days since 1950, UTC. (in-Double)
   * @param ephemArr           0-2: pos (km), 3-5: vel (km/sec) (out-Double[])
   * @return 0 if the propagation is successful, non-0 if there is an error.
   */
   public static native int Sgp4PropAllSats2Das1D(long[] satKeys, int numOfSats, double ds50UTC, double[] ephemArr);


   /**
   * Provides the native XP equinoctial elements and rates at given time
   * @param satKey             The unique key of the satellite to reepoch. (in-Long)
   * @param ds50UTC            The new epoch, express in days since 1950, UTC. (in-Double)
   * @param xa_eqnx            Equinoctial Elements (subtract thetaG from Longitude) at reEpoch time (out-Double[6])
   * @param xa_eqnx_dot        Equinoctial Element rates (subtract earth rotation rate from Longitude Rate) at reEpoch time (out-Double[6])
   * @return 0 if the reepoch is successful, non-0 if there is an error.
   */
   public static native int XpGetNativeElts(long satKey, double ds50UTC, double[] xa_eqnx, double[] xa_eqnx_dot);


   /**
   * Reepochs to a csv and provides the native XP equinoctial elements and rates
   * @param satKey             Input satKey (in-Long)
   * @param reEpochDs50UTC     The new epoch, express in days since 1950, UTC. (in-Double)
   * @param csvLine            A string to hold the reepoched CSV. (out-Character[512])
   * @param xa_eqnx            Equinoctial Elements (subtract thetaG from Longitude) at reEpoch time (out-Double[6])
   * @param xa_eqnx_dot        Equinoctial Element rates (subtract earth rotation rate from Longitude Rate) at reEpoch time (out-Double[6])
   * @return 0 if the propagation is successful, non-0 if there is an error.
   */
   public static native int XpReepochGetNativeElts(long satKey, double reEpochDs50UTC, byte[] csvLine, double[] xa_eqnx, double[] xa_eqnx_dot);
   // Different return values of errCode from Sgp4 propagation
   /** SGP4 propagates successfully */
   public static final int GP_ERR_NONE        = 0;
   /** Bad FK model (FK5 must be selected) */
   public static final int GP_ERR_BADFK       = 1;
   /** A is negative */
   public static final int GP_ERR_ANEGATIVE   = 2;
   /** A is to large */
   public static final int GP_ERR_ATOOLARGE   = 3;
   /** Eccentricity is hyperbolic */
   public static final int GP_ERR_EHYPERPOLIC = 4;
   /** Eccentricity is negative */
   public static final int GP_ERR_ENEGATIVE   = 5;
   /** Mean anomaly is too large */
   public static final int GP_ERR_MATOOLARGE  = 6;
   /** e**2 is too large */
   public static final int GP_ERR_E2TOOLARGE  = 7;
   
   // Different time types for passing to Sgp4PropAll
   /** propagation time is in minutes since epoch */
   public static final int SGP4_TIMETYPE_MSE      = 0;
   /** propagation time is in days since 1950, UTC */
   public static final int SGP4_TIMETYPE_DS50UTC  = 1;
   
   // Sgp4 propagated output fields
   /** Revolution number */
   public static final int XF_SGP4OUT_REVNUM       = 1;
   /** Nodal period, apogee, perigee */
   public static final int XF_SGP4OUT_NODAL_AP_PER = 2;
   /** Mean Keplerian */
   public static final int XF_SGP4OUT_MEAN_KEP     = 3;
   /** Osculating Keplerian */
   public static final int XF_SGP4OUT_OSC_KEP      = 4;
   
   // Sgp4 propagated data
   /** Propagation time in days since 1950, UTC */
   public static final int XA_SGP4OUT_DS50UTC      =  0;
   /** Propagation time in minutes since the satellite's epoch time */
   public static final int XA_SGP4OUT_MSE          =  1;
   /** ECI X position (km) in True Equator and Mean Equinox of Epoch */
   public static final int XA_SGP4OUT_POSX         =  2;
   /** ECI Y position (km) in True Equator and Mean Equinox of Epoch */
   public static final int XA_SGP4OUT_POSY         =  3;
   /** ECI Z position (km) in True Equator and Mean Equinox of Epoch */
   public static final int XA_SGP4OUT_POSZ         =  4;
   /** ECI X velocity (km/s) in True Equator and Mean Equinox of Epoch */
   public static final int XA_SGP4OUT_VELX         =  5;
   /** ECI Y velocity (km/s) in True Equator and Mean Equinox of Epoch */
   public static final int XA_SGP4OUT_VELY         =  6;
   /** ECI Z velocity (km/s) in True Equator and Mean Equinox of Epoch */
   public static final int XA_SGP4OUT_VELZ         =  7;
   /** Geodetic latitude (deg) */
   public static final int XA_SGP4OUT_LAT          =  8;
   /** Geodetic longitude (deg) */
   public static final int XA_SGP4OUT_LON          =  9;
   /** Height above geoid (km) */
   public static final int XA_SGP4OUT_HEIGHT       = 10;
   /** Revolution number */
   public static final int XA_SGP4OUT_REVNUM       = 11;
   /** Nodal period (min) */
   public static final int XA_SGP4OUT_NODALPER     = 12;
   /** Apogee (km) */
   public static final int XA_SGP4OUT_APOGEE       = 13;
   /** Perigee (km) */
   public static final int XA_SGP4OUT_PERIGEE      = 14;
   /** Mean semi-major axis (km) */
   public static final int XA_SGP4OUT_MN_A         = 15;
   /** Mean eccentricity (unitless) */
   public static final int XA_SGP4OUT_MN_E         = 16;
   /** Mean inclination (deg) */
   public static final int XA_SGP4OUT_MN_INCLI     = 17;
   /** Mean mean anomaly (deg) */
   public static final int XA_SGP4OUT_MN_MA        = 18;
   /** Mean right ascension of the asending node (deg) */
   public static final int XA_SGP4OUT_MN_NODE      = 19;
   /** Mean argument of perigee (deg) */
   public static final int XA_SGP4OUT_MN_OMEGA     = 20;
   /** Osculating semi-major axis (km) */
   public static final int XA_SGP4OUT_OSC_A        = 21;
   /** Osculating eccentricity (unitless) */
   public static final int XA_SGP4OUT_OSC_E        = 22;
   /** Osculating inclination (deg) */
   public static final int XA_SGP4OUT_OSC_INCLI    = 23;
   /** Osculating mean anomaly (deg) */
   public static final int XA_SGP4OUT_OSC_MA       = 24;
   /** Osculating right ascension of the asending node (deg) */
   public static final int XA_SGP4OUT_OSC_NODE     = 25;
   /** Osculating argument of perigee (deg) */
   public static final int XA_SGP4OUT_OSC_OMEGA    = 26;
   
   public static final int XA_SGP4OUT_SIZE         = 64;
   
   // Different options for generating ephemerides from SGP4
   /** ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) */
   public static final int SGP4_EPHEM_ECI   = 1;
   /** MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) */
   public static final int SGP4_EPHEM_J2K   = 2;
   
   
   // Different dynamic step size options
   /** Use a simple algorithm to determine step size based on satellite's current position */
   public static final int DYN_SS_BASIC  = -1   ;
   
   //*******************************************************************************
   
// ========================= End of auto generated code ==========================
}
