package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.util.Date;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;

public class SrvRotas
{
	// Residual print flag
	static int
			PRINT_ALL         =  1,    // print all residuals
			PRINT_ASTAT_01    =  2,    // print ASTAT 0s, and 1s only
			PRINT_NO          =  3,    // print no residuals
			PRINT_ASTAT_012   =  4;    // print ASTAT 0s, 1s, and 2s

	/**
	 * Prints the Rotas Information Header
	 * @param fpOut			The BufferedWriter carrying the file to write to
	 * @param useNewFormat	A boolean value indicating if the printout should use more decimal places or not
	 * @throws IOException
	 */
	public static void PrintRotasHeader(BufferedWriter fpOut, boolean useNewFormat) throws IOException
	{
		if (useNewFormat) // print more decimal places
		{
			fpOut.write(" A  NEW   OLD  STA  DATE   TIME          REV  U  O    DELTA    BETA      DELTA    RANGE     RA        DEC        VECTOR ORB  AGE   OBS P\n");
			fpOut.write(" S  SAT   SAT  NO.  YY DDD HHMM SS.SSS   NO. DEG T    T MIN     DEG      H  KM   RES KM    RES DEG   RES DEG     MAG KM CLS  DAYS  NO. R\n");
			fpOut.write("========================================================================================================================================\n");
		}
		else // print less decimal places
		{
			fpOut.write(" A  NEW   OLD  STA  DATE   TIME          REV  U  O    DELTA    BETA      DELTA    RANGE   RA      DEC        VECTOR ORB  AGE   OBS P\n");
			fpOut.write(" S  SAT   SAT  NO.  YY DDD HHMM SS.SSS   NO. DEG T    T MIN     DEG      H  KM   RES KM  RES DEG RES DEG     MAG KM CLS  DAYS  NO. R\n");
			fpOut.write("====================================================================================================================================\n");
		}
	}

	/**
	 * Prints a "No Matching Elset" message for an obs record and corresponding satellite and sensor
	 * @param fpOut			The BufferedWriter carrying the file to write to
	 * @param obs			The ObsRecord object carrying obs information
	 * @param obsNum		The observation's number
	 * @param useNewFormat	A boolean value indicating if the printout should use more decimal places or not
	 * @throws IOException
	 */
	public static void PrintNoMatchingElset(BufferedWriter fpOut, SrvObs.ObsRecord obs, int obsNum, boolean useNewFormat) throws IOException
	{
		byte[]  errMsg = new byte[Utility.LOGMSGLEN];

		JniDllMain.GetLastErrMsg(errMsg);
		errMsg[78] = 0;

		String formatStr;

		if (useNewFormat)
			formatStr = "   %s %5d %3d  %s <<< %-82s >>>%5d\n";
		else
			formatStr = "   %s %5d %3d  %s <<< %-78s >>>%5d\n";

		fpOut.write(String.format(formatStr,
				"%%%%%",
				obs.getSatNum(),
				obs.getSenNum(),
				SrvTimeFunc.UTCToDtg18Str(obs.getObsTimeDs50UTC()),
				"N O   M A T C H I N G   E L S E T",
				obsNum));
	}

	/**
	 * Prints the last error message from Rotas to a file
	 * @param fpOut			The BufferedWriter carrying the file to write to
	 * @param obs			The ObsRecord object carrying obs information
	 * @param obsNum		The observation's number
	 * @param useNewFormat	A boolean value indicating if the printout should use more decimal places or not
	 * @throws IOException
	 */
	public static void PrintRotasError(BufferedWriter fpOut, SrvObs.ObsRecord obs, int obsNum, boolean useNewFormat) throws IOException
	{
		byte[]  errMsg = new byte[Utility.LOGMSGLEN];

		JniDllMain.GetLastErrMsg(errMsg);
		errMsg[78] = 0;

		String formatStr;

		if (useNewFormat)
			formatStr = "   %s %5d %3d  %s <<< %82s >>>%5d\n";
		else
			formatStr = "   %s %5d %3d  %s <<< %78s >>>%5d\n";

		fpOut.write(String.format(formatStr,
				"%%%%%",
				obs.getSatNum(),
				obs.getSenNum(),
				SrvTimeFunc.UTCToDtg18Str(obs.getObsTimeDs50UTC()),
				Utility.BytesToString(errMsg),
				obsNum));
	}

	/**
	 * Determines the ASTAT format to print based on the print flag
	 * @param prtFlag	The int indication the print flag
	 * @return			Returns an integer relating to the ASTAT print format. -1 if no residuals.
	 */
	public static int MaxPrintASTAT(int prtFlag)
	{
		if(prtFlag == PRINT_ALL)
			return 4;
		else if(prtFlag == PRINT_ASTAT_01)
			return 1;
		else if(prtFlag == PRINT_ASTAT_012)
			return 2;
		else
			return -1; // print no residuals
	}

	/**
	 * Prints obs information when that ob is too far from epoch
	 * @param fpOut			The BufferedWriter carrying the file to write to
	 * @param obs			The ObsRecord object carrying obs information
	 * @param obsNum		The observation's number
	 * @param useNewFormat	A boolean value indicating if the printout should use more decimal places or not
	 * @throws IOException
	 */
	public static void PrintBadObs(BufferedWriter fpOut, SrvObs.ObsRecord obs, int obsNum, boolean useNewFormat) throws IOException
	{
		String formatStr;

		if (useNewFormat)
			formatStr = " %1d %5d %5d %3d  %s %-90s%5d\n";
		else
			formatStr = " %1d %5d %5d %3d  %s %-86s%5d\n";

		fpOut.write(String.format(formatStr,
				4,
				80000,
				obs.getSatNum(),
				obs.getSenNum(),
				SrvTimeFunc.UTCToDtg18Str(obs.getObsTimeDs50UTC()),
				"*** OB TOO FAR FROM EPOCH ***",
				obsNum));
	}

	/**
	 * Prints observation information for obs that did not associate
	 * @param fpOut			The BufferedWriter carrying the file to write to
	 * @param obs			The ObsRecord object carrying obs information
	 * @param obsNum		The observation's number
	 * @param useNewFormat	A boolean value indicating if the printout should use more decimal places or not
	 * @throws IOException
	 */
	public static void PrintNotAssociateObs(BufferedWriter fpOut, SrvObs.ObsRecord obs, int obsNum, boolean useNewFormat) throws IOException
	{
		String formatStr;

		if (useNewFormat)
			formatStr = " %1d %5d %5d %3d  %s %-90s%5d\n";
		else
			formatStr = " %1d %5d %5d %3d  %s %-86s%5d\n";


		fpOut.write(String.format(formatStr,
				4,
				80000,
				obs.getSatNum(),
				obs.getSenNum(),
				SrvTimeFunc.UTCToDtg18Str(obs.getObsTimeDs50UTC()),
				"*** DID NOT ASSOCIATE ***",
				obsNum));
	}

	/**
	 * Creates and returns the default the Residuals Object
	 * @return	The generated Residuals object
	 */
	public static Residuals GetObsResiduals()
	{
		return new Residuals();
	}

	/**
	 * A Residuals Object designed to carry data for the Obs Residuals
	 */
	public static class Residuals
	{
		private int     ErrCode;
		private double  Azimuth;            // Azimuth residual (deg)
		private double  Elevation;          // Elevation residual (deg)
		private double  RightAscension;     // Right ascension residual (deg)
		private double  Declination;        // Declination residual (deg)
		private double  Range;              // Range residual (km)
		private double  RangeRate;          // Range rate residual (km/sec)
		private double  Height;             // Height residual (deg)
		private double  Beta;               // Beta residual (deg)
		private double  DeltaT;             // Delta T residual (min)
		private double  VMag;               // Vector magnitude (km)
		private double  Age;                // Time since epoch (days)
		private double  RevNum;             // Revolution number
		private double  VelAngle;           // Velocity angle residual (deg)
		private double  AngularMomentum;    // Angular momentum residual (deg)


		private long SatKey;
		private long ObsKey;
		private long SenKey;

		private double ObsTimeDs50UTC;      // Observation time in days since 1950 UTC
		private double SatArgOfLatitude;    // True argument of latitude (deg)
		private double SatTrueAnomaly;      // Satellite true anomaly (deg)
		private double SatElevation;        // Satellite elevation (deg)
		private double SatLon;              // Satellite geodetic longitude (deg)


		private int ObsType;                // Observation type
		private int SatCat;                 // Satellite maintenance category
		private int ASTAT;                  // Observation ASTAT

		/**
		 * The Default constructor
		 */
		public Residuals()
		{
			ErrCode				= 0;
			ASTAT              	= 0;


			Azimuth            = 0;
			Elevation          = 0;
			RightAscension     = 0;
			Declination        = 0;
			Range              = 0;
			Height             = 0;
			Beta               = 0;
			DeltaT             = 0;
			VMag               = 0;
			Age                = 0;
			SatArgOfLatitude   = 0;
			RevNum             = 0;
			RangeRate          = 0;
			SatTrueAnomaly     = 0;
			SatElevation       = 0;
			ObsType            = 0;
			ASTAT              = 0;
			SatCat             = 0;

			ObsKey             = 0;
			SatKey             = 0;
			ObsTimeDs50UTC     = 0;

			VelAngle           = 0;
			AngularMomentum    = 0;
		}

		/**
		 * Creates a new Residuals Object with new Residuals Data using the ComputeObsResiduals method
		 * @param obsKey	The obsKey for the current obs
		 * @param satKey	The satKay for the current satellite
		 */
		public void CreateResidualsObject(long obsKey, long satKey)
		{
			double[] obsResArr = new double[JniRotas.XA_OBSRES_SIZE];
			double[] satElts = new double[9];
			double[] obElts = new double[9];
			ErrCode = JniRotas.RotasComputeObsResiduals(obsKey, satKey, obsResArr, satElts, obElts);
			PopulateResidualsObject(obsKey, satKey, obsResArr);
		}

		/**
		 * Populates the Residuals object with the data stored in the residuals array
		 * @param obsKey	The obsKey for the current obs
		 * @param satKey	The satKey for the current satellite
		 * @param resArr	The double array storing the Residuals data
		 */
		public void PopulateResidualsObject(long obsKey, long satKey, double[] resArr)
		{
			ASTAT              = (int)resArr[JniRotas.XA_OBSRES_ASTAT];
			if (ErrCode != 0 || ASTAT > 4)
			{
				return;
			}

			Azimuth            = resArr[JniRotas.XA_OBSRES_AZ];
			Elevation          = resArr[JniRotas.XA_OBSRES_EL];
			RightAscension     = resArr[JniRotas.XA_OBSRES_RA];
			Declination        = resArr[JniRotas.XA_OBSRES_DEC];
			Range              = resArr[JniRotas.XA_OBSRES_RANGE];
			Height             = resArr[JniRotas.XA_OBSRES_HEIGHT];
			Beta               = resArr[JniRotas.XA_OBSRES_BETA];
			DeltaT             = resArr[JniRotas.XA_OBSRES_DELTAT];
			VMag               = resArr[JniRotas.XA_OBSRES_VMAG];
			Age                = resArr[JniRotas.XA_OBSRES_AGE];
			SatArgOfLatitude   = resArr[JniRotas.XA_OBSRES_SU];
			RevNum             = resArr[JniRotas.XA_OBSRES_REVNUM];
			RangeRate          = resArr[JniRotas.XA_OBSRES_RNGRATE];
			SatTrueAnomaly     = resArr[JniRotas.XA_OBSRES_SATANOM];
			SatElevation       = resArr[JniRotas.XA_OBSRES_SATELEV];
			ObsType            = (int)resArr[JniRotas.XA_OBSRES_OBSTYPE];
			SatCat             = (int)resArr[JniRotas.XA_OBSRES_SATCAT];

			ObsKey             = obsKey;
			SatKey             = satKey;
			ObsTimeDs50UTC     = resArr[JniRotas.XA_OBSRES_OBSTIME];

			VelAngle           = resArr[JniRotas.XA_OBSRES_VELANG];
			AngularMomentum    = resArr[JniRotas.XA_OBSRES_ANGMOM];
		}

		public void PrintObsResiduals(BufferedWriter fpOut, SrvObs.ObsRecord obs, int obsNum, boolean useNewFormat) throws IOException
		{
			String[] SATCAT = {"SYN", "D-S", "DEC", "ROU"};

			String formatStr;
			int propType = SrvSatState.GetPropType(SatKey);
			char propTypeChar;
			boolean isRangeComputed;
			int isHigherPrecision = 1;

			// DHN 15Apr15 - obsType 18 and 19 are not considered as angle-only obs
			if (ObsType == 1 || ObsType == 5 || ObsType % 10 == 8 || ObsType % 10 == 9)
				isRangeComputed = true;
			else
				isRangeComputed = false;


			if (propType == JniDllMain.PROPTYPE_GP)
				propTypeChar = 'G';
			else if (propType == JniDllMain.PROPTYPE_SP)
				propTypeChar = 'S';
			else if (propType == JniDllMain.PROPTYPE_X)
				propTypeChar = 'X';
			else
				propTypeChar = ' ';

			//if(residuals->SatCat < 1 || residuals->SatCat > 4)
			if(SatCat < 0 || SatCat > 4)
			{
				System.out.println("invalid satcat\n");
				System.exit(1);
			}

			if (useNewFormat)
				formatStr = " %1d %5d %5d %3d  %s %5f %3f %1d%9.4f%9.4f%10.3f%9.1f%c%10.5f%10.5f%11.3f %3s%6.2f%5d %c\n";
			else
				formatStr = " %1d %5d %5d %3d  %s %5f %3f %1d%9.4f%9.4f%10.3f%9.1f%c%8.3f%8.3f%11.3f %3s%6.2f%5d %c\n";

			fpOut.write(String.format(formatStr,
					ASTAT,
					JniElOps.SatNumOf(SatKey),
					obs.getSatNum(),
					obs.getSenNum(),
					SrvTimeFunc.UTCToDtg18Str(obs.getObsTimeDs50UTC()),
					RevNum,
					SatArgOfLatitude,
					ObsType,
					SrvDllMain.NonNegativeZero(DeltaT, 4),
					SrvDllMain.NonNegativeZero(Beta, 4),
					SrvDllMain.NonNegativeZero(Height, 3),
					SrvDllMain.NonNegativeZero(Range, 1),
					isRangeComputed ? 'C' : ' ',
					SrvDllMain.NonNegativeZero(RightAscension, 5),
					SrvDllMain.NonNegativeZero(Declination, 5),
					SrvDllMain.NonNegativeZero(VMag, 3),
					SATCAT[SatCat - 1],
					SrvDllMain.NonNegativeZero(Age, 2),
					obsNum,
					propTypeChar));
		}

		/**
		 * These functions retrieve the various ObsResiduals parameters. They are documented
		 * once here instead of individually since the documentation block would be
		 * similar for all of them.
		 *
		 * Return Value
		 * the requested data. We express these values as standard Java types, not JNA
		 * objects. The type varies depending on the control parameter being retrieved.
		 */
		//Getters

		public int getErrCode() {
			return ErrCode;
		}

		public double getAzimuth() {
			return Azimuth;
		}

		public double getElevation() {
			return Elevation;
		}

		public double getRightAscension() {
			return RightAscension;
		}

		public double getDeclination() {
			return Declination;
		}

		public double getRange() {
			return Range;
		}

		public double getRangeRate() {
			return RangeRate;
		}

		public double getHeight() {
			return Height;
		}

		public double getBeta() {
			return Beta;
		}

		public double getDeltaT() {
			return DeltaT;
		}

		public double getVMag() {
			return VMag;
		}

		public double getAge() {
			return Age;
		}

		public double getRevNum() {
			return RevNum;
		}

		public double getVelAngle() {
			return VelAngle;
		}

		public double getAngularMomentum() {
			return AngularMomentum;
		}

		public long getSatKey() {
			return SatKey;
		}

		public long getObsKey() {
			return ObsKey;
		}

		public double getObsTimeDs50UTC() {
			return ObsTimeDs50UTC;
		}

		public double getSatArgOfLatitude() {
			return SatArgOfLatitude;
		}

		public double getSatTrueAnomaly() {
			return SatTrueAnomaly;
		}

		public double getSatElevation() {
			return SatElevation;
		}

		public double getSatLon() {
			return SatLon;
		}

		public int getObsType() {
			return ObsType;
		}

		public int getSatCat() {
			return SatCat;
		}

		public int getASTAT() {
			return ASTAT;
		}
	}

	/**
	 * The Rotas Control Object carrying the Rotas Control parameters
	 */
	public static class RotasControl
	{
		static int
				RETAG_B3_ASTAT0_1  = 1,    // Retag ASTAT 0s and 1s to B3 obs file
				RETAG_TTY_ASTAT0_1 = 2,    // Retag ASTAT 0s and 1s to TTY obs file
				RETAG_B3_ASTAT0_2  = 3;    // Retag ASTAT 0s and 2s to B3 obs file

		//Rotas Control Variables
		private byte[]   rotasMode = new byte[6];
		private double 	grossBeta;
		private double 	betaLimit;
		private double 	deltaTLimit;
		private double 	deltaHLimit;
		private int    	astat2Mult;
		private int    	prtFlag;
		private int    	retagFlag;
		private int    	ltcFlag;
		private int    	maxNumAssoc;
		private int    	debiasFlag;
		private int    	diagMode;
		private int    	covPrtFlag;
		private int    	isTrackMode;
		private int    	remRetagObs;

		/**
		 * Default Constructor
 		 */
		public RotasControl() {

			//Control Reference Variables
			double[] grossBeta = new double [1];
			double[] betaLimit = new double [1];
			double[] deltaTLimit = new double [1];
			double[] deltaHLimit = new double [1];
			int[] astat2Mult = new int [1];
			int[] prtFlag = new int [1];
			int[] retagFlag = new int [1];
			int[] ltcFlag = new int [1];
			int[] maxNumAssoc = new int [1];
			int[] debiasFlag = new int [1];
			int[] diagMode = new int [1];
			int[] covPrtFlag = new int [1];
			int[] isTrackMode = new int [1];
			int[] remRetagObs = new int [1];

			double[] extArr = new double[128];
			JniRotas.RotasGetPAll(rotasMode,
				grossBeta,
                betaLimit,
                deltaTLimit,
                deltaHLimit,
                astat2Mult,
                prtFlag,
                retagFlag,
                ltcFlag,
                maxNumAssoc,
                debiasFlag,
                diagMode,
                covPrtFlag,
                isTrackMode,
                remRetagObs,
					extArr);

			rotasMode[5] = 0;
			setGrossBeta(grossBeta[0]);
			setBetaLimit(betaLimit[0]);
			setDeltaTLimit(deltaTLimit[0]);
			setDeltaHLimit(deltaHLimit[0]);
			setAstat2Mult(astat2Mult[0]);
			setPrtFlag(prtFlag[0]);
			setRetagFlag(retagFlag[0]);
			setLtcFlag(ltcFlag[0]);
			setMaxNumAssoc(maxNumAssoc[0]);
			setDebiasFlag(debiasFlag[0]);
			setDiagMode(diagMode[0]);
			setCovPrtFlag(covPrtFlag[0]);
			setIsTrackMode(isTrackMode[0]);
			setRemRetagObs(remRetagObs[0]);
		}

		/**
		 * Prints the formated Rotas Control data
		 * @param fpOut		The BufferedWriter carrying the file to write to
		 * @throws IOException
		 */
		public void PrintRotasCtrls(BufferedWriter fpOut) throws IOException
		{
			String[] rotasModes = {"TAG  - associate vs tag on obs (verify) ",
				"FTAG - force assoc of obs vs all elsets ",
				"ALLEL - find best associations (RETAG)  "};

			String[] printModes = {"print all residuals           ",
				"print ASTAT 1 residuals only  ",
				"print no residuals            ",
				"print ASTAT 1/2 residuals only"};

			String[] retagModes = {"do not retag any obs             ",
				"retag on ASCII file in B3 format ",
				"retag on ASCII file in TTY format"};

			String[] ltcModes = {"not applied         ",
				"applied analytically",
				"applied exactly     "};

			String[] debugModes = {"no debug prints        ",
				"print debug information"};


			String dashLine  = "-------------------------------------------------------------------------------";
			String ddashLine = "===============================================================================";
			int  modeIdx, debugIdx;


			fpOut.write(String.format(" %s\n", ddashLine));
			fpOut.write( " |                          R O T A S   O P T I O N S                          |\n");
			fpOut.write(String.format(" %s\n", dashLine));

			modeIdx = 0;

			if(Utility.BytesToString(rotasMode).equals("TAG"))
				modeIdx = 0;
			else if(Utility.BytesToString(rotasMode).equals("FTAG"))
				modeIdx = 1;
			else if(Utility.BytesToString(rotasMode).equals("ALLEL"))
				modeIdx = 2;

			if(getDiagMode() > 0)
				debugIdx = 1;
			else
				debugIdx = 0;

			fpOut.write(String.format("%s %-43s|\n",
					" |  A.  ROTAS MODE:                ", rotasModes[modeIdx]));
			if(modeIdx == 2)
				fpOut.write(String.format("%s %-2d%41s|\n",
						" |      > MAX # ASSOCIATIONS:      ", maxNumAssoc, " "));
			fpOut.write(String.format("%s %7.3f degrees%28s|\n",
					" |  B.  GROSS BETA LIMIT:          ", grossBeta, " "));
			fpOut.write(String.format("%s %7.3f degrees%28s|\n",
					" |  C.  ASTAT 0 BETA LIMIT:        ", betaLimit, " "));
			fpOut.write(String.format("%s %7.3f minutes%28s|\n",
					" |  D.  ASTAT 0 DELTA-T LIMIT:     ", deltaTLimit, " "));
			fpOut.write(String.format("%s %7.3f km%33s|\n",
					" |  E.  ASTAT 0 DELTA-H LIMIT:     ", deltaHLimit, " "));
			fpOut.write(String.format("%s %1d%42s|\n",
					" |  F.  ASTAT 2 MULTIPLIER:        ", astat2Mult, " "));
			fpOut.write(String.format("%s %-43s|\n",
					" |  G.  RESIDUAL PRINT FLAG:       ", printModes[prtFlag - 1]));
			fpOut.write(String.format("%s %-43s|\n",
					" |  H.  ASTAT 1 RETAG DISPOSITION: ", retagModes[retagFlag]));
			fpOut.write(String.format("%s %-43s|\n",
					" |  K.  LIGHT-TIME CORRECTION:     ", ltcModes[ltcFlag]));
			fpOut.write(String.format("%s %-43s|\n",
					" |  L.  TRACK PROCESSING?          ", isTrackMode  == 1 ? "yes" : "no "));
			fpOut.write(String.format("%s %-43s|\n",
					" |  M.  PRINT COVARIANCE?          ", covPrtFlag == 1 ? "yes" : "no "));
			fpOut.write(String.format("%s %-43s|\n",
					" |  Z.  DIAGNOSTIC PRINT OPTION:   ", debugModes[debugIdx]));

			fpOut.write(String.format(" %s\n\n", ddashLine));
		}

		/**
		 * Prints the associated multpliers
		 * @param fpOut		The BufferedWriter carrying the file to write to
		 * @throws IOException
		 */
		public void PrintAssocMultipliers(BufferedWriter fpOut) throws IOException
		{
			String[] multStrs = { "BETA", "DELTA-T", "DELTA-HT" };
			int i, j, k;
			int[] assocMultArr = new int[12];

			fpOut.write("              ASTAT 1 ASSOCIATION MULTIPLIERS:\n");
			fpOut.write(" ========================================================\n");
			fpOut.write("             SYNCHRON    DEEP-SPC    DECAYING     ROUTINE\n");
			fpOut.write(" --------------------------------------------------------\n");

			JniRotas.RotasGetAssocMultipliers(assocMultArr);


			for (i = 0; i < 3; i++)
			{
				k = i;
				fpOut.write(String.format("  %-9s   ", multStrs[i]));
				for (j = 0; j < 4; j++)
				{
					fpOut.write(String.format("%7d     ", assocMultArr[k]));
					k += 3;
				}
				fpOut.write("\n");
			}
			fpOut.write(" ========================================================\n\n\n");
		}

		/**
		 * Check to see if the current obs meets the user's request for retag
		 * @param ASTAT		The ASTAT integer that determines the request for retag
		 * @return			Returns 1 if the program should retag. Returns 0 otherwise.
		 */
		public int OKToRetag(int ASTAT)
		{
			if(retagFlag == RETAG_B3_ASTAT0_1 && ASTAT <= 1)
				return 1;
			else if(retagFlag == RETAG_B3_ASTAT0_2 && ASTAT <= 2)
				return 1;
			else if(retagFlag == RETAG_TTY_ASTAT0_1 && ASTAT <= 1)
				return 1;
			else
				return 0;
		}

		/**
		 * Write the retagged obs (modified obs) to the specified output file
		 * @param fpOut		The BufferedWriter carrying the file to print to
		 * @param obsKey	The obs key of the ob that should be retagged
		 * @param newTag	The new tag information
		 * @param ASTAT		The ASTAT value used in the retag
		 * @throws IOException
		 */
		public void DoRetagObs(BufferedWriter fpOut, long obsKey, int newTag, int ASTAT) throws IOException
		{
			byte[] ttyCard1 = new byte[Utility.INPUTCARDLEN];
			byte[] ttyCard2 = new byte[Utility.INPUTCARDLEN];
			byte[] b3Card = new byte[Utility.INPUTCARDLEN];
			byte[] satNumStr = new byte[6];

			// new tag
			ByteBuffer b = ByteBuffer.allocate(5);
			b.putInt(newTag);
			satNumStr = b.array();

			System.out.println(Utility.BytesToInt(satNumStr));


			// Retag obs in B3 format
			if(retagFlag == RETAG_B3_ASTAT0_1 || retagFlag == RETAG_B3_ASTAT0_2)
			{
				// retrieve B3 card of the obs
				JniObs.ObsGetB3Card(obsKey, b3Card);

				//.. and change tag
				for(int i = 1; i < 6; i++)
					b3Card[i] = satNumStr[i-1];

				//... and change ASTAT
				b3Card[79] = (byte)('0' + ASTAT);

				b3Card[90] = 0; // nullify B3 card

				// write modified obs to the output file
				System.out.printf("%s\n", Utility.BytesToString(b3Card));
				fpOut.write(String.format("%s\n", Utility.BytesToString(b3Card)));
			}
			// Retag obs in TTY format
			else if(retagFlag == RETAG_TTY_ASTAT0_1)
			{
				// retrieve TTY card of the obs
				JniObs.ObsGetTTYCard(obsKey, ttyCard1, ttyCard2);
				ttyCard1[90] = 0;
				ttyCard2[90] = 0;

				//... and change tag
				int k = 0;
				for(int i = 11; i < 16; i++) {
					ttyCard1[i] = satNumStr[k];
					k++;
				}

				// write modified obs to the output file
				System.out.printf("%s\n", Utility.BytesToString(ttyCard1));
				fpOut.write(String.format("%s\n", Utility.BytesToString(ttyCard1)));

				// if second line is also available, write it to the output file as well
				if(ttyCard2[0] != 0 && ttyCard2[0] != ' ')
					fpOut.write(String.format("%s\n", Utility.BytesToString(ttyCard2)));
			}
		}

		/**
		 * These functions retrieve and set the various Rotas Control parameters. They are documented
		 * once here instead of individually since the documentation block would be
		 * similar for all of them.
		 *
		 * Return Value
		 * the requested data. We express these values as standard Java types, not JNA
		 * objects. The type varies depending on the control parameter being retrieved.
		 */
		//Getters and Setters
		public byte[] getRotasMode() {
			return rotasMode;
		}

		public double getGrossBeta() {
			return grossBeta;
		}

		public void setGrossBeta(double grossBeta) {
			this.grossBeta = grossBeta;
		}

		public double getBetaLimit() {
			return betaLimit;
		}

		public void setBetaLimit(double betaLimit) {
			this.betaLimit = betaLimit;
		}

		public double getDeltaTLimit() {
			return deltaTLimit;
		}

		public void setDeltaTLimit(double deltaTLimit) {
			this.deltaTLimit = deltaTLimit;
		}

		public double getDeltaHLimit() {
			return deltaHLimit;
		}

		public void setDeltaHLimit(double deltaHLimit) {
			this.deltaHLimit = deltaHLimit;
		}

		public int getAstat2Mult() {
			return astat2Mult;
		}

		public void setAstat2Mult(int astat2Mult) {
			this.astat2Mult = astat2Mult;
		}

		public int getPrtFlag() {
			return prtFlag;
		}

		public void setPrtFlag(int prtFlag) {
			this.prtFlag = prtFlag;
		}

		public int getRetagFlag() {
			return retagFlag;
		}

		public void setRetagFlag(int retagFlag) {
			this.retagFlag = retagFlag;
		}

		public int getLtcFlag() {
			return ltcFlag;
		}

		public void setLtcFlag(int ltcFlag) {
			this.ltcFlag = ltcFlag;
		}

		public int getMaxNumAssoc() {
			return maxNumAssoc;
		}

		public void setMaxNumAssoc(int maxNumAssoc) {
			this.maxNumAssoc = maxNumAssoc;
		}

		public int getDebiasFlag() {
			return debiasFlag;
		}

		public void setDebiasFlag(int debiasFlag) {
			this.debiasFlag = debiasFlag;
		}

		public int getDiagMode() {
			return diagMode;
		}

		public void setDiagMode(int diagMode) {
			this.diagMode = diagMode;
		}

		public int getCovPrtFlag() {
			return covPrtFlag;
		}

		public void setCovPrtFlag(int covPrtFlag) {
			this.covPrtFlag = covPrtFlag;
		}

		public int getIsTrackMode() {
			return isTrackMode;
		}

		public void setIsTrackMode(int isTrackMode) {
			this.isTrackMode = isTrackMode;
		}

		public int getRemRetagObs() {
			return remRetagObs;
		}

		public void setRemRetagObs(int remRetagObs) {
			this.remRetagObs = remRetagObs;
		}
	}
}
