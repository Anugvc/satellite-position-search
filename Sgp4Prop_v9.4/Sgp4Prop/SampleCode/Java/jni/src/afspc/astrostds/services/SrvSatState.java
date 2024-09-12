package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.util.Date;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;

public class SrvSatState
{

   public static final String [] ELT_TYPE_STR = {"TLE (SGP)",
                                               "TLE (SGP4)",
                                               "TLE (SP)",
                                               "SP Vector (B1P)",
                                               "VCM",
                                               "EXT EPHEMERIS"};
   public static final String [] REC_TYPE_STR = {"TLE",
                                        "TLE",
                                        "SPTLE",
                                        "SPVEC",
                                        "VCM",
                                        "EXTEPH" };

   /**
    * <JCL> Print satellite common data
    * @param outFile    The BufferedWriter carrying the file to write to
    * @param satKey     The satellite's key
    * @throws IOException
    */
   @SuppressWarnings("empty-statement")
   public static void PrintSatelliteData(BufferedWriter outFile, long satKey) throws IOException
   {
      int[]    satNum = new int [1];
      byte [] satNameBytes = new byte[8];;
      int[] elsetNum = new int [1];
      int[] ephType = new int [1];
      int[] revNum = new int [1];
      double[] epochDs50UTC = new double [1];
      double[] mnAnomaly = new double [1];
      double[] node = new double [1];
      double[] omega = new double [1];
      double[] period = new double [1];
      double[] eccen = new double [1];
      double[] incli = new double [1];
      double[] mnMotion = new double [1];
      double[] bField = new double [1];
      double[] perigeeHt = new double [1];
      double[] apogeeHt = new double [1];
      double[] perigee = new double [1];
      double[] apogee = new double [1];
      double[] A = new double [1];
      int errCode = JniSatState.SatStateGetSatDataAll(satKey, satNum, satNameBytes, ephType, revNum, epochDs50UTC, bField, elsetNum, incli, node, 
                                                      eccen, omega, mnAnomaly, mnMotion, period, perigeeHt, apogeeHt, perigee, apogee, A);
      if (errCode != 0)
      {
         return;
      }
      String satNameStr = Utility.BytesToString(satNameBytes);

      // Print the data
      outFile.write(" ===============================================================================\n");
      outFile.write(String.format(" |                           SATELLITE %5d DATA                              |\n", satNum[0]));
      outFile.write(" -------------------------------------------------------------------------------\n");
      outFile.write(String.format(" |  ELEMENT NUMBER :        %5d%45s |\n", elsetNum[0], " "));
      outFile.write(String.format(" |  INT. DESIGNATOR:        %-50s |\n", satNameStr));
      outFile.write(String.format(" |  EPHEMERIS TYPE:         %-50s |\n", ELT_TYPE_STR[ephType[0] - 1]));
      outFile.write(String.format(" |  EPOCH REVOLUION #:      %5d%45s |\n", revNum[0], " "));
      outFile.write(String.format(" |  EPOCH TIME:             %-50s |\n", SrvTimeFunc.UTCToDtg20Str(epochDs50UTC[0])));
      outFile.write(String.format(" |  MEAN ANOMALY (deg):     %9.4f%-41s |\n", mnAnomaly[0], " "));
      outFile.write(String.format(" |  RIGHT ASCENSION (deg):  %9.4f%-41s |\n", node[0], " "));
      outFile.write(String.format(" |  ARG. OF PERIGEE (deg):  %9.4f%-41s |\n", omega[0], " "));
      outFile.write(String.format(" |  PERIOD (min):           %9.4f%-41s |\n", period[0], " "));
      outFile.write(String.format(" |  ECCENTRICITY:           %9.7f%-41s |\n", eccen[0], " "));
      outFile.write(String.format(" |  INCLINATION (deg):      %9.4f%-41s |\n", incli[0], " "));
      outFile.write(String.format(" |  MEAN MOTION (rev/day):  %13.9f%-37s |\n", mnMotion[0], " "));

      if (ephType[0] == JniDllMain.ELTTYPE_TLE_SGP || ephType[0] == JniDllMain.ELTTYPE_TLE_SGP4)
      {
         outFile.write(String.format(" |  BSTAR (1./er)           %12.9f%-38s |\n", bField[0], " "));
      }
      else if (ephType[0] == JniDllMain.ELTTYPE_TLE_SP || ephType[0] == JniDllMain.ELTTYPE_SPVEC_B1P || ephType[0] == JniDllMain.ELTTYPE_VCM)
      {
         outFile.write(String.format(" |  BTERM (m**2/Kg)         %12.9f%-38s |\n", bField[0], " "));
      }

      outFile.write(String.format(" |  PERIGEE HEIGHT (km):    %10.3f%-40s |\n", perigeeHt[0], " "));
      outFile.write(String.format(" |  APOGEE HEIGHT(km):      %10.3f%-40s |\n", apogeeHt[0], " "));
      outFile.write(" ===============================================================================\n\n");
   }

   /**
    * Count number of loaded satellites of the specified type
    * @param type       The sat type we're counting
    * @param satKeys    The list of satellite keys
    * @param satCount   The total number of satellites
    * @return           The number of satellites of the specified type
    */
   public static int SatStateGetTypeCount(int type, long[] satKeys, int satCount)
   {
      int count = 0;
      int orbEltType;
      int i;

      for(i = 0; i < satCount; i++)
      {
         orbEltType = (int)(satKeys[i] % 10);
         if (orbEltType == type)
            count ++;
      }

      return count;
   }

   /**
    * Return short string description of the orbital element type
    * @param satKey  The satellite's key
    * @return        Returns the description of the orbital element type
    */
   public static String GetRecTypeString(long satKey)
   {
      String typeStr;
      int orbEltType;

      orbEltType = GetOrbEltType(satKey);
      typeStr = REC_TYPE_STR[orbEltType - 1];

      return typeStr;
   }

   /**
    * Returns the orbital element type of a satellite
    * @param satKey  The satellite's key
    * @return        Returns the integer corresponding to the orbital element type
    */
   public static int GetOrbEltType(long satKey)
   {
      return (int)(satKey % 10);
   }

   /**
    * Return propagation type from the input satKey
    * @param satKey  The satellite's key
    * @return        The integer corresponding to propagation type
    */
   public static int GetPropType(long satKey)
   {
      int orbEltType = GetOrbEltType(satKey);

      if (orbEltType == JniDllMain.ELTTYPE_TLE_SGP || orbEltType == JniDllMain.ELTTYPE_TLE_SGP4)
         return JniDllMain.PROPTYPE_GP;
      else if (orbEltType == JniDllMain.ELTTYPE_TLE_SP || orbEltType == JniDllMain.ELTTYPE_SPVEC_B1P || orbEltType == JniDllMain.ELTTYPE_VCM)
         return JniDllMain.PROPTYPE_SP;
      else if (orbEltType == JniDllMain.ELTTYPE_EXTEPH)
         return JniDllMain.PROPTYPE_X;
      else
         return JniDllMain.PROPTYPE_UK;
   }

   /**
    * Retrieve value of a field of satellite data
    * @param satKey  The satellite's key
    * @param idx     The index of the desired data field
    * @return        The double value of the desired data field
    */
   public static double GetSatDataField(long satKey, int idx)
   {
      byte[] valueStr = new byte[Utility.GETSETSTRLEN];

      JniSatState.SatStateGetSatDataField(satKey, idx, valueStr);
      valueStr[Utility.GETSETSTRLEN - 1] = 0;

      return Utility.BytesToDouble(valueStr);
   }
}
