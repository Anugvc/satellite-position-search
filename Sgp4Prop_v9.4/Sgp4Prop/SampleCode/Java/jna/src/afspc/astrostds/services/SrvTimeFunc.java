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

public class SrvTimeFunc
{
   // CONVERT DAYS SINCE 1950 TO 'YYDDDHHMMSS.SSS'
   public static String UTCToDtg15Str(double ds50UTC)
   {
      byte[] dtg15 = new byte[16];
      JnaTimeFunc.UTCToDTG15(ds50UTC, dtg15);
      return Utility.BytesToString(dtg15);
   }

   // <JCL> Convert DS50 to YYYY/DDD HHMM SS.SSS, expressed as a string
   public static String UTCToDtg20Str(double ds50UTC)
   {
      byte [] dtg20 = new byte[20];
      JnaTimeFunc.UTCToDTG20(ds50UTC, dtg20);
      return Utility.BytesToString(dtg20);
   }

   // <JCL> Convert DS50 to YYYY/DDD HHMM SS.SSS, expressed as a string
   public static String UTCToDtg18Str(double ds50UTC)
   {
      byte [] dtg20 = new byte[20];
      JnaTimeFunc.UTCToDTG20(ds50UTC, dtg20);
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
      IntByReference yr = new IntByReference();
      IntByReference dayOfYear = new IntByReference();
      IntByReference hh = new IntByReference();
      IntByReference mm = new IntByReference();
      DoubleByReference sss = new DoubleByReference();

      JnaTimeFunc.UTCToTimeComps1(ds50UTC, yr, dayOfYear, hh, mm, sss);
      dtg17a = String.format("%04d%03d%02d%02d%06.3f", yr.getValue(), dayOfYear.getValue(), hh.getValue(), mm.getValue(), sss.getValue());
      return dtg17a;
   }
     
}
