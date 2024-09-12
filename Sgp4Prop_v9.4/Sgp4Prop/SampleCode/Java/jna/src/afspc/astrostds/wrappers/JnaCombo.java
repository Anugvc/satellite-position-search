// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import com.sun.jna.*;
import com.sun.jna.ptr.*;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNA component of the wrapper for: Combo */
public class JnaCombo
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNA class wraps. */
   public static final String DLL_NAME = "combo";

   static
   {
      Native.register(DLL_NAME);
   }


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes Combo dll for use in the program
   * If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if the Combo dll is initialized successfully, non-0 if there is an error
   */
   public static native int ComboInit(long apAddr);


   /**
   * Returns information about the current version of Combo.dll. The information is placed in the string parameter you pass in
   * The returned string provides information about the version number, build date, and the platform of the Combo DLL. 
   * @param infoStr            A string to hold the information about Combo.dll (out-Character[128])
   */
   public static native void ComboGetInfo(byte[] infoStr);


   /**
   * Loads Combo-related parameters (7P/8P/9P cards, and Combo parameter free format) from a text file
   * @param comboInputFile     The name of the file containing Combo-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int ComboLoadFile(String comboInputFile);


   /**
   * Loads Combo control parameters and all Combo related data (environment, time, elsets) from an input text file
   * @param comboInputFile     The name of the file containing Combo control parameters and all Combo related data (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int ComboLoadFileAll(String comboInputFile);


   /**
   * Loads a single Combo-typed card (7P, 8P, and 9P)
   * @param card               Combo-type input card (in-Character[512])
   * @return 0 if the input card is read successfully, non-0 if there is an error
   */
   public static native int ComboLoadCard(String card);


   /**
   * Saves any currently loaded COMBO-related settings to a file
   * The purpose of this function is to save the current Combo-related settings, usually used in GUI applications, for future use.
   * @param comboFile          The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int ComboSaveFile(String comboFile, int saveMode, int saveForm);


   /**
   * Returns the number of primary and secondary satellites that were entered via 7P-card, 8P-card, 9P-card, or Combo parameter free format 
   * @param numPriSats         The number of primary satellites that were entered via 7P/9P cards or Combo parameter free format (out-Integer)
   * @param numSecSats         The number of secondary satellites that were entered via 7P/8P cards or Combo parameter free format (out-Integer)
   */
   public static native void ComboGetNumOfPriSecSats(IntByReference numPriSats, IntByReference numSecSats);


   /**
   * Returns an array of primary satellite numbers that were entered via 7P-card, 9P-card, or Combo parameter free format
   * @param priSatNums         An array to hold the primary satellite numbers (out-Integer[*])
   */
   public static native void ComboGetPriSatNums(int[] priSatNums);


   /**
   * Returns an array of secondary satellite numbers that were entered via 7P-card, 8P-card, or Combo parameter free format
   * @param secSatNums         An array to hold the secondary satellite numbers (out-Integer[*])
   */
   public static native void ComboGetSecSatNums(int[] secSatNums);


   /**
   * Constructs Combo 7P-Card from COMBO control parameters
   * @param combo7pCard        A string to hold the resulting Combo Parameter Card (7P-Card) (out-Character[512])
   */
   public static native void ComboGet7pCard(byte[] combo7pCard);


   /**
   * Retrieves all Combo control parameters with a single function call
   * @param timeFlg            Input time format:	0 = Input time is in minutes since epoch (MSE),	1 = Input time is in days since 1950, UTC (ds50UTC) (out-Integer)
   * @param startTime          Begin time in ds50UTC or MSE, depending on timeFlg (out-Double)
   * @param stopTime           End time  in ds50UTC or MSE, depending on timeFlg (out-Double)
   * @param relMinFlg          Control for computing relative minima: 0 = Do not compute relative minima, 1 = Compute relative minima (out-Integer)
   * @param absMinFlg          Control for computing absolute minimum:	0 = Do not compute absolute minimum, 1 = Compute absolute minimum (out-Integer)
   * @param closeProxFlg       Control for computing periods of close proximity: 0 = Do not compute periods of close proximity, 1 = Compute periods of close proximity (out-Integer)
   * @param relEphFlg          Control for computing relative ephemeris: 0 = Do not compute relative ephemeris, 1 = Compute relative ephemeris (out-Integer)
   * @param pocSigma           Probability of collision sigma (out-Double)
   * @param relMinLim          Maximum separation for relative minima (km) (out-Double)
   * @param closeProxLim       Close proximity limit (out-Double)
   * @param relEphInterval     Relative ephemeris sampling interval (min) (out-Double)
   * @param prtOpt             Print options:	0 = Relative geometry only, 1 = Position/velocity (plus option 0), 2 = Lat, lon, height (plus option 1), 3 = Relative position (plus option 2), 4 = No output (out-Integer)
   */
   public static native void ComboGet7pAll(IntByReference timeFlg, DoubleByReference startTime, DoubleByReference stopTime, IntByReference relMinFlg, IntByReference absMinFlg, IntByReference closeProxFlg, IntByReference relEphFlg, DoubleByReference pocSigma, DoubleByReference relMinLim, DoubleByReference closeProxLim, DoubleByReference relEphInterval, IntByReference prtOpt);


   /**
   * Sets all Combo control parameters with a single function call
   * @param timeFlg            Input time format:	0 = Input time is in minutes since epoch (MSE),	1 = Input time is in days since 1950, UTC (ds50UTC) (in-Integer)
   * @param startTime          Begin time in ds50UTC or MSE, depending on timeFlg (in-Double)
   * @param stopTime           End time  in ds50UTC or MSE, depending on timeFlg (in-Double)
   * @param relMinFlg          Control for computing relative minima: 0 = Do not compute relative minima, 1 = Compute relative minima (in-Integer)
   * @param absMinFlg          Control for computing absolute minimum:	0 = Do not compute absolute minimum, 1 = Compute absolute minimum (in-Integer)
   * @param closeProxFlg       Control for computing periods of close proximity: 0 = Do not compute periods of close proximity, 1 = Compute periods of close proximity (in-Integer)
   * @param relEphFlg          Control for computing relative ephemeris: 0 = Do not compute relative ephemeris, 1 = Compute relative ephemeris (in-Integer)
   * @param pocSigma           Probability of collision sigma (in-Double)
   * @param relMinLim          Maximum separation for relative minima (km) (in-Double)
   * @param closeProxLim       Close proximity limit (in-Double)
   * @param relEphInterval     Relative ephemeris sampling interval (min) (in-Double)
   * @param prtOpt             Print options:	0 = Relative geometry only, 1 = Position/velocity (plus option 0), 2 = Lat, lon, height (plus option 1), 3 = Relative position (plus option 2), 4 = No output (in-Integer)
   */
   public static native void ComboSet7pAll(int timeFlg, double startTime, double stopTime, int relMinFlg, int absMinFlg, int closeProxFlg, int relEphFlg, double pocSigma, double relMinLim, double closeProxLim, double relEphInterval, int prtOpt);


   /**
   * Retrieves the value of a single Combo control parameter (7P-card)
   * @param xf_7P              Predefined number specifying which Combo control parameter to retrieve, see XF_7P_? for field specification (in-Integer)
   * @param retVal             A string to hold the value of the requested COMBO control parameter (out-Character[512])
   */
   public static native void ComboGet7pField(int xf_7P, byte[] retVal);


   /**
   * Sets the value of a single Combo control parameter (7P-card)
   * See ComboGet7pField for a list of index values for the parameter xf_7P.
   * @param xf_7P              Predefined number specifying which Combo control parameter to set, see XF_7P_? for field specification (in-Integer)
   * @param valueStr           the new value of the specified COMBO control parameter, expressed as a string (in-Character[512])
   */
   public static native void ComboSet7pField(int xf_7P, String valueStr);


   /**
   * Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
   * <br>
   * If <i>absMinDs50UTC</i> = 0 or <i>absMinDist</i> = 1.0E20, this means no absolute minimum found. Otherwise, the <i>absMinDs50UTC</i> and <i>absMinDist</i> are returned whether or not <i>absMinDist</i> is greater than the specified "Close proximity limit".
   * <br>
   * Returns zero indicating the COMBO data was computed successfully. Other values indicate an error. Here is the list of possible error/warning code it returns:
   * <table>
   *     <caption>table</caption>
   * <tr>
   * <td><b>Value</b></td>
   * <td><b>Value Interpretation</b></td>
   * </tr>
   * <tr><td>101 </td><td>Primary satellite's epoch too far from the time span</td></tr>
   * <tr><td>102 </td><td>Secondary satellite's epoch too far from the time span</td></tr>
   * <tr><td>103 </td><td>Primary/secondary satellites are identical</td></tr>
   * <tr><td>104 </td><td>Secondary satellite failed perigee/apogee test</td></tr>
   * <tr><td>105 </td><td>Secondary satellite is considered a brief span</td></tr>
   * <tr><td>106 </td><td>Secondary satellite is in sustained relative geometry</td></tr>
   * </table>
   * <br>
   * When the function's returned value is 108 (secondary satellite is in sustained relative geometry), the entry/exit times should be ignored.
   * @param priSatKey          The primary satellite's unique key (in-Long)
   * @param secSatKey          The secondary satellite's unique key (in-Long)
   * @param absMinDs50UTC      Time (in days since 1950, UTC) when the primary and secondary satellites are in closest approach (absolute minimum) (out-Double)
   * @param absMinDist         Absolute minimum distance (km) between primary and secondary satellites obtained at the time absMinDs50UTC (out-Double)
   * @param relMinDs50UTCs     Times (in days since 1950, UTC) when  the primary and secondary satellites are at relative minima (out-Double[1000])
   * @param numOfRelMins       Number of relative minima found during the requested time span (out-Integer)
   * @param entryDs50UTCs      Times (in days since 1950, UTC) when the primary and secondary satellites approach the distance as specified in the "Maximum separation for relative minima" (out-Double[1000])
   * @param exitDs50UTCs       Times (in days since 1950, UTC) when the primary and secondary satellites leave the distance as specified in the "Maximum separation for relative minima" (out-Double[1000])
   * @param numOfEntryExits    Number of times when the primary and secondary satellites enter and exit the "Maximum separation for relative minima" (out-Integer)
   * @return 0 if the COMBO data was computed successfully, non-0 if there is an error
   */
   public static native int ComboCompPriSec(long priSatKey, long secSatKey, DoubleByReference absMinDs50UTC, DoubleByReference absMinDist, double[] relMinDs50UTCs, IntByReference numOfRelMins, double[] entryDs50UTCs, double[] exitDs50UTCs, IntByReference numOfEntryExits);


   /**
   * Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
   * This function is similar to ComboCompPriSec but allows the user to enter separate COMBO parameters for each call which is suitable for multithread application
   * @param xa_cb_parms        Combo control parameters - see XA_CB_PARMS_? for array arrangement (in-Double[16])
   * @param priSatKey          The primary satellite's unique key (in-Long)
   * @param secSatKey          The secondary satellite's unique key (in-Long)
   * @param absMinDs50UTC      Time (in days since 1950, UTC) when the primary and secondary satellites are in closest approach (absolute minimum) (out-Double)
   * @param absMinDist         Absolute minimum distance (km) between primary and secondary satellites obtained at the time absMinDs50UTC (out-Double)
   * @param relMinDs50UTCs     Times (in days since 1950, UTC) when  the primary and secondary satellites are at relative minima (out-Double[1000])
   * @param numOfRelMins       Number of relative minima found during the requested time span (out-Integer)
   * @param entryDs50UTCs      Times (in days since 1950, UTC) when the primary and secondary satellites approach the distance as specified in the "Maximum separation for relative minima" (out-Double[1000])
   * @param exitDs50UTCs       Times (in days since 1950, UTC) when the primary and secondary satellites leave the distance as specified in the "Maximum separation for relative minima" (out-Double[1000])
   * @param numOfEntryExits    Number of times when the primary and secondary satellites enter and exit the "Maximum separation for relative minima" (out-Integer)
   * @return 0 if the COMBO data was computed successfully, non-0 if there is an error
   */
   public static native int ComboCompPriSec_MT(double[] xa_cb_parms, long priSatKey, long secSatKey, DoubleByReference absMinDs50UTC, DoubleByReference absMinDist, double[] relMinDs50UTCs, IntByReference numOfRelMins, double[] entryDs50UTCs, double[] exitDs50UTCs, IntByReference numOfEntryExits);


   /**
   * Computes probability of collision between a primary and secondary satellite
   * @param priSatPos          The primary satellite's ECI position vector (km) (in-Double[3])
   * @param priSatVel          The primary satellite's ECI velocity vector (km/s) (in-Double[3])
   * @param priSatCov          The primary satellite's 3x3 (in 1D array) covariance matrix (in-Double[9])
   * @param priSatRad          The primary satellite's effective radius (m) (in-Double)
   * @param secSatPos          The secondary satellite's ECI position vector (km) (in-Double[3])
   * @param secSatVel          The secondary satellite's ECI velocity vector (km/s) (in-Double[3])
   * @param secSatCov          The secondary satellite's 3x3 (in 1D array) covariance matrix (in-Double[9])
   * @param secSatRad          The secondary satellite's effective radius (m) (in-Double)
   * @param xf_CovType         Input covariance type: 1 = ECI, 2 = UVW (in-Integer)
   * @param xa_cb_poc          The resulting probability of collision, see XA_CB_POC_? for array arragement (out-Double[4])
   * @return 0 if the probability of collision is computed successfully, non-0 if there is an error
   */
   public static native int ComboPOC(double[] priSatPos, double[] priSatVel, double[] priSatCov, double priSatRad, double[] secSatPos, double[] secSatVel, double[] secSatCov, double secSatRad, int xf_CovType, double[] xa_cb_poc);


   /**
   * Computes probability of collision using data from a CSM/OCM file
   * @param csmFile            ocm or csm file (in-Character[512])
   * @param sumR               hard-body radius (R1 + R2) (m), if not zero, overwrite values in csm's (in-Double)
   * @param xa_cb_poc          The resulting probability of collision, see XA_CB_POC_? for array arragement (out-Double[4])
   * @return 0 if the POC was computed successfully, non-0 if there is an error
   */
   public static native int ComboCSMPOC(String csmFile, double sumR, double[] xa_cb_poc);
   
   // Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
   /** input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC) */
   public static final int XA_CB_PARMS_TIMEFLG     =  1;
   /** begin time */
   public static final int XA_CB_PARMS_STARTTIME   =  2;
   /** end time */
   public static final int XA_CB_PARMS_STOPTIME    =  3;
   /** maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value */
   public static final int XA_CB_PARMS_MAXSEP      =  4;
   /** close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value */
   public static final int XA_CB_PARMS_PROXLIM     =  5;
   public static final int XA_CB_PARMS_SIZE        = 16;
   
   // Constants represent combo failed cases
   /** Primary satellite's epoch too far from time span */
   public static final int FAILED_PRITOOFAR = 101;
   /** Secondary satellite's epoch too far from time span */
   public static final int FAILED_SECTOOFAR = 102;
   /** Primary/secondary satellites are identical */
   public static final int FAILED_SAMESAT   = 103;
   /** Secondary satellite failed perigee/apogee test */
   public static final int FAILED_ALTITUDE  = 104;
   /** Secondary satellite is considered a brief span */
   public static final int WARN_BRIEFSPAN   = 105;
   /** Secondary satellite is in sustained relative geometry */
   public static final int WARN_SUSRELGEO   = 106;
   
   // Indexes of LAMOD 7P-card fields
   /** Input time format : 0: Minutes since epoch, 1: UTC */
   public static final int XF_7P_TIMEFLAG    = 1;
   /** Begin time */
   public static final int XF_7P_BEGTIME     = 2;
   /** End time */
   public static final int XF_7P_ENDTIME     = 3;
   /** Control flag for computing relative minima */
   public static final int XF_7P_RELMINFLG   = 4;
   /** Control flag for computing absolute minimum */
   public static final int XF_7P_ABSMINFLG   = 5;
   /** Control flag for computing periods of close proximity */
   public static final int XF_7P_EETIMES     = 6;
   /** Control flag for computing relative ephemeris */
   public static final int XF_7P_RELEPHFLG   = 7;
   /** Control flag for computing probability of collision */
   public static final int XF_7P_POCSIGMA    = 8;
   /** Maximum separation for relative minima */
   public static final int XF_7P_RELMINLIM   = 9;
   /** Close proximity limit */
   public static final int XF_7P_ABSMINLIM   = 10;
   /** Relative ephemeris sampling interval */
   public static final int XF_7P_RELEPHINT   = 11;
   /** Print options */
   public static final int XF_7P_PRTOPT      = 12;
   /** Primary satellite effective radius (m) */
   public static final int XF_7P_PRADIUS     = 13;
   /** Secondary satellite effective radius (m) */
   public static final int XF_7P_SRADIUS     = 14;
   
   // Different input of covariance matrix to compute POC
   /** ECI pos, vel, and ECI covariance */
   public static final int XF_COVTYPE_ECI   = 1;
   /** EFG pos, vel, and UVW covariance */
   public static final int XF_COVTYPE_UVW   = 2;
   
   // Indexes of Combo's POC data
   /** Normalized distance (n-sigma) to circumscribing square */
   public static final int XA_CB_POC_NORMSQR  = 0;
   /** POC of square */
   public static final int XA_CB_POC_SQR      = 1;
   /** Normalized distance (n-sigma) to circle */
   public static final int XA_CB_POC_NORMCIR  = 2;
   /** POC of circle */
   public static final int XA_CB_POC_CIR      = 3;
   
   public static final int XA_CB_POC_SIZE     = 4;
   
   
// ========================= End of auto generated code ==========================
}
