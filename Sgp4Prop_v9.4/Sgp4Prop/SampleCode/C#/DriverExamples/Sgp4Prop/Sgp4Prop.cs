/*
   Purpose:
      This program shows how a C# program can call the Astrodynamic Standard Dlls to propagate
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

using System;
using System.IO;
using AFSPC.AstroStds.Wrappers;
using AFSPC.AstroStds.Utilities;

namespace Sgp4Prop
{
   class Sgp4Prop
   {
      [MTAThread]
      public static void Main(string[] args)
      {
         const double EPSI = 0.00050;	/*	TIME TOLERANCE IN SEC.	*/

         StreamWriter swOscState;	   // Osculating state vector
         StreamWriter swOscElem;	      // Osculating Keplerian elements
         StreamWriter swMeanElem;	   // Mean Keplerian Elements				
         StreamWriter swLLH;	         // Latitude,longitude,height,pos
         StreamWriter swNodalApPer;	   // Nodal period,apogee,perigee,pos


         string inFile, outFile;

         string logFile = "sgp4.log";

         byte[] sgp4DllInfo = new byte[DllMainWrapper.INFOSTRLEN];
         string errMsg;

         byte[] l1 = new byte[DllMainWrapper.INPUTCARDLEN];
         byte[] l2 = new byte[DllMainWrapper.INPUTCARDLEN];


         int errCode;
         int numSats;

         double mse, ds50UTC;
         double meanMotion;

         long[] satKeys;

         // Arrays that store propagator output data
         double[] pos = new double[3];              // Position (km)
         double[] vel = new double[3];              // Velocity (km/s)
         double[] llh = new double[3];              // Latitude(deg), Longitude(deg), Height above Geoid (km)
         double[] meanKep = new double[6];          // Mean Keplerian elements
         double[] oscKep = new double[6];           // Osculating Keplerian elements
         double[] nodalApPer = new double[3];       // Nodal period, apogee, perigee

         string mseTitle;

         int start, finish;

         Console.WriteLine("Program starts.\n");
         start = Environment.TickCount;

         inFile = "";
         outFile = "";


         // This program is getting input parameters from the command line.
         // Follow the instruction to pass parameters in the right order.
         if (args.Length == 2)
         {

            inFile = args[0];
            outFile = args[1];
            Console.WriteLine("Input file  = {0}", inFile);
            Console.WriteLine("Output file = {0}", outFile);
         }
         else
         {
            Console.WriteLine("Error in number of parameters passed. Please see the usage.\n\n\n");
            Console.WriteLine("Usage    : Sgp4Prop inFile outFile\n\n");
            Console.WriteLine("inFile   : File contains TLEs and 6P-Card (which controls start, stop times and step size)\n");
            Console.WriteLine("outFile  : Base name for five output files\n");
            System.Environment.Exit(1);
         }

         // Load Tles from the input file
         errCode = TleWrapper.TleLoadFile(inFile);
         if (errCode != 0)
            DllMainWrapper.ShowMsgAndTerminate();

         // Load 6P-Card 
         errCode = TimeFuncWrapper.TConLoadFile(inFile);
         if (errCode != 0)
            DllMainWrapper.ShowMsgAndTerminate();

         // Log diagnostic information to a log file. This is optional
         //-----------------------------------------------------------
         errCode = DllMainWrapper.OpenLogFile(logFile);
         if (errCode != 0)
            DllMainWrapper.ShowMsgAndTerminate();
            

         // Count number of satellites currently loaded in memory
         numSats = TleWrapper.TleGetCount();

         // Using dinamic array
         satKeys = new long[numSats];

         // Get all the satellites' ids from memory and store them in the local array
         TleWrapper.TleGetLoaded(2, satKeys);  // Get the satKeys in the order they were read

         // Get information about the current DLL
         Sgp4PropWrapper.Sgp4GetInfo(sgp4DllInfo);
         Console.WriteLine(Utility.BytesToString(sgp4DllInfo));


         // File IO
         swOscState = Utility.FileOpen(outFile + "_OscState.txt");
         swOscElem = Utility.FileOpen(outFile + "_OscElem.txt");
         swMeanElem = Utility.FileOpen(outFile + "_MeanElem.txt");
         swLLH = Utility.FileOpen(outFile + "_LatLonHeight.txt");
         swNodalApPer = Utility.FileOpen(outFile + "_NodalApPer.txt");


         mseTitle = "TSINCE (MIN)";

         string oscStateTitle   = "           X (KM)           Y (KM)           Z (KM)      XDOT (KM/S)       YDOT(KM/S)    ZDOT (KM/SEC)";
         string oscElemTitle    = "           A (KM)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)   TRUE ANOM(DEG)";
         string meanElemTitle   = "     N (REVS/DAY)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)         MA (DEG)";
         string llhTitle        = "         LAT(DEG)        LON (DEG)          HT (KM)           X (KM)           Y (KM)           Z (KM)";
         string nodalApPerTitle = "   NODAL PER(MIN)1/NODAL(REVS/DAY)       N(REVS/DY)    ANOM PER(MIN)      APOGEE (KM)      PERIGEE(KM)";

         PrintHeader(swOscState, Utility.BytesToString(sgp4DllInfo), inFile);
         swOscState.WriteLine("{0, 17}{1}\n", mseTitle, oscStateTitle);

         PrintHeader(swOscElem, Utility.BytesToString(sgp4DllInfo), inFile);
         swOscElem.WriteLine("{0, 17}{1}\n", mseTitle, oscElemTitle);

         PrintHeader(swMeanElem, Utility.BytesToString(sgp4DllInfo), inFile);
         swMeanElem.WriteLine("{0, 17}{1}\n", mseTitle, meanElemTitle);

         PrintHeader(swLLH, Utility.BytesToString(sgp4DllInfo), inFile);
         swLLH.WriteLine("{0, 17}{1}\n", mseTitle, llhTitle);

         PrintHeader(swNodalApPer, Utility.BytesToString(sgp4DllInfo), inFile);
         swNodalApPer.WriteLine("{0, 17}{1}\n", mseTitle, nodalApPerTitle);


         // Loop through all the loaded satellites
         foreach (long satKey in satKeys)
         {
            errCode = TleWrapper.TleGetLines(satKey, l1, l2); //, 80, 80);
            if (errCode != 0)
            {
               Console.WriteLine(DllMainWrapper.GetLastErrMsgStr());
               continue;
            }

            // Print two-line-element set for each satellite
            swOscState.WriteLine  ("\n {0}\n {1}\n", Utility.BytesToString(l1), Utility.BytesToString(l2));
            swOscElem.WriteLine   ("\n {0}\n {1}\n", Utility.BytesToString(l1), Utility.BytesToString(l2));
            swMeanElem.WriteLine  ("\n {0}\n {1}\n", Utility.BytesToString(l1), Utility.BytesToString(l2));
            swLLH.WriteLine       ("\n {0}\n {1}\n", Utility.BytesToString(l1), Utility.BytesToString(l2));
            swNodalApPer.WriteLine("\n {0}\n {1}\n", Utility.BytesToString(l1), Utility.BytesToString(l2));

            // Initialize the satellite before propagating it
            errCode = Sgp4PropWrapper.Sgp4InitSat(satKey);
            if (errCode != 0)
            {
               Console.WriteLine(DllMainWrapper.GetLastErrMsgStr());
               continue;
            }

            byte[] valueStr = new byte[DllMainWrapper.GETSETSTRLEN];

            // Get satellite's epoch time (in date time group format)
            TleWrapper.TleGetField(satKey, TleWrapper.XF_TLE_EPOCH, valueStr);

            // Convert date time group format to days since 1950 value
            double epochDs50UTC = TimeFuncWrapper.DTGToUTC(Utility.BytesToString(valueStr));

            double startTime, stopTime, stepSize;

            // Compute start/stop times and step size from the input 6P card
            CalcStartStopTime(epochDs50UTC, out startTime, out stopTime, out stepSize);


            // Loop through all the time steps
            ds50UTC = startTime;
            int step = 0;
	         while(true)
	         {
               if(stepSize >= 0 && ds50UTC >= stopTime)
                  break;
               else if(stepSize < 0 && ds50UTC <= stopTime)
                  break;

               ds50UTC = startTime + (step * stepSize / 1440.0);

               if ((stepSize >= 0 && ds50UTC + (EPSI / 86400) > stopTime) ||
                  (stepSize < 0 && ds50UTC - (EPSI / 86400) < stopTime))
                  ds50UTC = stopTime;
         
               // Propagate the current satellite to the time specified in days since 1950 UTC
		         errCode = Sgp4PropWrapper.Sgp4PropDs50UTC(satKey, ds50UTC, out mse, pos, vel, llh);

               if (errCode != 0)
               {
                  errMsg = DllMainWrapper.GetLastErrMsgStr();
                  Console.WriteLine(errMsg);

                  // Write error message to files
                  swOscState.WriteLine(errMsg);
                  swOscElem.WriteLine(errMsg);
                  swMeanElem.WriteLine(errMsg);
                  swLLH.WriteLine(errMsg);
                  swNodalApPer.WriteLine(errMsg);
                  break;
               }

               //Compute/Retrieve other propagator output data
               //----------------------------------------------------------------
               Sgp4PropWrapper.Sgp4GetPropOut(satKey, Sgp4PropWrapper.XF_SGP4OUT_OSC_KEP, oscKep);
               Sgp4PropWrapper.Sgp4GetPropOut(satKey, Sgp4PropWrapper.XF_SGP4OUT_MEAN_KEP, meanKep);
               Sgp4PropWrapper.Sgp4GetPropOut(satKey, Sgp4PropWrapper.XF_SGP4OUT_NODAL_AP_PER, nodalApPer);

               // Print position and velocity
               PrintPosVel(swOscState, mse, pos, vel);

               // Print osculating Keplerian elements
               PrintOscEls(swOscElem, mse, oscKep);

               // Print mean Keplerian elements
               PrintMeanEls(swMeanElem, mse, meanKep);

               // Print lat lon height and position
               PrintLLH(swLLH, mse, llh, pos);

               // Print nodal period, apogee, perigee, and others
               meanMotion = AstroFuncWrapper.AToN(meanKep[0]);
               PrintNodalApPer(swNodalApPer, mse, meanMotion, nodalApPer);

               step++;
            }

            // Remove this satellite if no longer needed
            if (Sgp4PropWrapper.Sgp4RemoveSat(satKey) != 0)
               DllMainWrapper.ShowMsgAndTerminate();

         }

         // Close output files
         swOscState.Close();
         swOscElem.Close();
         swMeanElem.Close();
         swLLH.Close();
         swNodalApPer.Close();

         // Close log file if needed
         DllMainWrapper.CloseLogFile();

         //Calculate the whole run time
         Console.WriteLine("Program completed successfully.");
         finish = Environment.TickCount;
         Console.WriteLine("Total run time = " + ((finish - start) / 1000.0).ToString() + " seconds.");
      }
 

      // Print header to output file
      public static void PrintHeader(StreamWriter sw, string infoStr, string inFile)
      {
         if (sw != null)
         {
            sw.WriteLine("{0}\n\n", infoStr);
            sw.WriteLine("{0}", "EPHEMERIS GENERATED BY SGP4 USING THE WGS-72 EARTH MODEL");
            sw.WriteLine("{0}", "COORDINATE FRAME=TRUE EQUATOR AND MEAN EQUINOX OF EPOCH");
            sw.WriteLine("{0}", "USING THE FK5 MEAN OF J2000 TIME AND REFERENCE FRAME\n");
            sw.WriteLine("{0}{1}\n", "INPUT FILE = ", inFile);
         }

         int startFrEpoch, stopFrEpoch;
         double startTime, stopTime, stepSize;
         
         startFrEpoch = stopFrEpoch = 0;
         startTime = stopTime = stepSize = 0;

         // Get prediction control data 
         TimeFuncWrapper.Get6P(out startFrEpoch, out stopFrEpoch, out startTime, out stopTime, out stepSize);
         if (startFrEpoch == 1)
            sw.WriteLine("{0}{1,14:F4}{2}", "Start Time = ", startTime, " min from epoch");
         else
            sw.WriteLine("{0}{1}", "Start Time = ", TimeFuncWrapper.UTCToDtg20Str(startTime));


         if (stopFrEpoch == 1)
            sw.WriteLine("{0}{1,14:F4}{2}", "Stop Time  = ", stopTime, " min from epoch");
         else
            sw.WriteLine("{0}{1}", "Stop Time  = ", TimeFuncWrapper.UTCToDtg20Str(stopTime));

         sw.WriteLine("{0}{1,14:F4}{2}", "Step size  = ", stepSize, " min\n\n");


      }


      // Print position and velocity 
      public static void PrintPosVel(StreamWriter sw, double mse, double[] pos, double[] vel)
      {
         if (sw != null)
            sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}",
               mse, pos[0], pos[1], pos[2], vel[0], vel[1], vel[2]);

      }


      // Print osculating Keplerian elements
      public static void PrintOscEls(StreamWriter sw, double mse, double[] oscKep)
      {
         double TrueAnomaly_deg = AstroFuncWrapper.CompTrueAnomaly(oscKep);

         if (sw != null)
            sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}",
               mse, oscKep[0], oscKep[1], oscKep[2], oscKep[4], oscKep[5], TrueAnomaly_deg);

      }


      // Print mean Keplerian elements
      public static void PrintMeanEls(StreamWriter sw, double mse, double[] meanKep)
      {
         double meanMotion = AstroFuncWrapper.AToN(meanKep[0]);

         if (sw != null)
            sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}",
               mse, meanMotion, meanKep[1], meanKep[2], meanKep[4], meanKep[5], meanKep[3]);

      }


      // Print latitude, longitude, height, and position
      public static void PrintLLH(StreamWriter sw, double mse, double[] llh, double[] pos)
      {
         if (sw != null)
            sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}",
               mse, llh[0], llh[1], llh[2], pos[0], pos[1], pos[2]);

      }


      // Print nodal period, apogee, perigee
      public static void PrintNodalApPer(StreamWriter sw, double mse, double n, double[] nodalApPer)
      {
         if (sw != null)
            sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}",
               mse,
               nodalApPer[0],
               (1440.0 / nodalApPer[0]),
               n,
               1440.0 / n,
               nodalApPer[1],
               nodalApPer[2]);
      }

      // Calculate start/stop times and step size from 6P card (TimeFunc dll)
      private static void CalcStartStopTime(double epoch, out double tStart, out double tStop, out double tStep)
      {
         int startFrEpoch, stopFrEpoch;
         double startTime, stopTime, stepSize;

         startFrEpoch = stopFrEpoch = 0;
         startTime = stopTime = stepSize = 0;

         // Get prediction control data from 6P card
         TimeFuncWrapper.Get6P(out startFrEpoch, out stopFrEpoch, out startTime, out stopTime, out stepSize);

         // Compute start/stop times - using days since 1950 UTC
         // user selects start time in minutes since epoch         
         if (startFrEpoch == 1)
            tStart = epoch + (startTime / 1440);
         else
            tStart = startTime;

         // user selects stop time in minutes since epoch
         if (stopFrEpoch == 1)
            tStop = epoch + (stopTime / 1440);
         else
            tStop = stopTime;

         tStep = stepSize;

      }
   }
}
