/*
Purpose:
   This program shows how a Java program can call the Astrodynamic Standard libraries to propagate
   satellites to the requested time using SGP4 method.

   The program reads in user's input and output files. The program generates an
   ephemeris of position and velocity for each satellite read in. In addition, the program
   also generates other sets of orbital elements such as osculating Keplerian elements,
   mean Keplerian elements, latitude/longitude/height/pos, and nodal period/apogee/perigee/pos.
   Totally, the program prints results to five different output files.


Usage: Command line format
   Sgp4Prop inFile outFile
   inFile   : File contains TLEs and 6P-Card (which controls start, stop times and step size)
   outFile  : Base name for five output files

*/

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
import com.sun.jna.Pointer;
import afspc.astrostds.utilities.Utility;
import afspc.astrostds.wrappers.*;
import afspc.astrostds.services.*;



public class Xyz2Tle
{
   public static void main(String[] args) throws IOException
   {
      int errCode;

      // Arrays that store propagator output data
      int yr;
      double days;
      double[] posIn = new double[3];              //Position (km)
      double[] velIn = new double[3];              //Velocity (km/s)

      String[] tles = new String[2];
      
      yr = 2011;
      days = 181.9041666666;
      posIn[0] = -41941.78440;
      posIn[1] = 4382.32521;
      posIn[2] = 0.51060;
      velIn[0] = -0.32335347;
      velIn[1] = -3.08741884;
      velIn[2] = 0.00012461;
   
      // Convert osculating vectors pos, vel to a GP TLE
      errCode = SrvSgp4Prop.Xyz2Tle(yr, days, posIn, velIn, tles);
      
      if(errCode == 0)
      {
         System.out.println(tles[0]);
         System.out.println(tles[1]);
      }
   }
}
