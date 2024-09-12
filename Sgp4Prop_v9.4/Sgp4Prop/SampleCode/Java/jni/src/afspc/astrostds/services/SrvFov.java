package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;


public class SrvFov
{
	// Retrieve Fov control data from the dll
	//public void GetFovCtrlPara(FovCtrl* fovCtrl) <- this is what's in driverexamples_c
	public void GetFovCtrlPara()
	{

	}

	// Print FOV control parameters
	public static void PrintFovCtrls(BufferedWriter fpOut, double xa_fovCtrl[], int numOfWindows, double startStopTimes[],
	   int numOfSources, double xa_fovSrc_2D[][], int numOfTargets, double xa_fovTgt_2D[][]) throws IOException {
	   int i;
	   String[] srcTypeStr = {"",
								 "SSN sensor          ",
								 "geodetic lat/long/ht",
								 "rotating EFG        ",
								 "ECI XYZ at a TIME   "};

	   String[] tgtTypeStr = { "",
								  "satellite                 ",
								  "constant az/el from source",
								  "constant ra/dec (ie, star)" };

	   String[] prtOptStr = { "victim information only             ",
								 "victim info & source/target descrip.",
								 "victim info & source/target/sec info",
								 "detailed, maximum information       ",
								 "detailed, max info + range to target"};
	   int id, srcType, tgtType;


	   fpOut.write("\n\n");
	   fpOut.write(" ===============================================================================\n");
	   fpOut.write(" |                  FIELD-OF-VIEW (FOV) OPTIONS:                               |\n");
	   fpOut.write(" ===============================================================================\n");

	   if (numOfWindows == 1)
	   {
		  fpOut.write(String.format(" |  A.  START/STOP TIMES:               From %20s (UTC)        |\n", SrvTimeFunc.UTCToDtg20Str(startStopTimes[0])));
		  fpOut.write(String.format(" |                                      To   %20s (UTC)        |\n", SrvTimeFunc.UTCToDtg20Str(startStopTimes[1])));
		  fpOut.write(String.format(" |                                      For %8.2f minutes duration          |\n", (startStopTimes[1] - startStopTimes[0]) * 1440.0));
	   }
	   else
	   {
		  for (i = 0; i < numOfWindows; i++)
		  {
			 if ( i == 0)
				fpOut.write(String.format(" |  A.  START/STOP TIMES:           %2d: From %20s (UTC)        |\n", SrvTimeFunc.UTCToDtg20Str(startStopTimes[i * 2])));
			 else
				fpOut.write(String.format(" |                                  %2d: From %20s (UTC)        |\n", SrvTimeFunc.UTCToDtg20Str(startStopTimes[i * 2])));
			 fpOut.write(String.format(" |                                      To   %20s (UTC)        |\n", SrvTimeFunc.UTCToDtg20Str(startStopTimes[i * 2 + 1])));
			 fpOut.write(String.format(" |                                      For %8.2f minutes duration          |\n", (startStopTimes[i*2+1] - startStopTimes[i*2]) * 1440.0));
		  }

	   }

	   if (numOfSources == 1)
	   {
		  id = (int)xa_fovSrc_2D[0][JniFov.XA_FOVSRC_ID];
		  srcType = (int)xa_fovSrc_2D[0][JniFov.XA_FOVSRC_TYPE];
		  fpOut.write(String.format(" |  B.  SOURCES TO PROCESS:             %7d  %20s          |\n", id, srcTypeStr[srcType]));
	   }
	   else
	   {
		  for (i = 0; i < numOfSources; i++)
		  {
			 id = (int)xa_fovSrc_2D[i][JniFov.XA_FOVSRC_ID];
			 srcType = (int)xa_fovSrc_2D[i][JniFov.XA_FOVSRC_TYPE];

			 if (i == 0)
				fpOut.write(String.format(" |  B.  SOURCES TO PROCESS:         %2d:%7d  %20s           |\n", i + 1, id, srcTypeStr[srcType]));
			 else
				fpOut.write(String.format(" |                                  %2d:%7d  %20s           |\n", i + 1, id, srcTypeStr[srcType]));
		  }

	   }

	   if (numOfTargets == 1)
	   {
		  id = (int)xa_fovTgt_2D[0][JniFov.XA_FOVTGT_ID];
		  tgtType = (int)xa_fovTgt_2D[0][JniFov.XA_FOVTGT_TYPE];
		  fpOut.write(String.format(" |  C.  TARGETS TO PROCESS:             %7d %27s    |\n", id, tgtTypeStr[tgtType]));
	   }
	   else
	   {
		  for (i = 0; i < numOfTargets; i++)
		  {
			 id = (int)xa_fovTgt_2D[i][JniFov.XA_FOVTGT_ID];
			 tgtType = (int)xa_fovTgt_2D[i][JniFov.XA_FOVTGT_TYPE];

			 if (i == 0)
				fpOut.write(String.format(" |  C.  TARGETS TO PROCESS:         %2d:%7d %27s     |\n", i + 1, id, tgtTypeStr[tgtType]));
			 else
				fpOut.write(String.format(" |                                  %2d:%7d %27s     |\n", i + 1, id, tgtTypeStr[tgtType]));
		  }

	   }
	   
	   //fpOut.write(String.format(" |  E.  SPECIFIED SECONDARY SATs:                                              |\n"));

	   if (xa_fovCtrl[JniFov.XA_FOVCTRL_INTERVAL] == 0)
		  fpOut.write(String.format(" |  G.  SEARCH INTERVAL:             depends on secondary elts                 |\n"));
	   else
		  fpOut.write(String.format(" |  G.  SEARCH INTERVAL:             %7.3f min                               |\n", xa_fovCtrl[JniFov.XA_FOVCTRL_INTERVAL]));

	   if (xa_fovCtrl[JniFov.XA_FOVCTRL_HALFCONE] == 0)
		  fpOut.write(String.format(" |  H.  CONE ANGLE:                 use auto-cone algorithm                    |\n"));
	   else
		  fpOut.write(String.format(" |  H.  CONE ANGLE:                  %7.3f deg                               |\n", xa_fovCtrl[JniFov.XA_FOVCTRL_HALFCONE]));

	   fpOut.write(String.format(" |  I.  PRINTED OUTPUT OPTION:       %s      |\n", prtOptStr[(int)xa_fovCtrl[JniFov.XA_FOVCTRL_PRTOPT]]));
	   fpOut.write(String.format(" ===============================================================================\n\n"));
	}


	public static void PrintSourceTargetData(BufferedWriter fpOut, double xa_fovSrc[], double xa_fovTgt[]) throws IOException {
		String[] srcTypeStr = {
		  "",
		  "SSN Sensor   ",
		  "Geodetic LLH ",
		  "Rotating EFG ",
		  "ECI XYZ @Time" };

		String[] tgtTypeStr = {
		  "",
		  "ELSET         ",
		  "Constant AZ/EL",
		  "RA/DEC (STAR) "};


	   int srcId, tgtId;
	   int srcType, tgtType;


	   tgtId = (int)xa_fovTgt[JniFov.XA_FOVTGT_ID];
	   tgtType = (int)xa_fovTgt[JniFov.XA_FOVTGT_TYPE];
	   srcId = (int)xa_fovSrc[JniFov.XA_FOVSRC_ID];
	   srcType = (int)xa_fovSrc[JniFov.XA_FOVSRC_TYPE];

	   fpOut.write("\n\n");
	   fpOut.write(" ===============================================================================\n");
	   fpOut.write(" |              FIELD-OF-VIEW (FOV) SOURCE/TARGET SPECIFICATION                |\n");
	   fpOut.write(" -------------------------------------------------------------------------------\n");
	   fpOut.write(String.format(" | SOURCE TYPE: %s%50s|\n", srcTypeStr[srcType], " "));

	   

	   switch (srcType)
	   {
		  case 1: // FOV_TGTTYPE_ELSET:
			 fpOut.write(String.format(" | SENSOR NUMBER : %3d%57s|\n", srcId, " "));
			 break;
		  case 2: // FOV_SRCTYPE_LLH
			 fpOut.write(String.format(" | NORTH LATITUDE: %10.5f deg%46s|\n", xa_fovSrc[JniFov.XA_FOVSRC_ELEM1], " "));
			 fpOut.write(String.format(" | EAST LONGITUDE: %10.5f deg%46s|\n", xa_fovSrc[JniFov.XA_FOVSRC_ELEM2], " "));
			 fpOut.write(String.format(" | HEIGHT        : %10.0f m%48s|\n", xa_fovSrc[JniFov.XA_FOVSRC_ELEM3], " "));
			 break;
		  case 3: // FOV_SRCTYPE_EFG 
			 fpOut.write(String.format(" | ROTATING E: %9.0f m|\n", xa_fovSrc[JniFov.XA_FOVSRC_ELEM1]));
			 fpOut.write(String.format(" | ROTATING F: %9.0f m|\n", xa_fovSrc[JniFov.XA_FOVSRC_ELEM2]));
			 fpOut.write(String.format(" | ROTATING G: %9.0f m|\n", xa_fovSrc[JniFov.XA_FOVSRC_ELEM3]));
			 break;
		  case 4: // FOV_SRCTYPE_XYZ
			 fpOut.write(String.format(" | GEOCENTRIC X: %9.0f m%51s|\n", xa_fovSrc[JniFov.XA_FOVSRC_ELEM1], " "));
			 fpOut.write(String.format(" | GEOCENTRIC Y: %9.0f m%51s|\n", xa_fovSrc[JniFov.XA_FOVSRC_ELEM2], " "));
			 fpOut.write(String.format(" | GEOCENTRIC Z: %9.0f m%51s|\n", xa_fovSrc[JniFov.XA_FOVSRC_ELEM3], " "));
			 break;
	   }

	   fpOut.write(" |-----------------------------------------------------------------------------|\n");
	   fpOut.write(String.format(" | TARGET TYPE: %s%49s|\n", tgtTypeStr[tgtType], " "));

	   switch (tgtType)
	   {
		  case 1: // FOV_TGTTYPE_ELSET:
			 fpOut.write(String.format(" | ELSET NUMBER: %9d%53s|\n", tgtId, " "));
			 break;
		  case 2: // FOV_TGTTYPE_AZEL
			 fpOut.write(String.format(" | TARGET ID: %9d%56s|\n", tgtId, " "));
			 fpOut.write(String.format(" | AZIMUTH  : %8.4f deg%53s|\n", xa_fovTgt[JniFov.XA_FOVTGT_ELEM1], " "));
			 fpOut.write(String.format(" | ELEVATION: %8.4f deg%53s|\n", xa_fovTgt[JniFov.XA_FOVTGT_ELEM2], " "));
			 break;
		  case 3: // FOV_TGTTYPE_RADEC 
			 fpOut.write(String.format(" | TARGET ID: %9d%56s|\n", tgtId, " "));
			 fpOut.write(String.format(" | RT ASCENSION: %8.4f deg%50s|\n", xa_fovTgt[JniFov.XA_FOVTGT_ELEM1], " "));
			 fpOut.write(String.format(" | DECLINATION : %8.4f deg%50s|\n", xa_fovTgt[JniFov.XA_FOVTGT_ELEM2], " "));
			 fpOut.write(String.format(" | EQUINOX INDICATOR:  %d%55s|\n", (int)xa_fovTgt[JniFov.XA_FOVTGT_ELEM3], " "));
			 break;
	   }
	   fpOut.write(" ===============================================================================\n\n");
	}



	public static void PrintPenetrationTimes(BufferedWriter fpOut, boolean isNewWindow, int winNum, double xa_fovSrc[], double xa_fovTgt[], long vicSatKey, double xa_emeDat[][], int numOfPens) throws IOException {
	   int tgtType;
	   double xa_look[] = new double [8];
	   int m;

	   double entryDs50TAI, minDs50TAI, exitDs50TAI;

	   tgtType = (int)xa_fovTgt[JniFov.XA_FOVTGT_TYPE];

	   if(isNewWindow)
		  fpOut.write(String.format("    SUMMARY FOR TIME WINDOW #    %2d, SOURCE  %4d and TARGET %5d:\n", winNum, (int)xa_fovSrc[JniFov.XA_FOVSRC_ID], (int)xa_fovTgt[JniFov.XA_FOVTGT_ID]));



	   for (m = 0; m < numOfPens; m++)
	   {
		  entryDs50TAI = xa_emeDat[m][0];
		  minDs50TAI   = xa_emeDat[m][1];
		  exitDs50TAI  = xa_emeDat[m][2];

		  // compute look angle at entry time
		  GetLookAngle(tgtType, entryDs50TAI, xa_fovSrc, xa_fovTgt, vicSatKey, xa_look);

		  fpOut.write(String.format(" SAT = %5d ENTRY TIME = %s AZ =%6.1f EL =%5.1f RG =%8.1f RR =%7.3f\n", 
			 JniElOps.SatNumOf(vicSatKey),
			 SrvTimeFunc.UTCToDtg20Str(xa_look[JniLamod.XA_LOOK_DS50UTC]),
			 xa_look[JniLamod.XA_LOOK_AZIM],
			 xa_look[JniLamod.XA_LOOK_ELEV],
			 xa_look[JniLamod.XA_LOOK_RNG],
			 xa_look[JniLamod.XA_LOOK_RNGRT]));

		  // compute look angle at minimum time
		  GetLookAngle(tgtType, minDs50TAI, xa_fovSrc, xa_fovTgt, vicSatKey, xa_look);

		  fpOut.write(String.format("             MINIMUM AT:  %s AZ =%6.1f EL =%5.1f RG =%8.1f RR =%7.3f\n",
			 SrvTimeFunc.UTCToDtg20Str(xa_look[JniLamod.XA_LOOK_DS50UTC]),
			 xa_look[JniLamod.XA_LOOK_AZIM],
			 xa_look[JniLamod.XA_LOOK_ELEV],
			 xa_look[JniLamod.XA_LOOK_RNG],
			 xa_look[JniLamod.XA_LOOK_RNGRT]));

		  // compute look angle at exit time
		  GetLookAngle(tgtType, exitDs50TAI, xa_fovSrc, xa_fovTgt, vicSatKey, xa_look);

		  fpOut.write(String.format(" (U)         EXIT  TIME = %s AZ =%6.1f EL =%5.1f RG =%8.1f RR =%7.3f\n",
			 SrvTimeFunc.UTCToDtg20Str(xa_look[JniLamod.XA_LOOK_DS50UTC]),
			 xa_look[JniLamod.XA_LOOK_AZIM],
			 xa_look[JniLamod.XA_LOOK_ELEV],
			 xa_look[JniLamod.XA_LOOK_RNG],
			 xa_look[JniLamod.XA_LOOK_RNGRT]));
	   }
	}


	public static void PrintDetailLookAngles(BufferedWriter fpOut, double xa_fovRun[], double xa_fovSrc[], double xa_fovTgt[], long tgtSatKey, long vicSatKey) throws IOException {
	   int tgtType;
	   double xa_look_tgt[] = new double [8];
	   double xa_look_vic[] = new double [8];
	   int m;

	   double currDs50TAI;
	   double startTimeDs50UTC, stopTimeDs50UTC, currDs50UTC, interval, period_min;


	   // update only start/stop times for a new run
	   startTimeDs50UTC = xa_fovRun[JniFov.XA_FOVRUN_START];
	   stopTimeDs50UTC = xa_fovRun[JniFov.XA_FOVRUN_STOP];
	   interval = xa_fovRun[JniFov.XA_FOVRUN_INTERVAL];

	   // search interval depends on target satellite's period
	   if (interval == 0)
	   {
		  period_min = SrvSatState.GetSatDataField(tgtSatKey, JniSatState.XF_SAT_PERIOD);
		  if (period_min < 225)
			 interval = 2; // 2 minutes for near-earth target satellite
		  else
			 interval = 15; // 15 minutes for all else
	   }


	   tgtType = (int)xa_fovTgt[JniFov.XA_FOVTGT_TYPE];

	   fpOut.write(String.format(" TARGET SAT (1) = %5d, VICTIM SAT (2) = %5d\n", JniElOps.SatNumOf(tgtSatKey), JniElOps.SatNumOf(vicSatKey)));
	   fpOut.write("           TIME          AZ1      EL1         RG1     RR1      AZ2      EL2         RG2     RR2     \n");

	   currDs50UTC = startTimeDs50UTC;

	   for (m = 0; currDs50UTC <= stopTimeDs50UTC; m++)
	   {
		  currDs50UTC = startTimeDs50UTC + (m * interval) / 1440.0;
		  currDs50TAI = JniTimeFunc.UTCToTAI(currDs50UTC);

		  // compute look angle for source vs target satellite
		  GetLookAngle(tgtType, currDs50TAI, xa_fovSrc, xa_fovTgt, tgtSatKey, xa_look_tgt);

		  // compute look angle for source vs victim satellite
		  GetLookAngle(tgtType, currDs50TAI, xa_fovSrc, xa_fovTgt, vicSatKey, xa_look_vic);

		  fpOut.write(String.format(" %s %9.3f%9.3f%11.2f%9.3f%9.3f%9.3f%11.2f%9.3f\n",
			 SrvTimeFunc.UTCToDtg20Str(xa_look_tgt[JniLamod.XA_LOOK_DS50UTC]),
			 xa_look_tgt[JniLamod.XA_LOOK_AZIM],
			 xa_look_tgt[JniLamod.XA_LOOK_ELEV],
			 xa_look_tgt[JniLamod.XA_LOOK_RNG],
			 xa_look_tgt[JniLamod.XA_LOOK_RNGRT],
			 xa_look_vic[JniLamod.XA_LOOK_AZIM],
			 xa_look_vic[JniLamod.XA_LOOK_ELEV],
			 xa_look_vic[JniLamod.XA_LOOK_RNG],
			 xa_look_vic[JniLamod.XA_LOOK_RNGRT]));
	   }
	}


	public static void GetLookAngle(int tgtType, double ds50TAI, double xa_fovSrc[], double xa_fovTgt[], long vicSatKey, double xa_look[])
	{
	   int errCode;

	   if (tgtType == JniFov.FOV_TGTTYPE_ELSET)
		  errCode = JniFov.FovTargetElsetLook(ds50TAI, xa_fovSrc, vicSatKey, xa_look);
	   else
		  errCode = JniFov.FovTargetVecLook(ds50TAI, xa_fovSrc, xa_fovTgt, vicSatKey, xa_look);
	}
}