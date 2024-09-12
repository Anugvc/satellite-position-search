// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: Aof */
public class JniAof
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "aof";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadAofDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadAofDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes Aof dll for use in the program
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if Aof.dll is initialized successfully, non-0 if there is an error
   */
   public static native int AofInit(long apAddr);


   /**
   * Returns information about the current version of Aof.dll. The information is placed in the string parameter you pass in
   * @param infoStr            A string to hold the information about Aof.dll. (out-Character[128])
   */
   public static native void AofGetInfo(byte[] infoStr);


   /**
   * Loads Aof-related parameters (1P/2P/3P cards, and Aof parameter free format) from an input text file
   * @param aofInputFile       The name of the file containing Aof-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int AofLoadFile(String aofInputFile);


   /**
   * Loads Aof-related parameters from an input text file
   * @param aofInputFile       The name of the file containing Aof-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int AofLoadFileAll(String aofInputFile);


   /**
   * Loads a single Aof-typed card
   * @param card               Aof-type input card (in-Character[512])
   * @return 0 if the input card is read successfully, non-0 if there is an error
   */
   public static native int AofLoadCard(String card);


   /**
   * This function retrieves various AOF input data being entered from input flat files (and/or various AOF input cards)
   * @param xa_aofCtrl         AOF control parameters, see XA_AOFCTRL_? for array arrangement (out-Double[16])
   * @param numOfInpSats       Number of satellite numbers entered in AOF P-card and/or 8P-card (out-Integer)
   * @param aofInpSats         Array of satellite numbers entered via AOF P-card and/or 8P-card (out-Integer[100])
   * @param numOfMissions      Number of satellite/mission records entered via Satellite/Mission (Satellite/Sensor) Data card (out-Integer)
   * @param xa_aofSen          Array of mission records entered via Satellite/Mission (Satellite/Sensor) Data card, see XA_AOFSEN_? for array arrangement (out-Double[100, 16])
   * @param numOfAreas         Number of defended areas entered via Defended Area Data card (out-Integer)
   * @param xa_aofArea         Array of defended areas entered via Defended Area Data card, see XA_AOFAREA_? (out-Double[100, 16])
   */
   public static native void AofGetDataFrInputFiles(double[] xa_aofCtrl, int[] numOfInpSats, int[] aofInpSats, int[] numOfMissions, double[][] xa_aofSen, int[] numOfAreas, double[][] xa_aofArea);


   /**
   * This function retrieves various AOF input data being entered from input flat files (and/or various AOF input cards)
   * @param xa_aofCtrl         AOF control parameters, see XA_AOFCTRL_? for array arrangement (out-Double[])
   * @param numOfInpSats       Number of satellite numbers entered in AOF P-card and/or 8P-card (out-Integer)
   * @param aofInpSats         Array of satellite numbers entered via AOF P-card and/or 8P-card (out-Integer[])
   * @param numOfMissions      Number of satellite/mission records entered via Satellite/Mission (Satellite/Sensor) Data card (out-Integer)
   * @param xa_aofSen          Array of mission records entered via Satellite/Mission (Satellite/Sensor) Data card, see XA_AOFSEN_? for array arrangement (out-Double[])
   * @param numOfAreas         Number of defended areas entered via Defended Area Data card (out-Integer)
   * @param xa_aofArea         Array of defended areas entered via Defended Area Data card, see XA_AOFAREA_? (out-Double[])
   */
   public static native void AofGetDataFrInputFiles2Das1D(double[] xa_aofCtrl, int[] numOfInpSats, int[] aofInpSats, int[] numOfMissions, double[] xa_aofSen, int[] numOfAreas, double[] xa_aofArea);


   /**
   * This function resets all Aof control parameters previously loaded from input text files
   */
   public static native void AofReset();


   /**
   * Computes entry/exit times of basic overflight satellite/sensor (cone) versus basic defended areas (box, circle, point)
   * <br>
   * Note:  for xa_aofArea type=4 (polygon), use the AofComplex method.
   * @param xa_aofRun          aof run parameters, see XA_AOFRUN_? for array arrangement (in-Double[8])
   * @param satKey             the overflight satellite's unique key (in-Long)
   * @param xa_aofSen          satellite/mission data, see XA_AOFSEN_? for array arrangement (in-Double[16])
   * @param xa_aofArea         defended area data, see XA_AOFAREA_? for array arrangement (in-Double[16])
   * @param numOfPasses        number of passes found (out-Integer)
   * @param xa_entExitTimes    array of entry/exit times (out-Double[*])
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int AofBasic(double[] xa_aofRun, long satKey, double[] xa_aofSen, double[] xa_aofArea, int[] numOfPasses, double[] xa_entExitTimes);


   /**
   * Computes entry/exit times of overflight satellite/sensor having complex configurations (cone, donut, butterfly, leftButterly, rightButterfly)
   * versus defended areas defined by multiple lat lon height points (polygon)
   * For a description of the input parameter arrays xa_aofRun and xa_aofSen, see AofBasic.
   * The input array llhArr is a zero-based array with latitude, longitude and altitude of each point in subsequent entries, e.g.:
   * llhArr[0] = point 1 latitude, 
   * llhArr[1] = point 1 longitude, 
   * llhArr[2] = point 1 altitude, 
   * llhArr[3] = point 2 latitude, etc.
   * @param xa_aofRun          aof run parameters, see XA_AOFRUN_? for array arrangement (in-Double[8])
   * @param satKey             the overflight satellite's unique key (in-Long)
   * @param xa_aofSen          satellite/mission data, see XA_AOFSEN_? for array arrangement (in-Double[16])
   * @param numOfLlhPts        number of actual input lat-lon-height points (maximum 120 points) - lat+N (deg)/lon+E (deg)/height (m) (in-Integer)
   * @param llhArr             defended area defined by array of lat-lon-height points (maximum 120 points) (in-Double[360])
   * @param numOfPasses        number of passes found (out-Integer)
   * @param xa_entExitTimes    array of entry/exit times (out-Double[*])
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int AofComplex(double[] xa_aofRun, long satKey, double[] xa_aofSen, int numOfLlhPts, double[] llhArr, int[] numOfPasses, double[] xa_entExitTimes);


   /**
   * This function returns a look angle from the llh point to the overfly satellite at the specified time
   * @param ds50TAI            Time, in ds50TAI, for which to compute the look angle (in-Double)
   * @param llh                lat +N -S (deg) /lon (+E) (deg) / height (m) (in-Double[3])
   * @param satKey             the overflight satellite's unique key (in-Long)
   * @param xa_look            look angle data, see XA_LOOK_? for array arrangement (out-Double[8])
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int AofGetLook(double ds50TAI, double[] llh, long satKey, double[] xa_look);


   /**
   * This function returns a view angle from the overfly satellite to a llh point at the specified time
   * @param ds50TAI            Time, in ds50TAI, for which to compute the view angle (in-Double)
   * @param llh                lat +N -S (deg) /lon (+E) (deg) / height (m) (in-Double[3])
   * @param satKey             the overflight satellite's unique key (in-Long)
   * @param xa_aofView         view angle data, see XA_AOFVIEW_? for array arrangement (out-Double[8])
   * @return 0 if successfully, non-0 if there is an error
   */
   public static native int AofGetView(double ds50TAI, double[] llh, long satKey, double[] xa_aofView);


   /**
   * Determines darkness level of the "defended" area at the specified time
   * For a description of the input parameter array xa_aofArea, see AofBasic.
   * @param ds50TAI            Time, in ds50TAI, for which to compute the darkness status of the defended area (in-Double)
   * @param xa_aofArea         defended area data, see XA_AOFAREA_? for array arrangement (in-Double[16])
   * @return darkness level, see DARKLEVEL_? for available values
   */
   public static native int AofGetDarknessLevel(double ds50TAI, double[] xa_aofArea);
   
   // AOF parameters
   /** input start/stop time type: 1=minutes since epoch (MSE), 0=date time (DTG) */
   public static final int XA_AOFCTRL_TIMEFLG  =  0;
   /** start time of interest (either MSE or DTG) */
   public static final int XA_AOFCTRL_START    =  1;
   /** stop time of interest (either MSE or DTG) */
   public static final int XA_AOFCTRL_STOP     =  2;
   /** search interval (min) */
   public static final int XA_AOFCTRL_INTERVAL =  3;
   /** print output control flag; 0=print penetrations only, 1=print penetrations and data description */
   public static final int XA_AOFCTRL_PRTOPT   =  4;
   /** search method: 0=use brute force method, 1=use analytical method */
   public static final int XA_AOFCTRL_SRCHMET  =  5;
   /** output sort type: S=sort each area by sat#, then time, T=sort each area by time, then sat# */
   public static final int XA_AOFCTRL_SRTTYPE  =  6;
   
   public static final int XA_AOFCTRL_SIZE     = 16;
   
   
   // Defended area types
   /** area box type */
   public static final int AREATYPE_I_BOX     =  1;
   /** area circle type */
   public static final int AREATYPE_I_CIRCLE  =  2;
   /** area point type */
   public static final int AREATYPE_I_POINT   =  3;
   /** area polygon type */
   public static final int AREATYPE_I_POLYGON =  4;
   
   
   // AOF satellite/mission (satellite/sensor) data
   /** satellite number of sensor-bearing satellite */
   public static final int XA_AOFSEN_SATNUM   =  0;
   /** reserved for future use */
   public static final int XA_AOFSEN_TYPE     =  1;
   /** off nadir minimum look angle (deg) (=0 for Cone) */
   public static final int XA_AOFSEN_MINEL    =  2;
   /** off nadir maximum look angle (deg) */
   public static final int XA_AOFSEN_MAXEL    =  3;
   /** minimum azimuth of first azimuth range (deg) */
   public static final int XA_AOFSEN_MINAZ1   =  4;
   /** maximum azimuth of first azimuth range (deg) */
   public static final int XA_AOFSEN_MAXAZ1   =  5;
   /** minimum azimuth of second azimuth range (deg) */
   public static final int XA_AOFSEN_MINAZ2   =  6;
   /** maximum azimuth of second azimuth range (deg) */
   public static final int XA_AOFSEN_MAXAZ2   =  7;
   /** reserved for future use */
   public static final int XA_AOFSEN_ELEM7    =  8;
   /** reserved for future use */
   public static final int XA_AOFSEN_ELEM8    =  9;
   /** reserved for future use */
   public static final int XA_AOFSEN_ELEM9    = 10;
   /** reserved for future use */
   public static final int XA_AOFSEN_ELEM10   = 11;
   
   public static final int XA_AOFSEN_SIZE     = 16;
   
   
   // AOF satellite/sensor types
   /** circle (specify only off-nadir maximum look angle) */
   public static final int AOFSENTYPE_CIRCLE = 0;
   
   
   // AOF run parameters
   /** Maximum number of passes that AOF returns in one start/stop time */
   public static final int XA_AOFRUN_MAXPASSES= 0;
   /** AOF start time in days since 1950, UTC */
   public static final int XA_AOFRUN_START    = 1;
   /** AOF stop time in days since 1950, UTC */
   public static final int XA_AOFRUN_STOP     = 2;
   /** Search interval (min) */
   public static final int XA_AOFRUN_INTERVAL = 3;
   
   public static final int XA_AOFRUN_SIZE     = 8;
   
   
   // AOF defended area types
   /** Defended area is a box */
   public static final int AOF_AREATYPE_BOX     = 1;
   /** Defended area is a circle */
   public static final int AOF_AREATYPE_CIRCLE  = 2;
   /** Defended area is a point */
   public static final int AOF_AREATYPE_POINT   = 3;
   /** Defended area is a polygon */
   public static final int AOF_AREATYPE_POLYGON = 4;
   
   
   
   // AOF defended area data
   /** Area number */
   public static final int XA_AOFAREA_NUM   = 0;
   /** | 1 = BOX                       | 2 = CIRCLE              | 3 = POINT */
   public static final int XA_AOFAREA_TYPE  = 1;
   /** | N lat (deg) upper left corner | N lat (deg) center point| N lat (deg) center point */
   public static final int XA_AOFAREA_ELEM1 = 2;
   /** | E lon (deg) upper left corner | E lon (deg) center point| E lon (deg) center point */
   public static final int XA_AOFAREA_ELEM2 = 3;
   /** | N lat (deg) lower right corner| circle radius (km)      | height (km, above reference geoid) */
   public static final int XA_AOFAREA_ELEM3 = 4;
   /** | E lon (deg) lower right corner|                         | */
   public static final int XA_AOFAREA_ELEM4 = 5;
   
   public static final int XA_AOFAREA_SIZE  = 16;
   
   
   // Penetration-level darkness status
   /** lit throughout penetration */
   public static final int DARKLEVEL_ALLLIT  = 0;
   /** dark throughout penetration */
   public static final int DARKLEVEL_ALLDARK = 1;
   /** partly-lit during penetration */
   public static final int DARKLEVEL_PARTLIT = 2;
   
   // View angle from overfly satellite to a llh point
   /** Azimuth (deg) */
   public static final int XA_AOFVIEW_AZIM   = 0;
   /** Elevation (deg) */
   public static final int XA_AOFVIEW_ELEV   = 1;
   /** Has line of sight to the point (1=Yes, 0=No-earth obstructs the view) */
   public static final int XA_AOFVIEW_HASLOS = 2;
   
   public static final int XA_AOFVIEW_SIZE   = 8;
   
   /** maximum of number of lat-lon-height points that can be used to describe a defended area */
   public static final int MAX_LLHPOINTS = 120;
   
   
   
   
// ========================= End of auto generated code ==========================
}
