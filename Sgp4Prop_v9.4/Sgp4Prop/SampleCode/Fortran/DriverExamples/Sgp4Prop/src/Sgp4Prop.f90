!   Purpose:
!      This program shows how a Fortran program can call the Astrodynamic Standard Dlls to propagate
!      satellites to the requested time using SGP4 method.
!
!      The program reads in user's input and output files. The program generates an 
!      ephemeris of position and velocity for each satellite read in. In addition, the program 
!      also generates other sets of orbital elements such as osculating Keplerian elements, 
!      mean Keplerian elements, latitude/longitude/height/pos, and nodal period/apogee/perigee/pos. 
!      Totally, the program prints results to five different output files. 
!      
!
!   Usage: Command line format
!      Sgp4Prop inFile outFile
!      inFile   : File contains TLEs and 6P-Card (which controls start, stop times and step size)
!      outFile  : Base name for five output files

program Sgp4Prop
   use Sgp4PropMod
   implicit none

   real(8) ::  EPSI	= 0.00050	! TIME TOLERANCE IN SEC.

   ! Predefined output file names
   character(*), parameter :: OSC_STATE = "_OscState.txt"
   character(*), parameter :: OSC_ELEM  = "_OscElem.txt"
   character(*), parameter :: MEAN_ELEM = "_MeanElem.txt"
   character(*), parameter :: LLH_ELEM  = "_LatLonHeight.txt"
   character(*), parameter :: NODAL_AP_PER = "_NodalApPer.txt"

   integer, parameter :: fpOscState = 101	   ! Osculating state vector
   integer, parameter :: fpOscElem = 102	   ! Osculating Keplerian elements
   integer, parameter :: fpMeanElem = 103	   ! Mean Keplerian Elements				
   integer, parameter :: fpLLH = 104	      ! Latitude,longitude,height,pos
   integer, parameter :: fpnodalApPer = 105	! Nodal period,apogee,perigee,pos

   character(512)  inFile, outFile
   character(512)  outputFileName
   character(80)   buf
   real(8) startTime 
   real(8) stopTime
   real(8) stepSize

   character(512) :: logFile = "f_sgp4.log"

   character(128)  sgp4DllInfo, errMsg
   character(512)  valueStr

   character(512)  line1
   character(512)  line2

   integer   errCode
   integer   numSats
   integer   i
   integer   step
   integer   ioStatus

   real(8) mse, ds50UTC, epochDs50UTC
   real(8) meanMotion

   integer(8), allocatable :: pSatKeys(:)
   integer(8) satKeys(100)
   
   
   integer(2) :: tmpInt

   ! Arrays that store propagator output data
   real(8) &
      pos(3),         &  !Position (km)
      vel(3),         &  !Velocity (km/s)
      llh(3),         &  !Latitude(deg), Longitude(deg), Height above Geoid (km)
      meanKep(6),     &  !Mean Keplerian elements
      oscKep(6),      &  !Osculating Keplerian elements
      nodalApPer(3)      !Nodal period, apogee, perigee


   integer start, finish, countRate 


   write(*, *) "Program starts." 
   call system_clock(start) 
   
   ! This program is getting input parameters from the command line.
   ! Follow the instruction to pass parameters in the right order.
   if (NARGS() == 3) then
		call getarg(1, inFile)
		call getarg(2, outFile) 
      write(*, '(A, A )')    "Input file  = ", inFile 
      write(*, '(A, A)')     "Output file = ", outFile 
	else 
      write(*, '(A, /)') "Error in number of parameters passed. Please see the usage." 
      write(*, '(A)') "Usage    : Sgp4Prop inFile outFile startTime stopTime stepSize" 
      write(*, '(A)') "inFile   : File contains TLEs and 6P-Card (which controls start, stop times and step size)" 
      write(*, '(A)') "outFile  : Base name for five output files" 
      stop 
   end if

   !
   ! Log diagnostic information to a log file. This is optional
   !-----------------------------------------------------------
   errCode = OpenLogFile(logFile) 
   if (errCode /= 0) then
      call ShowMsgAndTerminate() 
   end if
   
   ! Load Tles from the input file
   errCode = TleLoadFile(inFile) 
   if (errCode /= 0) then
      call ShowMsgAndTerminate() 
   end if
   
   ! Load 6P-Card 
   errCode = TConLoadFile(inFile) 
   if (errCode /= 0) then
      call ShowMsgAndTerminate() 
   end if


   ! Count number of satellites currently loaded in memory
   numSats = TleGetCount() 

   ! Using dinamic array
   allocate(pSatKeys(numSats)) 
   
   ! Get all the satellites' ids from memory and store them in the local array
   call TleGetLoaded(2, pSatKeys)  ! Get the satKeys in the order they were read

   ! Get information about the current DLL
   call Sgp4GetInfo(sgp4DllInfo)
   write(*, '(A, /)') sgp4DllInfo


   write(outputFileName, '(A, A)') "testing", "testing"

   ! Open output files. Check to see if error occurs
   call FileOpen(fpOscState, adjustl(adjustr(outFile) // OSC_STATE))
   call FileOpen(fpOscElem, adjustl(adjustr(outFile)  // OSC_ELEM))
   call FileOpen(fpMeanElem, adjustl(adjustr(outFile)  // MEAN_ELEM))
   call FileOpen(fpLLH, adjustl(adjustr(outFile)  // LLH_ELEM))
   call FileOpen(fpnodalApPer, adjustl(adjustr(outFile)  // NODAL_AP_PER))


   ! Print header with output field names to files
   write(fpOscState, '(A, /)') &
   "      TSINCE (MIN)           X (KM)           Y (KM)           Z (KM)      XDOT (KM/S)       YDOT(KM/S)    ZDOT (KM/SEC)" 

   write(fpOscElem, '(A, /)') &
   "      TSINCE (MIN)           A (KM)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)   TRUE ANOM(DEG)" 

   write(fpMeanElem, '(A, /)') &
   "      TSINCE (MIN)     N (REVS/DAY)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)         MA (DEG)" 

   write(fpLLH, '(A, /)') &
   "      TSINCE (MIN)         LAT(DEG)        LON (DEG)          HT (KM)           X (KM)           Y (KM)           Z (KM)" 

   write(fpnodalApPer, '(A, /)') &
   "      TSINCE (MIN)   NODAL PER(MIN)1/NODAL(REVS/DAY)       N(REVS/DY)    ANOM PER(MIN)      APOGEE (KM)      PERIGEE(KM)" 


   ! Loop through all the TLEs in the input file
   do i = 1,numSats
      ! Initialize the satellite before propagating it
      if (Sgp4InitSat(pSatKeys(i)) /= 0) then
         call ShowMsgAndTerminate() 
      end if
   
      ! Return the two strings, line1 line2, representing the TLE
      if (TleGetLines(pSatKeys(i), line1, line2) /= 0) then
         call ShowMsgAndTerminate() 
      end if

      ! Print TLE for each satellite
      write(fpOscState,   '(/, 2(1X, A,/))') line1, line2 
      write(fpOscElem,    '(/, 2(1X, A,/))') line1, line2 
      write(fpMeanElem,   '(/, 2(1X, A,/))') line1, line2 
      write(fpLLH,        '(/, 2(1X, A,/))') line1, line2 
      write(fpnodalApPer, '(/, 2(1X, A,/))') line1, line2 

      if(TleGetField(pSatKeys(i), XF_TLE_EPOCH, valueStr) /= 0) then
         call ShowMsgAndTerminate() 
      end if         
      
      epochDs50UTC = DTGToUTC(valueStr)  ! Convert epoch string to days since 1950 UTC

      ! Compute start/stop times and step size from the input 6P card
      call CalcStartStopTime(epochDs50UTC, startTime, stopTime, stepSize)

      step = 0 
      ds50UTC = startTime 

      ! Loop through all the minute-since-epoch time steps
	   do while (.true.)
	      if(stepSize >= 0 .and. ds50UTC >= stopTime) then
            exit
         else if(stepSize < 0 .and. ds50UTC <= stopTime) then
            exit
         end if
         
         ds50UTC = startTime + (step * stepSize / 1440.0) 

         if ((stepSize >= 0 .and. ds50UTC + (EPSI / 86400) > stopTime) .or. &
             (stepSize < 0 .and. ds50UTC - (EPSI / 86400) < stopTime)) then
            ds50UTC = stopTime
         end if

	   
	      ! Propagate the current satellite to the time specified in mse
		   errCode = Sgp4PropDs50UTC(pSatKeys(i), ds50UTC, mse, pos, vel, llh) 

         ! Error or decay condition
         if (errCode /= 0) then
            call GetLastErrMsg(errMsg) 
            
            ! Display error message to screen
            write(*, '(A, /)') errMsg 

            ! Write error message to files
            write(fpOscState, '(A, /)') errMsg 
            write(fpOscElem, '(A, /)') errMsg 
            write(fpMeanElem, '(A, /)') errMsg 
            write(fpLLH, '(A, /)') errMsg 
            write(fpnodalApPer, '(A, /)') errMsg 

            exit  ! Move to the next satellite
         end if


         !Compute/Retrieve other propagator output data
         !----------------------------------------------------------------
         if (Sgp4GetPropOut(pSatKeys(i), XF_SGP4OUT_OSC_KEP, oscKep) /= 0) then
            call GetLastErrMsg(errMsg) 
            write(*, '(A, /)') errMsg 
            exit 
         end if
         
         if (Sgp4GetPropOut(pSatKeys(i), XF_SGP4OUT_MEAN_KEP, meanKep) /= 0) then
            call GetLastErrMsg(errMsg) 
            write(*, '(A, /)') errMsg 
            exit 
         end if
         
         if (Sgp4GetPropOut(pSatKeys(i), XF_SGP4OUT_NODAL_AP_PER, nodalApPer) /= 0) then
            call GetLastErrMsg(errMsg) 
            write(*, '(A, /)') errMsg 
            exit 
         end if



         ! Using AstroFunc dll to compute/convert to other propagator output data if needed
         !KepToPosVel(oscKep, pos, vel) 


         ! Print position and velocity
         call PrintPosVel(fpOscState, mse, pos, vel) 

         ! Print lat lon height and position
         call PrintLLH(fpLLH, mse, llh, pos) 

         ! Print osculating Keplerian elements
         call PrintOscEls(fpOscElem,  mse, oscKep) 

         ! Print mean Keplerian elements
         call PrintMeanEls(fpMeanElem, mse, meanKep) 

         ! Print nodal period, apogee, perigee, and others
         meanMotion = AToN(meanKep(1)) 
         call PrintNodalApPer(fpnodalApPer, mse, meanMotion, nodalApPer) 
         
         step = step + 1
      end do

      ! Remove this satellite if no longer needed
      if (Sgp4RemoveSat(pSatKeys(i)) /= 0) then
         call ShowMsgAndTerminate() 
      end if
   end do
   !-------------------------------------------------------------------------
   
   ! Remove all the satellites from memory if no longer needed
   !Sgp4RemoveAllSats() 

   ! Close all output files
   close(fpOscState)  
   close(fpOscElem) 
   close(fpMeanElem)  
   close(fpLLH) 
   close(fpnodalApPer) 

   ! Close log file if needed
   call CloseLogFile() 
   

   !Calculate the whole run time
   write(*, *) "Program completed successfully." 
   call system_clock(finish, countRate) 
   write(*, '(A, F10.2, A)') "Total run time = ", 1.0D0 * (finish - start) / countRate, " seconds" 

end program Sgp4Prop



