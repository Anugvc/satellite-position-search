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
import afspc.astrostds.utilities.Utility;
import afspc.astrostds.wrappers.*;
import afspc.astrostds.services.*;



public class Sgp4Prop
{

   private static double MPD = 1440.0;

   private static byte[] getBytes(String ss) {
      byte[] bytes = new byte [ss.length()+1];
      byte[] ssBytes = ss.getBytes();
      for( int ii=0; ii<ss.length(); ii++ ) {
         bytes[ii] = ssBytes[ii];
      }
      bytes[ss.length()] = 0;
      return bytes;
   }


   public static void main(String[] args) throws IOException
   {
      double EPSI       = 0.00050;  /* TIME TOLERANCE IN SEC.  */

      BufferedWriter swOscState;    // Osculating state vector
      BufferedWriter swOscElem;     // Osculating Keplerian elements
      BufferedWriter swMeanElem;    // Mean Keplerian Elements
      BufferedWriter swLLH;         // Latitude,longitude,height,pos
      BufferedWriter swNodalApPer;  // Nodal period,apogee,perigee,pos


      String inFile, outFile, outputFileName;
      double startTime;
      double stopTime;
      double stepSize;
      double ds50UTC;

      String logFile = "sgp4prop.log";

      byte[] sgp4DllInfo = new byte[Utility.INFOSTRLEN];
      String errMsg;

      byte[] l1 = new byte[Utility.INPUTCARDLEN];
      byte[] l2 = new byte[Utility.INPUTCARDLEN];


      int errCode;
      int numSats;

      double meanMotion;

      long[] satKeys;
      long satKey;

      // Arrays that store propagator output data
      double[] pos = new double[3];              //Position (km)
      double[] vel = new double[3];              //Velocity (km/s)
      double[] llh = new double[3];              // Latitude(deg), Longitude(deg), Height above Geoid (km)
      double[] meanKep = new double[6];          //Mean Keplerian elements
      double[] oscKep = new double[6];           //Osculating Keplerian elements
      double[] nodalApPer = new double[3];       //Nodal period, apogee, perigee

      String mseTitle;

      long start, finish;



      System.out.println("Program starts.\n");
      start = System.currentTimeMillis();

      inFile = "";
      outFile = "";
      startTime = stopTime = stepSize = 0;


      // This program is getting input parameters from the command line.
      // Follow the instruction to pass parameters in the right order.
      if (args.length == 2)
      {
         inFile = args[0];
         outFile = args[1];
         System.out.println(String.format("Input file  = %s", inFile));
         System.out.println(String.format("Output file = %s", outFile));
      }
      else
      {
         System.out.println("Error in number of parameters passed. Please see the usage.\n\n\n");
         System.out.println("Usage    : Sgp4Prop inFile outFile\n\n");
         System.out.println("inFile   : File contains TLEs and 6P-Card (which controls start, stop times and step size)\n");
         System.out.println("outFile  : Base name for five output files\n");
         System.exit(0);
      }

      // Record diagnostic information to a log file. This is optional
      //--------------------------------------------------------------
      errCode = JniDllMain.OpenLogFile(logFile);
      if (errCode != 0)
         SrvDllMain.ShowMsgAndTerminate();

      // Load Tles from the input file
      errCode = JniTle.TleLoadFile(inFile);
      if (errCode != 0)
         SrvDllMain.ShowMsgAndTerminate();

      // Load 6P-Card
      errCode = JniTimeFunc.TConLoadFile(inFile);
      if (errCode != 0)
         SrvDllMain.ShowMsgAndTerminate();

      // Count number of satellites currently loaded in memory
      numSats = JniTle.TleGetCount();

      satKeys = new long[numSats];

      // Get all the satellites' ids from memory and store them in the local array
      JniTle.TleGetLoaded(2, satKeys);  // Get the satKeys in the order they were read

      // Get information about the current DLL
      JniSgp4Prop.Sgp4GetInfo(sgp4DllInfo);
      System.out.println(new String(sgp4DllInfo));


      // File IO
      String fileOscState = "_J_OscState.txt";
      String fileOscElem = "_J_OscElem.txt";
      String fileMeanElem = "_J_MeanElem.txt";
      String fileLLH = "_J_LatLonHeight.txt";
      String fileNodalApoPer = "_J_NodalApPer.txt";

      swOscState = FileOpen(outFile + fileOscState);
      swOscElem = FileOpen(outFile + fileOscElem);
      swMeanElem = FileOpen(outFile + fileMeanElem);
      swLLH = FileOpen(outFile + fileLLH);
      swNodalApPer = FileOpen(outFile + fileNodalApoPer);


      mseTitle = "TSINCE (MIN)";

      String oscStateTitle = "           X (KM)           Y (KM)           Z (KM)      XDOT (KM/S)       YDOT(KM/S)    ZDOT (KM/SEC)";
      String oscElemTitle = "           A (KM)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)   TRUE ANOM(DEG)";
      String meanElemTitle = "     N (REVS/DAY)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)         MA (DEG)";
      String llhTitle = "         LAT(DEG)        LON (DEG)          HT (KM)           X (KM)           Y (KM)           Z (KM)";
      String nodalApPerTitle = "   NODAL PER(MIN)1/NODAL(REVS/DAY)       N(REVS/DY)    ANOM PER(MIN)      APOGEE (KM)      PERIGEE(KM)";

      PrintHeader(swOscState, new String(sgp4DllInfo), inFile, startTime, stopTime, stepSize);
      swOscState.write(String.format("%17s%s\n", mseTitle, oscStateTitle));

      PrintHeader(swOscElem, new String(sgp4DllInfo), inFile, startTime, stopTime, stepSize);
      swOscElem.write(String.format("%17s%s\n", mseTitle, oscElemTitle));

      PrintHeader(swMeanElem, new String(sgp4DllInfo), inFile, startTime, stopTime, stepSize);
      swMeanElem.write(String.format("%17s%s\n", mseTitle, meanElemTitle));

      PrintHeader(swLLH, new String(sgp4DllInfo), inFile, startTime, stopTime, stepSize);
      swLLH.write(String.format("%17s%s\n", mseTitle, llhTitle));

      PrintHeader(swNodalApPer, new String(sgp4DllInfo), inFile, startTime, stopTime, stepSize);
      swNodalApPer.write(String.format("%17s%s\n", mseTitle, nodalApPerTitle));


      // Loop through all the loaded satellites
      for (int i = 0; i < numSats; i++)
      {
         satKey = satKeys[i];

         errCode = JniSgp4Prop.Sgp4InitSat(satKey);
         if (errCode != 0)
         {
            SrvDllMain.ShowMsgAndTerminate();
            continue;
         }

         errCode = JniTle.TleGetLines(satKey, l1, l2);
         if (errCode != 0)
         {
            SrvDllMain.ShowLastErrMsg();
            continue;
         }

         byte[] valueStr = new byte[Utility.GETSETSTRLEN];
         JniTle.TleGetField(satKey, JniTle.XF_TLE_EPOCH, valueStr);

         double epochDs50UTC  = JniTimeFunc.DTGToUTC(new String(valueStr));
         double[] timeArr = new double[3];
         CalcStartStopTime(epochDs50UTC, timeArr);
         startTime = timeArr[0];
         stopTime = timeArr[1];
         stepSize = timeArr[2];

         // Print two-line-element set for each satellite
         swOscState.write(String.format("\n %s\n %s\n\n", Utility.BytesToString(l1), Utility.BytesToString(l2)));
         swOscElem.write(String.format("\n %s\n %s\n\n", Utility.BytesToString(l1), Utility.BytesToString(l2)));
         swMeanElem.write(String.format("\n %s\n %s\n\n", Utility.BytesToString(l1), Utility.BytesToString(l2)));
         swLLH.write(String.format("\n %s\n %s\n\n", Utility.BytesToString(l1), Utility.BytesToString(l2)));
         swNodalApPer.write(String.format("\n %s\n %s\n\n", Utility.BytesToString(l1), Utility.BytesToString(l2)));


         ds50UTC = startTime;

         // Loop through all the minute-since-epoch time steps
         for (int step = 0; true; step++)
         {
            if(stepSize >= 0 && ds50UTC >= stopTime)
               break;
            else if(stepSize < 0 && ds50UTC <= stopTime)
               break;

            ds50UTC = startTime + (step * stepSize / 1440.0);

            if ((stepSize >= 0 && ds50UTC + (EPSI / 86400) > stopTime) ||
               (stepSize < 0 && ds50UTC - (EPSI / 86400) < stopTime))
               ds50UTC = stopTime;

            double mse[] = new double [1];

            // Propagate the current satellite to the time specified in mse
            errCode = JniSgp4Prop.Sgp4PropDs50UTC(satKey, ds50UTC, mse, pos, vel, llh);
            if (errCode != 0)
            {
               errMsg = SrvDllMain.GetLastErrMsg();

               swOscState.write(errMsg);
               swOscElem.write(errMsg);
               swMeanElem.write(errMsg);
               swLLH.write(errMsg);
               swNodalApPer.write(errMsg);

               break;
            }

            //Compute/Retrieve other propagator output data
            //----------------------------------------------------------------
            JniSgp4Prop.Sgp4GetPropOut(satKey, JniSgp4Prop.XF_SGP4OUT_OSC_KEP, oscKep);
            JniSgp4Prop.Sgp4GetPropOut(satKey, JniSgp4Prop.XF_SGP4OUT_MEAN_KEP, meanKep);
            JniSgp4Prop.Sgp4GetPropOut(satKey, JniSgp4Prop.XF_SGP4OUT_NODAL_AP_PER, nodalApPer);


            // Print position and velocity
            PrintPosVel(swOscState, mse[0], pos, vel);

            // Print osculating Keplerian elements
            PrintOscEls(swOscElem, mse[0], oscKep);

            // Print mean Keplerian elements
            PrintMeanEls(swMeanElem, mse[0], meanKep);

            // Print lat lon height and position
            PrintLLH(swLLH, mse[0], llh, pos);

            // Print nodal period, apogee, perigee, and others
            meanMotion = JniAstroFunc.AToN(meanKep[0]);
            PrintNodalApPer(swNodalApPer, mse[0], meanMotion, nodalApPer);

            // Height is below 100km - Skip the satellite
            if (llh[2] < 100.0)
            {
               if (llh[2] < 0)
                  errMsg = String.format("Warning: Decay condition. Distance from the Geoid (Km) = %10.3f\n", llh[2]);
               else
                  errMsg = String.format("Warning: Height is low. HT (Km) = %10.3f\n", llh[2]);

               // Write error message to files
               swOscState.write(errMsg);
               swOscElem.write(errMsg);
               swMeanElem.write(errMsg);
               swLLH.write(errMsg);
               swNodalApPer.write(errMsg);

               break; // Move to the next satellite
            }
         }

         // Remove this satellite if no longer needed
         if (JniSgp4Prop.Sgp4RemoveSat(satKey) != 0)
            SrvDllMain.ShowMsgAndTerminate();


      }

      // Close output files
      swOscState.close();
      swOscElem.close();
      swMeanElem.close();
      swLLH.close();
      swNodalApPer.close();

      //Calculate the whole run time
      System.out.println("Program completed successfully.");
      finish = System.currentTimeMillis();
      System.out.println(String.format("Total run time = %10.4f seconds.", (finish - start) / 1000.0));


   }

   // Open file base on specified mode and check for error
   public static BufferedWriter FileOpen(String fileName) 
   {
      // File contains all obs/els test cases
      try
      {
         BufferedWriter sw = new BufferedWriter(new FileWriter(fileName));
         return sw;
      }
      catch (IOException e)
      {
         e.printStackTrace();
         return null;
      }
   }


   // Print header to output file
   public static void PrintHeader(BufferedWriter sw, String infoStr, String inFile,
                    double startTime, double stopTime, double stepSize) throws IOException 
   {
      sw.write(infoStr + "\n\n");
      sw.write("EPHEMERIS GENERATED BY SGP4 USING THE WGS-72 EARTH MODEL\n");
      sw.write("COORDINATE FRAME=TRUE EQUATOR AND MEAN EQUINOX OF EPOCH\n");
      sw.write("USING THE FK5 MEAN OF J2000 TIME AND REFERENCE FRAME\n\n");
      sw.write("INPUT FILE = " + inFile + "\n");
      sw.write("Start Time = " + String.format("%f14.4", startTime) + " min from epoch\n");
      sw.write("Stop Time  = " + String.format("%f14.4", stopTime) + " min from epoch\n");
      sw.write("Step size  = " + String.format("%f14.4", stepSize) + " min\n\n\n");
   }


   // Print position and velocity
   public static void PrintPosVel(BufferedWriter sw, double mse, double[] pos, double[] vel) throws IOException
   {
      sw.write(String.format(" %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f\n",
         mse, pos[0], pos[1], pos[2], vel[0], vel[1], vel[2]));
   }


   // Print osculating Keplerian elements
   public static void PrintOscEls(BufferedWriter sw, double mse, double[] oscKep) throws IOException
   {
      double trueAnomaly = JniAstroFunc.CompTrueAnomaly(oscKep);

      sw.write(String.format(" %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f\n",
         mse, oscKep[0], oscKep[1], oscKep[2], oscKep[4], oscKep[5], trueAnomaly));
   }


   // Print mean Keplerian elements
   public static void PrintMeanEls(BufferedWriter sw, double mse, double[] meanKep) throws IOException
   {
      double meanMotion = JniAstroFunc.AToN(meanKep[0]);

      sw.write(String.format(" %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f\n",
         mse, meanMotion, meanKep[1], meanKep[2], meanKep[4], meanKep[5], meanKep[3]));
   }


   // Print latitude, longitude, height, and position
   public static void PrintLLH(BufferedWriter sw, double mse, double[] llh, double[] pos) throws IOException
   {
      sw.write(String.format(" %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f\n",
         mse, llh[0], llh[1], llh[2], pos[0], pos[1], pos[2]));

   }


   // Print nodal period, apogee, perigee
   public static void PrintNodalApPer(BufferedWriter sw, double mse, double n, double[] nodalApPer) throws IOException
   {
      sw.write(String.format(" %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f\n",
         mse,
         nodalApPer[0],
         (MPD / nodalApPer[0]),
         n,
         MPD / n,
         nodalApPer[1],
         nodalApPer[2]));
   }

   public static void CalcStartStopTime(double epoch, double[] timeArr)
   {
      int[] startFrEpoch = new int [1];
      int[] stopFrEpoch = new int [1];
      double[] startTime = new double [1];
      double[] stopTime = new double [1];
      double[] stepSize = new double [1];

      // Get prediction control data
      JniTimeFunc.Get6P(startFrEpoch, stopFrEpoch, startTime, stopTime, stepSize);

      // Compute start/stop times - using days since 1950 UTC
      // user selects start time in minutes since epoch
      if (startFrEpoch[0] == 1)
         timeArr[0] = epoch + (startTime[0] / 1440);
      else // user selects start time in days since 1950 UTC
         timeArr[0] = startTime[0];

      // user selects stop time in minutes since epoch
      if (stopFrEpoch[0] == 1)
         timeArr[1] = epoch + (stopTime[0] / 1440);
      else // user selects stop time in days since 1950 UTC
         timeArr[1] = stopTime[0];

      if(timeArr[0] > timeArr[1])
         timeArr[2] = -Math.abs(stepSize[0]);
      else
         timeArr[2] = Math.abs(stepSize[0]);
   }
}
