// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import com.sun.jna.*;
import com.sun.jna.ptr.*;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNA component of the wrapper for: Fov */
public class JnaFov
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNA class wraps. */
   public static final String DLL_NAME = "fov";

   static
   {
      Native.register(DLL_NAME);
   }


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes Fov dll for use in the program
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if Fov.dll is initialized successfully, non-0 if there is an error
   */
   public static native int FovInit(long apAddr);


   /**
   * Returns information about the current version of Fov.dll. The information is placed in the string parameter you pass in
   * @param infoStr            A string to hold the information about Fov.dll. (out-Character[128])
   */
   public static native void FovGetInfo(byte[] infoStr);


   /**
   * Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
   * @param fovInputFile       The name of the file containing Fov-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int FovLoadFile(String fovInputFile);


   /**
   * Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
   * @param fovInputFile       The name of the file containing Fov-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int FovLoadFileAll(String fovInputFile);


   /**
   * Loads a single Fov-typed card
   * @param card               Fov-type input card (in-Character[512])
   * @return 0 if the input card is read successfully, non-0 if there is an error
   */
   public static native int FovLoadCard(String card);


   /**
   * Saves any currently loaded Fov-related settings to a file
   * @param fovFile            The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int FovSaveFile(String fovFile, int saveMode, int saveForm);


   /**
   * This function retrieves various FOV input data being entered from input flat files (various FOV cards)
   * @param xa_fovCtrl         FOV control parameters, see XA_FOVCTRL_? for array arrangement (out-Double[8])
   * @param numOfWindows       Number of specified start/stop windows (out-Integer)
   * @param startStopTimes     Array of start/stop times in days since 1950 UTC (even idxs=start times, odd idxs=stop times) (out-Double[256])
   * @param numOfSources       Number of sources (out-Integer)
   * @param xa_fovSrc_Arr      Array of source records, see XA_FOVSRC_? for array arrangement (out-Double[128, 8])
   * @param numOfTargets       Number of targets (out-Integer)
   * @param xa_fovTgt_Arr      Array of target records, see XA_FOVTGT_? for array arrangement (out-Double[128, 8])
   * @param numVicSats         Number of specified potential victims (out-Integer)
   * @param vicSatNums         Array of satellite numbers of the specified potential victims (out-Integer[128])
   */
   public static native void FovGetDataFrInputFiles(double[] xa_fovCtrl, IntByReference numOfWindows, double[] startStopTimes, IntByReference numOfSources, double[] xa_fovSrc_Arr, IntByReference numOfTargets, double[] xa_fovTgt_Arr, IntByReference numVicSats, int[] vicSatNums);


   /**
   * This function screens the specified start/end time window and returns passes when the target satellite can be seen (passed all limit checks) by the source 
   * @param startTimeDs50UTC   window start time in days since 1950 UTC (in-Double)
   * @param stopTimeDs50UTC    window stop time in days since 1950 UTC (in-Double)
   * @param srcSenKey          the source sensor key (in-Long)
   * @param tgtSatKey          the targeted satellite's unique key (in-Long)
   * @param tgtPassesArr       array of entry/exit times (in Ds50TAI) of each pass; the size of the array should match the specified value in XA_FOVRUN_MAXPASSES (out-Double[*, 2])
   * @param numOfPasses        number of passes that target satellite can be seen (passed all limit checks) by the source sensor (out-Integer)
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int FovFindTargetPasses(double startTimeDs50UTC, double stopTimeDs50UTC, long srcSenKey, long tgtSatKey, double[] tgtPassesArr, IntByReference numOfPasses);


   /**
   * This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is an elset).
   * <br>
   * The xa_emeDat array size is [numObs, 3].  The penetration time indexes are:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Name</b></td>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>
   * <tr><td> 0</td><td> entry time (ds50UTC)</td></tr>
   * <tr><td> 1</td><td> minimum time (ds50UTC)</td></tr>
   * <tr><td> 2</td><td> exit time (ds50UTC)</td></tr>
   * </table>
   * <br>
   * See FovGetDataFrInputFiles for a description of the XA_FOVSRC parameter values.
   * @param xa_fovRun          fov run parameters, see XA_FOVRUN_? for array arrangement (in-Double[8])
   * @param xa_fovSrc          source data, see XA_FOVSRC_? for array arrangement (in-Double[8])
   * @param tgtSatKey          the targeted satellite's unique key (in-Long)
   * @param vicSatKey          the victim satellite's unique key (in-Long)
   * @param xa_emeDat          array of entry/minimum/exit (in Ds50TAI) times of each pass (out-Double[*, 3])
   * @param numOfPasses        number of passes found (out-Integer)
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int FovTargetElset(double[] xa_fovRun, double[] xa_fovSrc, long tgtSatKey, long vicSatKey, double[] xa_emeDat, IntByReference numOfPasses);


   /**
   * This function returns a look angle from the source to the potential victim satellite at the specified time (target is an elset)
   * <br>
   * If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid.
   * @param currDs50TAI        Time, in ds50TAI, for which to compute the look angle (in-Double)
   * @param xa_fovSrc          source data, see XA_FOVSRC_? for array arrangement (in-Double[8])
   * @param vicSatKey          the victim satellite's unique key (in-Long)
   * @param xa_look            look angle data, see XA_LOOK_? for array arrangement (out-Double[8])
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int FovTargetElsetLook(double currDs50TAI, double[] xa_fovSrc, long vicSatKey, double[] xa_look);


   /**
   * This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is a vector: AZ/EL or RA/DEC).
   * See FovTargetElset for a description of the xa_emeDat array.<br>
   * If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid 
   * @param xa_fovRun          fov run parameters, see XA_FOVRUN_? for array arrangement (in-Double[8])
   * @param xa_fovSrc          source data, see XA_FOVSRC_? for array arrangement (in-Double[8])
   * @param xa_fovTgt          target data, see XA_FOVTGT_? for array arrangement (in-Double[8])
   * @param vicSatKey          the victim satellite's unique key (in-Long)
   * @param xa_emeDat          array of entry/minimum/exit (in Ds50TAI) times of each pass (out-Double[*, 3])
   * @param numOfPasses        number of passes found (out-Integer)
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int FovTargetVec(double[] xa_fovRun, double[] xa_fovSrc, double[] xa_fovTgt, long vicSatKey, double[] xa_emeDat, IntByReference numOfPasses);


   /**
   * This function returns a look angle from the source to the potential victim satellite at the specified time (target is a vector: AZ/EL or RA/DEC).
   * See FovGetDataFrInputFiles for a description of the XA_FOVSRC and XA_FOVTGT parameter values.
   * See FovTargetElsetLook for a description of the XA_LOOK parameter values.
   * @param currDs50TAI        Time, in ds50TAI, for which to compute the look angle (in-Double)
   * @param xa_fovSrc          source data, see XA_FOVSRC_? for array arrangement (in-Double[8])
   * @param xa_fovTgt          target data, see XA_FOVTGT_? for array arrangement (in-Double[8])
   * @param vicSatKey          the victim satellite's unique key (in-Long)
   * @param xa_look            look angle data, see XA_LOOK_? for array arrangement (out-Double[8])
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int FovTargetVecLook(double currDs50TAI, double[] xa_fovSrc, double[] xa_fovTgt, long vicSatKey, double[] xa_look);


   /**
   * Resets all FOV control parameters back to their default values
   */
   public static native void FovReset();
   
   // Fov run parameters
   /** Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time */
   public static final int XA_FOVRUN_MAXPASSES= 0;
   /** FOV start time in days since 1950, UTC */
   public static final int XA_FOVRUN_START    = 1;
   /** FOV stop time in days since 1950, UTC */
   public static final int XA_FOVRUN_STOP     = 2;
   /** Cone half angle (deg) (0=auto) (0-45) */
   public static final int XA_FOVRUN_HALFCONE = 3;
   /** Search interval (min) */
   public static final int XA_FOVRUN_INTERVAL = 4;
   
   public static final int XA_FOVRUN_SIZE     = 8;
   
   // FOV source types
   /** Source is sensor */
   public static final int FOV_SRCTYPE_SEN = 1;
   /** Source is lat lon height */
   public static final int FOV_SRCTYPE_LLH = 2;
   /** Source is EFG */
   public static final int FOV_SRCTYPE_EFG = 3;
   /** Source is XYZ */
   public static final int FOV_SRCTYPE_XYZ = 4;
   
   // FOV source types
   /** Target is elset */
   public static final int FOV_TGTTYPE_ELSET = 1;
   /** Target is constant Az/El */
   public static final int FOV_TGTTYPE_AZEL  = 2;
   /** Target is RA/Dec (STAR) */
   public static final int FOV_TGTTYPE_RADEC = 3;
   
   // FOV source specification
   /** 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ */
   public static final int XA_FOVSRC_TYPE  = 0;
   /** Sensor# | Source ID   | Source ID  | Source ID */
   public static final int XA_FOVSRC_ID    = 1;
   /** | N lat (deg) | EFG: E (m) | X (m) */
   public static final int XA_FOVSRC_ELEM1 = 2;
   /** | E lon (deg) | EFG: F (m) | Y (m) */
   public static final int XA_FOVSRC_ELEM2 = 3;
   /** | height (m)  | EFG: G (m) | Z (m) */
   public static final int XA_FOVSRC_ELEM3 = 4;
   /** |             |            | time of position in Ds50UTC */
   public static final int XA_FOVSRC_ELEM4 = 5;
   
   public static final int XA_FOVSRC_SIZE  = 8;
   
   
   // FOV target specification
   /** 1=ELSET | 2=AZEL    | 3=RADEC */
   public static final int XA_FOVTGT_TYPE  = 0;
   /** Elset#  | Target ID | Target ID */
   public static final int XA_FOVTGT_ID    = 1;
   /** | az (deg)  | RA (deg) */
   public static final int XA_FOVTGT_ELEM1 = 2;
   /** | el (deg)  | Dec (deg) */
   public static final int XA_FOVTGT_ELEM2 = 3;
   /** |           | equinox indicator */
   public static final int XA_FOVTGT_ELEM3 = 4;
   
   public static final int XA_FOVTGT_SIZE  = 8;
   
   // entry/minimum/exit time data
   /** entry time (ds50UTC) */
   public static final int XA_EMEDAT_ENTRY = 0;
   /** minimum time (ds50UTC) */
   public static final int XA_EMEDAT_MIN   = 1;
   /** exit time (ds50UTC) */
   public static final int XA_EMEDAT_EXIT  = 2;
   
   public static final int XA_EMEDAT_SIZE  = 3;
   
   // FOV parameters
   /** Cone half angle (deg) (0=auto) (0-45) */
   public static final int XA_FOVCTRL_HALFCONE = 0;
   /** Search interval (min) */
   public static final int XA_FOVCTRL_INTERVAL = 1;
   /** Print option */
   public static final int XA_FOVCTRL_PRTOPT   = 2;
   
   public static final int XA_FOVCTRL_SIZE     = 8;
   
   
   /** maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file */
   public static final int FOVMAXNUM = 128;
   
// ========================= End of auto generated code ==========================
}
