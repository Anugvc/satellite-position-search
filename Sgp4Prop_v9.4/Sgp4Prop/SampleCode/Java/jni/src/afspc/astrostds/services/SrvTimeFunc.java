package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.util.Date;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;

public class SrvTimeFunc
{
   // CONVERT DAYS SINCE 1950 TO 'YYDDDHHMMSS.SSS'
   public static String UTCToDtg15Str(double ds50UTC)
   {
      byte[] dtg15 = new byte[16];
      JniTimeFunc.UTCToDTG15(ds50UTC, dtg15);
      return Utility.BytesToString(dtg15);
   }

   // <JCL> Convert DS50 to YYYY/DDD HHMM SS.SSS, expressed as a string
   public static String UTCToDtg20Str(double ds50UTC)
   {
      byte [] dtg20 = new byte[20];
      JniTimeFunc.UTCToDTG20(ds50UTC, dtg20);
      return Utility.BytesToString(dtg20);
   }

   // <JCL> Convert DS50 to YYYY/DDD HHMM SS.SSS, expressed as a string
   public static String UTCToDtg18Str(double ds50UTC)
   {
      byte [] dtg20 = new byte[20];
      JniTimeFunc.UTCToDTG20(ds50UTC, dtg20);
      return (Utility.BytesToString(dtg20).substring(2));
   }

   /**
    * CONVERT DAYS SINCE 1950 TO 'YYYYDDDHHMMSS.SSS'
    * @param ds50UTC    days since 1950
    * @return           Date string in format YYYYDDDHHMMSS.SSS
    */
   public static String UTCToYYYYDDDHHMMSSsssStr(double ds50UTC)
   {
      String dtg17a;
      int[] yr = new int [1];
      int[] dayOfYear = new int [1];
      int[] hh = new int [1];
      int[] mm = new int [1];
      double[] sss = new double [1];

      JniTimeFunc.UTCToTimeComps1(ds50UTC, yr, dayOfYear, hh, mm, sss);
      dtg17a = String.format("%04d%03d%02d%02d%06.3f", yr[0], dayOfYear[0], hh[0], mm[0], sss[0]);
      return dtg17a;
   }
     
}
