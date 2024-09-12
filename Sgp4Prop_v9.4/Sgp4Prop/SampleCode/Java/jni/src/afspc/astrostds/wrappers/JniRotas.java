// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: Rotas */
public class JniRotas
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "rotas";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadRotasDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadRotasDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes Rotas DLL for use in the program
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if the Rotas dll is initialized successfully, non-0 if there is an error
   */
   public static native int RotasInit(long apAddr);


   /**
   * Returns information about the current version of Rotas DLL. 
   * The information is placed in the string parameter passed in.
   * @param infoStr            A string to hold the information about Rotas.dll (out-Character[128])
   */
   public static native void RotasGetInfo(byte[] infoStr);


   /**
   * Loads Rotas-related parameters from an input text file
   * @param rotasInputFile     The name of the file containing Rotas-related parameters (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int RotasLoadFile(String rotasInputFile);


   /**
   * Loads Rotas control parameters and all Rotas related data (environment, time, elsets, sensors, obs) from an input text file
   * @param rotasInputFile     The name of the file containing Rotas control parameters and all Rotas related data (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int RotasLoadFileAll(String rotasInputFile);


   /**
   * Loads a single Rotas-typed card
   * @param card               Rotas-type input card (in-Character[512])
   * @return 0 if the input card is read successfully, non-0 if there is an error
   */
   public static native int RotasLoadCard(String card);


   /**
   * Saves current Rotas settings to a file
   * @param rotasFile          The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int RotasSaveFile(String rotasFile, int saveMode, int saveForm);


   /**
   * Builds and returns the Rotas P-Card from the current Rotas settings
   * @param rotasPCard         The resulting Rotas P-Card string (out-Character[512])
   */
   public static native void RotasGetPCard(byte[] rotasPCard);


   /**
   * Retrieves all Rotas control parameters with a single function call
   * @param rotasMode          Rotas processing mode: TAG=verify ob tab (default), FTAG=force assoc vs all input elsets, ALLEL=find the best # assoc elsets (out-Character[5])
   * @param grossBeta          gross beta threshold (deg) (default=2.0) (out-Double)
   * @param betaLimit          ASTAT 0 beta limit (deg) (default=0.05) (out-Double)
   * @param deltaTLimit        ASTAT 0 delta-t limit (min) (default=0.05) (out-Double)
   * @param deltaHLimit        ASTAT 0 delta-height limit (km) (default=10) (out-Double)
   * @param astat2Mult         ASTAT 2 multiplier (default=4) (out-Integer)
   * @param prtFlag            Residual print flag: 1=print all, 2=print ASTAT 0/1, 3=print no residuals, 4=print ASTAT 0/1/2 (out-Integer)
   * @param retagFlag          Retag flag: 0=don't retag (default), 1=retag ASTAT 0/1 to B3, 2=retag ASTAT 0/1 to TTY, 3=retag ASTAT 0/1/2 to B3 (out-Integer)
   * @param ltcFlag            Type 5 observation light-time correct flag: 0=don't apply LTC, 1=apply LTC analytically, 2=apply LTC exactly (out-Integer)
   * @param maxNumAssoc        Max number of associations per ob (ALLEL mode only) (out-Integer)
   * @param debiasFlag         Debias observation flag: 0=don't apply debias, 1=debias ob by applying sensor's bias data (out-Integer)
   * @param diagMode           Diagnostic print flag (out-Integer)
   * @param covPrtFlag         Covariance flag: 1=Propagate covariance and compute covariance matrix (covariance matrix must be available) (out-Integer)
   * @param isTrackMode        Track mode: 1=use track processing (each track is treated as a single entity) (out-Integer)
   * @param remRetagObs        Retagged obs are removed from further association (out-Integer)
   * @param extArr             For future use (out-Double[128])
   */
   public static native void RotasGetPAll(byte[] rotasMode, double[] grossBeta, double[] betaLimit, double[] deltaTLimit, double[] deltaHLimit, int[] astat2Mult, int[] prtFlag, int[] retagFlag, int[] ltcFlag, int[] maxNumAssoc, int[] debiasFlag, int[] diagMode, int[] covPrtFlag, int[] isTrackMode, int[] remRetagObs, double[] extArr);


   /**
   * Sets all Rotas control parameters with a single function call
   * @param rotasMode          Rotas processing mode: TAG=verify ob tab (default), FTAG=force assoc vs all input elsets, ALLEL=find the best # assoc (in-Character[5])
   * @param grossBeta          gross beta threshold (deg) (default=2.0) (in-Double)
   * @param betaLimit          ASTAT 0 beta limit (deg) (default=0.05) (in-Double)
   * @param deltaTLimit        ASTAT 0 delta-t limit (min) (default=0.05) (in-Double)
   * @param deltaHLimit        ASTAT 0 delta-height limit (km) (default=10) (in-Double)
   * @param astat2Mult         ASTAT 2 multiplier (default=4) (in-Integer)
   * @param prtFlag            Residual print flag: 1=print all, 2=print ASTAT 0/1, 3=print no residuals, 4=print ASTAT 0/1/2 (in-Integer)
   * @param retagFlag          Retag flag: 0=don't retag (default), 1=retag ASTAT 0/1 to B3, 2=retag ASTAT 0/1 to TTY, 3=retag ASTAT 0/1/2 to B3 (in-Integer)
   * @param ltcFlag            Type 5 observation light-time correct flag: 0=don't apply LTC, 1=apply LTC analytically, 2=apply LTC exactly (in-Integer)
   * @param maxNumAssoc        Max number of associations per ob (ALLEL mode only) (in-Integer)
   * @param debiasFlag         Debias observation flag: 0=don't apply debias, 1=debias ob by applying sensor's bias data (in-Integer)
   * @param diagMode           Diagnostic print flag (in-Integer)
   * @param covPrtFlag         Covariance flag: 1=Propagate covariance and compute covariance matrix (covariance matrix must be available) (in-Integer)
   * @param isTrackMode        Track mode: 1=use track processing (each track is treated as a single entity) (in-Integer)
   * @param remRetagObs        Retagged obs are removed from further association (in-Integer)
   * @param extArr             For future use (in-Double[128])
   */
   public static native void RotasSetPAll(String rotasMode, double grossBeta, double betaLimit, double deltaTLimit, double deltaHLimit, int astat2Mult, int prtFlag, int retagFlag, int ltcFlag, int maxNumAssoc, int debiasFlag, int diagMode, int covPrtFlag, int isTrackMode, int remRetagObs, double[] extArr);


   /**
   * Retrieves the value of a specified Rotas control parameter (P-card field)
   * <br>
   * The table below shows the values for the xf_RP parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>
   * <tr><td> 1 </td><td> Rotas processing mode</td></tr>
   * <tr><td> 2 </td><td> Gross Beta limit (deg)</td></tr>
   * <tr><td> 3 </td><td> ASTAT 0 Beta limit (deg)</td></tr>
   * <tr><td> 4 </td><td> ASTAT 0 delta-t limit (min)</td></tr>
   * <tr><td> 5 </td><td> ASTAT 0 delta-height limit (km)</td></tr>
   * <tr><td> 6 </td><td> ASTAT 2 multiplier</td></tr>
   * <tr><td> 7 </td><td> Residual print flag</td></tr>
   * <tr><td> 8 </td><td> Retag ASTAT 1 ob flag</td></tr>
   * <tr><td> 9 </td><td> Light-time correction flag</td></tr>
   * <tr><td>10 </td><td> Maximum number of ALLEL assoc's to compute</td></tr>
   * <tr><td>11 </td><td> Diagnostic print flag</td></tr>
   * <tr><td>12 </td><td> Covariance print flag</td></tr>
   * <tr><td>13 </td><td> Perform track processing</td></tr>
   * <tr><td>14 </td><td> Retagged ob are removed from further association</td></tr>
   * <tr><td>15 </td><td> Debias ob flag</td></tr>
   * </table>
   * @param xf_RP              Predefined number specifying which Rotas control parameter  to retrieve (in-Integer)
   * @param retVal             A string to hold the value of the requested Rotas parameter (out-Character[512])
   */
   public static native void RotasGetPField(int xf_RP, byte[] retVal);


   /**
   *  Sets the value of a specified Rotas control parameter (P-card field)
   * See RotasGetPField for values for the xf_RP parameter.
   * @param xf_RP              Predefined number specifying which Rotas control parameter to set (in-Integer)
   * @param valueStr           The new value of the specified field, expressed as a string (in-Character[512])
   */
   public static native void RotasSetPField(int xf_RP, String valueStr);


   /**
   * Gets ASTAT 1 association multipliers
   * @param xa_assocMultp      ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement (out-Integer[12])
   */
   public static native void RotasGetAssocMultipliers(int[] xa_assocMultp);


   /**
   * Sets ASTAT 1 association multipliers
   * @param xa_assocMultp      ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement (in-Integer[12])
   */
   public static native void RotasSetAssocMultipliers(int[] xa_assocMultp);


   /**
   * Resets all Rotas control parameters back to their default values
   */
   public static native void RotasResetAll();


   /**
   * Determines if the observation/satellite pair can possibly have an association
   * @param obsKey             The obervation's unique key (in-Long)
   * @param satKey             The satellite's unique key (in-Long)
   * @return 0 if the observation/satellite pair doesn't have an association, 1 if the pair has an association
   */
   public static native int RotasHasASTAT(long obsKey, long satKey);


   /**
   * Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using global Multipliers)
   * @param xa_rt_parms        ROTAS control parameters - see XA_RT_PARMS_? for array arrangement (in-Double[16])
   * @param obsKey             The obervation's unique key (in-Long)
   * @param satKey             The satellite's unique key (in-Long)
   * @return 0 if the observation/satellite pair doesn't have an association, 1 if the pair has an association
   */
   public static native int RotasHasASTAT_MT(double[] xa_rt_parms, long obsKey, long satKey);


   /**
   * Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using provided Multipliers)
   * @param xa_assocMultp      ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement (in-Integer[12])
   * @param xa_rt_parms        ROTAS control parameters - see XA_RT_PARMS_? for array arrangement (in-Double[16])
   * @param obsKey             The obervation's unique key (in-Long)
   * @param satKey             The satellite's unique key (in-Long)
   * @return 0 if the observation/satellite pair doesn't have an association, 1 if the pair has an association
   */
   public static native int RotasHasASTATMultp_MT(int[] xa_assocMultp, double[] xa_rt_parms, long obsKey, long satKey);


   /**
   * Computes residuals for one observation against one satellite
   * Obs type 0 (range rate only) cannot be used to compute residuals.
   * @param obsKey             The observation's unique key (in-Long)
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_ObsRes          The resulting array of obs residuals, see XA_OBSRES_? for array arrangement (out-Double[100])
   * @param satElts            satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (7th-9th) (out-Double[9])
   * @param obElts             observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (7th-9th) (out-Double[9])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int RotasComputeObsResiduals(long obsKey, long satKey, double[] xa_ObsRes, double[] satElts, double[] obElts);


   /**
   * Computes residuals for one observation against one satellite - suitable for multithread application (using global Multipliers)
   * Obs type 0 (range rate only) cannot be used to compute residuals.
   * @param xa_rt_parms        ROTAS control parameters - see XA_RT_PARMS_? for array arrangement (in-Double[16])
   * @param obsKey             The observation's unique key (in-Long)
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_ObsRes          The resulting array of obs residuals, see XA_OBSRES_? for array arrangement (out-Double[100])
   * @param satElts            satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (7th-9th) (out-Double[9])
   * @param obElts             observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (7th-9th) (out-Double[9])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int RotasComputeObsResiduals_MT(double[] xa_rt_parms, long obsKey, long satKey, double[] xa_ObsRes, double[] satElts, double[] obElts);


   /**
   * Computes residuals for one observation against one satellite - suitable for multithread application (using provided Multipliers)
   * Obs type 0 (range rate only) cannot be used to compute residuals.
   * @param xa_assocMultp      ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement (in-Integer[12])
   * @param xa_rt_parms        ROTAS control parameters - see XA_RT_PARMS_? for array arrangement (in-Double[16])
   * @param obsKey             The observation's unique key (in-Long)
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_ObsRes          The resulting array of obs residuals, see XA_OBSRES_? for array arrangement (out-Double[100])
   * @param satElts            satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (7th-9th) (out-Double[9])
   * @param obElts             observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (7th-9th) (out-Double[9])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int RotasComputeObsResidualsMultp_MT(int[] xa_assocMultp, double[] xa_rt_parms, long obsKey, long satKey, double[] xa_ObsRes, double[] satElts, double[] obElts);


   /**
   * Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using global parameters)
   * @param obsKeys            The input array of obsKeys sorted in ascending order of sensor, satno, obsType, time, elev (in-Long[*])
   * @param trackStartIdx      The start index of the first obs of the track (in-Integer)
   * @param trackLength        The input track length (in-Integer)
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_ObsRes          The resulting array of obs residuals, see XA_OBSRES_? for array arrangement (out-Double[100])
   * @param trackObsKeys       The 3 obsKeys of the 3 obs that were chosen to represent the track (out-Long[3])
   * @param b3ObsCard          The resulting B3-card created by IOMOD to represent the whole track (out-Character[512])
   * @param satElts            satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (8th-9th) (out-Double[9])
   * @param obElts             observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (8th-9th) (out-Double[9])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int RotasComputeTrackResiduals(long[] obsKeys, int trackStartIdx, int trackLength, long satKey, double[] xa_ObsRes, long[] trackObsKeys, byte[] b3ObsCard, double[] satElts, double[] obElts);


   /**
   * Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using provided parameters)
   * @param xa_assocMultp      ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement (in-Integer[12])
   * @param xa_rt_parms        ROTAS control parameters - see XA_RT_PARMS_? for array arrangement (in-Double[16])
   * @param obsKeys            The input array of obsKeys sorted in ascending order of sensor, satno, obsType, time, elev (in-Long[*])
   * @param trackStartIdx      The start index of the first obs of the track (in-Integer)
   * @param trackLength        The input track length (in-Integer)
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_ObsRes          The resulting array of obs residuals, see XA_OBSRES_? for array arrangement (out-Double[100])
   * @param trackObsKeys       The 3 obsKeys of the 3 obs that were chosen to represent the track (out-Long[3])
   * @param b3ObsCard          The resulting B3-card created by IOMOD to represent the whole track (out-Character[512])
   * @param satElts            satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (8th-9th) (out-Double[9])
   * @param obElts             observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (8th-9th) (out-Double[9])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int RotasComputeTrackResiduals_MT(int[] xa_assocMultp, double[] xa_rt_parms, long[] obsKeys, int trackStartIdx, int trackLength, long satKey, double[] xa_ObsRes, long[] trackObsKeys, byte[] b3ObsCard, double[] satElts, double[] obElts);


   /**
   * Computes residuals for one observation against one satellite directly (no need to load ob and propagate satellite)
   * @param obDataArr          The array storing observation data: position (1st-3rd), velocity (4th-6th), unused (7th-16th) (in-Double[16])
   * @param satDataArr         The array storing satellite data: position (1st-3rd), velocity (4th-6th), unused (7th-16th) (in-Double[16])
   * @param xa_ObsRes          The resulting array of obs residuals, see XA_OBSRES_? for array arrangement (out-Double[100])
   * @return 0 if successful, non-0 if there is an error
   */
   public static native int RotasCompObResDirect(double[] obDataArr, double[] satDataArr, double[] xa_ObsRes);


   /**
   * Returns the name of the retag obs file
   * @param retagObsFile       The resulting retag file name (out-Character[512])
   */
   public static native void RotasGetRetagObsFile(byte[] retagObsFile);


   /**
   * Sets the file name of the retag obs file
   * @param retagObsFile       The retag file name (in-Character[512])
   */
   public static native void RotasSetRetagObsFile(String retagObsFile);
   
   // Different light-time correction (LTC) options
   /** Don't apply LTC */
   public static final int LTC_DONTAPPLY  = 0;
   /** Apply LTC analytically */
   public static final int LTC_ANALYTIC   = 1;
   /** Apply LTC exactly */
   public static final int LTC_EXACT      = 2;
   
   // Residual computation methods
   /** Delta/427M method */
   public static final int RESCOMPMETH_DELTA427M = 1;
   /** Spadoc 4 method */
   public static final int RESCOMPMETH_SPADOC4   = 2;
   
   // PV Ob data
   /** ob ECI position X (km) in TEME of Date */
   public static final int XA_OBPV_POSX     =  0;
   /** ob ECI position Y (km) in TEME of Date */
   public static final int XA_OBPV_POSY     =  1;
   /** ob ECI position Z (km) in TEME of Date */
   public static final int XA_OBPV_POSZ     =  2;
   /** ob ECI velocity X (km/sec) in TEME of Date */
   public static final int XA_OBPV_VELX     =  3;
   /** ob ECI velocity Y (km/sec) in TEME of Date */
   public static final int XA_OBPV_VELY     =  4;
   /** ob ECI velocity Z (km/sec) in TEME of Date */
   public static final int XA_OBPV_VELZ     =  5;
   /** ob time in days since 1950, UTC */
   public static final int XA_OBPV_TIME     =  6;
   
   /** the last available index */
   public static final int XA_OBPV_END      = 15;
   public static final int XA_OBPV_SIZE     = 16;
   
   // Satellite state data
   /** satellite ECI position X (km) in TEME of Date */
   public static final int XA_SATPV_POSX    =  0;
   /** satellite ECI position Y (km) in TEME of Date */
   public static final int XA_SATPV_POSY    =  1;
   /** satellite ECI position Z (km) in TEME of Date */
   public static final int XA_SATPV_POSZ    =  2;
   /** satellite ECI velocity X (km/sec) in TEME of Date */
   public static final int XA_SATPV_VELX    =  3;
   /** satellite ECI velocity Y (km/sec) in TEME of Date */
   public static final int XA_SATPV_VELY    =  4;
   /** satellite ECI velocity Z (km/sec) in TEME of Date */
   public static final int XA_SATPV_VELZ    =  5;
   
   /** the last available index */
   public static final int XA_SATPV_END     = 15;
   public static final int XA_SATPV_SIZE    = 16;
   
   
   // Obs residual data field indexes
   /** Azimuth residual (deg) */
   public static final int XA_OBSRES_AZ     =  0;
   /** Elevation residual (deg) */
   public static final int XA_OBSRES_EL     =  1;
   /** Range residual (km) */
   public static final int XA_OBSRES_RANGE  =  2;
   /** Height residual (deg) */
   public static final int XA_OBSRES_HEIGHT =  3;
   /** Beta residual (deg). asin(dot(priU, secW)) */
   public static final int XA_OBSRES_BETA   =  4;
   /** Delta T residual (min) */
   public static final int XA_OBSRES_DELTAT =  5;
   /** Vector magnitude (km) */
   public static final int XA_OBSRES_VMAG   =  6;
   /** Time since epoch (days) */
   public static final int XA_OBSRES_AGE    =  7;
   /** True argument of latitude (deg) */
   public static final int XA_OBSRES_SU     =  8;
   /** Revolution number */
   public static final int XA_OBSRES_REVNUM =  9;
   /** Range rate residual (km/sec) */
   public static final int XA_OBSRES_RNGRATE= 10;
   /** Observation ASTAT */
   public static final int XA_OBSRES_ASTAT  = 11;
   /** Observation type */
   public static final int XA_OBSRES_OBSTYPE= 12;
   /** Satellite true anomaly (deg) */
   public static final int XA_OBSRES_SATANOM= 13;
   /** Satellite elevation (deg) */
   public static final int XA_OBSRES_SATELEV= 14;
   /** Satellite maintenance category */
   public static final int XA_OBSRES_SATCAT = 15;
   /** Obs time in ds50UTC */
   public static final int XA_OBSRES_OBSTIME= 16;
   /** Obs azimuth (deg) */
   public static final int XA_OBSRES_OBSAZ  = 17;
   /** Obs elevation (deg) */
   public static final int XA_OBSRES_OBSEL  = 18;
   /** Velocity angle residual (deg) */
   public static final int XA_OBSRES_VELANG = 19;
   /** Angular momentum residual (deg).  acos(dot(priW, secW)) */
   public static final int XA_OBSRES_ANGMOM = 20;
   /** Right ascension residual (deg) (for ob types 5, 9, 19) */
   public static final int XA_OBSRES_RA     = 21;
   /** Declination residual (deg) (for ob types 5, 9, 19) */
   public static final int XA_OBSRES_DEC    = 22;
   /** Delta X position (km) */
   public static final int XA_OBSRES_POSX   = 23;
   /** Delta Y position (km) */
   public static final int XA_OBSRES_POSY   = 24;
   /** Delta Z position (km) */
   public static final int XA_OBSRES_POSZ   = 25;
   /** Delta X velocity (km/sec) */
   public static final int XA_OBSRES_VELX   = 26;
   /** Delta Y velocity (km/sec) */
   public static final int XA_OBSRES_VELY   = 27;
   /** Delta Z velocity (km/sec) */
   public static final int XA_OBSRES_VELZ   = 28;
   /** Angle only - Obs computed range (km) */
   public static final int XA_OBSRES_OBSRNG = 29;
   
   /** Obs right ascension (deg) */
   public static final int XA_OBSRES_OBSRA  = 30;
   /** Obs declination (deg) */
   public static final int XA_OBSRES_OBSDEC = 31;
   /** Delta east longitude (deg) */
   public static final int XA_OBSRES_LON    = 32;
   
   /** Delta U position (km) */
   public static final int XA_OBSRES_POSU   = 33;
   /** Delta V position (km) */
   public static final int XA_OBSRES_POSV   = 34;
   /** Delta W position (km) */
   public static final int XA_OBSRES_POSW   = 35;
   /** 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1) */
   public static final int XA_OBSRES_CHI    = 36;
   
   /** Angular Separation between Obs and State (Deg) */
   public static final int XA_OBSRES_ANGSEP = 38;
   /** TDOA Time Difference of Arrival residual (nano-second) */
   public static final int XA_OBSRES_TDOA   = 39;
   /** FDOA Frequency Differecnce of Arrival (Hz) */
   public static final int XA_OBSRES_FDOA   = 40;
   
   public static final int XA_OBSRES_SIZE   =100;
   
   // Indexes of Rotas Control parameter fields (Rotas P-Card)
   /** Rotas processing mode */
   public static final int XF_RP_MODE       =  1;
   /** Gross Beta limit (deg) */
   public static final int XF_RP_GROSSBETA  =  2;
   /** ASTAT 0 Beta limit (deg) */
   public static final int XF_RP_BETALIM    =  3;
   /** ASTAT 0 delta-t limit (min) */
   public static final int XF_RP_DELTATLIM  =  4;
   /** ASTAT 0 delta-height limit (km) */
   public static final int XF_RP_DELTAHLIM  =  5;
   /** ASTAT 2 multiplier */
   public static final int XF_RP_ASTAT2MULT =  6;
   /** Residual print flag */
   public static final int XF_RP_PRTFLAG    =  7;
   /** Retag ASTAT 1 ob flag */
   public static final int XF_RP_RETAGFLAG  =  8;
   /** Light-time correction flag */
   public static final int XF_RP_LTC        =  9;
   /** Maximum number of ALLEL assoc's to compute */
   public static final int XF_RP_NUMASSOC   = 10;
   /** Diagnostic print flag */
   public static final int XF_RP_DIAGNOSTIC = 11;
   /** Covariance print flag */
   public static final int XF_RP_PRTCOV     = 12;
   /** Perform track processing */
   public static final int XF_RP_TRACKFLAG  = 13;
   /** Retagged ob are removed from further association */
   public static final int XF_RP_REMRETAG   = 14;
   /** Debias ob flag */
   public static final int XF_RP_DEBIAS     = 15;
   /** Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default) */
   public static final int XF_RP_RESCOMPMETH= 16;
   
   // ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
   /** Gross Beta limit (deg) */
   public static final int XA_RT_PARMS_GROSSBETA   =  1;
   /** ASTAT 0 Beta limit (deg) */
   public static final int XA_RT_PARMS_BETALIM     =  2;
   /** ASTAT 0 delta-t limit (min) */
   public static final int XA_RT_PARMS_DELTATLIM   =  3;
   /** ASTAT 0 delta-height limit (km) */
   public static final int XA_RT_PARMS_DELTAHLIM   =  4;
   /** ASTAT 2 multiplier */
   public static final int XA_RT_PARMS_ASTAT2MULT  =  5;
   /** Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly */
   public static final int XA_RT_PARMS_LTC         =  6;
   /** debias ob flag: 0= do not debias, 1= debias ob */
   public static final int XA_RT_PARMS_DEBIAS      =  7;
   /** Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default) */
   public static final int XA_RT_PARMS_RESCOMPMETH =  8;
   /** Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction */
   public static final int XA_RT_PARMS_ANNUALAB	   =  9;
   /** Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction */
   public static final int XA_RT_PARMS_DIURNALAB   = 10;
   public static final int XA_RT_PARMS_SIZE        = 16;
   
   // ROTAS Association Multipliers
   /** ASTAT 1 Beta multiplier for Synchronous */
   public static final int XA_ASSOCMULTP_BETA_SYN   =  0;
   /** ASTAT 1 Delta-t multiplier for Synchronous */
   public static final int XA_ASSOCMULTP_DELTAT_SYN =  1;
   /** ASTAT 1 Delta-height multiplier for Synchronous */
   public static final int XA_ASSOCMULTP_DELTAH_SYN =  2;
   /** ASTAT 1 Beta multiplier for Deep-space */
   public static final int XA_ASSOCMULTP_BETA_DS    =  3;
   /** ASTAT 1 Delta-t multiplier for Deep-space */
   public static final int XA_ASSOCMULTP_DELTAT_DS  =  4;
   /** ASTAT 1 Delta-height multiplier for Deep-space */
   public static final int XA_ASSOCMULTP_DELTAH_DS  =  5;
   /** ASTAT 1 Beta multiplier for Decaying */
   public static final int XA_ASSOCMULTP_BETA_DCY   =  6;
   /** ASTAT 1 Delta-t multiplier for Decaying */
   public static final int XA_ASSOCMULTP_DELTAT_DCY =  7;
   /** ASTAT 1 Delta-height multiplier for Decaying */
   public static final int XA_ASSOCMULTP_DELTAH_DCY =  8;
   /** ASTAT 1 Beta multiplier for Routine */
   public static final int XA_ASSOCMULTP_BETA_RTN   =  9;
   /** ASTAT 1 Delta-t multiplier for Routine */
   public static final int XA_ASSOCMULTP_DELTAT_RTN = 10;
   /** ASTAT 1 Delta-height multiplier for Routine */
   public static final int XA_ASSOCMULTP_DELTAH_RTN = 11;
   
   public static final int XA_ASSOCMULTP_SIZE       = 12;
   
// ========================= End of auto generated code ==========================
}
