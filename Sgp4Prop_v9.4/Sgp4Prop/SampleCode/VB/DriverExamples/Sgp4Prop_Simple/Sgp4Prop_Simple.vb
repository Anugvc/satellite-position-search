'Purpose:
'   This program shows how a VB.Net program can call the Astrodynamic Standard libraries to propagate
'   satellites to the requested time using SGP4 propagator.

'   The program is simplified to show only the core functionalities of the involved dlls. 
'   File I/O and other output statements are intentionally not included for this purpose.

'   Steps to implement the SGP4 propagator:
'   1. Load and initialize all the required dlls. This step has already been handled 
'      automatically by implementing C#'s static constructor in each dll's wrapper class
'   2. Load TLE(s) (TleAddSatFrLines, TleLoadFile, TleAddSatFrFieldsGP)
'   3. Initialize the loaded TLE(s) (Sgp4InitSat)
'   4. Propagate the initialized TLE(s) to the requested time 
'      (either minutes since epoch: Sgp4PropMse, or specific date: Sgp4PropDs50UTC, Sgp4PropDs50UtcPos, Sgp4PropDs50UtcLLH)

Imports System
Imports AFSPC.AstroStds.Wrappers

Module Sgp4Prop_Simple

   Sub Main(ByVal args() As String)
      Dim errCode As Integer
      Dim satKey As Long

      ' Arrays that store propagator output data
      Dim pos(2) As Double          ' Position (km)
      Dim vel(2) As Double          ' Velocity (km/s)
      Dim llh(2) As Double          ' Latitude(deg), Longitude(deg), Height above Geoid (km)

      ' load a TLE using strings (see TLE dll document)
      satKey = TleWrapper.TleAddSatFrLines("1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814",
                                "2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199")

      ' other ways to load TLEs into memory to work with
      'TleWrapper.TleLoadFile(fileName)  ' load TLEs from a text file
      'TleWrapper.TleAddSatFrFieldsGP()  ' load a TLE by passing its data fields

      ' initialize the loaded TLE before it can be propagated (see Sgp4Prop dll document)
      ' This is important!!!
      errCode = Sgp4PropWrapper.Sgp4InitSat(satKey)

      ' check to see if initialization was successful
      If (errCode <> 0) Then
         System.Environment.Exit(1)
      End If

      ' propagate using specific date, days since 1950 UTC (for example using "2000 051.051.47568104" as a start time)
      Dim startTime As Double = TimeFuncWrapper.DTGToUTC("00051.47568104") ' convert date time group string "YYDDD.DDDDDDDD" to days since 1950, UTC (see TimeFunc dll document)
      Dim endTime As Double = startTime + 10               ' from start time propagate for 10 days 

      ' propagate for 10 days from start time with 0.5 day step size
      For ds50UTC As Double = startTime To endTime Step 0.5
         Dim mse As Double

         Sgp4PropWrapper.Sgp4PropDs50UTC(satKey, ds50UTC, mse, pos, vel, llh) ' see Sgp4Prop dll document
         ' other available propagation methods
         'Sgp4PropWrapper.Sgp4PropDs50UtcLLH(satKey, ds50UTC, llh)
         'Sgp4PropWrapper.Sgp4PropDs50UtcPos(satKey, ds50UTC, pos)
      Next


      ' propagate using minutes since satellite's epoch
      ' propagate for 30 days since satellite's epoch with 1 day (1440 minutes) step size
      For mse As Double = 0 To (30 * 1440) Step 1440
         Dim ds50UTC As Double

         ' propagate the initialized TLE to the specified time in minutes since epoch
         Sgp4PropWrapper.Sgp4PropMse(satKey, mse, ds50UTC, pos, vel, llh) ' see Sgp4Prop dll document
      Next


      ' Remove loaded satellites if no longer needed
      TleWrapper.TleRemoveSat(satKey)   ' remove loaded TLE from memory
      Sgp4PropWrapper.Sgp4RemoveSat(satKey)  ' remove initialized TLE from memory
      'TleWrapper.TleRemoveAllSats()   ' remove all loaded TLEs from memory
      'Sgp4PropWrapper.Sgp4RemoveAllSats()  ' remove all initialized TLEs from memory

      Console.WriteLine("Program has completed!")

   End Sub
End Module
'End Namespace
