package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.util.Date;

import com.sun.jna.Library;
import com.sun.jna.Native;
import com.sun.jna.Platform;
import com.sun.jna.PointerType;
import com.sun.jna.ptr.ByteByReference;
import com.sun.jna.ptr.IntByReference;
import com.sun.jna.ptr.LongByReference;
import com.sun.jna.ptr.DoubleByReference;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;

public class SrvBatchDC
{
	/**
	 * Create GP TLE (ephType = 0) by using the data stored in the dcELts structure
	 * @param xai_dcElts	Array of integers containing resulting BatchDC data
	 * @param xar_dcElts	Array of doubles containing resulting BatchDC data
	 * @return				The generated TLE
	 */
	public static String[] CreateNewGpTle(int[] xai_dcElts, double[] xar_dcElts)
	{
		int ephType;
		IntByReference year = new IntByReference();
		DoubleByReference daysOfYear = new DoubleByReference();
		double n;
		double agomOrNdotsqr;
		byte[] line1 = new byte[JnaTle.XS_TLE_SIZE];
		byte[] line2 = new byte[JnaTle.XS_TLE_SIZE];

		JnaTimeFunc.UTCToYrDays(xar_dcElts[JnaBatchDC.XAR_DCELTS_EPOCHDS50UTC], year, daysOfYear);

		n = xar_dcElts[JnaBatchDC.XAR_DCELTS_EQNX_N]; // Brouwer mean motion


		if (xai_dcElts[JnaBatchDC.XAI_DCELTS_ORBTYPE] == JnaDllMain.ELTTYPE_TLE_XP) // XP
		{
			ephType = 4; // SGP4-XP DC
			agomOrNdotsqr = xar_dcElts[JnaBatchDC.XAR_DCELTS_AGOM];
		}
		else
		{
			ephType = 0; // SGP4 DC
			agomOrNdotsqr = xar_dcElts[JnaBatchDC.XAR_DCELTS_N2DOT];
			n = JnaAstroFunc.BrouwerToKozai(xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_E], xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_INCLI], n); // Kozai mean motion
		}

		// generate SP TLE from data fields
		JnaTle.TleGPFieldsToLines(xai_dcElts[JnaBatchDC.XAI_DCELTS_SATNUM], 'U', "GPDC", year.getValue(), daysOfYear.getValue(), xar_dcElts[JnaBatchDC.XAR_DCELTS_NDOT],
				agomOrNdotsqr, xar_dcElts[JnaBatchDC.XAR_DCELTS_BFIELD], ephType, xai_dcElts[JnaBatchDC.XAI_DCELTS_ELSETNUM],
				xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_INCLI], xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_NODE], xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_E],
				xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_OMEGA], xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_MA], n, xai_dcElts[JnaBatchDC.XAI_DCELTS_REVNUM], line1, line2);

		return new String[]{Utility.BytesToString(line1), Utility.BytesToString(line2)};
	}

	/**
	 * Create SP TLE (ephType = 6) by using the data stored in the dcELts structure
	 * @param xai_dcElts	Array of integers containing resulting BatchDC data
	 * @param xar_dcElts	Array of doubles containing resulting BatchDC data
	 * @return				The generated TLE
	 */
	public static String[] CreateNewSpTle(int[] xai_dcElts, double[] xar_dcElts)
	{
		IntByReference year = new IntByReference();
		DoubleByReference daysOfYear = new DoubleByReference();
		byte[] line1 = new byte[JnaTle.XS_TLE_SIZE];
		byte[] line2 = new byte[JnaTle.XS_TLE_SIZE];

		JnaTimeFunc.UTCToYrDays(xar_dcElts[JnaBatchDC.XAR_DCELTS_EPOCHDS50UTC], year, daysOfYear);

		// generate SP TLE from data fields
		JnaTle.TleSPFieldsToLines(xai_dcElts[JnaBatchDC.XAI_DCELTS_SATNUM], 'U', "SPDC", year.getValue(), daysOfYear.getValue(), xar_dcElts[JnaBatchDC.XAR_DCELTS_BFIELD],
				xar_dcElts[JnaBatchDC.XAR_DCELTS_OGPARM], xar_dcElts[JnaBatchDC.XAR_DCELTS_AGOM], xai_dcElts[JnaBatchDC.XAI_DCELTS_ELSETNUM],
				xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_INCLI], xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_NODE], xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_E],
				xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_OMEGA], xar_dcElts[JnaBatchDC.XAR_DCELTS_KEP_MA], xar_dcElts[JnaBatchDC.XAR_DCELTS_EQNX_N], xai_dcElts[JnaBatchDC.XAI_DCELTS_REVNUM],
				line1, line2);

		return new String[]{Utility.BytesToString(line1), Utility.BytesToString(line2)};
	}

	/**
	 * Create SPVEC by using the data stored in the dcElts structure
	 * @param xai_dcElts	Array of integers containing resulting BatchDC data
	 * @param xar_dcElts	Array of doubles containing resulting BatchDC data
	 * @return				The generated Sp Vector
	 */
	public static String[] CreateNewSpVec(int[] xai_dcElts, double[] xar_dcElts)
	{
		double[] pos = new double[3];
		double[] velMPS = new double[3];
		byte[] line1 = new byte[JnaSpVec.XS_SPVEC_SIZE];
		byte[] line2 = new byte[JnaSpVec.XS_SPVEC_SIZE];

		pos[0] = xar_dcElts[JnaBatchDC.XAR_DCELTS_POSX];
		pos[1] = xar_dcElts[JnaBatchDC.XAR_DCELTS_POSY];
		pos[2] = xar_dcElts[JnaBatchDC.XAR_DCELTS_POSZ];

		// SpVec takes velocity in m/s, need to convert vel from km/s to m/s
		velMPS[0] = xar_dcElts[JnaBatchDC.XAR_DCELTS_VELX] * 1000;
		velMPS[1] = xar_dcElts[JnaBatchDC.XAR_DCELTS_VELY] * 1000;
		velMPS[2] = xar_dcElts[JnaBatchDC.XAR_DCELTS_VELZ] * 1000;

		// generate osculating vector 1P/2P format
		JnaSpVec.SpVecFieldsToLines(pos, velMPS, 'U', xai_dcElts[JnaBatchDC.XAI_DCELTS_SATNUM], "SPDC", SrvTimeFunc.UTCToYYYYDDDHHMMSSsssStr(xar_dcElts[JnaBatchDC.XAR_DCELTS_EPOCHDS50UTC]),
				xai_dcElts[JnaBatchDC.XAI_DCELTS_REVNUM], xai_dcElts[JnaBatchDC.XAI_DCELTS_ELSETNUM], xar_dcElts[JnaBatchDC.XAR_DCELTS_BFIELD], xar_dcElts[JnaBatchDC.XAR_DCELTS_AGOM],
				xar_dcElts[JnaBatchDC.XAR_DCELTS_OGPARM], "TMDAT", line1, line2);

		return new String[]{Utility.BytesToString(line1), Utility.BytesToString(line2)};
	}

	/**
	 * Print acceptance criteria
	 * @param outFile	The Buffered writer with the file to write to
	 * @param satKey	The sat key for the current satellite
	 * @throws IOException
	 */
	public static void PrintAcceptCrit(BufferedWriter outFile, long satKey) throws IOException
	{
		double[] xa_ac = new double[JnaBatchDC.XA_AC_SIZE];

		JnaBatchDC.BatchDCGetAccptCrit(satKey, xa_ac);

		outFile.write(" ACCEPTANCE    NEW      NO.   PERCENT   RMS     OBSPAN     CHANGE      CHANGE      CHANGE               CHANGE\n");
		outFile.write("  CRITERIA    EPOCH     RES     RES              DAYS     IN PLANE     IN ABAR      IN N                IN BTERM\n");
		outFile.write(String.format("  STANDARD  %4.1f DAY    %3f     %3.0f   %4.0f KM   %5.1f    %6.3f DEG  %8.4f    %9.2e REV/DAY    %10.3e   m**2/kg\n",
				xa_ac[JnaBatchDC.XA_AC_STD_EPOCH], xa_ac[JnaBatchDC.XA_AC_STD_NORES], xa_ac[JnaBatchDC.XA_AC_STD_PRCNTRES], xa_ac[JnaBatchDC.XA_AC_STD_RMS],
				xa_ac[JnaBatchDC.XA_AC_STD_OBSSPAN], xa_ac[JnaBatchDC.XA_AC_STD_DELTAW], xa_ac[JnaBatchDC.XA_AC_STD_DELTAABAR], xa_ac[JnaBatchDC.XA_AC_STD_DELTAN],
				xa_ac[JnaBatchDC.XA_AC_STD_DELTAB]));
		outFile.write(String.format("  ACTUAL    %4.1f DAY    %3f     %3.0f   %4d KM   %5.1f    %6.3f DEG  %8.4f    %9.2e REV/DAY    %10.3e   m**2/kg\n\n",
				xa_ac[JnaBatchDC.XA_AC_ACT_EPOCH], xa_ac[JnaBatchDC.XA_AC_ACT_NORES], xa_ac[JnaBatchDC.XA_AC_ACT_PRCNTRES], (int)xa_ac[JnaBatchDC.XA_AC_ACT_RMS],
				xa_ac[JnaBatchDC.XA_AC_STD_OBSSPAN], xa_ac[JnaBatchDC.XA_AC_ACT_DELTAW], xa_ac[JnaBatchDC.XA_AC_STD_DELTAABAR], xa_ac[JnaBatchDC.XA_AC_ACT_DELTAN], xa_ac[JnaBatchDC.XA_AC_ACT_DELTAB]));
	}

	/**
	 * Prints the collection of Obs Residuals and breaks down collections of data for printing
	 * @param outFile		The Buffered writer with the file to write to
	 * @param xai_ctrl		Array of integers containing resulting BatchDC data
	 * @param xar_ctrl		Array of doubles containing resulting BatchDC data
	 * @param iterCount		total iteration count
	 * @param satKey		The list of sat keys
	 * @param obsKeys		The list of obs keys
	 * @param obsResArr		The list of Obs Residuals
	 * @param obsRej		The list of Obs Rejection Flags
	 * @throws IOException
	 */
	public static void PrintAllObResiduals(BufferedWriter outFile, int[] xai_ctrl, double[] xar_ctrl, int iterCount, long satKey, long[] obsKeys, int numObs, double[][] obsResArr, int[][] obsRej) throws IOException
	{
		outFile.write(String.format("SATELLITE NO. %5d ---------------------------   BATCH    ITERATION NO.%3d\n", JnaElOps.SatNumOf(satKey), iterCount));
		PrintResidualsHeader(outFile);

		// print obs residuals
		for (int i = 0; i < numObs; i++)
		{
			// populate obs residual structure using data received from the DC dll
			SrvRotas.Residuals residuals = SrvRotas.GetObsResiduals();
			residuals.PopulateResidualsObject(obsKeys[i], satKey, obsResArr[i]);

			SrvObs.ObsRecord obsRecord = SrvObs.GetObsData(obsKeys[i]);
			PrintObResiduals(outFile, xai_ctrl, xar_ctrl, obsRecord, residuals, obsRej[i]);
		}
	}

	/**
	 * Prints an Ob Residual
	 * @param outFile		The Buffered writer with the file to write to
	 * @param xai_ctrl		Array of integers containing resulting BatchDC data
	 * @param xar_ctrl		Array of integers containing resulting BatchDC data
	 * @param obsRecord		The obs record object carrying the Obs Residuals data
	 * @param residuals		The residuals object holding Obs Residuals information
	 * @param obsRej		Obs Rejection flags
	 */
	public static void PrintObResiduals(BufferedWriter outFile, int[] xai_ctrl, double[] xar_ctrl, SrvObs.ObsRecord obsRecord, SrvRotas.Residuals residuals, int[] obsRej) throws IOException
	{
		String  rejFlg; // rejection flag: '*': rejected, 'X': residual error, ' ': no rejection/no error
		String formatStr;
		String[]  obRejErrStr = { "Sensor data retrieval error", "No sensor location found", "Residual computation error" };
		byte[] dtg = new byte[500];
		JnaTimeFunc.UTCToDTG19(obsRecord.getObsTimeDs50UTC(), dtg);
		int obsType = residuals.getObsType();

		// no residual data avaialable due to error
		if (obsRej[JnaBatchDC.XA_REJFLG_ERROR] != 0)
		{
			outFile.write(String.format(" %5d %3d %s  **** %s ****\n",
					obsRecord.getSatNum(),										// 1. tag no.
					obsRecord.getSenNum(),										// 2. sta no.
					Utility.BytesToString(dtg),									// 3. date time YY/DDD HHMM SS.SSS)
					obRejErrStr[obsRej[JnaBatchDC.XA_REJFLG_ERROR] - 1]));
			return;
		}


		if (xai_ctrl[JnaBatchDC.XAI_CTRL_BRUCE] != 0 || obsRecord.getObsType() == 'P' || obsRecord.getObsType() == 'V')
			rejFlg = "NR";
		else if (obsRej[JnaBatchDC.XA_REJFLG_ERROR] == 100)
			rejFlg = "XX";
		else if (obsRej[JnaBatchDC.XA_REJFLG_RA] + obsRej[JnaBatchDC.XA_REJFLG_DEC] + obsRej[JnaBatchDC.XA_REJFLG_RANGE] + obsRej[JnaBatchDC.XA_REJFLG_RR] > 0)
			rejFlg = String.format("*%1d", (obsRej[JnaBatchDC.XA_REJFLG_RA] + obsRej[JnaBatchDC.XA_REJFLG_DEC] + obsRej[JnaBatchDC.XA_REJFLG_RANGE] + obsRej[JnaBatchDC.XA_REJFLG_RR]));
		else
			rejFlg = "  ";
		//             1   2  3   4   6     7/8   8/9    10/11   12/13  14/15  16/17  18/19  20   21 22 23
		formatStr = "%5d %3d %s %5d %3.0f  %s%8.4f  %s%8.4f  %s%10.3f  %s%10.3f  %s%8.3f  %s%8.3f  %s%8.3f %11.3f %1s %1d\n";

		JnaTimeFunc.UTCToDTG19(obsRecord.getObsTimeDs50UTC(), dtg);
		String dateTime = Utility.BytesToStringTrim(dtg);
		int revNum = (int)residuals.getRevNum();
		outFile.write(String.format(formatStr,
				obsRecord.getSatNum(),													// 1. tag no.
				obsRecord.getSenNum(),													// 2. sta no.
				dateTime,												// 3. date time YY/DDD HHMM SS.SSS
				revNum,												// 4. rev no.
				residuals.getSatArgOfLatitude(),										// 6. u deg
				obsRej[JnaBatchDC.XA_REJFLG_TIME] == 1 ? "*" : " ",						// 7. time rejection
				SrvDllMain.NonNegativeZero(residuals.getDeltaT(), 4),			// 8. delta t (min)
				obsRej[JnaBatchDC.XA_REJFLG_BETA] == 1 ? "*" : " ",						// 9. delta beta rejection flag
				SrvDllMain.NonNegativeZero(residuals.getBeta(), 4),			//10. beta (deg)
				obsRej[JnaBatchDC.XA_REJFLG_HEIGHT] == 1 ? "*" : " ",					//11. delta height rejection flag
				SrvDllMain.NonNegativeZero(residuals.getHeight(), 3),			//12. delta height (km)
				obsRej[JnaBatchDC.XA_REJFLG_RANGE] == 1 ? "*" : " ",					//13. range residual rejection flag
				SrvDllMain.NonNegativeZero(residuals.getRange(), 3),			//14. range residual (km)
				obsRej[JnaBatchDC.XA_REJFLG_RA] == 1 ? "*" : " ",						//15. azimuth or RA residual rejection flag
				SrvDllMain.NonNegativeZero(residuals.getRightAscension(), 3),	//16. azimuth or RA residual (deg)
				obsRej[JnaBatchDC.XA_REJFLG_DEC] == 1 ? "*" : " ",						//17. elevation or declination residual rejection flag
				SrvDllMain.NonNegativeZero(residuals.getDeclination(), 3),		//18. elevation or declination residual (deg)
				obsRej[JnaBatchDC.XA_REJFLG_RR] == 1 ? "*" : " ",						//19. range rate residual rejection flag
				SrvDllMain.NonNegativeZero(residuals.getRangeRate(), 4),       //20. range rate residual (km/sec)
				SrvDllMain.NonNegativeZero(residuals.getVMag(), 3),            //21. vector magnitude (km)
				rejFlg,																	//22. rejection flag: 'NR'=no rejection
				residuals.getObsType()));												//23. obs type
	}

	/**
	 * Prints the header for the Residuals to a file
	 * @param outFile		The Buffered writer with the file to write to
	 * @throws IOException
	 */
	public static void PrintResidualsHeader(BufferedWriter outFile) throws IOException
	{
		//                   1     2          3           4    6   7    8     9    10    11    12:10  13    14:10  15 16:8    17 18:8    19  20:8       21:12  22 23
		outFile.write(" TAG  STA  DATE   TIME         REV   U   R   DELTA  R    BETA  R     DELTA  R    RANGE   R    RA    R   DEC    R  RR RES    VECTOR  RJ  O\n");
		outFile.write(" NO.  NO. YY DDD HHMM SS.SSS   NO.  DEG  J   T MIN  J    DEG   J     H  KM  J    RES KM  J RES DEG  J RES DEG  J  KM/SEC    MAG KM  FL  T\n");
		//outFile.write("================================================================================================================================\n");
	}

	/**
	 * Returns the Correction Type String
	 * @param idc	Corrected ELTs flags
	 * @return		The determined Correction type
	 */
	public static String GetCorrTypeStr(int[] idc)
	{
		String[] corrFlgStrs = new String[]{ "L", "N", "CHI", "PSI", "AF", "AG", "B", "NA", "AGOM" };
		StringBuilder corrTypeStr = new StringBuilder();

		for(int i = 0; i < 9; i++)
		{
			if(idc[i] > 0)
			{
				corrTypeStr.append(corrFlgStrs[i]);
				corrTypeStr.append("  ");
			}
		}
		return corrTypeStr.toString();
	}
}
