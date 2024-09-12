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

public class SrvSpProp
{
   // Indexes represent coordinate systems
   public static final int
      IDX_OUTCOORD_DATE  = 0, 
      IDX_OUTCOORD_EPOCH = 1,  
      IDX_OUTCOORD_J2000 = 2;

   // Indexes of Integration mode
   public static final int
      INTEG_NONE       = 0, 
      INTEG_NUMERICAL  = 1, 
      INTEG_ANALYTIC   = 2;

      
   // <JCL> Write SP application control parameters to a file
   public static void PrintSpAppCtrl(BufferedWriter outFile) throws IOException
   {
      // retrieve the application controls
      byte [] geoDir = new byte[Utility.FILEPATHLEN];
      IntByReference buffSize = new IntByReference();
      IntByReference runMode = new IntByReference();
      IntByReference savePartials = new IntByReference();
      IntByReference isSpectr = new IntByReference();
      DoubleByReference consider = new DoubleByReference();
      IntByReference decayAlt = new IntByReference();
      IntByReference outCoord = new IntByReference();
      byte [] truncGeoDir = new byte[60];
      JnaSpProp.SpGetApCtrlAll(geoDir, buffSize, runMode, savePartials, isSpectr, consider, decayAlt, outCoord);
      String geoDirStr = Utility.BytesToString(geoDir);
      String truncGeoDirStr = Utility.BytesToString(truncGeoDir);

      // write the application controls to the file
      outFile.write("===============================================================================\n");
      outFile.write(" |         S P   A P P L I C A T I O N   C O N T R O L   O P T I O N S         |\n");
      outFile.write("-------------------------------------------------------------------------------\n");
      outFile.write(String.format(" | Geo Dir Path   : %59s|\n", truncGeoDirStr));
      outFile.write(String.format(" | Buffer size    : %6d%53s|\n", buffSize, " "));
      outFile.write(String.format(" | Run Mode       : %-59s|\n", runMode.getValue() == 1 ? "Memory Priority" : "Performance Priority"));
      outFile.write(String.format(" | Specter Mode   : %-59s|\n", isSpectr.getValue() == 1 ? "Compatible" : "Not Compatible"));
      outFile.write(String.format(" | Consider       : %8.3f%51s|\n", consider.getValue(), " "));
      outFile.write(String.format(" | Decay Altitude : %6d km%50s|\n", decayAlt.getValue(), " "));
      // outFile.write(String.format(" | Output CoordSys: %-59s|\n", outCoordSys[outCoord]);
      outFile.write(String.format(" | Save Partials  : %-59s|\n", savePartials.getValue() == 1 ? "Yes" : "No"));
      outFile.write("===============================================================================\n");
   }
   
}
