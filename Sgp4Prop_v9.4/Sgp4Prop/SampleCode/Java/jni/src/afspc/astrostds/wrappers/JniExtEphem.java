// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: ExtEphem */
public class JniExtEphem
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "extephem";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadExtEphemDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadExtEphemDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes ExtEphem DLL for use in the program
   * If this function returns an error, it is recommended that the users stop the program immediately. 
   * The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed 
   * in the DLL Prerequisite section, before using this DLL.
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if ExtEphem DLL is initialized successfully, non-0 if there is an error
   */
   public static native int ExtEphInit(long apAddr);


   /**
   * Returns information about the current version of ExtEphem DLL. 
   * The information is placed in the string parameter passed in.
   * The returned string provides information about the version number, build date, and the platform of the ExtEphem DLL. 
   * @param infoStr            A string to hold the information about ExtEphem.dll (out-Character[128])
   */
   public static native void ExtEphGetInfo(byte[] infoStr);


   /**
   * Loads a file containing EXTEPHEM's
   * The users can use this function repeatedly to load EXTEPHEMs from different input files. 
   * However, only unique satKeys are stored in the binary tree. Duplicated EXTEPHEMs 
   * (determined by same file name, satellite number + epoch) won't be stored.
   * 
   * EXTEPHEMs can be included directly in the main input file or they can be read from a 
   * separate file identified with "EPHFIL =[pathname\filename]".
   * 
   * This function only reads EXTEPHEMs from the main input file or EXTEPHEMs from the file 
   * identified with EPHFIL in the input file. It won't read anything else.
   * @param extEphFile         The name of the file containing external ephemeris data to be loaded (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int ExtEphLoadFile(String extEphFile);


   /**
   * Saves the currently loaded EXTEPHEM's to a file (EPHFIL=input file name)
   * @param extEphFile         The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int ExtEphSaveFile(String extEphFile, int saveMode, int saveForm);


   /**
   * Removes an EXTEPHEM represented by the satKey from memory
   * If the users enter an invalid satKey (the satKey does not exist in memory), the function will return a non-zero value indicating an error.
   * @param satKey             The unique key of the satellite to be removed (in-Long)
   * @return 0 if the satellite is removed successfully, non-0 if there is an error.
   */
   public static native int ExtEphRemoveSat(long satKey);


   /**
   * Removes all EXTEPHEMS from memory
   * @return 0 if all satellites are removed successfully from memory, non-0 if there is an error
   */
   public static native int ExtEphRemoveAllSats();


   /**
   * Returns the number of EXTEPHEM's currently loaded
   * See ExtEphGetLoaded for example.
   * This function is useful for dynamically allocating memory for the array that is passed to the function ExtEphGetLoaded().
   * @return The number of EXTEPHEM's currently loaded
   */
   public static native int ExtEphGetCount();


   /**
   * Retrieves all of the currently loaded satKeys. These satKeys can be used to access the external ephemeris data for the EXTEPHEM's
   * It is recommended that ExtEphGetCount() is used to count how many satellites are currently loaded in the ExtEphem DLL's binary tree. 
   * The users then use this number to dynamically allocate the satKeys array and pass it to this function.
   * 
   * If the users prefer to pass a static array to the function, ensure that it is big enough to store all the satKeys in memory.
   * @param order              Specifies the order in which the satKeys should be returned: 0=ascending, 1=descending, 2=order as loaded (in-Integer)
   * @param satKeys            The array in which to store the satKeys (out-Long[*])
   */
   public static native void ExtEphGetLoaded(int order, long[] satKeys);


   /**
   * Allows for an EXTEPHEM to be added to memory without using an input file. The function creates a place holder for an EXTEPHEM
   * If the same satellite (same satNum and epochDs50UTC) was previously added to the ExtEphem DLL's binary tree, 
   * the function will generate a new unique satKey. This is very useful when the users want to compare ephemerides 
   * of the same satellite number and same epoch time from different sources. 
   * @param satNum             Satellite number (in-Integer)
   * @param epochDs50UTC       Epoch time in ds50UTC (in-Double)
   * @param ae                 Mean Earth radius (km) (in-Double)
   * @param ke                 Earth gravitational constant (in-Double)
   * @param coordSys           Ephemeris coordinate system, see COORD_? for avaialble coordinate sytems (in-Integer)
   * @return The satKey of the newly added EXTEPHEM on success, a negative value on error
   */
   public static native long ExtEphAddSat(int satNum, double epochDs50UTC, double ae, double ke, int coordSys);


   /**
   * Adds an ephemeris point to the end of an EXTEPHEM's set of ephemeris points
   * The new ephemeris point will only be added to the array if its time is greater than the times of all points already in the array. 
   * Therefore, the array is always in sorted order (t1 &lt; t2 &lt;... &lt; tn).
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            Epoch time in ds50UTC (in-Double)
   * @param pos                Position at cuurent time (km) (in-Double[3])
   * @param vel                Velocity at current time (km/sec) (in-Double[3])
   * @param revNum             The ephemeris point revolution number (in-Integer)
   * @return 0 if the ephemeris point is added successfully to the requested satellite, non-0 if there is an error
   */
   public static native int ExtEphAddSatEphem(long satKey, double ds50UTC, double[] pos, double[] vel, int revNum);


   /**
   * Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            Epoch time in ds50UTC (in-Double)
   * @param pos                Position at cuurent time (km) (in-Double[3])
   * @param vel                Velocity at current time (km/sec) (in-Double[3])
   * @param revNum             The ephemeris point revolution number (in-Integer)
   * @param covUVW             The covariance matrix in vector format (21 terms in one-dimensional array) (in-Double[21])
   * @return 0 if the ephemeris point is added successfully to the requested satellite, non-0 if there is an error
   */
   public static native int ExtEphAddSatEphemCovMtx(long satKey, double ds50UTC, double[] pos, double[] vel, int revNum, double[] covUVW);


   /**
   * Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            Epoch time in ds50UTC (in-Double)
   * @param pos                Position at cuurent time (km) (in-Double[3])
   * @param vel                Velocity at current time (km/sec) (in-Double[3])
   * @param revNum             The ephemeris point revolution number (in-Integer)
   * @param extArr             The extra array: 1-21=lower triangle matrix, 22-128=future use (in-Double[128])
   * @return 0 if the ephemeris point is added successfully to the requested satellite, non-0 if there is an error
   */
   public static native int ExtEphAddSatEphemExt(long satKey, double ds50UTC, double[] pos, double[] vel, int revNum, double[] extArr);


   /**
   * Loads satellite data from an external ephemeris file (any valid external ephemeris file formats) and returns a satKey on success
   * @param extEphFile         The name of the file containing external ephemeris data to be loaded (in-Character[512])
   * @return The satKey of the newly added EXTEPHEM on success, a zero or negative value on error
   */
   public static native long ExtEphAddSatFrFile(String extEphFile);


   /**
   * Retrieves all data for an EXTEPHEM with a single function call
   * @param satKey             The satellite's unique key (in-Long)
   * @param satNum             Satellite number (out-Integer)
   * @param satName            Satellite international designator (out-Character[8])
   * @param recName            Record name (default to source file path, fileLoc) (out-Character[128])
   * @param epochDs50UTC       Satellite epoch time in ds50UTC (out-Double)
   * @param ae                 Mean Earth radius (km) (out-Double)
   * @param ke                 Earth gravitational constant (er**3/2 per minute) (out-Double)
   * @param pos                Position at epoch (km) (out-Double[3])
   * @param vel                Velocity at epoch (km/s) (out-Double[3])
   * @param coordSys           Ephemeris coordinate, see COORD_? for avaialble coordinate sytems (out-Integer)
   * @param numOfPts           Number of ephemeris points (out-Integer)
   * @param fileLoc            File location (out-Character[512])
   * @return 0 if the data is successfully retrieved, non-0 if there is an error
   */
   public static native int ExtEphGetAllFields(long satKey, int[] satNum, byte[] satName, byte[] recName, double[] epochDs50UTC, double[] ae, double[] ke, double[] pos, double[] vel, int[] coordSys, int[] numOfPts, byte[] fileLoc);


   /**
   * Retrieves the value of a specific field of an EXTEPHEM
   * <br>
   * When using xf_ExtEph = 11, the input coordinate system is returned as an integer value.  The table below shows the coordinate system values:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Value</b></td>
   * <td><b>Coordinate System</b></td>
   * </tr>
   * <tr><td>1  </td><td>ECI TEME of DATE</td></tr>
   * <tr><td>2  </td><td>MEME of J2K</td></tr>
   * <tr><td>3  </td><td>Earth Fixed Greenwich (EFG)</td></tr>
   * <tr><td>4  </td><td>Earch Centered Rotation (ECR)</td></tr>
   * <tr><td>100</td><td>Invalid</td></tr>
   * </table>   
   * @param satKey             The satellite's unique key (in-Long)
   * @param xf_ExtEph          Predefined number specifying which field to retrieve, see XF_EXTEPH_? for field specification (in-Integer)
   * @param valueStr           A string to contain the value of the requested field (out-Character[512])
   * @return 0 if the EXTEPHEM data is successfully retrieved, non-0 if there is an error
   */
   public static native int ExtEphGetField(long satKey, int xf_ExtEph, byte[] valueStr);


   /**
   * Updates the value of a specific field of an EXTEPHEM
   * @param satKey             The satellite's unique key (in-Long)
   * @param xf_ExtEph          Predefined number specifying which field to set, see XF_EXTEPH_? for field specification (in-Integer)
   * @param valueStr           The new value of the specified field, expressed as a string (in-Character[512])
   * @return 0 if the EXTEPHEM data is successfully updated, non-0 if there is an error
   */
   public static native int ExtEphSetField(long satKey, int xf_ExtEph, String valueStr);


   /**
   * Retrieves the times (in days since 1950 UTC) of the start and end ephemeris points of the EXTEPHEM  
   * @param satKey             The satellite's unique key (in-Long)
   * @param startDs50UTC       The ephemeris start time (first ephemeris point) in days since 1950, UTC (out-Double)
   * @param endDs50UTC         The ephemeris end time (last ephemeris point) in days since 1950, UTC (out-Double)
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int ExtEphStartEndTime(long satKey, double[] startDs50UTC, double[] endDs50UTC);


   /**
   * Retrieves the data for a specific point within an EXTEPHEM
   * It is important to know that the array subscript starts at one (not zero).
   * @param satKey             The satellite's unique key (in-Long)
   * @param index              The position number of the ephemeris point to be retrieved (1=first point) (in-Integer)
   * @param ds50UTC            The resulting time in ds50UTC (out-Double)
   * @param pos                The resulting position (km) (out-Double[3])
   * @param vel                The resulting velocity (km/s) (out-Double[3])
   * @param revNum             The resulting revolution number (out-Integer)
   * @return 0 if the ephemeris data is successfully retrieved, non-0 if there is an error
   */
   public static native int ExtEphGetEphemeris(long satKey, int index, double[] ds50UTC, double[] pos, double[] vel, int[] revNum);


   /**
   * Retrieves the data (including the covariance matrix) for a specific point within an EXTEPHEM
   * @param satKey             The satellite's unique key (in-Long)
   * @param index              The position number of the ephemeris point to be retrieved (1=first point) (in-Integer)
   * @param ds50UTC            The resulting time in ds50UTC (out-Double)
   * @param pos                The resulting position (km) (out-Double[3])
   * @param vel                The resulting velocity (km/s) (out-Double[3])
   * @param revNum             The resulting revolution number (out-Integer)
   * @param covMtx             The 6x6 covariance matrix (out-Double[6, 6])
   * @return 0 if the ephemeris data is successfully retrieved, non-0 if there is an error
   */
   public static native int ExtEphGetCovMtx(long satKey, int index, double[] ds50UTC, double[] pos, double[] vel, int[] revNum, double[][] covMtx);


   /**
   * Retrieves the data (including the covariance matrix) for a specific point within an EXTEPHEM
   * @param satKey             The satellite's unique key (in-Long)
   * @param index              The position number of the ephemeris point to be retrieved (1=first point) (in-Integer)
   * @param ds50UTC            The resulting time in ds50UTC (out-Double)
   * @param pos                The resulting position (km) (out-Double[])
   * @param vel                The resulting velocity (km/s) (out-Double[])
   * @param revNum             The resulting revolution number (out-Integer)
   * @param covMtx             The 6x6 covariance matrix (out-Double[])
   * @return 0 if the ephemeris data is successfully retrieved, non-0 if there is an error
   */
   public static native int ExtEphGetCovMtx2Das1D(long satKey, int index, double[] ds50UTC, double[] pos, double[] vel, int[] revNum, double[] covMtx);


   /**
   * Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
   * The coordinate system of the output position and velocity is the same as the input ephemerides.
   * @param satKey             The satellite's unique key (in-Long)
   * @param mse                The requested time in minutes since the satellite's epoch time (in-Double)
   * @param ds50UTC            The resulting time in ds50UTC (out-Double)
   * @param pos                The resulting position (km) (out-Double[3])
   * @param vel                The resulting velocity (km/s) (out-Double[3])
   * @param revNum             The resulting revolution number (out-Integer)
   * @return 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   */
   public static native int ExtEphMse(long satKey, double mse, double[] ds50UTC, double[] pos, double[] vel, int[] revNum);


   /**
   * Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
   * @param satKey             The satellite's unique key (in-Long)
   * @param mse                The requested time in minutes since the satellite's epoch time (in-Double)
   * @param ds50UTC            The resulting time in ds50UTC (out-Double)
   * @param pos                The resulting position (km) (out-Double[3])
   * @param vel                The resulting velocity (km/s) (out-Double[3])
   * @param revNum             The resulting revolution number (out-Integer)
   * @param covMtx             The 6x6 covariance matrix (out-Double[6, 6])
   * @return 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   */
   public static native int ExtEphMseCovMtx(long satKey, double mse, double[] ds50UTC, double[] pos, double[] vel, int[] revNum, double[][] covMtx);


   /**
   * Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
   * @param satKey             The satellite's unique key (in-Long)
   * @param mse                The requested time in minutes since the satellite's epoch time (in-Double)
   * @param ds50UTC            The resulting time in ds50UTC (out-Double)
   * @param pos                The resulting position (km) (out-Double[])
   * @param vel                The resulting velocity (km/s) (out-Double[])
   * @param revNum             The resulting revolution number (out-Integer)
   * @param covMtx             The 6x6 covariance matrix (out-Double[])
   * @return 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   */
   public static native int ExtEphMseCovMtx2Das1D(long satKey, double mse, double[] ds50UTC, double[] pos, double[] vel, int[] revNum, double[] covMtx);


   /**
   * Interpolates the external ephemeris data to the requested time in days since 1950, UTC
   * The coordinate system of the output position and velocity is the same as the input ephemerides.
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The requested time in ds50UTC (in-Double)
   * @param mse                The resulting time in minutes since the satellite's epoch time (out-Double)
   * @param pos                The resulting position (km) (out-Double[3])
   * @param vel                The resulting velocity (km/s) (out-Double[3])
   * @param revNum             The resulting revolution number (out-Integer)
   * @return 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   */
   public static native int ExtEphDs50UTC(long satKey, double ds50UTC, double[] mse, double[] pos, double[] vel, int[] revNum);


   /**
   * Interpolates the external ephemeris data to the requested time in days since 1950, UTC
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The requested time in ds50UTC (in-Double)
   * @param mse                The resulting time in minutes since the satellite's epoch time (out-Double)
   * @param pos                The resulting position (km) (out-Double[3])
   * @param vel                The resulting velocity (km/s) (out-Double[3])
   * @param revNum             The resulting revolution number (out-Integer)
   * @param covMtx             The 6x6 covariance matrix (out-Double[6, 6])
   * @return 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   */
   public static native int ExtEphDs50UTCCovMtx(long satKey, double ds50UTC, double[] mse, double[] pos, double[] vel, int[] revNum, double[][] covMtx);


   /**
   * Interpolates the external ephemeris data to the requested time in days since 1950, UTC
   * @param satKey             The satellite's unique key (in-Long)
   * @param ds50UTC            The requested time in ds50UTC (in-Double)
   * @param mse                The resulting time in minutes since the satellite's epoch time (out-Double)
   * @param pos                The resulting position (km) (out-Double[])
   * @param vel                The resulting velocity (km/s) (out-Double[])
   * @param revNum             The resulting revolution number (out-Integer)
   * @param covMtx             The 6x6 covariance matrix (out-Double[])
   * @return 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   */
   public static native int ExtEphDs50UTCCovMtx2Das1D(long satKey, double ds50UTC, double[] mse, double[] pos, double[] vel, int[] revNum, double[] covMtx);


   /**
   * Extensible routine which retrieves/interpolates external ephemeris data based on user's request
   * @param satKey             The satellite's unique key (in-Long)
   * @param xf_getEph          Input type: 1=using MSE, 2=using Ds50UTC, 3=using index (one-based) (in-Integer)
   * @param inVal              Input value as indicated in the input type (in-Double)
   * @param extArr             The resulting array: 1st=mse, 2=ds50UTC, 3-5=pos, 5-8=vel, 9=revNum, 10-30=6x6 covMtx lower triangle (out-Double[128])
   * @return 0 if the external ephemeris data is successfully interpolated, non-0 if there is an error
   */
   public static native int ExtEphXten(long satKey, int xf_getEph, double inVal, double[] extArr);


   /**
   * This function returns a string that represents the EXTFIL= directive used to read a particular EXTEPHEM
   * @param satKey             The satellite's unique key (in-Long)
   * @param line               A string representing the directive used to read a particular EXTEPHEM (out-Character[512])
   * @return 0 if the line is retrieved successfully, non-0 if there is an error
   */
   public static native int ExtEphGetLine(long satKey, byte[] line);


   /**
   * Returns the first satKey that matches the satNum in the EXTEPHEM binary tree
   * This function is useful when ExtEphem DLL is used in applications that requires only one record (one EXTEPHEM entry) 
   * for one satellite and the applications refer to that EXTEPHEM by its satellite number. 
   * However, the Astrodynamic Standard Shared library only uses satKeys; this function helps to return the associated satKey of that satellite.
   * @param satNum             input satellite number (in-Integer)
   * @return The satellite's unique key
   */
   public static native long ExtEphGetSatKey(int satNum);


   /**
   * Creates satKey from EXTEPHEM's satelite number and date time group string
   * This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
   * @param satNum             input satellite number (in-Integer)
   * @param epochDtg           input date time group string: [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20 (in-Character[20])
   * @return The satellite's unique key
   */
   public static native long ExtEphFieldsToSatKey(int satNum, String epochDtg);
   
   // Indexes of coordinate systems
   /** ECI TEME of DATE */
   public static final int COORD_ECI   = 1;
   /** MEME of J2K */
   public static final int COORD_J2K   = 2;
   /** Earth Fixed Greenwich (EFG) */
   public static final int COORD_EFG   = 3;
   /** Earch Centered Rotation (ECR) */
   public static final int COORD_ECR   = 4;
   /** Lat Lon Height and a vector offset (range, azimuth, elevation) */
   public static final int COORD_LLH   = 5;
   /** Sensor site (ECR) and a vector offset (range, azimuth, elevation) */
   public static final int COORD_SEN   = 6;
   
   /** ECI TEME of DATE, fixed point */
   public static final int COORD_ECIFP = 11;
   /** MEME of J2K, fixed point */
   public static final int COORD_J2KFP = 12;
   /** Earth Fixed Greenwich (EFG), fixed point */
   public static final int COORD_EFGFP = 13;
   /** Earch Centered Rotation (ECR), fixed point */
   public static final int COORD_ECRFP = 14;
   /** Lat Lon Height and an offset vector (range, azimuth, elevation) */
   public static final int COORD_LLHOV = 15;
   /** Sensor site (ECR) and an offset vector (range, azimuth, elevation) */
   public static final int COORD_SENOV = 16;
   /** Current position (LLH), heading (azimuth), and constant speed of an mobile object that travels in a rhumb line course */
   public static final int COORD_HCSRL = 17;
   /** List of waypoints (LLH) that describes the movement of an object that travels in a rhumb line course */
   public static final int COORD_WPTRL = 18;
   /** Current position (LLH), initial heading (azimuth), and constant speed of an mobile object that travels in a great circle course */
   public static final int COORD_HCSGC = 19;
   /** List of waypoints (LLH) that describes the movement of an object that travels in a great circle course */
   public static final int COORD_WPTGC = 20;
   
   
   /** Invalid coordinate system */
   public static final int COORD_INVALID = 100;
   
   /** UVW convariance matrix - TEME of DATE */
   public static final int COVMTX_UVW_DATE  =  0;
   /** Cartesian covariance matrix - TEME of DATE */
   public static final int COVMTX_XYZ_DATE  = 10;
   /** Equinoctial covariance matrix - TEME of DATE */
   public static final int COVMTX_EQNX_DATE = 20;
   /** UVW convariance matrix - MEME of J2K */
   public static final int COVMTX_UVW_J2K   = 30;
   /** Cartesian covariance matrix - MEME of J2K */
   public static final int COVMTX_XYZ_J2K   = 40;
   /** Equinoctial covariance matrix - MEME of J2K */
   public static final int COVMTX_EQNX_J2K  = 50;
   
   
   /** Get ephemeris data using time in minutes since epoch */
   public static final int XF_GETEPH_MSE = 1;
   /** Get ephemeris data using time in days since 1950 UTC */
   public static final int XF_GETEPH_UTC = 2;
   /** Get ephemeris data using index of the element in the array */
   public static final int XF_GETEPH_IDX = 3;
   
   // Indexes of EXTEPH data fields
   /** Satellite number I5 */
   public static final int XF_EXTEPH_SATNUM    =  1;
   /** Epoch YYDDDHHMMSS.SSS */
   public static final int XF_EXTEPH_EPOCH     =  2;
   /** Earth radius (km) */
   public static final int XF_EXTEPH_AE        =  3;
   /** Ke */
   public static final int XF_EXTEPH_KE        =  4;
   /** position X (km) F16.8 */
   public static final int XF_EXTEPH_POSX      =  5;
   /** position Y (km) F16.8 */
   public static final int XF_EXTEPH_POSY      =  6;
   /** position Z (km) F16.8 */
   public static final int XF_EXTEPH_POSZ      =  7;
   /** velocity X (km/s) F16.12 */
   public static final int XF_EXTEPH_VELX      =  8;
   /** velocity Y (km/s) F16.12 */
   public static final int XF_EXTEPH_VELY      =  9;
   /** velocity Z (km/s) F16.12 */
   public static final int XF_EXTEPH_VELZ      = 10;
   /** Input coordinate systems */
   public static final int XF_EXTEPH_COORD     = 11;
   /** Num of ephemeris points */
   public static final int XF_EXTEPH_NUMOFPTS  = 12;
   /** Ephemeris file path */
   public static final int XF_EXTEPH_FILEPATH  = 13;
   /** International Designator */
   public static final int XF_EXTEPH_SATNAME   = 14;
   /** Record name */
   public static final int XF_EXTEPH_RECNAME   = 15;
   
// ========================= End of auto generated code ==========================
}
