! This wrapper file was generated automatically by the GenDllWrappers program.
module BamDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes Bam dll for use in the program
function BamInit(apAddr) bind(C, name = "BamInit") result(errCode)
   integer :: errCode	! 0 if the Bam dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function BamInit
!*******************************************************************************



! Returns information about the current version of Bam.dll. The information is placed in the string parameter you pass in
subroutine BamGetInfo(infoStr) bind(C, name = "BamGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Bam.dll
end subroutine BamGetInfo
!*******************************************************************************



! Computes the number of time steps using the input start/end times and the step size
function BamCompNumTSs(startDs50UTC, stopDs50UTC, stepSizeMin) bind(C, name = "BamCompNumTSs") result(numTSs)
   integer :: numTSs	! number of time steps computed from the input time span and step size
   real(8), value :: startDs50UTC   ! start time in days since 1950, UTC
   real(8), value :: stopDs50UTC   ! stop time in days since 1950, UTC
   real(8), value :: stepSizeMin   ! step size in minutes
end function BamCompNumTSs
!*******************************************************************************



! Computes and returns separate/missed distance data
! 
! The table below shows the indexes for the Separation Distance values contained in the extBamArr array:
! 
!     table
!     
!         Index
!         Index Interpretation
!     
!     0time at mininum average separate distances (ds50UTC)
!     1minimum average separate distance (km)
!     2average position X at minimum average separate distance (km)
!     3average position Y at minimum average separate distance (km)
!     4average position Z at minimum average separate distance (km)
!     5average velocity X at minimum average separate distance (km/s)
!     6average velocity Y at minimum average separate distance (km/s)
!     7average velocity Z at minimum average separate distance (km/s)
!     8average latitude at minimum average separate distance (deg)
!     9average longitude at minimum average separate distance (deg)
!     10average height at minimum average separate distance (km)
! 
! 
! The table below shows the indexes for the Miss Distance values contained in the extBamArr array:
! 
!     table
!     
!         Index
!         Index Interpretation
!     
!     20time at mininum average missed distances (ds50UTC)
!     21minimum average missed distance (km)
!     22average position X of satellites when they cross the pinch point plan (km)
!     23average position Y of satellites when they cross the pinch point plan (km)
!     24average position Z of satellites when they cross the pinch point plan (km)
!     25average velocity X of satellites when they cross the pinch point plan (km/s)
!     26average velocity Y of satellites when they cross the pinch point plan (km/s)
!     27average velocity Z of satellites when they cross the pinch point plan (km/s)
!     28average latitude of satellites when they cross the pinch point plan (deg)
!     29average longitude of satellites when they cross the pinch point plan (deg)
!     30average height of satellites when they cross the pinch point plan (km)
! 
subroutine BamCompute(satKeys, numSats, startDs50UTC, stopDs50UTC, stepSizeMin, avgSDs, avgMDs, extBamArr, errCode) &
bind(C, name = "BamCompute")
   integer(8), intent(in) :: satKeys(*)   ! array of satellite keys that wil be used in BAM
   integer, value :: numSats   ! the size of the satKeys array
   real(8), value :: startDs50UTC   ! start time in days since 1950, UTC
   real(8), value :: stopDs50UTC   ! stop time in days since 1950, UTC
   real(8), value :: stepSizeMin   ! step size in minutes
   real(8), intent(out) :: avgSDs(*)   ! average separate distances of all time steps
   real(8), intent(out) :: avgMDs(*)   ! average missed distances of all time steps
   real(8), intent(out) :: extBamArr(64)   ! other BAM resulting data
   integer, intent(out) :: errCode   ! 0 if Bam is successful, non-0 if there is an error
end subroutine BamCompute
!*******************************************************************************



! Retrieves other BAM data
! 
! The table below shows the indexes for the values for the xf_bam parameter:
! 
!     table
!     
!         Index
!         Index Interpretation
!     
!     0times when satellites cross the pinch point plan (ds50UTC)
!     1missed distances from satellites to the pinch point (km)
!     2nadir angles of satellites when they cross the pinch point plan
!     3position Xs of satellites when they cross the pinch point plan (km)
!     4position Ys of satellites when they cross the pinch point plan (km)
!     5position Zs of satellites when they cross the pinch point plan (km)
!     6velocity Xs of satellites when they cross the pinch point plan (km/s)
!     7velocity Ys of satellites when they cross the pinch point plan (km/s)
!     8velocity Zs of satellites when they cross the pinch point plan (km/s)
!     9latitude of satellites when they cross the pinch point plan (deg)
!     10longitude of satellites when they cross the pinch point plan (deg)
!     11height of satellites when they cross the pinch point plan (km)
! 
subroutine BamGetResults(xf_bam, bamArr) bind(C, name = "BamGetResults")
   integer, value :: xf_bam   ! Predefined number specifying which BAM array to retrieve
   real(8), intent(out) :: bamArr(*)   ! An array to store the retrieved result
end subroutine BamGetResults
!*******************************************************************************

end interface




   
   integer, parameter :: &
      BAM_SD_TIME    =  0, &  ! time at mininum average separate distances (ds50UTC)
      BAM_SD_DIST    =  1, &  ! minimum average separate distance (km)
      BAM_SD_POSX    =  2, &  ! average position X at minimum average separate distance (km) 
      BAM_SD_POSY    =  3, &  ! average position Y at minimum average separate distance (km) 
      BAM_SD_POSZ    =  4, &  ! average position Z at minimum average separate distance (km) 
      BAM_SD_VELX    =  5, &  ! average velocity X at minimum average separate distance (km/s)
      BAM_SD_VELY    =  6, &  ! average velocity Y at minimum average separate distance (km/s)
      BAM_SD_VELZ    =  7, &  ! average velocity Z at minimum average separate distance (km/s)
      BAM_SD_LAT     =  8, &  ! average latitude at minimum average separate distance (deg) 
      BAM_SD_LON     =  9, &  ! average longitude at minimum average separate distance (deg)  
      BAM_SD_HEIGHT  = 10, &  ! average height at minimum average separate distance (km) 
   
      BAM_MD_TIME    = 20, &  ! time at mininum average missed distances (ds50UTC)
      BAM_MD_DIST    = 21, &  ! minimum average missed distance (km)
      BAM_MD_POSX    = 22, &  ! average position X of satellites when they cross the pinch point plan (km) 
      BAM_MD_POSY    = 23, &  ! average position Y of satellites when they cross the pinch point plan (km) 
      BAM_MD_POSZ    = 24, &  ! average position Z of satellites when they cross the pinch point plan (km) 
      BAM_MD_VELX    = 25, &  ! average velocity X of satellites when they cross the pinch point plan (km/s)
      BAM_MD_VELY    = 26, &  ! average velocity Y of satellites when they cross the pinch point plan (km/s)
      BAM_MD_VELZ    = 27, &  ! average velocity Z of satellites when they cross the pinch point plan (km/s)
      BAM_MD_LAT     = 28, &  ! average latitude of satellites when they cross the pinch point plan (deg) 
      BAM_MD_LON     = 29, &  ! average longitude of satellites when they cross the pinch point plan (deg)  
      BAM_MD_HEIGHT  = 30, &  ! average height of satellites when they cross the pinch point plan (km) 
   
      BAM_MD_SIZE    = 64;    
      
   integer, parameter :: &
      XF_BAM_MDTIME  =  0, &  ! times when satellites cross the pinch point plan (ds50UTC) 
      XF_BAM_RANGE   =  1, &  ! missed distances from satellites to the pinch point (km)
      XF_BAM_NADIR   =  2, &  ! nadir angles of satellites when they cross the pinch point plan
      XF_BAM_POSX    =  3, &  ! position Xs of satellites when they cross the pinch point plan (km)   
      XF_BAM_POSY    =  4, &  ! position Ys of satellites when they cross the pinch point plan (km) 
      XF_BAM_POSZ    =  5, &  ! position Zs of satellites when they cross the pinch point plan (km) 
      XF_BAM_VELX    =  6, &  ! velocity Xs of satellites when they cross the pinch point plan (km/s)
      XF_BAM_VELY    =  7, &  ! velocity Ys of satellites when they cross the pinch point plan (km/s)
      XF_BAM_VELZ    =  8, &  ! velocity Zs of satellites when they cross the pinch point plan (km/s)
      XF_BAM_LAT     =  9, &  ! latitude of satellites when they cross the pinch point plan (deg) 
      XF_BAM_LON     = 10, &  ! longitude of satellites when they cross the pinch point plan (deg)  
      XF_BAM_HEIGHT  = 11;    ! height of satellites when they cross the pinch point plan (km) 
      
   
      
end module BamDll
! ========================= End of auto generated code ==========================
