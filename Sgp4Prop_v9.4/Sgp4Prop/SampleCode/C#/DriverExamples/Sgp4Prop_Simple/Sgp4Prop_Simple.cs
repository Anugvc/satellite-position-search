/*
   Purpose:
      This program shows how a C# program can call the Astrodynamic Standard Dlls to propagate
      satellites to the requested time using SGP4 propagator.

      The program is simplified to show only the core functionalities of the involved dlls. 
      File I/O and other output statements are intentionally not included for this purpose.

      Steps to implement the SGP4 propagator:
      1. Load and initialize all the required dlls. This step has already been handled 
	     automatically by implementing C#'s static constructor in each dll's wrapper class
      2. Load TLE(s) (TleAddSatFrLines, TleLoadFile, TleAddSatFrFieldsGP)
      3. Initialize the loaded TLE(s) (Sgp4InitSat)
      4. Propagate the initialized TLE(s) to the requested time 
         (either minutes since epoch: Sgp4PropMse, or specific date: Sgp4PropDs50UTC, Sgp4PropDs50UtcPos, Sgp4PropDs50UtcLLH)
*/


using System;
using AFSPC.AstroStds.Utilities;
using AFSPC.AstroStds.Wrappers;


namespace Sgp4Prop_Simple
{
   class Sgp4Prop_Simple
   {
      public static void Main()
      {
         int errCode;
         long satKey;

         // Arrays that store propagation data
         double[] pos = new double[3];   // Position (km) in TEME of Epoch
         double[] vel = new double[3];   // Velocity (km/s) in TEME of Epoch
         double[] llh = new double[3];   // Latitude(deg), Longitude(deg), Height above Geoid (km)

         // load a TLE using strings (see TLE dll document)
         satKey = TleWrapper.TleAddSatFrLines("1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814",
                                              "2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199");

         // other ways to load TLEs into memory to work with
         //TleWrapper.TleLoadFile(fileName);  // load TLEs from a text file
         //TleWrapper.TleAddSatFrFieldsGP();  // load a TLE by passing its data fields

         // initialize the loaded TLE before it can be propagated (see Sgp4Prop dll document)
         // This is important!!!
         errCode = Sgp4PropWrapper.Sgp4InitSat(satKey);

         // check to see if initialization was successful
         if (errCode != 0)
            return;

         // propagate using specific date, days since 1950 UTC (for example using "2000 051.051.47568104" as a start time)
         double startTime = TimeFuncWrapper.DTGToUTC("00051.47568104"); // convert date time group string "YYDDD.DDDDDDDD" to days since 1950, UTC (see TimeFunc dll document)
         double endTime = startTime + 10;               // from start time propagate for 10 days 

         // propagate for 10 days from start time with 0.5 day step size
         for (double ds50UTC = startTime; ds50UTC < endTime; ds50UTC += 0.5)
         {
            double mse;

            Sgp4PropWrapper.Sgp4PropDs50UTC(satKey, ds50UTC, out mse, pos, vel, llh); // see Sgp4Prop dll document
            // other available propagation methods
            //Sgp4PropWrapper.Sgp4PropDs50UtcLLH(satKey, ds50UTC, llh);
            //Sgp4PropWrapper.Sgp4PropDs50UtcPos(satKey, ds50UTC, pos);
         }

         // propagate using minutes since satellite's epoch
         // propagate for 30 days since satellite's epoch with 1 day (1440 minutes) step size
         for (double mse = 0; mse < (30 * 1440); mse += 1440)
         {
            double ds50UTC;

            // propagate the initialized TLE to the specified time in minutes since epoch
            Sgp4PropWrapper.Sgp4PropMse(satKey, mse, out ds50UTC, pos, vel, llh); // see Sgp4Prop dll document
         }

         // Remove loaded satellites if no longer needed
         TleWrapper.TleRemoveSat(satKey);   // remove loaded TLE from memory
         Sgp4PropWrapper.Sgp4RemoveSat(satKey);  // remove initialized TLE from memory
         //TleWrapper.TleRemoveAllSats();   // remove all loaded TLEs from memory
         //Sgp4PropWrapper.Sgp4RemoveAllSats();  // remove all initialized TLEs from memory

         Console.WriteLine("Program has completed!");
      }
   }
}
