'Purpose:
'   This program shows how a VB.Net program can call the Astrodynamic Standard libraries to propagate
'   satellites to the requested time using SGP4 method.

'   The program reads in user's input and output files. The program generates an 
'   ephemeris of position and velocity for each satellite read in. In addition, the program 
'   also generates other sets of orbital elements such as osculating Keplerian elements, 
'   mean Keplerian elements, latitude/longitude/height/pos, and nodal period/apogee/perigee/pos. 
'   Totally, the program prints results to five different output files. 


'Usage: Command line format
'   Sgp4Prop inFile outFile
'   inFile   : File contains TLEs and 6P-Card (which controls start, stop times and step size)
'   outFile  : Base name for five output files

Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Text
Imports System.IO
Imports System.Diagnostics
Imports System.Text.RegularExpressions
Imports AFSPC.AstroStds.Utilities
Imports AFSPC.AstroStds.Wrappers





Module Sgp4Prop

   Sub Main(ByVal args() As String)

      Console.WriteLine("Please specify the correct path to the AstroStds library by modifying ASTROSTDDLLPATH  attribute in Utility class")
      Console.WriteLine("Current AstroStds Path = " + Utility.ASTROSTDDLLPATH)

      Const EPSI As Double = 0.0005       ' TIME TOLERANCE IN SEC.
      Dim swOscState As StreamWriter      ' Osculating state vector
      Dim swOscElem As StreamWriter       ' Osculating Keplerian elements
      Dim swMeanElem As StreamWriter      ' Mean Keplerian Elements				
      Dim swLLH As StreamWriter           ' Latitude,longitude,height,pos
      Dim swNodalApPer As StreamWriter    ' Nodal period,apogee,perigee,pos


      Dim inFile, outFile As String
      Dim startTime, stopTime, stepSize As Double

      Dim logFile As String = "sgp4prop.log"

      Dim sgp4DllInfo(DllMainWrapper.INFOSTRLEN - 1) As Byte
      Dim errMsg(DllMainWrapper.LOGMSGLEN - 1) As Byte

      Dim l1(DllMainWrapper.INPUTCARDLEN - 1) As Byte
      Dim l2(DllMainWrapper.INPUTCARDLEN - 1) As Byte

      Dim errCode As Integer
      Dim numSats As Integer
      Dim stepCount As Integer


      Dim mse, ds50UTC As Double
      Dim meanMotion As Double

      Dim satKeys() As Long
      Dim satKey As Long



      ' Arrays that store propagator output data
      Dim pos(2) As Double          ' Position (km)
      Dim vel(2) As Double          ' Velocity (km/s)
      Dim llh(2) As Double          ' Latitude(deg), Longitude(deg), Height above Geoid (km)
      Dim meanKep(5) As Double      ' Mean Keplerian elements
      Dim oscKep(5) As Double       ' Osculating Keplerian elements
      Dim nodalApPer(2) As Double   ' Nodal period, apogee, perigee

      Dim mseTitle As String

      Dim start, finish As Integer
      Dim newLine As String = Environment.NewLine

      Console.WriteLine("Program starts.")
      start = Environment.TickCount

      inFile = ""
      outFile = ""
      startTime = stopTime = stepSize = 0


      ' This program is getting input parameters from the command line.
      ' Follow the instruction to pass parameters in the right order.
      If (args.Length = 2) Then

         inFile = args(0)
         outFile = args(1)
         Console.WriteLine("Input file  = {0}", inFile)
         Console.WriteLine("Output file = {0}", outFile)
      Else
         Console.WriteLine("Error in number of parameters passed. Please see the usage.")
         Console.WriteLine("Usage    : Sgp4Prop inFile outFile")
         Console.WriteLine("inFile   : File contains TLEs and 6P-Card (which controls start, stop times and step size)")
         Console.WriteLine("outFile  : Base name for five output files")
         System.Environment.Exit(1)
      End If


      ' Log diagnostic information to a log file. This is optional
      '-----------------------------------------------------------
      errCode = DllMainWrapper.OpenLogFile(logFile)
      If (errCode <> 0) Then
         DllMainWrapper.ShowMsgAndTerminate()
      End If

      ' Load Tles from the input file
      errCode = TleWrapper.TleLoadFile(inFile)
      If (errCode <> 0) Then
         DllMainWrapper.ShowMsgAndTerminate()
      End If

      ' Load 6P-Card 
      errCode = TimeFuncWrapper.TConLoadFile(inFile)
      If (errCode <> 0) Then
         DllMainWrapper.ShowMsgAndTerminate()
      End If

      ' Count number of satellites currently loaded in memory
      numSats = TleWrapper.TleGetCount()

      ' Using dinamic array
      ' Using dinamic array
      ReDim satKeys(numSats)

      ' Get all the satellites' ids from memory and store them in the local array
      TleWrapper.TleGetLoaded(2, satKeys)  ' Get the satKeys in the order they were read

      ' Get information about the current DLL
      Sgp4PropWrapper.Sgp4GetInfo(sgp4DllInfo)
      Console.WriteLine(Utility.BytesToString(sgp4DllInfo))


      ' File IO
      swOscState = FileOpen(outFile + "_OscState.txt")
      swOscElem = FileOpen(outFile + "_OscElem.txt")
      swMeanElem = FileOpen(outFile + "_MeanElem.txt")
      swLLH = FileOpen(outFile + "_LatLonHeight.txt")
      swNodalApPer = FileOpen(outFile + "_NodalApPer.txt")


      mseTitle = "TSINCE (MIN)"

      Dim oscStateTitle As String = "           X (KM)           Y (KM)           Z (KM)      XDOT (KM/S)       YDOT(KM/S)    ZDOT (KM/SEC)"
      Dim oscElemTitle As String = "           A (KM)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)   TRUE ANOM(DEG)"
      Dim meanElemTitle As String = "     N (REVS/DAY)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)         MA (DEG)"
      Dim llhTitle As String = "         LAT(DEG)        LON (DEG)          HT (KM)           X (KM)           Y (KM)           Z (KM)"
      Dim nodalApPerTitle As String = "   NODAL PER(MIN)1/NODAL(REVS/DAY)       N(REVS/DY)    ANOM PER(MIN)      APOGEE (KM)      PERIGEE(KM)"


      PrintHeader(swOscState, Utility.BytesToString(sgp4DllInfo), inFile)
      swOscState.WriteLine(Regex.Unescape("{0, 17}{1}\n"), mseTitle, oscStateTitle)

      PrintHeader(swOscElem, Utility.BytesToString(sgp4DllInfo), inFile)
      swOscElem.WriteLine(Regex.Unescape("{0, 17}{1}\n"), mseTitle, oscElemTitle)

      PrintHeader(swMeanElem, Utility.BytesToString(sgp4DllInfo), inFile)
      swMeanElem.WriteLine(Regex.Unescape("{0, 17}{1}\n"), mseTitle, meanElemTitle)

      PrintHeader(swLLH, Utility.BytesToString(sgp4DllInfo), inFile)
      swLLH.WriteLine(Regex.Unescape("{0, 17}{1}\n"), mseTitle, llhTitle)

      PrintHeader(swNodalApPer, Utility.BytesToString(sgp4DllInfo), inFile)
      swNodalApPer.WriteLine(Regex.Unescape("{0, 17}{1}\n"), mseTitle, nodalApPerTitle)


      ' Loop through all the loaded satellites
      For i As Integer = 0 To (numSats - 1)
         satKey = satKeys(i)
         errCode = Sgp4PropWrapper.Sgp4InitSat(satKey)
         If (errCode <> 0) Then
            Console.WriteLine(DllMainWrapper.GetLastErrMsgStr)
            Continue For
         End If

         errCode = TleWrapper.TleGetLines(satKey, l1, l2)
         If (errCode <> 0) Then
            Console.WriteLine(DllMainWrapper.GetLastErrMsgStr)
            Continue For
         End If


         ' Print two-line-element set for each satellite
         swOscState.WriteLine(Regex.Unescape("\n {0}\n {1}\n"),
                              Utility.BytesToString(l1), Utility.BytesToString(l2))
         swOscElem.WriteLine(Regex.Unescape("\n {0}\n {1}\n"),
                             Utility.BytesToString(l1), Utility.BytesToString(l2))
         swMeanElem.WriteLine(Regex.Unescape("\n {0}\n {1}\n"),
                              Utility.BytesToString(l1), Utility.BytesToString(l2))
         swLLH.WriteLine(Regex.Unescape("\n {0}\n {1}\n"),
                         Utility.BytesToString(l1), Utility.BytesToString(l2))
         swNodalApPer.WriteLine(Regex.Unescape("\n {0}\n {1}\n"),
                                Utility.BytesToString(l1), Utility.BytesToString(l2))

         Dim valueStr(DllMainWrapper.GETSETSTRLEN) As Byte

         If (TleWrapper.TleGetField(satKey, TleWrapper.XF_TLE_EPOCH, valueStr) <> 0) Then
            DllMainWrapper.ShowMsgAndTerminate()
         End If

         Dim epochDs50UTC As Double
         epochDs50UTC = TimeFuncWrapper.DTGToUTC(Utility.BytesToString(valueStr))  'Convert epoch string to days since 1950 UTC

         ' Compute start/stop times and step size from the input 6P card
         CalcStartStopTime(epochDs50UTC, startTime, stopTime, stepSize)

         stepCount = 0
         ds50UTC = startTime

         ' Loop through all the minute-since-epoch time steps
         Do While (True)
            If (stepSize >= 0 And ds50UTC >= stopTime) Then
               Exit Do
            ElseIf (stepSize < 0 And ds50UTC <= stopTime) Then
               Exit Do
            End If

            ds50UTC = startTime + (stepCount * stepSize / 1440.0)

            If ((stepSize >= 0 And ds50UTC + (EPSI / 86400) > stopTime) Or (stepSize < 0 And ds50UTC - (EPSI / 86400) < stopTime)) Then
               ds50UTC = stopTime
            End If

            ' Propagate the current satellite to the time specified in mse
            errCode = Sgp4PropWrapper.Sgp4PropDs50UTC(satKey, ds50UTC, mse, pos, vel, llh)

            If (errCode <> 0) Then
               DllMainWrapper.GetLastErrMsg(errMsg)

               ' Display error message to screen
               Console.WriteLine(Utility.BytesToString(errMsg))

               ' Write error message to files
               swOscState.WriteLine(Utility.BytesToString(errMsg))
               swOscElem.WriteLine(Utility.BytesToString(errMsg))
               swMeanElem.WriteLine(Utility.BytesToString(errMsg))
               swLLH.WriteLine(Utility.BytesToString(errMsg))
               swNodalApPer.WriteLine(Utility.BytesToString(errMsg))
               Exit Do
            End If


            'Compute/Retrieve other propagator output data
            '----------------------------------------------------------------
            Sgp4PropWrapper.Sgp4GetPropOut(satKey, Sgp4PropWrapper.XF_SGP4OUT_OSC_KEP, oscKep)
            Sgp4PropWrapper.Sgp4GetPropOut(satKey, Sgp4PropWrapper.XF_SGP4OUT_MEAN_KEP, meanKep)
            Sgp4PropWrapper.Sgp4GetPropOut(satKey, Sgp4PropWrapper.XF_SGP4OUT_NODAL_AP_PER, nodalApPer)

            ' Print position and velocity
            PrintPosVel(swOscState, mse, pos, vel)

            ' Print osculating Keplerian elements
            PrintOscEls(swOscElem, mse, oscKep)

            ' Print mean Keplerian elements
            PrintMeanEls(swMeanElem, mse, meanKep)

            ' Print lat lon height and position
            PrintLLH(swLLH, mse, llh, pos)

            ' Print nodal period, apogee, perigee, and others
            meanMotion = AstroFuncWrapper.AToN(meanKep(0))
            PrintNodalApPer(swNodalApPer, mse, meanMotion, nodalApPer)

            stepCount = stepCount + 1
         Loop

         ' Remove this satellite if no longer needed
         If (Sgp4PropWrapper.Sgp4RemoveSat(satKey) <> 0) Then
            DllMainWrapper.ShowMsgAndTerminate()
         End If
      Next

      ' Close output files
      swOscState.Close()
      swOscElem.Close()
      swMeanElem.Close()
      swLLH.Close()
      swNodalApPer.Close()

      ' Close log file if needed
      DllMainWrapper.CloseLogFile()


      'Calculate the whole run time
      Console.WriteLine("Program completed successfully.")
      finish = Environment.TickCount
      Console.WriteLine("Total run time = " + ((finish - start) / 1000.0).ToString() + " seconds.")
   End Sub


   ' Open file base on specified mode and check for error
   Public Function FileOpen(ByVal fileName As String) As StreamWriter
      Dim fs As FileStream
      Dim sw As StreamWriter = StreamWriter.Null


      ' File contains all obs/els test cases
      Try
         fs = New FileStream(fileName, FileMode.Create, FileAccess.Write)
         sw = New StreamWriter(fs)
      Catch
         Console.WriteLine("Error opening file " + fileName, "File IO Error")
         System.Environment.Exit(1)
      End Try


      Return sw

   End Function



   ' Print header to output file
   Public Sub PrintHeader(ByVal sw As StreamWriter, ByVal infoStr As String, ByVal inFile As String)

      Dim startTime As Double
      Dim stopTime As Double
      Dim stepSize As Double
      Dim startFrEpoch As Integer
      Dim stopFrEpoch As Integer

      If (Not sw.Equals(StreamWriter.Null)) Then
         sw.WriteLine(Regex.Unescape("{0}\n\n"), infoStr)
         sw.WriteLine("{0}", "EPHEMERIS GENERATED BY SGP4 USING THE WGS-72 EARTH MODEL")
         sw.WriteLine("{0}", "COORDINATE FRAME=TRUE EQUATOR AND MEAN EQUINOX OF EPOCH")
         sw.WriteLine(Regex.Unescape("{0}\n"), "USING THE FK5 MEAN OF J2000 TIME AND REFERENCE FRAME")
         sw.WriteLine(Regex.Unescape("{0}{1}\n"), "INPUT FILE = ", inFile)

         ' Get prediction control data 
         TimeFuncWrapper.Get6P(startFrEpoch, stopFrEpoch, startTime, stopTime, stepSize)

         If (startFrEpoch) Then
            sw.WriteLine("{0}{1,14:F4}{2}", "Start Time = ", startTime, " min from epoch")
         Else
            sw.WriteLine("{0}{1}", "Start Time = ", TimeFuncWrapper.UTCToDtg20Str(startTime))
         End If

         If (stopFrEpoch) Then
            sw.WriteLine("{0}{1,14:F4}{2}", "Stop Time  = ", stopTime, " min from epoch")
         Else
            sw.WriteLine("{0}{1}", "Stop Time  = ", TimeFuncWrapper.UTCToDtg20Str(stopTime))
         End If

         sw.WriteLine("{0}{1,14:F4}{2}", "Step size  = ", stepSize, Regex.Unescape(" min\n\n"))
      End If
   End Sub


   ' Print position and velocity 
   Public Sub PrintPosVel(ByVal sw As StreamWriter, ByVal mse As Double, _
                          ByVal pos() As Double, ByVal vel() As Double)
      If (Not sw.Equals(StreamWriter.Null)) Then
         sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}", _
                      mse, pos(0), pos(1), pos(2), vel(0), vel(1), vel(2))
      End If
   End Sub


   ' Print osculating Keplerian elements
   Public Sub PrintOscEls(ByVal sw As StreamWriter, ByVal mse As Double, ByVal oscKep() As Double)
      Dim trueAnomaly As Double = AstroFuncWrapper.CompTrueAnomaly(oscKep)

      If (Not sw.Equals(StreamWriter.Null)) Then
         sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}", _
            mse, oscKep(0), oscKep(1), oscKep(2), oscKep(4), oscKep(5), trueAnomaly)
      End If

   End Sub


   ' Print mean Keplerian elements
   Public Sub PrintMeanEls(ByVal sw As StreamWriter, ByVal mse As Double, ByVal meanKep() As Double)
      Dim meanMotion As Double = AstroFuncWrapper.AToN(meanKep(0))

      If (Not sw.Equals(StreamWriter.Null)) Then
         sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}", _
            mse, meanMotion, meanKep(1), meanKep(2), meanKep(4), meanKep(5), meanKep(3))
      End If
   End Sub


   ' Print latitude, longitude, height, and position
   Public Sub PrintLLH(ByVal sw As StreamWriter, ByVal mse As Double, _
                       ByVal llh() As Double, ByVal pos() As Double)
      If (Not sw.Equals(StreamWriter.Null)) Then
         sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}", _
            mse, llh(0), llh(1), llh(2), pos(0), pos(1), pos(2))
      End If
   End Sub


   ' Print nodal period, apogee, perigee
   Public Sub PrintNodalApPer(ByVal sw As StreamWriter, ByVal mse As Double, _
                              ByVal n As Double, ByVal nodalApPer() As Double)
      If (Not sw.Equals(StreamWriter.Null)) Then
         sw.WriteLine(" {0,17:F7}{1,17:F7}{2,17:F7}{3,17:F7}{4,17:F7}{5,17:F7}{6,17:F7}", _
            mse, _
            nodalApPer(0), _
            (1440.0 / nodalApPer(0)), _
            n, _
            1440.0 / n, _
            nodalApPer(1), _
            nodalApPer(2))
      End If
   End Sub



   ' Compute start stop time for each satellite using unit of days since 1950
   Private Sub CalcStartStopTime(ByVal epoch As Double, ByRef tStart As Double, ByRef tStop As Double, ByRef tStep As Double)

      Dim startFrEpoch, stopFrEpoch As Integer
      Dim startTime, stopTime, stepSize As Double

      startFrEpoch = stopFrEpoch = 0
      startTime = stopTime = stepSize = 0

      ' Get prediction control data 
      TimeFuncWrapper.Get6P(startFrEpoch, stopFrEpoch, startTime, stopTime, stepSize)

      ' Compute start/stop times - using days since 1950 UTC
      ' user selects start time in minutes since epoch
      If (startFrEpoch = 1) Then
         tStart = epoch + (startTime / 1440)
      Else
         tStart = startTime
      End If

      
      ' user selects stop time in minutes since epoch
      If (stopFrEpoch = 1) Then
         tStop = epoch + (stopTime / 1440)
      Else
         tStop = stopTime
      End If

      tStep = stepSize

   End Sub
End Module
'End Namespace
