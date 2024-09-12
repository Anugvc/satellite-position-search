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

public class SrvSgp4Prop
{
   public static int Xyz2Tle(int yr, double days, double[] posIn, double[] velIn, String tles[])
   {
      byte[] line1 = new byte[512];
      byte[] line2 = new byte[512];

      double[] posOut = new double[3];              //Position (km)
      double[] velOut = new double[3];              //Velocity (km/s)
      double[] sgp4MeanKep = new double[6];  
      
      double A, browerN, kozaiN, ecc, incl, node, MA, omega;
      int errCode;
      
      errCode = 0;
   
      // Convert osculating vectors pos, vel to sgp4MeanKep
      errCode = JnaSgp4Prop.Sgp4PosVelToKep(yr, days, posIn, velIn, posOut, velOut, sgp4MeanKep);
      if(errCode != 0)
         return errCode;

      A     = sgp4MeanKep[JnaAstroFunc.XA_KEP_A];
      ecc   = sgp4MeanKep[JnaAstroFunc.XA_KEP_E];
      incl  = sgp4MeanKep[JnaAstroFunc.XA_KEP_INCLI];
      node  = sgp4MeanKep[JnaAstroFunc.XA_KEP_NODE];
      MA    = sgp4MeanKep[JnaAstroFunc.XA_KEP_MA];
      omega = sgp4MeanKep[JnaAstroFunc.XA_KEP_OMEGA];
      browerN = JnaAstroFunc.AToN(A);
      
      // Convert Brouwer mean motion to Kozai mean motion
      kozaiN = JnaAstroFunc.BrouwerToKozai(ecc, incl,  browerN);
      
      // Create GP TLE - ephemeris type 0
      JnaTle.TleGPFieldsToLines(99999, 'U', "MySat", yr, days, 0.0, 0.0, 0.0, 0, 0, incl, node, 
                                ecc, omega, MA, kozaiN, 0, line1, line2);
             
      tles[0] = Utility.BytesToString(line1).substring(0, 79);
      tles[1] = Utility.BytesToString(line2).substring(0, 79);
      
      return errCode;
   }
}
