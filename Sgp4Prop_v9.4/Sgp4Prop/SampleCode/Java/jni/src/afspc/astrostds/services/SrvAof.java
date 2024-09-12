package afspc.astrostds.services;

import java.io.BufferedWriter;

import afspc.astrostds.wrappers.*;

public class SrvAof {

	/**
	 * Prints the Aof Control Parameters to file
	 * @param fpOut			The BufferedWriter object carrying the file to print to
	 * @param xa_aofCtrl	 AOF control parameters, see XF_AOFCTRL_? (JniAof.java) for array arrangement
	 */
	public static void PrintAofCtrl(BufferedWriter fpOut, double[] xa_aofCtrl)
	{
		try {
			fpOut.write("                    AOF OPTIONS:\n");
			fpOut.write(" ===============================================================================\n");
			fpOut.write(String.format(" |  A.  TIME OF INTEREST, START:    %20s (UTC)                 |\n", SrvTimeFunc.UTCToDtg20Str(xa_aofCtrl[JniAof.XA_AOFCTRL_START])));
			fpOut.write(String.format(" |  B.  TIME OF INTEREST, END:      %20s (UTC)                 |\n", SrvTimeFunc.UTCToDtg20Str(xa_aofCtrl[JniAof.XA_AOFCTRL_STOP])));
			fpOut.write(String.format(" |  C.  OVERFLIGHT SEARCH INTERVAL  %7.3f min                                |\n", xa_aofCtrl[JniAof.XA_AOFCTRL_INTERVAL]));
			//fprintf(fpOut, " |  D.  DEFENDED AREAS TO PROCESS:   1111,  2222,     0,     0,     0          |\n");
			//fprintf(fpOut, " |  E.  INPUT SATELLITES(s):        all elsets input from ELSETS               |\n");
			//fprintf(fpOut, " |  E.  INPUT SATELLITES(s):        26481,     0,     0,     0,     0          |\n");
			//fprintf(fpOut, " |  F.  PRINTED OUTPUT OPTION:      initial conditions and penetrations        |\n");
			//fprintf(fpOut, " |  H.  SEARCH METHOD FOR POINTS:   brute-force                                |\n");
			//fprintf(fpOut, " |  I.  SORTED OUTPUT OPTION:       sort by time, then satellite               |\n");
			//fprintf(fpOut, " |  J.  SORTED OUTPUT FILE:         AOF output file                            |\n");
			fpOut.write(" ===============================================================================\n");
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("Error Printing to File.");
		}
	}

	/**
	 * Print the Area Data to file
	 * @param fpOut			The BufferedWriter object carrying the file to print to
	 * @param xa_aofArea	defended area data, see XA_AOFAREA_? (JniAof.java) for array arrangement
	 */
	public static void PrintAreaData(BufferedWriter fpOut, double[] xa_aofArea)
	{
		String dashLine = "-------------------------------------------------------------------------------";
		String ddashLine = "===============================================================================";
		String[] areaTypeStrs = { "Box", "Circle", "Point" };
		int areaType;

		try {
			fpOut.write(String.format(" %s\n", ddashLine));
			fpOut.write(String.format(" |                           DEFENDED AREA %4d DATA                           |\n", (int)xa_aofArea[JniAof.XA_AOFAREA_NUM]));
			fpOut.write(String.format(" %s\n", dashLine));

			areaType = (int)xa_aofArea[JniAof.XA_AOFAREA_TYPE];

			fpOut.write(String.format(" |  Area type:   %-62s|\n", areaTypeStrs[areaType - 1]));
			fpOut.write(String.format(" |  Latitude :   %8.4f deg N%48s|\n", xa_aofArea[JniAof.XA_AOFAREA_ELEM1], " "));
			fpOut.write(String.format(" |  Longitude:   %8.4f deg E%48s|\n", xa_aofArea[JniAof.XA_AOFAREA_ELEM2], " "));
			if (areaType == JniAof.AOF_AREATYPE_BOX)
			{
				fpOut.write(String.format(" |  Latitude :   %8.4f deg N%48s|\n", xa_aofArea[JniAof.XA_AOFAREA_ELEM3], " "));
				fpOut.write(String.format(" |  Longitude:   %8.4f deg E%48s|\n", xa_aofArea[JniAof.XA_AOFAREA_ELEM4], " "));
			}
			else if (areaType == JniAof.AOF_AREATYPE_POINT)
			{
				fpOut.write(String.format(" |  Height   :   %8.4f meters%47s|\n", xa_aofArea[JniAof.XA_AOFAREA_ELEM3], " "));
			}
			fpOut.write(String.format(" %s\n", ddashLine));
		} catch (Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * Print the Entry and Exit times to file
	 * @param fpOut				The BufferedWriter object carrying the file to print to
	 * @param xa_aofArea		defended area data, see XA_AOFAREA_? (JniAof.java) for array arrangement
	 * @param satNum			The satellite number
	 * @param satKey			the overflight satellite's unique key
	 * @param numOfPasses		number of passes found
	 * @param xa_entExitTimes	array of entry/exit times
	 */
	public static void PrintEntryExit(BufferedWriter fpOut, double[] xa_aofArea, int satNum, long satKey, int numOfPasses, double[] xa_entExitTimes)
	{
		double[] xa_look = new double[8];
		double[] llh = new double[3];
		boolean printLook;
		int i, j;
		int darkness;


		String[] enterExitStrs = { "ENTERS", "EXITS " };
		String[] darknessStrs = { "(entirely sunlit)", "(total area dark)", "(partial sunlight)" };

		printLook = xa_aofArea[JniAof.XA_AOFAREA_TYPE] == JniAof.AOF_AREATYPE_CIRCLE || xa_aofArea[JniAof.XA_AOFAREA_TYPE] == JniAof.AOF_AREATYPE_POINT;

		try {
			fpOut.write(String.format("\n   Satellite no.    %05d                    Area no.     %04d\n", satNum, (int) xa_aofArea[JniAof.XA_AOFAREA_NUM]));

			for (i = 0; i < numOfPasses; i++) {
				for (j = 0; j < 2; j++) {
					darkness = JniAof.AofGetDarknessLevel(xa_entExitTimes[i * 2 + j], xa_aofArea);
					fpOut.write(String.format(" SAT %s AREA AT %s  %-18s    ", enterExitStrs[j], SrvTimeFunc.UTCToDtg20Str(JniTimeFunc.TAIToUTC(xa_entExitTimes[i * 2 + j])), darknessStrs[darkness]));

					if (printLook) {
						llh[0] = xa_aofArea[JniAof.XA_AOFAREA_ELEM1];
						llh[1] = xa_aofArea[JniAof.XA_AOFAREA_ELEM2];
						llh[2] = xa_aofArea[JniAof.XA_AOFAREA_ELEM3];

						// compute look angle from the location llh to the overfly satellite at the specified time
						JniAof.AofGetLook(xa_entExitTimes[i * 2 + j], llh, satKey, xa_look);

						fpOut.write(String.format("%05d  AZ= %5.1f  EL= %4.1f  RNG= %5.0f  (km)\n", satNum, xa_look[JniLamod.XA_LOOK_AZIM], xa_look[JniLamod.XA_LOOK_ELEV], xa_look[JniLamod.XA_LOOK_RNG]));
					} else {
						fpOut.write("\n");
					}
				}
			}
			fpOut.write(String.format(" Satellite %5d: %3d pass(es) over defended area %4d\n", satNum, numOfPasses, (int) xa_aofArea[JniAof.XA_AOFAREA_NUM]));
			fpOut.write("\n\n");
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("Error: Unable to Print to File");
		}
	}
}
