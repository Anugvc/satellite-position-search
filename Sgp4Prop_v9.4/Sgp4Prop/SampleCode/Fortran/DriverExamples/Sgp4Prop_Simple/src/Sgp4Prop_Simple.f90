!  Purpose:
!     This program shows how a Fortran program can call the Astrodynamic Standard Dlls to propagate
!     satellites to the requested time using SGP4 propagator.
!  
!     The program is simplified to show only the core functionalities of the involved dlls. 
!     File I/O and other output statements are intentionally not included for this purpose.
!  
!     Steps to implement the SGP4 propagator:
!     1. Load TLE(s) (TleAddSatFrLines, TleLoadFile, TleAddSatFrFieldsGP)
!     2. Initialize the loaded TLE(s) (Sgp4InitSat)
!     3. Propagate the initialized TLE(s) to the requested time 
!        (either minutes since epoch: Sgp4PropMse, or specific date: Sgp4PropDs50UTC, Sgp4PropDs50UtcPos, Sgp4PropDs50UtcLLH)


program Sgp4Prop_Simple
   use Sgp4PropMod
   implicit none

   real(8) startTime 
   real(8) endTime

   integer   errCode
   real(8)   mse, ds50UTC
   integer(8) satKey
   character(512) :: line1, line2
   character(20)  :: dtgStr
   
   ! Arrays that store propagator output data
   real(8) &
      pos(3),         &  ! Position (km) in TEME of Epoch
      vel(3),         &  ! Velocity (km/s) in TEME of Epoch
      llh(3)             ! Latitude(deg), Longitude(deg), Height above Geoid (km)

   line1 = '1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814'
   line2 = '2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199'
   
   ! load a TLE using strings (see TLE dll document)
   satKey = TleAddSatFrLines(line1, line2)
                             

   ! other ways to load TLEs into memory to work with
   !TleLoadFile(fileName);  ! load TLEs from a text file
   !TleAddSatFrFieldsGP();  ! load a TLE by passing its data fields

   ! initialize the loaded TLE before it can be propagated (see Sgp4Prop dll document)
   ! This is important!!!
   errCode = Sgp4InitSat(satKey)

   ! check to see if initialization was successful
   if (errCode /= 0) stop

   ! propagate using specific date, days since 1950 UTC 
   dtgStr = '00051.47568104' ! for example using "2000 051.051.47568104" as a start time
   startTime = DTGToUTC(dtgStr); ! convert date time group string "YYDDD.DDDDDDDD" to days since 1950, UTC (see TimeFunc dll document)
   endTime = startTime + 10;               ! from start time propagate for 10 days 
   ds50UTC = startTime
   
   ! propagate for 10 days from start time with 0.5 day step size
   do ds50UTC=startTime, endTime, 0.5
   
      errCode = Sgp4PropDs50UTC(satKey, ds50UTC, mse, pos, vel, llh); ! see Sgp4Prop dll document
      ! other available propagation methods
      !Sgp4PropDs50UtcLLH(satKey, ds50UTC, llh);
      !Sgp4PropDs50UtcPos(satKey, ds50UTC, pos);
   end do

   ! propagate using minutes since satellite's epoch
   ! propagate for 30 days since satellite's epoch with 1 day (1440 minutes) step size
   do mse = 0, (30 * 1440), 1440
      ! propagate the initialized TLE to the specified time in minutes since epoch
      errCode = Sgp4PropMse(satKey, mse, ds50UTC, pos, vel, llh); ! see Sgp4Prop dll document
   end do

   ! Remove loaded satellites if no longer needed
   errCode = TleRemoveSat(satKey)    ! remove loaded TLE from memory
   errCode = Sgp4RemoveSat(satKey)   ! remove initialized TLE from memory
   !errCode = TleRemoveAllSats();   ! remove all loaded TLEs from memory
   !errCode = Sgp4RemoveAllSats();  ! remove all initialized TLEs from memory
   
   write(*,*) "Program completed."

end program Sgp4Prop_Simple



