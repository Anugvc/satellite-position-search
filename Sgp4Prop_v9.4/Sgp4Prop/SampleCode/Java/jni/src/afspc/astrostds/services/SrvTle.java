package afspc.astrostds.services;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;

public class SrvTle
{
	private static int MAXNUMTLES = 100000;

    /**
     * Pulls TLE data from a file, creating an array of TleGPRecords.
     * @param satFile	The string path for the file carrying TLE data.
     * @return			An array of TleGPRecords generated from the file.
     * @throws IOException
     */
	public static TleGPRecord[] GetTlesFrFile(String satFile) throws IOException
	{
		BufferedReader fpRead = Utility.FileRead(satFile);

		List<TleGPRecord> tles = new ArrayList<>();
		String line1;
		String line2;
		int  count = 0;

		try
		{
			line1 = fpRead.readLine();
			while (!line1.equals(""))
			{
				line2 = fpRead.readLine();
				tles.add(new TleGPRecord(line1, line2));
				count++;

				if (count >= MAXNUMTLES)
				{
					System.out.printf("Warning: The number of TLEs has reach the maximum limit %d", MAXNUMTLES);
					System.out.printf("... The program will continue but it will not load any more TLEs\n");
					break;
				}
				line1 = fpRead.readLine();
			}
		} catch (NullPointerException e)
		{
			if(tles.size() <= 0)
			{
				System.out.println("No TLE read from file. System will terminate.");
				System.exit(1);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
			System.exit(1);
		}
		return tles.toArray(new TleGPRecord[0]);
	}

    /**
     * Compute perigee height (spherical earth) from Tle data.
     * @param tle	TLEGPRecord carrying the necessary data.
     * @return		double value of the perigee height.
     */
	public static double ComputePerigeeHt(TleGPRecord tle)
	{
		double perigeeHt;

		perigeeHt = (JniAstroFunc.NToA(tle.getMnMotion()) * (1 - tle.getEccen())) - JniEnvConst.EnvGetGeoConst(JniEnvConst.XF_GEOCON_KMPER);

		return perigeeHt;
	}

    /**
     * TLE GP Record subclass containing data points derived from text TLE inputs.
     */
	public static class TleGPRecord
	{
		private int     satNum;           // satNum: Satellite number
		private char    secClass;         // secClass: Security classification U: unclass, C: confidential, S: Secret
		private String  satName;          // satName: Satellite name A8
		private int     epochYr;          // epochYr: Satellite's epoch year (2 or 4 digits)
		private double  epochDays;        // epochDays: Satellite's epoch days
		private double  bstar;            // bstar: B* drad term (1/ER)
		private int     ephType;          // ephType: Satellite ephemeris type: 0=SGP, 2=SGP4
		private int     elsetNum;         // elsetNum: Element set number
		private double  incli;            // incli: Orbit inclination (deg)
		private double  node;             // node: Right ascension of asending node (deg)
		private double  eccen;            // eccen: Eccentricity
		private double  omega;            // omega: Argument of perigee (deg)
		private double  mnAnomaly;        // mnAnomaly: Mean anomaly (deg)
		private double  mnMotion;         // mnMotion: Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
		private int     revNum;           // revNum: Revolution number at epoch
		private double  nDotO2;           // nDotO2: Mean motion derivative (rev/day2)
		private double  n2DotO6;          // n2DotO6: Mean motion second derivative (red/day3)
		private double  epochDs50UTC;     // epoch in days since 1950, UTC

        /**
         * Constructor for TleGPRecord Class. Calls TleParseGP method.
         * @param line1	String containing the first line of a TLE.
         * @param line2	String containing the second line of a TLE.
         */
		public TleGPRecord(String line1, String line2)
		{
			int[]     satNum       = new int [1];
			byte[]    secClass     = new byte [1];
			byte[]             satName      = new byte[9];
			int[]     epochYr      = new int [1];
			double[]  epochDays    = new double [1];
			double[]  bstar        = new double [1];
			int[]     ephType      = new int [1];
			int[]     elsetNum     = new int [1];
			double[]  incli        = new double [1];
			double[]  node         = new double [1];
			double[]  eccen        = new double [1];
			double[]  omega        = new double [1];
			double[]  mnAnomaly    = new double [1];
			double[]  mnMotion     = new double [1];
			int[]     revNum       = new int [1];
			double[]  nDotO2       = new double [1];
			double[]  n2DotO6      = new double [1];

			JniTle.TleParseGP(line1, line2, satNum, secClass, satName, epochYr, epochDays, nDotO2, n2DotO6,
			bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum);

			this.satNum = satNum[0];
			this.secClass = (char)secClass[0];
			this.satName = Utility.BytesToStringTrim(satName);
			this.epochYr = epochYr[0];
			this.epochDays = epochDays[0];
			this.nDotO2 = nDotO2[0];
			this.n2DotO6 = n2DotO6[0];
			this.bstar = bstar[0];
			this.ephType = ephType[0];
			this.elsetNum = elsetNum[0];
			this.incli = incli[0];
			this.node = node[0];
			this.eccen = eccen[0];
			this.omega = omega[0];
			this.mnAnomaly = mnAnomaly[0];
			this.mnMotion = mnMotion[0];
			this.revNum = revNum[0];
			this.epochDs50UTC = JniTimeFunc.YrDaysToUTC(epochYr[0], epochDays[0]);
		}

		/**
		 *  These functions retrieve the various TleGPRecord parameters. They are documented
		 *  once here instead of individually since the documentation block would be
		 * 	similar for all of them.
		 *
		 * 	Return Value
		 * 	the requested data. We express these values as standard Java types, not JNA
		 * 	objects. The type varies depending on the control parameter being retrieved.
		 */
		public int getSatNum() {
			return satNum;
		}

		public char getSecClass() {
			return secClass;
		}

		public String getSatName() {
			return satName;
		}

		public int getEpochYr() {
			return epochYr;
		}

		public double getEpochDays() {
			return epochDays;
		}

		public double getBstar() {
			return bstar;
		}

		public int getEphType() {
			return ephType;
		}

		public int getElsetNum() {
			return elsetNum;
		}

		public double getIncli() {
			return incli;
		}

		public double getNode() {
			return node;
		}

		public double getEccen() {
			return eccen;
		}

		public double getOmega() {
			return omega;
		}

		public double getMnAnomaly() {
			return mnAnomaly;
		}

		public double getMnMotion() {
			return mnMotion;
		}

		public int getRevNum() {
			return revNum;
		}

		public double getnDotO2() {
			return nDotO2;
		}

		public double getN2DotO6() {
			return n2DotO6;
		}

		public double getEpochDs50UTC() {
			return epochDs50UTC;
		}
	}
}
