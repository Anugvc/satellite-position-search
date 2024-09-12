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
      DoubleByReference astroLat = new DoubleByReference(),astroLon = new DoubleByReference();
      double senPos[] = new double [3];
      byte   senDesc[] = new byte [25];
      IntByReference orbSatNum = new IntByReference();
      ByteByReference secClass = new ByteByReference();

      int    errCode;

      // Retrieve sensor location data from the dll
      errCode = JnaSensor.SensorGetLocAll(senKey, astroLat, astroLon, senPos, senDesc, orbSatNum, secClass);
      if (errCode != 0)
      {
         //ShowMsgAndTerminate();
         SrvDllMain.ShowErrMsg();
         return errCode;
      }

      senLoc.senNum = JnaSensor.SenNumOf(senKey);
      senLoc.astroLat = astroLat.getValue();
      senLoc.astroLon = astroLon.getValue();
      for( int ii = 0; ii<senPos.length; ii++ ) {
         senLoc.senPos[ii] = senPos[ii];
      }
      senDesc[24] = 0;
      for( int ii = 0; ii<senDesc.length; ii++ ) {
         senLoc.senDesc[ii] = senDesc[ii];
      }
      senLoc.orbSatNum = orbSatNum.getValue();
      senLoc.secClass = secClass.getValue();

      return errCode;
   }

   // Retrieve Sensor limits (1L-Card) data from the dll
   public static int GetSensorLimits1L(long senKey, SensorLimits1L senLim1L)
   {
      ByteByReference     viewType = new ByteByReference(), obsType = new ByteByReference(), boresight1 = new ByteByReference();
      IntByReference      rngUnits = new IntByReference(), visFlg = new IntByReference(), rngLimFlg = new IntByReference(), maxPPP = new IntByReference(), plntryRes = new IntByReference();
      DoubleByReference   interval = new DoubleByReference(), maxRngLim = new DoubleByReference(), elLim1 = new DoubleByReference(), elLim2 = new DoubleByReference(), azLim1 = new DoubleByReference(), azLim2 = new DoubleByReference(), minRngLim = new DoubleByReference(), rrLim = new DoubleByReference();

      int    errCode;

      // Retrieve sensor limits data (1L-Card) from the dll
      errCode = JnaSensor.SensorGet1L(senKey, viewType, obsType, rngUnits, maxRngLim,
                         boresight1, elLim1, elLim2, azLim1, azLim2,
                         interval, visFlg, rngLimFlg, maxPPP, minRngLim,
                         plntryRes, rrLim);
      if (errCode != 0)
      {
         //ShowMsgAndTerminate();
         SrvDllMain.ShowErrMsg();
         return errCode;
      }

      senLim1L.senNum     = JnaSensor.SenNumOf(senKey);
      senLim1L.viewType   = viewType.getValue();
      senLim1L.obsType    = obsType.getValue();
      senLim1L.rngUnits   = rngUnits.getValue();
      senLim1L.maxRngLim  = maxRngLim.getValue();
      senLim1L.boresight1 = boresight1.getValue();
      senLim1L.elLim1     = elLim1.getValue();
      senLim1L.elLim2     = elLim2.getValue();
      senLim1L.azLim1     = azLim1.getValue();
      senLim1L.azLim2     = azLim2.getValue();
      senLim1L.interval   = interval.getValue();
      senLim1L.visFlg     = visFlg.getValue();
      senLim1L.rngLimFlg  = rngLimFlg.getValue();
      senLim1L.maxPPP     = maxPPP.getValue();
      senLim1L.minRngLim  = minRngLim.getValue();
      senLim1L.plntryRes  = plntryRes.getValue();
      senLim1L.rrLim      = rrLim.getValue();

      return errCode;
   }


   // Retrieve Sensor limits (2L-Card) data from the dll
   public static int GetSensorLimits2L(long senKey, SensorLimits2L senLim2L)
   {
      ByteByReference boresight2 = new ByteByReference();
      IntByReference  earthBckgrnd = new IntByReference();
      DoubleByReference elLim3 = new DoubleByReference(), elLim4 = new DoubleByReference(), azLim3 = new DoubleByReference(), azLim4 = new DoubleByReference(), earthLimb = new DoubleByReference(), solarXAngle = new DoubleByReference(), lunarXAngle = new DoubleByReference(), minIlum = new DoubleByReference(), twilit = new DoubleByReference();

      int      errCode;

      // Retrieve sensor limits data (2L-Card) from the dll
      errCode = JnaSensor.SensorGet2L(senKey, boresight2, elLim3, elLim4,
                         azLim3, azLim4, earthBckgrnd, earthLimb,
                         solarXAngle, lunarXAngle, minIlum, twilit);
      if (errCode != 0)
      {
         //ShowMsgAndTerminate();
         SrvDllMain.ShowErrMsg();
         return errCode;
      }

      senLim2L.senNum        = JnaSensor.SenNumOf(senKey);
      senLim2L.boresight2    = boresight2.getValue();
      senLim2L.elLim3        = elLim3.getValue();
      senLim2L.elLim4        = elLim4.getValue();
      senLim2L.azLim3        = azLim3.getValue();
      senLim2L.azLim4        = azLim4.getValue();
      senLim2L.earthBckgrnd  = earthBckgrnd.getValue();
      senLim2L.earthLimb     = earthLimb.getValue();
      senLim2L.solarXAngle   = solarXAngle.getValue();
      senLim2L.lunarXAngle   = lunarXAngle.getValue();
      senLim2L.minIlum       = minIlum.getValue();
      senLim2L.twilit        = twilit.getValue();

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
      DoubleByReference astroLat = new DoubleByReference();
      DoubleByReference astroLon = new DoubleByReference();
      double [] senPos = new double[3];
      byte [] senDesc = new byte[24];
      IntByReference orbSatNum = new IntByReference();
      ByteByReference secClass = new ByteByReference();
      int errCode = JnaSensor.SensorGetLocAll(senKey, astroLat, astroLon, senPos, senDesc, orbSatNum, secClass);
      if (errCode != 0)
      {
         SrvDllMain.ShowLastErrMsg();
         return errCode;
      }

      // Retrieve 1L-Card information
      ByteByReference viewType = new ByteByReference();
      ByteByReference obsType = new ByteByReference();
      ByteByReference boresight1 = new ByteByReference();
      IntByReference rngUnits = new IntByReference();
      IntByReference visFlg = new IntByReference();
      IntByReference rngLimFlg = new IntByReference();
      IntByReference maxPPP = new IntByReference();
      IntByReference plntryRes = new IntByReference();;
      DoubleByReference interval = new DoubleByReference();
      DoubleByReference maxRngLim = new DoubleByReference();
      DoubleByReference elLim1 = new DoubleByReference();
      DoubleByReference elLim2 = new DoubleByReference();
      DoubleByReference azLim1 = new DoubleByReference();
      DoubleByReference azLim2 = new DoubleByReference();
      DoubleByReference minRngLim = new DoubleByReference();
      DoubleByReference rrLim = new DoubleByReference();
      errCode = JnaSensor.SensorGet1L(senKey, viewType, obsType, rngUnits, maxRngLim, boresight1, elLim1, elLim2, azLim1, azLim2, interval, visFlg, rngLimFlg, maxPPP, minRngLim, plntryRes, rrLim);
      if (errCode != 0)
      {
         SrvDllMain.ShowLastErrMsg();
         return errCode;
      }

      // Retrieve 2L-Card data
      ByteByReference boresight2 = new ByteByReference();
      IntByReference earthBckgrnd = new IntByReference();
      DoubleByReference elLim3 = new DoubleByReference();
      DoubleByReference elLim4 = new DoubleByReference();
      DoubleByReference azLim3 = new DoubleByReference();
      DoubleByReference azLim4 = new DoubleByReference();
      DoubleByReference earthLimb = new DoubleByReference();
      DoubleByReference solarXAngle = new DoubleByReference();
      DoubleByReference lunarXAngle = new DoubleByReference();
      DoubleByReference minIlum = new DoubleByReference();
      DoubleByReference twilit = new DoubleByReference();
      errCode = JnaSensor.SensorGet2L(senKey, boresight2, elLim3, elLim4, azLim3, azLim4, earthBckgrnd, earthLimb, solarXAngle, lunarXAngle, minIlum, twilit);
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
      if (viewType.getValue() == '9') // orbiting sensor
      {
         outFile.write(String.format(" |                ORBITNG SENSOR %3d (SATELLITE %5d) DATA                    |\n", JnaSensor.SenNumOf(senKey), orbSatNum.getValue()));
         if (boresight1.getValue() > 0)
         {
            lim1Str = "OFF-BORST";
            lim2Str = "CLOCK ANG";
         }
      }
      else
      {
         outFile.write(String.format(" |                               SENSOR %3d DATA                               |\n", JnaSensor.SenNumOf(senKey)));
         outFile.write(" -------------------------------------------------------------------------------\n");
         outFile.write(" |  SENSOR LOCATION                                                            |\n");
         outFile.write(String.format(" |  ASTRONOMICAL LAT  (deg): %9.4f%-41s|\n", astroLat.getValue(), " "));
         outFile.write(String.format(" |  ASTRONOMICAL LONG (deg): %9.4f (+West, -East)%-41s|\n", astroLon.getValue(), " "));
         outFile.write(String.format(" |  GEOCENTRIC ROT. X (m)  : %9.0f%-41s|\n", senPos[0], " "));
         outFile.write(String.format(" |  GEOCENTRIC ROT. Y (m)  : %9.0f%-41s|\n", senPos[1], " "));
         outFile.write(String.format(" |  GEOCENTRIC ROT. Z (m)  : %9.0f%-41s|\n", senPos[2], " "));
      }

      outFile.write(" -------------------------------------------------------------------------------\n");
      outFile.write(" |  SENSOR LIMITS                                                              |\n");
      outFile.write(String.format(" |  A.  SENSOR TYPE:                %-43s|\n", GetViewTypeStr(viewType.getValue())));
      outFile.write(String.format(" |  B.  SENSOR OBSERVATION TYPE:    %-43s|\n", GetObsTypeStr(obsType.getValue())));
      outFile.write(String.format(" |  C.  RANGE/RANGE-RATE UNITS:     %-43s|\n", unitStr[rngUnits.getValue()]));
      outFile.write(String.format(" |  D.  APPLY RANGE CONSTRAINTS?    %-43s|\n", rngLimFlg.getValue() == 0 ? "yes" : "no"));

      if (rngLimFlg.getValue() == 0)
      {
         outFile.write(String.format(" |  E.  MIN/MAX OBSERVABLE RANGE:   %8.0f to%9.0f %-22s|\n", minRngLim.getValue(), maxRngLim.getValue(), rngUnits.getValue() == 0 ? "km" : "nm"));
      }

      if (viewType.getValue() == '2')
      {
         outFile.write(String.format(" |  F.  BORESIGHT AZIMUTH  :        %8.3f%-35s|\n", azLim1.getValue(), " deg"));
         outFile.write(String.format(" |  G.  BORESIGHT ELEVATION:        %8.3f%-35s|\n", elLim1.getValue(), " deg"));
         outFile.write(String.format(" |  H.  OFF-BORESIGHT ANGLE:        %8.3f%-35s|\n", azLim2.getValue(), " deg"));
         outFile.write(String.format(" |  I.  MIN ELEVATION ANGLE:        %8.3f%-35s|\n", elLim2.getValue(), " deg"));
      }
      else
      {
         outFile.write(String.format(" |  F.  FIRST  %s INTERVAL:  %8.3f to %8.3f%-23s|\n", lim1Str, elLim1.getValue(), elLim2.getValue(), " deg"));
         outFile.write(String.format(" |  G.  FIRST  %s INTERVAL:  %8.3f to %8.3f%-23s|\n", lim2Str, azLim1.getValue(), azLim2.getValue(), " deg"));
      }

      if (viewType.getValue() == '9' && boresight2.getValue() == ' ') // no limit or n/a
      {
         outFile.write(String.format(" |  H.  SECOND %s INTERVAL:  %-43s|\n", lim1Str, "n/a"));
         outFile.write(String.format(" |  I.  SECOND %s INTERVAL:  %-43s|\n", lim2Str, "n/a"));
      }
      else if (viewType.getValue() != '2' && viewType.getValue() != '7')
      {
         outFile.write(String.format(" |  H.  SECOND %s INTERVAL:  %8.3f to %8.3f%-23s|\n", lim1Str, elLim3.getValue(), elLim4.getValue(), " deg"));
         outFile.write(String.format(" |  I.  SECOND %s INTERVAL:  %8.3f to %8.3f%-23s|\n", lim2Str, azLim3.getValue(), azLim4.getValue(), " deg"));
      }

      outFile.write(String.format(" |  J.  NUMBER OF POINTS PER PASS:  %4d%39s|\n", maxPPP.getValue(), " "));
      outFile.write(String.format(" |  K.  INTERVAL BETWEEN POINTS:    %8.3f%-35s|\n", interval.getValue(), " min"));
      outFile.write(" |      (Note: The Lamod's Output Interval value takes precedence over this)   |\n");

      if (obsType.getValue() == '5' || obsType.getValue() == '9'
      || obsType.getValue() == 'O' || obsType.getValue() == '1')
      {
         outFile.write(String.format(" |  L.  IR/OPTICAL VISIBILITY CK:   %-43s|\n", SEN_OPT_VIS_FLG_STR[visFlg.getValue()]));
         outFile.write(" |      (Note: The Lamod's Optical Visibility flag takes precedence over this) |\n");
      }
      else if (visFlg.getValue() == 2 || visFlg.getValue() == 3)
      {
         outFile.write(String.format(" |  L.  APPLY SOLAR ASPECT ANGLE:   %-43s|\n", "yes"));
      }
      else
      {
         outFile.write(String.format(" |  L.  OPTICALLY VISIBLE OPTION:   %-43s|\n", "n/a"));
         outFile.write(" |      (Note: The Lamod's Optical Visibility flag takes precedence over this) |\n");
      }

      outFile.write(String.format(" |  M.  RGE-RT/REL-VELOCITY LIMIT:  %8.3f%-35s|\n", rrLim.getValue(), " k/s"));

      if (viewType.getValue() == '9')
      {
         outFile.write(String.format(" |  O.  PLANETARY RESTRICTIONS:     %-43s|\n", SEN_PLNTRY_RSTRTN_STR[plntryRes.getValue()]));
         if (plntryRes.getValue() != 5)
         {
            outFile.write(String.format(" |  P.  ALLOW EARTH IN BACKGROUND?  %-43s|\n", noYes[earthBckgrnd.getValue()]));
            outFile.write(String.format(" |  R.  EARTH LIMB EXCLUSION DIST.  %8.3f%-35s|\n", earthLimb.getValue(), " km"));
            outFile.write(String.format(" |  S.  SOLAR EXCLUSION ANGLE:      %8.3f%-35s|\n", solarXAngle.getValue(), " deg"));
            outFile.write(String.format(" |  T.  LUNAR EXCLUSION ANGLE:      %8.3f%-35s|\n", lunarXAngle.getValue(), " deg"));
         }
         outFile.write(String.format(" |  U.  SENSOR BORESIGHT VECTOR 1:  %-43s|\n", GetSenBoreVecStr(boresight1.getValue())));
         outFile.write(String.format(" |  V.  SENSOR BORESIGHT VECTOR 2:  %-43s|\n", GetSenBoreVecStr(boresight2.getValue())));
         outFile.write(String.format(" |  W.  MIN ILLUMINATION ANGLE:     %8.3f %-34s|\n", minIlum.getValue(), " "));
      }
      else
      {
         outFile.write(String.format(" |  X.  TWILIGHT OFFSET ANGLE:      %8.3f %-34s|\n", twilit.getValue(), "deg below horizon"));
      }
      outFile.write(" -------------------------------------------------------------------------------\n\n");
      return errCode;
   }
   
}
