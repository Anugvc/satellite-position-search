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
      IntByReference    satNum = new IntByReference();
      byte [] satNameBytes = new byte[8];;
      IntByReference elsetNum = new IntByReference();
      IntByReference ephType = new IntByReference();
      IntByReference revNum = new IntByReference();
      DoubleByReference epochDs50UTC = new DoubleByReference();
      DoubleByReference mnAnomaly = new DoubleByReference();
      DoubleByReference node = new DoubleByReference();
      DoubleByReference omega = new DoubleByReference();
      DoubleByReference period = new DoubleByReference();
      DoubleByReference eccen = new DoubleByReference();
      DoubleByReference incli = new DoubleByReference();
      DoubleByReference mnMotion = new DoubleByReference();
      DoubleByReference bField = new DoubleByReference();
      DoubleByReference perigeeHt = new DoubleByReference();
      DoubleByReference apogeeHt = new DoubleByReference();
      DoubleByReference perigee = new DoubleByReference();
      DoubleByReference apogee = new DoubleByReference();
      DoubleByReference A = new DoubleByReference();
      int errCode = JnaSatState.SatStateGetSatDataAll(satKey, satNum, satNameBytes, ephType, revNum, epochDs50UTC, bField, elsetNum, incli, node, 
                                                      eccen, omega, mnAnomaly, mnMotion, period, perigeeHt, apogeeHt, perigee, apogee, A);
      if (errCode != 0)
      {
         return;
      }
      String satNameStr = Utility.BytesToString(satNameBytes);

      // Print the data
      outFile.write(" ===============================================================================\n");
      outFile.write(String.format(" |                           SATELLITE %5d DATA                              |\n", satNum.getValue()));
      outFile.write(" -------------------------------------------------------------------------------\n");
      outFile.write(String.format(" |  ELEMENT NUMBER :        %5d%45s |\n", elsetNum.getValue(), " "));
      outFile.write(String.format(" |  INT. DESIGNATOR:        %-50s |\n", satNameStr));
      outFile.write(String.format(" |  EPHEMERIS TYPE:         %-50s |\n", ELT_TYPE_STR[ephType.getValue() - 1]));
      outFile.write(String.format(" |  EPOCH REVOLUION #:      %5d%45s |\n", revNum.getValue(), " "));
      outFile.write(String.format(" |  EPOCH TIME:             %-50s |\n", SrvTimeFunc.UTCToDtg20Str(epochDs50UTC.getValue())));
      outFile.write(String.format(" |  MEAN ANOMALY (deg):     %9.4f%-41s |\n", mnAnomaly.getValue(), " "));
      outFile.write(String.format(" |  RIGHT ASCENSION (deg):  %9.4f%-41s |\n", node.getValue(), " "));
      outFile.write(String.format(" |  ARG. OF PERIGEE (deg):  %9.4f%-41s |\n", omega.getValue(), " "));
      outFile.write(String.format(" |  PERIOD (min):           %9.4f%-41s |\n", period.getValue(), " "));
      outFile.write(String.format(" |  ECCENTRICITY:           %9.7f%-41s |\n", eccen.getValue(), " "));
      outFile.write(String.format(" |  INCLINATION (deg):      %9.4f%-41s |\n", incli.getValue(), " "));
      outFile.write(String.format(" |  MEAN MOTION (rev/day):  %13.9f%-37s |\n", mnMotion.getValue(), " "));

      if (ephType.getValue() == JnaDllMain.ELTTYPE_TLE_SGP || ephType.getValue() == JnaDllMain.ELTTYPE_TLE_SGP4)
      {
         outFile.write(String.format(" |  BSTAR (1./er)           %12.9f%-38s |\n", bField.getValue(), " "));
      }
      else if (ephType.getValue() == JnaDllMain.ELTTYPE_TLE_SP || ephType.getValue() == JnaDllMain.ELTTYPE_SPVEC_B1P || ephType.getValue() == JnaDllMain.ELTTYPE_VCM)
      {
         outFile.write(String.format(" |  BTERM (m**2/Kg)         %12.9f%-38s |\n", bField.getValue(), " "));
      }

      outFile.write(String.format(" |  PERIGEE HEIGHT (km):    %10.3f%-40s |\n", perigeeHt.getValue(), " "));
      outFile.write(String.format(" |  APOGEE HEIGHT(km):      %10.3f%-40s |\n", apogeeHt.getValue(), " "));
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

      if (orbEltType == JnaDllMain.ELTTYPE_TLE_SGP || orbEltType == JnaDllMain.ELTTYPE_TLE_SGP4)
         return JnaDllMain.PROPTYPE_GP;
      else if (orbEltType == JnaDllMain.ELTTYPE_TLE_SP || orbEltType == JnaDllMain.ELTTYPE_SPVEC_B1P || orbEltType == JnaDllMain.ELTTYPE_VCM)
         return JnaDllMain.PROPTYPE_SP;
      else if (orbEltType == JnaDllMain.ELTTYPE_EXTEPH)
         return JnaDllMain.PROPTYPE_X;
      else
         return JnaDllMain.PROPTYPE_UK;
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

      JnaSatState.SatStateGetSatDataField(satKey, idx, valueStr);
      valueStr[Utility.GETSETSTRLEN - 1] = 0;

      return Utility.BytesToDouble(valueStr);
   }
}
