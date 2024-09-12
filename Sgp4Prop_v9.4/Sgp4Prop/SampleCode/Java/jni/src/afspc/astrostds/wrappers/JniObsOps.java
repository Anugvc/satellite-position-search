// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: ObsOps */
public class JniObsOps
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "obsops";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadObsOpsDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadObsOpsDll();


   /**
   * Notes: This function has been deprecated since v9.0.    
   * Initializes ObsOps DLL for use in the program
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if ObsOps.dll is initialized successfully, non-0 if there is an error
   */
   public static native int ObsOpsInit(long apAddr);


   /**
   * Returns information about the current version of ObsOps DLL. 
   * The information is placed in the string parameter passed in.
   * @param infoStr            A string to hold the information about ObsOps.dll (out-Character[128])
   */
   public static native void ObsOpsGetInfo(byte[] infoStr);


   /**
   * Loads Iomod parameters from an input text file
   * @param iomodInputFile     The name of the file containing IOMOD-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int IomodLoadFile(String iomodInputFile);


   /**
   * Loads Iomod control parameters and all Iomod related data (environment, time, sensors, obs) from an input text file
   * @param iomodInputFile     The name of the file containing Iomod control parameters and all Iomod related data (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int IomodLoadFileAll(String iomodInputFile);


   /**
   * Saves any currently loaded IOMOD-related settings to a file
   * @param iomodFile          The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int IomodSaveFile(String iomodFile, int saveMode, int saveForm);


   /**
   * Builds and returns the IOMOD-parameter card (IP-Card) from the current IOMOD settings
   * @param iomodIPCard        the resulting IOMOD IP card (out-Character[512])
   */
   public static native void IomodGetIpCard(byte[] iomodIPCard);


   /**
   * Retrieves all IOMOD parameters with a single function call
   * @param printIOHG          control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG (out-Integer)
   * @param useFirst3Obs       use first 3 obs flag (out-Integer)
   * @param satNum             satelite number (out-Integer)
   * @param sortOrder          obs sorting order (out-Integer)
   * @param satName            international designator (out-Character[8])
   * @param runDC              run DC flag: 1=yes, 0=no (out-Integer)
   * @param runRotas           run ROTAS flag: 1=yes, 0=no (out-Integer)
   * @param extArr             the extra array (future use) (out-Double[128])
   */
   public static native void IomodGetIpAll(int[] printIOHG, int[] useFirst3Obs, int[] satNum, int[] sortOrder, byte[] satName, int[] runDC, int[] runRotas, double[] extArr);


   /**
   * Sets all IOMOD parameters with a single function call
   * @param printIOHG          control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG (in-Integer)
   * @param useFirst3Obs       use first 3 obs flag (in-Integer)
   * @param satNum             satelite number (in-Integer)
   * @param sortOrder          obs sorting order (in-Integer)
   * @param satName            international designator (in-Character[8])
   * @param runDC              run DC flag: 1=yes, 0=no (in-Integer)
   * @param runRotas           run ROTAS flag: 1=yes, 0=no (in-Integer)
   * @param extArr             the extra array (future use) (in-Double[128])
   */
   public static native void IomodSetIpAll(int printIOHG, int useFirst3Obs, int satNum, int sortOrder, String satName, int runDC, int runRotas, double[] extArr);


   /**
   * Retrieves the value of a specified IOMOD parameter
   * <br>
   * The table below indicates which index values for the xf_IP parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>xf_IP named constants/values</b></td>
   * <td><b>Interpretation</b></td>
   * </tr>
   * <tr><td>XF_IP_PRINTIOHG  = 1</td><td>control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print
   * IOHG</td></tr>
   * <tr><td>XF_IP_USE1ST3OBS = 2</td><td>use first 3 obs flag</td></tr>
   * <tr><td>XF_IP_SATNUM     = 3</td><td>satelite number</td></tr>
   * <tr><td>XF_IP_SORTORDER  = 4</td><td>obs sorting order</td></tr>
   * <tr><td>XF_IP_SATNAME    = 5</td><td>international designator </td></tr>
   * <tr><td>XF_IP_RUNDC      = 6</td><td>run DC flag: 1=yes, 0=no [deprecated]</td></tr>
   * <tr><td>XF_IP_RUNROTAS   = 7</td><td>run ROTAS flag: 1=yes, 0=no [deprecated]</td></tr>
   * </table>
   * @param xf_IP              Predefined number specifying which IOMOD parameter to retrieve (in-Integer)
   * @param retVal             A string to hold the value of the requested IOMOD parameter (out-Character[512])
   */
   public static native void IomodGetIpField(int xf_IP, byte[] retVal);


   /**
   * Sets the value of a specified IOMOD parameter
   * See IomodGetIpField for a description of the xf_IP parameter.
   * @param xf_IP              Predefined number specifying which IOMOD parameter to set, see XF_IP_? for field specification (in-Integer)
   * @param valueStr           The new value of the specified field, expressed as a string (in-Character[512])
   */
   public static native void IomodSetIpField(int xf_IP, String valueStr);


   /**
   * Computes initial orbit vector from many observations using Herrick-Gibbs method
   * @param obsKeyArr          the obsKey array contains obsKeys that are available for IOMOD (in-Long[*])
   * @param arrSize            the size of the obsKeyArr (in-Integer)
   * @param timeDs50UTC        the resulting time of the new vector in ds50UTC (out-Double)
   * @param pos                the resulting position vector (km) (out-Double[3])
   * @param vel                the resulting velocity vector (km/s) (out-Double[3])
   * @param arr3ObsKeys        the resulting 3 obsKeys that were used by IOMOD (out-Long[3])
   * @return 0 if the computation is successful, non-0 if there is an error
   */
   public static native int ManyObsToPosVel(long[] obsKeyArr, int arrSize, double[] timeDs50UTC, double[] pos, double[] vel, long[] arr3ObsKeys);


   /**
   * Computes initial orbit vector from three selected observations using Herrick-Gibbs method
   * @param arr3ObsKeys        the three input obsKeys (in-Long[3])
   * @param timeDs50UTC        the resulting time of the new vector in ds50UTC (out-Double)
   * @param pos                the resulting position vector (km) (out-Double[3])
   * @param vel                the resulting velocity vector (km/s) (out-Double[3])
   * @return 0 if the computation is successful, non-0 if there is an error
   */
   public static native int ThreeObsToPosVel(long[] arr3ObsKeys, double[] timeDs50UTC, double[] pos, double[] vel);


   /**
   * Computes initial orbit vector directly from the input sensor/observation data - thread safe
   * @param xa_senLoc          array contains sensor location data, see XA_SENLOC_? for array arrangement (in-Double[16])
   * @param numObs             number of input obs in xa_obsArr (in-Integer)
   * @param xa_obsArr          array of input obs.  see XA_OBS_? (in-Double[*, 64])
   * @param timeDs50UTC        the resulting time of the new vector in ds50UTC (out-Double)
   * @param pos                the resulting position vector (km) (out-Double[3])
   * @param vel                the resulting velocity vector (km/s) (out-Double[3])
   * @return 0 if the computation is successful, non-0 if there is an error
   */
   public static native int Iomod_OS(double[] xa_senLoc, int numObs, double[][] xa_obsArr, double[] timeDs50UTC, double[] pos, double[] vel);


   /**
   * Computes initial orbit vector from two selected observations using Two-Ob method
   * Note: Two-Ob method only works with ob types: 2, 3, 4, P, and V
   * @param arr2ObsKeys        the two input obsKeys (in-Long[2])
   * @param timeDs50UTC        the resulting time of the new vector in ds50UTC (out-Double)
   * @param pos                the resulting position vector (km) (out-Double[3])
   * @param vel                the resulting velocity vector (km/s) (out-Double[3])
   * @return 0 if the computation is successful, non-0 if there is an error
   */
   public static native int TwoObsToPosVel(long[] arr2ObsKeys, double[] timeDs50UTC, double[] pos, double[] vel);


   /**
   * Computes the initial orbit vector from three selected angle-only observations using the Gooding Algorithm.
   * @param arr3ObsKeys        the three input obsKeys (in-Long[3])
   * @param range1             the range guess to first observation (km) (in-Double)
   * @param range3             the range guess to third observation (km) (in-Double)
   * @param nhrev              number of half revolutions (in-Integer)
   * @param ind                solution number (in-Integer)
   * @param maxIt              maximum number of iterations (in-Integer)
   * @param pdInc              partial derivative increment (in-Double)
   * @param criVal             convergence criterion (in-Double)
   * @param timeDs50UTC        the resulting time of the new vector in ds50UTC (out-Double)
   * @param pos                the resulting position vector (km) (out-Double[3])
   * @param vel                the resulting velocity vector (km/s) (out-Double[3])
   * @return 0 if the computation is successful, non-0 if there is an error
   */
   public static native int AnglesOnlyToPosVel(long[] arr3ObsKeys, double range1, double range3, int nhrev, int ind, int maxIt, double pdInc, double criVal, double[] timeDs50UTC, double[] pos, double[] vel);


   /**
   * Computes the track length of a track whose first observation started at the input startIdx.
   * This routine can be used in a loop to find all the tracks in the observation list.
   * Remember to sort obs in the obsKeyArr in the ascending order of sensor, satno, obsType, time, elev 
   * by calling ObsGetLoaded(-6, pObsKeys) before feeding the array to this routine
   * @param obsKeyArr          the input obsKeyArr (in-Long[*])
   * @param arrSize            the size of the obsKeyArr (number of obs) (in-Integer)
   * @param startIdx           the index of the first observation to start computing the track length (in-Integer)
   * @param trackLength        the track length (trackLength = 1 for single obs) (out-Integer)
   * @return 0 if the computation is successful, non-0 if there is an error
   */
   public static native int FindTrack(long[] obsKeyArr, int arrSize, int startIdx, int[] trackLength);


   /**
   * Computes initial orbit vector from a track of obs. Also returns the three obs in the track that are used by IOMOD
   * @param obsKeys            the input obsKeyArr (in-Long[*])
   * @param trackStartIdx      the index of the first observation that starts the track (in-Integer)
   * @param trackLength        the track length (in-Integer)
   * @param timeDs50UTC        the resulting time of the new vector in ds50UTC (out-Double)
   * @param pos                the resulting position vector (km) (out-Double[3])
   * @param vel                the resulting velocity vector (km/s) (out-Double[3])
   * @param trackObsKeys       obsKeys of the tree obs that are used by IOMOD (out-Long[3])
   * @return 0 if the computation is successful, non-0 if there is an error
   */
   public static native int ATrackToPosVel(long[] obsKeys, int trackStartIdx, int trackLength, double[] timeDs50UTC, double[] pos, double[] vel, long[] trackObsKeys);


   /**
   * Returns the default values of the triangulation settings
   * @param xa_tri             triangulation parameters.  see XA_TRI_? (out-Double[32])
   */
   public static native void TriGetDefParams(double[] xa_tri);


   /**
   * Triangulates the input obs and write generated obs with range data to the specified output file
   * @param obsKeyArr          the input obsKeyArr contains obsKeys that are available for triangulation (in-Long[*])
   * @param arrSize            the size of the obsKeyArr (number of obs) (in-Integer)
   * @param xa_tri             triangulation parameters.  see XA_TRI_? (in-Double[32])
   * @param toFile             output file that stores the generated obs with the computed range data (in-Character[512])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int TriComputeToFile(long[] obsKeyArr, int arrSize, double[] xa_tri, String toFile);


   /**
   * Triangulates the input obs and returns the overlap and polyfit information; creates and loads obs with range data into memory and returns their associated obsKeys
   * @param obsKeyArr          the input obsKeyArr contains obsKeys that are available for triangulation (in-Long[*])
   * @param arrSize            the size of the obsKeyArr (number of obs) (in-Integer)
   * @param xa_tri             triangulation parameters.  see XA_TRI_? (in-Double[32])
   * @param numOvlps           number of overlap tracks (out-Integer)
   * @param xa_ovlp            overlap data.  see XA_OVLP_? (out-Double[*, 8])
   * @param numFits            number of qualified tracks for fitting (out-Integer)
   * @param xa_fit             polyfit data.  see XA_FIT_? (out-Double[*, 32])
   * @param maxGenObs          maximum number of generated obs (in-Integer)
   * @param nGenObs            number of actual obs generated by triangulation process (nGenObs always lt or eq maxGenObs) (out-Integer)
   * @param genObsKeys         generate obs with range, then load them into memory, and return the obsKeys of all generated obs (out-Long[*])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int TriCompute1(long[] obsKeyArr, int arrSize, double[] xa_tri, int[] numOvlps, double[][] xa_ovlp, int[] numFits, double[][] xa_fit, int maxGenObs, int[] nGenObs, long[] genObsKeys);


   /**
   * Triangulates the input obs and returns the overlap and polyfit information; creates and loads obs with range data into memory and returns their associated obsKeys
   * @param obsKeyArr          the input obsKeyArr contains obsKeys that are available for triangulation (in-Long[])
   * @param arrSize            the size of the obsKeyArr (number of obs) (in-Integer)
   * @param xa_tri             triangulation parameters.  see XA_TRI_? (in-Double[])
   * @param numOvlps           number of overlap tracks (out-Integer)
   * @param xa_ovlp            overlap data.  see XA_OVLP_? (out-Double[])
   * @param numFits            number of qualified tracks for fitting (out-Integer)
   * @param xa_fit             polyfit data.  see XA_FIT_? (out-Double[])
   * @param maxGenObs          maximum number of generated obs (in-Integer)
   * @param nGenObs            number of actual obs generated by triangulation process (nGenObs always lt or eq maxGenObs) (out-Integer)
   * @param genObsKeys         generate obs with range, then load them into memory, and return the obsKeys of all generated obs (out-Long[])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int TriCompute12Das1D(long[] obsKeyArr, int arrSize, double[] xa_tri, int[] numOvlps, double[] xa_ovlp, int[] numFits, double[] xa_fit, int maxGenObs, int[] nGenObs, long[] genObsKeys);


   /**
   * Triangulates the input obs and returns the overlap and polyfit information 
   * @param obsKeyArr          the input obsKeyArr contains obsKeys that are available for triangulation (in-Long[*])
   * @param arrSize            the size of the obsKeyArr (number of obs) (in-Integer)
   * @param xa_tri             triangulation parameters.  see XA_TRI_? (in-Double[32])
   * @param numOvlps           number of overlap tracks (out-Integer)
   * @param xa_ovlp            overlap data.  see XA_OVLP_? (out-Double[*, 8])
   * @param numFits            number of qualified tracks for fitting (out-Integer)
   * @param xa_fit             polyfit data.  see XA_FIT_? (out-Double[*, 32])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int TriCompute2(long[] obsKeyArr, int arrSize, double[] xa_tri, int[] numOvlps, double[][] xa_ovlp, int[] numFits, double[][] xa_fit);


   /**
   * Triangulates the input obs and returns the overlap and polyfit information 
   * @param obsKeyArr          the input obsKeyArr contains obsKeys that are available for triangulation (in-Long[])
   * @param arrSize            the size of the obsKeyArr (number of obs) (in-Integer)
   * @param xa_tri             triangulation parameters.  see XA_TRI_? (in-Double[])
   * @param numOvlps           number of overlap tracks (out-Integer)
   * @param xa_ovlp            overlap data.  see XA_OVLP_? (out-Double[])
   * @param numFits            number of qualified tracks for fitting (out-Integer)
   * @param xa_fit             polyfit data.  see XA_FIT_? (out-Double[])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int TriCompute22Das1D(long[] obsKeyArr, int arrSize, double[] xa_tri, int[] numOvlps, double[] xa_ovlp, int[] numFits, double[] xa_fit);


   /**
   * Triangulates the input obs; creates and loads obs with range data (by triangulation) into memory and returns their associated obsKeys
   * @param obsKeyArr          the input obsKeyArr contains obsKeys that are available for triangulation (in-Long[*])
   * @param arrSize            the size of the obsKeyArr (number of obs) (in-Integer)
   * @param xa_tri             triangulation parameters.  see XA_TRI_? (in-Double[32])
   * @param maxGenObs          maximum number of generated obs (in-Integer)
   * @param nGenObs            number of actual obs generated by triangulation process (nGenObs always lt or eq maxGenObs) (out-Integer)
   * @param genObsKeys         generate obs with range, then load them into memory, and return the obsKeys of all generated obs (out-Long[*])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int TriCompute3(long[] obsKeyArr, int arrSize, double[] xa_tri, int maxGenObs, int[] nGenObs, long[] genObsKeys);


   /**
   * Returns the default values of the waterfall altitude (km)
   * @return The default altitude (km) being used in the Waterfall algorithm
   */
   public static native double GetWaterfallAlt();


   /**
   * Converts angle-only observation to lat/lon/height positions
   * @param obsKey             The unique key of the angle-only observation that needs to be converted by the waterfall calculation (in-Long)
   * @param assumedAltitude    The input assumed altitude (km) to calculate LLH (set to 0 to indicate default altitude should be used) (in-Double)
   * @param rho                The ouput calculated range to sphere of assumed altitude (out-Double[2])
   * @param llhs               The calculated LLH at sphere of assumed altitude (out-Double[2, 3])
   * @param numSols            Number of Waterfall Solutions (out-Integer)
   * @return Returns 0 if the conversion is successful, non-0 if there is an error
   */
   public static native int AnglesOnlyToLLH(long obsKey, double assumedAltitude, double[] rho, double[][] llhs, int[] numSols);


   /**
   * Converts angle-only observation to lat/lon/height positions
   * @param obsKey             The unique key of the angle-only observation that needs to be converted by the waterfall calculation (in-Long)
   * @param assumedAltitude    The input assumed altitude (km) to calculate LLH (set to 0 to indicate default altitude should be used) (in-Double)
   * @param rho                The ouput calculated range to sphere of assumed altitude (out-Double[])
   * @param llhs               The calculated LLH at sphere of assumed altitude (out-Double[])
   * @param numSols            Number of Waterfall Solutions (out-Integer)
   * @return Returns 0 if the conversion is successful, non-0 if there is an error
   */
   public static native int AnglesOnlyToLLH2Das1D(long obsKey, double assumedAltitude, double[] rho, double[] llhs, int[] numSols);


   /**
   * Calculates length of output arrays for Lomb
   * Used to allocated px, py, prob before call to Lomb
   * @param ofac               Oversample factor, typical value is "4" or "5" (in-Double)
   * @param hifac              Ratio of highest frequency to Nyquist frequency (in-Double)
   * @param nSample            Number of samples for x and y (in-Integer)
   * @return Used to allocated px, py, prob before call to Lomb
   */
   public static native int LombLengthOut(double ofac, double hifac, int nSample);


   /**
   * Creates Lomb-Scargle periodogram.  Reference: Numerical Recipes   
   * Used to find frequencies in unevenly sampled data, such as Visual Magnitude vs. Time
   * @param x                  array times to input (units don't matter, can be days, seconds, etc...), length of nSample (in-Double[*])
   * @param y                  array of data (such as Visual Magnitude) associated with times to input, length of nSample (in-Double[*])
   * @param nSample            Number of samples for x and y (in-Integer)
   * @param ofac               Oversample factor, typical value is "4" or "5" (in-Double)
   * @param hifac              Ratio of highest frequency to Nyquist frequency (in-Double)
   * @param px                 array of frequencies, should be of length (0.5d0*ofac*hifac*nSample) (out-Double[*])
   * @param py                 array of powers associated with frequencies, should be of length (0.5d0*ofac*hifac*nSample) (out-Double[*])
   * @param prob               array of false alarm probabilities corresponding to py, should be of length (0.5d0*ofac*hifac*nSample) (out-Double[*])
   * @param pxmax              most powerful frequency (out-Double)
   * @param pymax              power of most powerful frequency (out-Double)
   * @param probMax            false alarm probability of most powerful frequency (out-Double)
   */
   public static native void Lomb(double[] x, double[] y, int nSample, double ofac, double hifac, double[] px, double[] py, double[] prob, double[] pxmax, double[] pymax, double[] probMax);


   /**
   * Find False Alarm Probablility of given Power (lower is less likely to be a false alarm)
   * @param py                 Power (in-Double)
   * @param nout               Number of output frequencies (0.5*ofac*hifac*n) (in-Integer)
   * @param ofac               oversample factor (in-Double)
   * @return False Alarm Probability
   */
   public static native double LombFalseProb(double py, int nout, double ofac);


   /**
   * Find Power of given False Alarm Probablility
   * @param prob               False Alarm Probability (in-Double)
   * @param nout               Number of output frequencies (0.5*ofac*hifac*n) (in-Integer)
   * @param ofac               oversample factor (in-Double)
   * @return Power
   */
   public static native double LombFalseProbInv(double prob, int nout, double ofac);


   /**
   * Calculate length of output for LombWaveFit
   * @param nFreq              Number of frequencies of interest (in-Integer)
   * @return Returned number of coefficients to use in LombWaveFit and LombCalcValueFromTime, use to allocate coeffs
   */
   public static native int LombLengthCoef(int nFreq);


   /**
   * Fits user defined frequencies to data to find the magnitudes
   * Solves the equation
   * y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
   * For coefficients A and B corresponding to each frequency
   * @param x                  Times, length of nSamples (in-Double[*])
   * @param y                  Data, length of nSamples (in-Double[*])
   * @param nSamples           Number of input samples, length of x and y (in-Integer)
   * @param freq               set of frequencies to fit, should not be same as output of Lomb, lenth of nfreq (in-Double[*])
   * @param nfreq              number of frequencies, length of freq (in-Integer)
   * @param coeffs             resulting coefficients(A(1) B(1) ... A(nfreq) B(nfreq) C), will have length(2*nfreq+1) (out-Double[*])
   */
   public static native void LombWaveFit(double[] x, double[] y, int nSamples, double[] freq, int nfreq, double[] coeffs);


   /**
   * Calculate value of y given time, x, 
   * and frequencies and magnitudes that were gotten from wavefit
   * solves the equation
   * y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
   * for y
   * @param x                  Time (in-Double)
   * @param mags               Magnitudes from wavefit, length of (2*nfreq+1) (in-Double[*])
   * @param freq               frequencies of interest, length of nfreq (in-Double[*])
   * @param nfreq              Number of frequencies of interest (in-Integer)
   * @return resulting y value
   */
   public static native double LombCalcValueFromTime(double x, double[] mags, double[] freq, int nfreq);


   /**
   * Given two observations, calculate the angle between them
   * Supports obsType 1,2,3,4,5,8,9,18,19
   * @param obsKey1            1st obsKey (in-Long)
   * @param obsKey2            2nd obsKey (in-Long)
   * @param angSep             Angular Separation(Deg) (out-Double)
   * @param errCode            Error Code, 1 - Obs times not equal (will still do calculation), 2 - Calculation errored out, sensor numbers are different, or unsupported obs type (out-Integer)
   */
   public static native void AngleBetweenObs(long obsKey1, long obsKey2, double[] angSep, int[] errCode);
   
   // Different obs selection options
   /** auto select 3 obs among the loaded/selected obs */
   public static final int OBSSELMODE_AUTO   = 0;
   /** use the first 3 obs in list of loaded/selected obs */
   public static final int OBSSELMODE_1ST3OBS= 1;
   
   
   // Indexes for accessing Iomod control parameters
   /** control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG */
   public static final int XF_IP_PRINTIOHG  = 1;
   /** use first 3 obs flag */
   public static final int XF_IP_USE1ST3OBS = 2;
   /** satelite number */
   public static final int XF_IP_SATNUM     = 3;
   /** obs sorting order */
   public static final int XF_IP_SORTORDER  = 4;
   /** international designator */
   public static final int XF_IP_SATNAME    = 5;
   /** run DC flag: 1=yes, 0=no */
   public static final int XF_IP_RUNDC      = 6;
   /** run ROTAS flag: 1=yes, 0=no */
   public static final int XF_IP_RUNROTAS   = 7;
   
   // Indexes of TRI configuration parameters
   /** I - Flag to specify whether or not to use triangulation's default parameters: =[1]: use them and ignore the rest; =0: not to use them */
   public static final int XA_TRI_USEDEFAULT       =  0;
   /** I - Output obs type (valid values are 0, 2, 3, 4, 6, 8 and 9) */
   public static final int XA_TRI_OBSTYPEOUT       =  1;
   /** I - Flag to specify whether or not to apply sensor bias: =[1]: apply bias, =0: not apply bias */
   public static final int XA_TRI_APPLYBIAS        =  2;
   /** I - apply light time correction (applyLTC) flag: 0=do no apply LTC, [1]=apply LTC */
   public static final int XA_TRI_LTC              =  3;
   /** I - number of obs created for each overlap track */
   public static final int XA_TRI_CREATEOBSSIZE    =  4;
   /** I - default order of the Polyfit for angle RA/DEC */
   public static final int XA_TRI_DEFANGLEORDER    =  5;
   /** I - default order of the Polyfit for range */
   public static final int XA_TRI_DEFRANGEORDER    =  6;
   /** I - default order of the Polyfit for EFG components */
   public static final int XA_TRI_DEFEFGORDER      =  7;
   /** I - whether or not to use auto mode for angle (increase order if needed when doing Polyfit) */
   public static final int XA_TRI_AUTOFITANGLE     =  8;
   /** I - whether or not to use auto for range (increase order if needed when doing Polyfit) */
   public static final int XA_TRI_AUTOFITRANGE     =  9;
   /** I - anchor order of RA/DEC */
   public static final int XA_TRI_ANCHORRADEC      = 10;
   /** I - check to see satellite number is different */
   public static final int XA_TRI_SEPSATNO         = 11;
   /** D - limit RMS for RA (arcsec) */
   public static final int XA_TRI_RARMSLIM         = 12;
   /** D - limit RMS for Dec (arcsec) */
   public static final int XA_TRI_DECRMSLIM        = 13;
   /** D - limit RMS for Range (km) */
   public static final int XA_TRI_RANGERMSLIM      = 14;
   /** D - track separation criteria (minutes) */
   public static final int XA_TRI_TRKSEPARATION    = 15;
   /** D - minimum stereoscopic angle (deg) */
   public static final int XA_TRI_MINSTEREOANGLE   = 16;
   
   public static final int XA_TRI_SIZE             = 32;
   
   // Indexes of overlap track data
   /** I - Satellite number */
   public static final int XA_OVLP_SATNUM       =  0;
   /** I - Sensor number of track 1 */
   public static final int XA_OVLP_SENNUM1      =  1;
   /** I - Sensor number of track 2 */
   public static final int XA_OVLP_SENNUM2      =  2;
   /** D - Overlap track's start time (in DS50UTC) */
   public static final int XA_OVLP_STARTTIME    =  3;
   /** D - Overlap track's end time (in DS50UTC) */
   public static final int XA_OVLP_ENDTIME      =  4;
   
   /**  */
   public static final int XA_OVLP_SIZE         =  8;
   
   // Indexes of polyfitting track data
   /** I - Satellite number */
   public static final int XA_FIT_SATNUM        =  0;
   /** I - Sensor number of track 1 */
   public static final int XA_FIT_SENNUM1       =  1;
   /** I - Sensor number of track 2 */
   public static final int XA_FIT_SENNUM2       =  2;
   
   /** I - Right ascension polyfit order of track 1 */
   public static final int XA_FIT_RAORDER1      =  3;
   /** I - Right ascension polyfit order of track 2 */
   public static final int XA_FIT_RAORDER2      =  4;
   /** D - Right ascension RMS of track 1 */
   public static final int XA_FIT_RARMS1        =  5;
   /** D - Right ascension RMS of track 2 */
   public static final int XA_FIT_RARMS2        =  6;
   
   /** I - Declination polyfit order of track 1 */
   public static final int XA_FIT_DECORDER1     =  7;
   /** I - Declination polyfit order of track 2 */
   public static final int XA_FIT_DECORDER2     =  8;
   /** D - Declination RMS of track 1 */
   public static final int XA_FIT_DECMS1        =  9;
   /** D - Declination RMS of track 2 */
   public static final int XA_FIT_DECRMS2       = 10;
   
   /** I - Declination polyfit order of track 1 */
   public static final int XA_FIT_RANGEORDER1   = 11;
   /** I - Declination polyfit order of track 2 */
   public static final int XA_FIT_RANGEORDER2   = 12;
   /** D - Declination RMS of track 1 */
   public static final int XA_FIT_RANGERMS1     = 13;
   /** D - Declination RMS of track 2 */
   public static final int XA_FIT_RANGERMS2     = 14;
   
   /** D - First stereoscopic angle (deg) */
   public static final int XA_FIT_THETA1        = 15;
   /** D - Second stereoscopic angle (deg) */
   public static final int XA_FIT_THETA2        = 16;
   /** D - Third stereoscopic angle (deg) */
   public static final int XA_FIT_THETA3        = 17;
   
   /**  */
   public static final int XA_FIT_SIZE          =  32;
   
   
// ========================= End of auto generated code ==========================
}
