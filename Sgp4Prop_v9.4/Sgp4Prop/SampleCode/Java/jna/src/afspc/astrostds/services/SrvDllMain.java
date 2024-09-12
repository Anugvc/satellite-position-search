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

public class SrvDllMain {

   //error code 0 = OK, 1 = Warning, 2 = Error
   public static int IDX_ERR_NONE = 0;
   public static int IDX_ERR_WARN = 1;
   public static int IDX_ERR_ERROR = 2;


   // Show last logged error message
   public static void ShowErrMsg()
   {
      ShowLastErrMsg();
   }

   // Show last logged error message
   public static void ShowInfoMsg()
   {
      ShowLastInfoMsg();
   }

   /**
    * Return the last error message recorded to the caller
    * @return  The error message string
    */
   public static String GetLastErrMsg() {
      byte[] errMsgArr = new byte[Utility.LOGMSGLEN];
      JnaDllMain.GetLastErrMsg(errMsgArr);

      return Utility.BytesToString(errMsgArr);
   }

   /**
    * Show last logged error message
    */
   public static void ShowLastErrMsg() {
      System.out.println(GetLastErrMsg());
   }

   /**
    * Show last logged info message
    */
   public static void ShowLastInfoMsg()
   {
      byte[] infoMsg = new byte[JnaDllMain.INFOSTRLEN];

      JnaDllMain.GetLastInfoMsg(infoMsg);
      System.out.println(Utility.BytesToString(infoMsg));
   }

   /**
    * Show last logged error message and exit
    */
   public static void ShowMsgAndTerminate()
   {
      System.out.println(GetLastErrMsg());
      System.exit(0);
   }

   /**
    * <JCL> Write the last logged err msg to a file
    * @param outFile    The BufferedWriter containing the file to write the error message to
    * @throws IOException
    */
   public static void WriteErrMsg(BufferedWriter outFile) throws IOException
   {
      outFile.write(GetLastErrMsg() + "\n");
   }

   /**
    * Determine if the input value is small enough to be displayed as 0.000 instead of -0.000
    * @param inValue    The original value
    * @param decPlaces  The number of decimal places to compare to
    * @return           Either 0 or the original value
    */
   public static double NonNegativeZero(double inValue, int decPlaces)
   {
      if (inValue <= 0 && (-inValue * Math.pow(10.0, decPlaces + 1) < 5.0))
         return 0;
      else
         return inValue;
   }
}
