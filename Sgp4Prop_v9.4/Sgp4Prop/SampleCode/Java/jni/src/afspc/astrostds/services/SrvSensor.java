package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.util.Date;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;

public class SrvSensor
{
   
   public static final String [] SEN_OPT_VIS_FLG_STR = {"0- Accept All Passes",
                                                        "1- Optical Visible Passes Only",
                                                        "2- Passes If Solar Aspect Angle < Max",
                                                        "3- Sen In Dark/No Restrctn on Sat (IR sen)"};
   public static String [] SEN_PLNTRY_RSTRTN_STR = {"0- All (sun, moon, earth)",
                                                    "1- Earth Only",
                                                    "2- Moon Only",
                                                    "3- Sun Only",
                                                    "4- Sun, Moon Only",
                                                    "5- None"};

   // Retrieve Sensor location/limits data from the dll
   public static int GetSensorData(long senKey, SensorLocation senLoc, SensorLimits1L senLim1L, SensorLimits2L senLim2L)
   {
      int errCode;

      errCode = GetSensorLocation(senKey, senLoc);
      if(errCode != 0)
         return errCode;

      errCode = GetSensorLimits1L(senKey, senLim1L);
      if(errCode != 0)
         return errCode;

      errCode = GetSensorLimits2L(senKey, senLim2L);
      if(errCode != 0)
         return errCode;

      return errCode;
   }

   // Retrieve Sensor location data from the dll
   public static int GetSensorLocation(long senKey, SensorLocation senLoc)
   {
      double astroLat[] = new double [1], astroLon[] = new double [1];
      double senPos[] = new double [3];
      byte   senDesc[] = new byte [25];
      int    orbSatNum[] = new int [1];
      byte   secClass[] = new byte [1];

      int    errCode;

      // Retrieve sensor location data from the dll
      errCode = JniSensor.SensorGetLocAll(senKey, astroLat, astroLon, senPos, senDesc, orbSatNum, secClass);
      if (errCode != 0)
      {
         //ShowMsgAndTerminate();
         SrvDllMain.ShowErrMsg();
         return errCode;
      }

      senLoc.senNum = JniSensor.SenNumOf(senKey);
      senLoc.astroLat = astroLat[0];
      senLoc.astroLon = astroLon[0];
      for( int ii = 0; ii<senPos.length; ii++ ) {
         senLoc.senPos[ii] = senPos[ii];
      }
      senDesc[24] = 0;
      for( int ii = 0; ii<senDesc.length; ii++ ) {
         senLoc.senDesc[ii] = senDesc[ii];
      }
      senLoc.orbSatNum = orbSatNum[0];
      senLoc.secClass = secClass[0];

      return errCode;
   }

   // Retrieve Sensor limits (1L-Card) data from the dll
   public static int GetSensorLimits1L(long senKey, SensorLimits1L senLim1L)
   {
      byte     viewType[] = new byte [1], obsType[] = new byte [1], boresight1[] = new byte [1];
      int      rngUnits[] = new int [1], visFlg[] = new int [1], rngLimFlg[] = new int [1], maxPPP[] = new int [1], plntryRes[] = new int [1];
      double   interval[] = new double [1], maxRngLim[] = new double [1], elLim1[] = new double [1], elLim2[] = new double [1], azLim1[] = new double [1], azLim2[] = new double [1], minRngLim[] = new double [1], rrLim[] = new double [1];

      int    errCode;

      // Retrieve sensor limits data (1L-Card) from the dll
      errCode = JniSensor.SensorGet1L(senKey, viewType, obsType, rngUnits, maxRngLim,
                         boresight1, elLim1, elLim2, azLim1, azLim2,
                         interval, visFlg, rngLimFlg, maxPPP, minRngLim,
                         plntryRes, rrLim);
      if (errCode != 0)
      {
         //ShowMsgAndTerminate();
         SrvDllMain.ShowErrMsg();
         return errCode;
      }

      senLim1L.senNum     = JniSensor.SenNumOf(senKey);
      senLim1L.viewType   = viewType[0];
      senLim1L.obsType    = obsType[0];
      senLim1L.rngUnits   = rngUnits[0];
      senLim1L.maxRngLim  = maxRngLim[0];
      senLim1L.boresight1 = boresight1[0];
      senLim1L.elLim1     = elLim1[0];
      senLim1L.elLim2     = elLim2[0];
      senLim1L.azLim1     = azLim1[0];
      senLim1L.azLim2     = azLim2[0];
      senLim1L.interval   = interval[0];
      senLim1L.visFlg     = visFlg[0];
      senLim1L.rngLimFlg  = rngLimFlg[0];
      senLim1L.maxPPP     = maxPPP[0];
      senLim1L.minRngLim  = minRngLim[0];
      senLim1L.plntryRes  = plntryRes[0];
      senLim1L.rrLim      = rrLim[0];

      return errCode;
   }


   // Retrieve Sensor limits (2L-Card) data from the dll
   public static int GetSensorLimits2L(long senKey, SensorLimits2L senLim2L)
   {
      byte     boresight2[] = new byte [1];
      int      earthBckgrnd[] = new int [1];
      double   elLim3[] = new double [1], elLim4[] = new double [1], azLim3[] = new double [1], azLim4[] = new double [1], earthLimb[] = new double [1], solarXAngle[] = new double [1], lunarXAngle[] = new double [1], minIlum[] = new double [1], twilit[] = new double [1];

      int      errCode;

      // Retrieve sensor limits data (2L-Card) from the dll
      errCode = JniSensor.SensorGet2L(senKey, boresight2, elLim3, elLim4,
                         azLim3, azLim4, earthBckgrnd, earthLimb,
                         solarXAngle, lunarXAngle, minIlum, twilit);
      if (errCode != 0)
      {
         //ShowMsgAndTerminate();
         SrvDllMain.ShowErrMsg();
         return errCode;
      }

      senLim2L.senNum        = JniSensor.SenNumOf(senKey);
      senLim2L.boresight2    = boresight2[0];
      senLim2L.elLim3        = elLim3[0];
      senLim2L.elLim4        = elLim4[0];
      senLim2L.azLim3        = azLim3[0];
      senLim2L.azLim4        = azLim4[0];
      senLim2L.earthBckgrnd  = earthBckgrnd[0];
      senLim2L.earthLimb     = earthLimb[0];
      senLim2L.solarXAngle   = solarXAngle[0];
      senLim2L.lunarXAngle   = lunarXAngle[0];
      senLim2L.minIlum       = minIlum[0];
      senLim2L.twilit        = twilit[0];

      return errCode;
   }


   // <JCL> Return a string representing the viewType
   public static String GetViewTypeStr(byte viewType)
   {
      switch (viewType)
      {
         case '0':
            return "0- Constant Elevation";
         case '1':
            return "1- Non-const elevation fan";
         case '2':
            return "2- Bounded-cone tracker";
      case '3':
            return "3- Conventional tracker";
         case '4':
            return "4- Optical tracker";
         case '5':
            return "5- General fan defined by 2 unit vectors";
         case '6':
            return "6- Const AZ fan sweeping to vertical";
         case '7':
            return "7- Const AZ fan sweeping vertical plane";
         case '9':
            return "9- Orbiting sensor";
         default:
            return " ";
      }
   }

   // <JCL> Return a string representing the obsType
   public static String GetObsTypeStr(byte obsType)
   {
      switch (obsType)
      {
         case '0':
            return "0- Range-rate only";
         case '1':
            return "1- Az, El";
         case '2':
            return "2- Az, El, Rng";
         case '3':
            return "3- Az, El, Rng, Rng Rate";
         case '4':
            return "4- 3 + Az Rate + El Rate";
         case '5':
            return "5- RA, DEC";
         case '6':
            return "6- Range only";
         case '7':
            return "7- Rotating EFG vector";
         case '8':
            return "8- Az, El, sen rotate EFG";
         case '9':
            return "9- RA, DEC, sen rotate EFG";
         case 'V':
            return "V- ECI position/velocity vec";
         case 'P':
            return "P- ECI position vec";
         case 'M':
            return "M- Az, El, sen rotate EFG + Rng";
         case 'O':
            return "O- RA, DEC, sen rotate EFG + Rng";
         default:
            return " ";
      }
   }

   // <JCL> Return a string representing the boresight vector
   public static String GetSenBoreVecStr(byte boreVec)
   {
      switch (boreVec)
      {
         case ' ':
            return "No Limits";
         case 'D':
            return "D- Down";
         case 'U':
            return "U- Up";
         case 'B':
            return "B- Back";
         case 'A':
            return "A- Ahead";
         case 'R':
            return "R- Right";
         case 'L':
            return "L- Left";
         default:
            return " ";
      }
   }

   // <JCL> Print sensor's limits data
   public static int PrintSensorData(BufferedWriter outFile, long senKey) throws IOException
   {
      // Retrieve location data
      double[] astroLat = new double [1];
      double[] astroLon = new double [1];
      double [] senPos = new double[3];
      byte [] senDesc = new byte[24];
      int[] orbSatNum = new int [1];
      byte[] secClass = new byte [1];
      int errCode = JniSensor.SensorGetLocAll(senKey, astroLat, astroLon, senPos, senDesc, orbSatNum, secClass);
      if (errCode != 0)
      {
         SrvDllMain.ShowLastErrMsg();
         return errCode;
      }

      // Retrieve 1L-Card information
      byte[] viewType = new byte [1];
      byte[] obsType = new byte [1];
      byte[] boresight1 = new byte [1];
      int[] rngUnits = new int [1];
      int[] visFlg = new int [1];
      int[] rngLimFlg = new int [1];
      int[] maxPPP = new int [1];
      int[] plntryRes = new int [1];;
      double[] interval = new double [1];
      double[] maxRngLim = new double [1];
      double[] elLim1 = new double [1];
      double[] elLim2 = new double [1];
      double[] azLim1 = new double [1];
      double[] azLim2 = new double [1];
      double[] minRngLim = new double [1];
      double[] rrLim = new double [1];
      errCode = JniSensor.SensorGet1L(senKey, viewType, obsType, rngUnits, maxRngLim, boresight1, elLim1, elLim2, azLim1, azLim2, interval, visFlg, rngLimFlg, maxPPP, minRngLim, plntryRes, rrLim);
      if (errCode != 0)
      {
         SrvDllMain.ShowLastErrMsg();
         return errCode;
      }

      // Retrieve 2L-Card data
      byte[] boresight2 = new byte [1];
      int[] earthBckgrnd = new int [1];
      double[] elLim3 = new double [1];
      double[] elLim4 = new double [1];
      double[] azLim3 = new double [1];
      double[] azLim4 = new double [1];
      double[] earthLimb = new double [1];
      double[] solarXAngle = new double [1];
      double[] lunarXAngle = new double [1];
      double[] minIlum = new double [1];
      double[] twilit = new double [1];
      errCode = JniSensor.SensorGet2L(senKey, boresight2, elLim3, elLim4, azLim3, azLim4, earthBckgrnd, earthLimb, solarXAngle, lunarXAngle, minIlum, twilit);
      if (errCode != 0)
      {
         SrvDllMain.ShowLastErrMsg();
         return errCode;
      }

      // Print out the data
      String [] unitStr = {"km, km/sec", "nm, nm/sec"};
      String [] noYes = {"no", "yes", "yes"};
      String lim1Str =  "ELEVATION";
      String lim2Str =  " AZIMUTH ";

      outFile.write(" ===============================================================================\n");
      if (viewType[0] == '9') // orbiting sensor
      {
         outFile.write(String.format(" |                ORBITNG SENSOR %3d (SATELLITE %5d) DATA                    |\n", JniSensor.SenNumOf(senKey), orbSatNum[0]));
         if (boresight1[0] > 0)
         {
            lim1Str = "OFF-BORST";
            lim2Str = "CLOCK ANG";
         }
      }
      else
      {
         outFile.write(String.format(" |                               SENSOR %3d DATA                               |\n", JniSensor.SenNumOf(senKey)));
         outFile.write(" -------------------------------------------------------------------------------\n");
         outFile.write(" |  SENSOR LOCATION                                                            |\n");
         outFile.write(String.format(" |  ASTRONOMICAL LAT  (deg): %9.4f%-41s|\n", astroLat[0], " "));
         outFile.write(String.format(" |  ASTRONOMICAL LONG (deg): %9.4f (+West, -East)%-41s|\n", astroLon[0], " "));
         outFile.write(String.format(" |  GEOCENTRIC ROT. X (m)  : %9.0f%-41s|\n", senPos[0], " "));
         outFile.write(String.format(" |  GEOCENTRIC ROT. Y (m)  : %9.0f%-41s|\n", senPos[1], " "));
         outFile.write(String.format(" |  GEOCENTRIC ROT. Z (m)  : %9.0f%-41s|\n", senPos[2], " "));
      }

      outFile.write(" -------------------------------------------------------------------------------\n");
      outFile.write(" |  SENSOR LIMITS                                                              |\n");
      outFile.write(String.format(" |  A.  SENSOR TYPE:                %-43s|\n", GetViewTypeStr(viewType[0])));
      outFile.write(String.format(" |  B.  SENSOR OBSERVATION TYPE:    %-43s|\n", GetObsTypeStr(obsType[0])));
      outFile.write(String.format(" |  C.  RANGE/RANGE-RATE UNITS:     %-43s|\n", unitStr[rngUnits[0]]));
      outFile.write(String.format(" |  D.  APPLY RANGE CONSTRAINTS?    %-43s|\n", rngLimFlg[0] == 0 ? "yes" : "no"));

      if (rngLimFlg[0] == 0)
      {
         outFile.write(String.format(" |  E.  MIN/MAX OBSERVABLE RANGE:   %8.0f to%9.0f %-22s|\n", minRngLim[0], maxRngLim[0], rngUnits[0] == 0 ? "km" : "nm"));
      }

      if (viewType[0] == '2')
      {
         outFile.write(String.format(" |  F.  BORESIGHT AZIMUTH  :        %8.3f%-35s|\n", azLim1[0], " deg"));
         outFile.write(String.format(" |  G.  BORESIGHT ELEVATION:        %8.3f%-35s|\n", elLim1[0], " deg"));
         outFile.write(String.format(" |  H.  OFF-BORESIGHT ANGLE:        %8.3f%-35s|\n", azLim2[0], " deg"));
         outFile.write(String.format(" |  I.  MIN ELEVATION ANGLE:        %8.3f%-35s|\n", elLim2[0], " deg"));
      }
      else
      {
         outFile.write(String.format(" |  F.  FIRST  %s INTERVAL:  %8.3f to %8.3f%-23s|\n", lim1Str, elLim1[0], elLim2[0], " deg"));
         outFile.write(String.format(" |  G.  FIRST  %s INTERVAL:  %8.3f to %8.3f%-23s|\n", lim2Str, azLim1[0], azLim2[0], " deg"));
      }

      if (viewType[0] == '9' && boresight2[0] == ' ') // no limit or n/a
      {
         outFile.write(String.format(" |  H.  SECOND %s INTERVAL:  %-43s|\n", lim1Str, "n/a"));
         outFile.write(String.format(" |  I.  SECOND %s INTERVAL:  %-43s|\n", lim2Str, "n/a"));
      }
      else if (viewType[0] != '2' && viewType[0] != '7')
      {
         outFile.write(String.format(" |  H.  SECOND %s INTERVAL:  %8.3f to %8.3f%-23s|\n", lim1Str, elLim3[0], elLim4[0], " deg"));
         outFile.write(String.format(" |  I.  SECOND %s INTERVAL:  %8.3f to %8.3f%-23s|\n", lim2Str, azLim3[0], azLim4[0], " deg"));
      }

      outFile.write(String.format(" |  J.  NUMBER OF POINTS PER PASS:  %4d%39s|\n", maxPPP[0], " "));
      outFile.write(String.format(" |  K.  INTERVAL BETWEEN POINTS:    %8.3f%-35s|\n", interval[0], " min"));
      outFile.write(" |      (Note: The Lamod's Output Interval value takes precedence over this)   |\n");

      if (obsType[0] == '5' || obsType[0] == '9'
      || obsType[0] == 'O' || obsType[0] == '1')
      {
         outFile.write(String.format(" |  L.  IR/OPTICAL VISIBILITY CK:   %-43s|\n", SEN_OPT_VIS_FLG_STR[visFlg[0]]));
         outFile.write(" |      (Note: The Lamod's Optical Visibility flag takes precedence over this) |\n");
      }
      else if (visFlg[0] == 2 || visFlg[0] == 3)
      {
         outFile.write(String.format(" |  L.  APPLY SOLAR ASPECT ANGLE:   %-43s|\n", "yes"));
      }
      else
      {
         outFile.write(String.format(" |  L.  OPTICALLY VISIBLE OPTION:   %-43s|\n", "n/a"));
         outFile.write(" |      (Note: The Lamod's Optical Visibility flag takes precedence over this) |\n");
      }

      outFile.write(String.format(" |  M.  RGE-RT/REL-VELOCITY LIMIT:  %8.3f%-35s|\n", rrLim[0], " k/s"));

      if (viewType[0] == '9')
      {
         outFile.write(String.format(" |  O.  PLANETARY RESTRICTIONS:     %-43s|\n", SEN_PLNTRY_RSTRTN_STR[plntryRes[0]]));
         if (plntryRes[0] != 5)
         {
            outFile.write(String.format(" |  P.  ALLOW EARTH IN BACKGROUND?  %-43s|\n", noYes[earthBckgrnd[0]]));
            outFile.write(String.format(" |  R.  EARTH LIMB EXCLUSION DIST.  %8.3f%-35s|\n", earthLimb[0], " km"));
            outFile.write(String.format(" |  S.  SOLAR EXCLUSION ANGLE:      %8.3f%-35s|\n", solarXAngle[0], " deg"));
            outFile.write(String.format(" |  T.  LUNAR EXCLUSION ANGLE:      %8.3f%-35s|\n", lunarXAngle[0], " deg"));
         }
         outFile.write(String.format(" |  U.  SENSOR BORESIGHT VECTOR 1:  %-43s|\n", GetSenBoreVecStr(boresight1[0])));
         outFile.write(String.format(" |  V.  SENSOR BORESIGHT VECTOR 2:  %-43s|\n", GetSenBoreVecStr(boresight2[0])));
         outFile.write(String.format(" |  W.  MIN ILLUMINATION ANGLE:     %8.3f %-34s|\n", minIlum[0], " "));
      }
      else
      {
         outFile.write(String.format(" |  X.  TWILIGHT OFFSET ANGLE:      %8.3f %-34s|\n", twilit[0], "deg below horizon"));
      }
      outFile.write(" -------------------------------------------------------------------------------\n\n");
      return errCode;
   }
   
}
