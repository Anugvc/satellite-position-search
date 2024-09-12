! This wrapper file was generated automatically by the GenDllWrappers program.
module AstroFuncDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes AstroFunc DLL for use in the program.
! If this function returns an error, it is recommended that you stop the program immediately.
! 
! An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
function AstroFuncInit(apAddr) bind(C, name = "AstroFuncInit") result(errCode)
   integer :: errCode	! 0 if AstroFunc.dll is initialized successfully, non-0 if there is an error.
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit(). See the documentation for DllMain.dll for details.
end function AstroFuncInit
!*******************************************************************************



! Retrieves information about the current version of AstroFunc.dll. The information is placed in the string parameter you pass in.
! The returned string provides information about the version number, build date, and platform.
subroutine AstroFuncGetInfo(infoStr) bind(C, name = "AstroFuncGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about AstroFunc.dll.
end subroutine AstroFuncGetInfo
!*******************************************************************************



! Converts a set of Keplerian elements to a set of equinoctial elements. 
subroutine KepToEqnx(xa_kep, xa_eqnx) bind(C, name = "KepToEqnx")
   real(8), intent(in) :: xa_kep(6)   ! The set of Keplerian elements to be converted. see XA_KEP_?
   real(8), intent(out) :: xa_eqnx(6)   ! The resulting set of equinoctial elements. see XA_EQNX_?
end subroutine KepToEqnx
!*******************************************************************************



! Converts a set of osculating Keplerian elements to osculating position and velocity vectors.
subroutine KepToPosVel(xa_kep, pos, vel) bind(C, name = "KepToPosVel")
   real(8), intent(in) :: xa_kep(6)   ! The set of Keplerian elements to be converted. see XA_KEP_?
   real(8), intent(out) :: pos(3)   ! The resulting position vector.
   real(8), intent(out) :: vel(3)   ! The resulting velocity vector.
end subroutine KepToPosVel
!*******************************************************************************



! Converts a set of Keplerian elements to Ubar, Vbar, and Wbar vectors.
subroutine KepToUVW(xa_kep, uBar, vBar, wBar) bind(C, name = "KepToUVW")
   real(8), intent(in) :: xa_kep(6)   ! The set of Keplerian elements to be converted. see XA_KEP_?
   real(8), intent(out) :: uBar(3)   ! The resulting ubar vector.
   real(8), intent(out) :: vBar(3)   ! The resulting vbar vector.
   real(8), intent(out) :: wBar(3)   ! The resulting wbar vector.
end subroutine KepToUVW
!*******************************************************************************



! Converts a set of classical elements to a set of equinoctial elements. 
subroutine ClassToEqnx(xa_cls, xa_eqnx) bind(C, name = "ClassToEqnx")
   real(8), intent(in) :: xa_cls(6)   ! The set of classical elements to be converted. see XA_CLS_?
   real(8), intent(out) :: xa_eqnx(6)   ! The resulting set of equinoctial elements. see XA_EQNX_?
end subroutine ClassToEqnx
!*******************************************************************************



! Converts a set of equinoctial elements to a set of classical elements.
subroutine EqnxToClass(xa_eqnx, xa_cls) bind(C, name = "EqnxToClass")
   real(8), intent(in) :: xa_eqnx(6)   ! The set of equinoctial elements to be converted. see XA_EQNX_?
   real(8), intent(out) :: xa_cls(6)   ! The resulting set of classical elements. see XA_CLS_?
end subroutine EqnxToClass
!*******************************************************************************



! Converts a set of equinoctial elements to a set of Keplerian elements. 
subroutine EqnxToKep(xa_eqnx, xa_kep) bind(C, name = "EqnxToKep")
   real(8), intent(in) :: xa_eqnx(6)   ! The set of equinoctial elements to be converted. see XA_EQNX_?
   real(8), intent(out) :: xa_kep(6)   ! The resulting set of Keplerian elements. see XA_KEP_?
end subroutine EqnxToKep
!*******************************************************************************



! Converts a set of equinoctial elements to position and velocity vectors.
subroutine EqnxToPosVel(xa_eqnx, pos, vel) bind(C, name = "EqnxToPosVel")
   real(8), intent(in) :: xa_eqnx(6)   ! The set of equinoctial elements to be converted. see XA_EQNX_?
   real(8), intent(out) :: pos(3)   ! The resulting position vector.
   real(8), intent(out) :: vel(3)   ! The resulting velocity vector.
end subroutine EqnxToPosVel
!*******************************************************************************



! Converts position and velocity vectors to a set of equinoctial elements.
subroutine PosVelToEqnx(pos, vel, xa_eqnx) bind(C, name = "PosVelToEqnx")
   real(8), intent(in) :: pos(3)   ! The position vector to be converted.
   real(8), intent(in) :: vel(3)   ! The velocity vector to be converted.
   real(8), intent(out) :: xa_eqnx(6)   ! The resulting set of equinoctial elements. see XA_EQNX_?
end subroutine PosVelToEqnx
!*******************************************************************************



! Converts position and velocity vectors to a set of equinoctial elements with the given mu value. 
! This function is used when working with the SP propagator to get a more accurate set of equinoctial elements.
subroutine PosVelMuToEqnx(pos, vel, mu, xa_eqnx) bind(C, name = "PosVelMuToEqnx")
   real(8), intent(in) :: pos(3)   ! The position vector to be converted.
   real(8), intent(in) :: vel(3)   ! The velocity vector to be converted.
   real(8), value :: mu   ! The value of mu.
   real(8), intent(out) :: xa_eqnx(6)   ! The resulting set of equinoctial elements. see XA_EQNX_?
end subroutine PosVelMuToEqnx
!*******************************************************************************



! Converts osculating position and velocity vectors to a set of osculating Keplerian elements.
subroutine PosVelToKep(pos, vel, xa_kep) bind(C, name = "PosVelToKep")
   real(8), intent(in) :: pos(3)   ! The position vector to be converted.
   real(8), intent(in) :: vel(3)   ! The velocity vector to be converted.
   real(8), intent(out) :: xa_kep(6)   ! The resulting set of Keplerian elements. see XA_KEP_?
end subroutine PosVelToKep
!*******************************************************************************



! Converts osculating position and velocity vectors to a set of osculating Keplerian elements with the given value of mu.
! This function is used when working with the SP propagator to get a more accurate set of Keplerian elements.
subroutine PosVelMuToKep(pos, vel, mu, xa_kep) bind(C, name = "PosVelMuToKep")
   real(8), intent(in) :: pos(3)   ! The position vector to be converted.
   real(8), intent(in) :: vel(3)   ! The velocity vector to be converted.
   real(8), value :: mu   ! The value of mu.
   real(8), intent(out) :: xa_kep(6)   ! The resulting set of Keplerian elements. see XA_KEP_?
end subroutine PosVelMuToKep
!*******************************************************************************



! Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
! The resulting vectors have the following meanings.
! U vector: along radial direction
! V vector: W x U
! W vector: pos x vel
subroutine PosVelToUUVW(pos, vel, uvec, vVec, wVec) bind(C, name = "PosVelToUUVW")
   real(8), intent(in) :: pos(3)   ! The position vector to be converted.
   real(8), intent(in) :: vel(3)   ! The velocity vector to be converted.
   real(8), intent(out) :: uvec(3)   ! The resulting U vector.
   real(8), intent(out) :: vVec(3)   ! The resulting V vector.
   real(8), intent(out) :: wVec(3)   ! The resulting W vector.
end subroutine PosVelToUUVW
!*******************************************************************************



! Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
! The resulting vectors have the following meanings.
! U vector: V x W
! V vector: along velocity direction
! W vector: pos x vel
subroutine PosVelToPTW(pos, vel, uvec, vVec, wVec) bind(C, name = "PosVelToPTW")
   real(8), intent(in) :: pos(3)   ! The position vector.
   real(8), intent(in) :: vel(3)   ! The velocity vector.
   real(8), intent(out) :: uvec(3)   ! The resulting U vector.
   real(8), intent(out) :: vVec(3)   ! The resulting V vector.
   real(8), intent(out) :: wVec(3)   ! The resulting W vector.
end subroutine PosVelToPTW
!*******************************************************************************



! Solves Kepler's equation (M = E - e sin(E)) for the eccentric anomaly, E, by iteration.
function SolveKepEqtn(xa_kep) bind(C, name = "SolveKepEqtn") result(eccAnomaly)
   real(8) :: eccAnomaly	! The eccentric anomaly.
   real(8), intent(in) :: xa_kep(6)   ! The set of Keplerian elements for which to solve the equation. see XA_KEP_?
end function SolveKepEqtn
!*******************************************************************************



! Computes true anomaly from a set of Keplerian elements.
function CompTrueAnomaly(xa_kep) bind(C, name = "CompTrueAnomaly") result(trueAnomaly)
   real(8) :: trueAnomaly	! The true anomaly in degrees.
   real(8), intent(in) :: xa_kep(6)   ! The set of Keplerian elements for which to compute true anomaly. see XA_KEP_?
end function CompTrueAnomaly
!*******************************************************************************



! Converts mean motion N to semi-major axis A.
function NToA(n) bind(C, name = "NToA") result(a)
   real(8) :: a	! The semi-major axis A (km).
   real(8), value :: n   ! Mean motion N (revs/day).
end function NToA
!*******************************************************************************



! Converts semi-major axis A to mean motion N.
function AToN(a) bind(C, name = "AToN") result(n)
   real(8) :: n	! The mean motion N (revs/day).
   real(8), value :: a   ! Semi-major axis A (km).
end function AToN
!*******************************************************************************



! Converts Kozai mean motion to Brouwer mean motion.
! SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
function KozaiToBrouwer(eccen, incli, nKozai) bind(C, name = "KozaiToBrouwer") result(nBrouwer)
   real(8) :: nBrouwer	! Brouwer mean motion (revs/day).
   real(8), value :: eccen   ! eccentricity
   real(8), value :: incli   ! inclination (degrees)
   real(8), value :: nKozai   ! Kozai mean motion (revs/day).
end function KozaiToBrouwer
!*******************************************************************************



! Converts Brouwer mean motion to Kozai mean motion.
! SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
function BrouwerToKozai(eccen, incli, nBrouwer) bind(C, name = "BrouwerToKozai") result(nKozai)
   real(8) :: nKozai	! Kozai mean motion (revs/day).
   real(8), value :: eccen   ! eccentricity
   real(8), value :: incli   ! inclination (degrees)
   real(8), value :: nBrouwer   ! Brouwer mean motion (revs/day).
end function BrouwerToKozai
!*******************************************************************************



! Converts a set of osculating Keplerian elements to a set of mean Keplerian elements using method 9 algorithm.
subroutine KepOscToMean(xa_OscKep, xa_MeanKep) bind(C, name = "KepOscToMean")
   real(8), intent(in) :: xa_OscKep(6)   ! The set of osculating Keplerian elements to be converted. see XA_KEP_?
   real(8), intent(out) :: xa_MeanKep(6)   ! The resulting set of mean Keplerian elements. see XA_KEP_?
end subroutine KepOscToMean
!*******************************************************************************



! Converts an ECI position vector XYZ to geodetic latitude, longitude, and height.
subroutine XYZToLLH(thetaG, metricPos, metricLLH) bind(C, name = "XYZToLLH")
   real(8), value :: thetaG   ! ThetaG - Greenwich mean sidereal time (rad).
   real(8), intent(in) :: metricPos(3)   ! The ECI (TEME of Date) position vector (km) to be converted.
   real(8), intent(out) :: metricLLH(3)   ! The resulting geodetic north latitude (degree), east longitude(degree), and height (km).
end subroutine XYZToLLH
!*******************************************************************************



! Converts an ECI position vector XYZ to geodetic latitude, longitude, and height at the specified time.
subroutine XYZToLLHTime(ds50UTC, metricPos, metricLLH) bind(C, name = "XYZToLLHTime")
   real(8), value :: ds50UTC   ! Input time in days since 1950 UTC
   real(8), intent(in) :: metricPos(3)   ! The ECI (TEME of Date) position vector (km) to be converted.
   real(8), intent(out) :: metricLLH(3)   ! The resulting geodetic north latitude (degree), east longitude(degree), and height (km).
end subroutine XYZToLLHTime
!*******************************************************************************



! Converts geodetic latitude, longitude, and height to an ECI position vector XYZ.
subroutine LLHToXYZ(thetaG, metricLLH, metricXYZ) bind(C, name = "LLHToXYZ")
   real(8), value :: thetaG   ! Theta - Greenwich mean sidereal time (rad).
   real(8), intent(in) :: metricLLH(3)   ! An array containing geodetic north latitude (degree), east longitude (degree), and height (km) to be converted.
   real(8), intent(out) :: metricXYZ(3)   ! The resulting ECI (TEME of Date) position vector (km).
end subroutine LLHToXYZ
!*******************************************************************************



! Converts geodetic latitude, longitude, and height to an ECI position vector XYZ at the specified time.
subroutine LLHToXYZTime(ds50UTC, metricLLH, metricXYZ) bind(C, name = "LLHToXYZTime")
   real(8), value :: ds50UTC   ! Input time in days since 1950 UTC
   real(8), intent(in) :: metricLLH(3)   ! An array containing geodetic north latitude (degree), east longitude (degree), and height (km) to be converted.
   real(8), intent(out) :: metricXYZ(3)   ! The resulting ECI (TEME of Date) position vector (km).
end subroutine LLHToXYZTime
!*******************************************************************************



! Converts EFG position and velocity vectors to ECI position and velocity vectors.
subroutine EFGToECI(thetaG, posEFG, velEFG, posECI, velECI) bind(C, name = "EFGToECI")
   real(8), value :: thetaG   ! Theta - Greenwich mean sidereal time (rad).
   real(8), intent(in) :: posEFG(3)   ! The EFG position vector (km) to be converted.
   real(8), intent(in) :: velEFG(3)   ! The EFG velocity vector (km/s) to be converted.
   real(8), intent(out) :: posECI(3)   ! The resulting ECI (TEME of Date) position vector (km).
   real(8), intent(out) :: velECI(3)   ! The resulting ECI (TEME of Date) velocity vector (km/s).
end subroutine EFGToECI
!*******************************************************************************



! Converts EFG position and velocity vectors to ECI position and velocity vectors at the specified time.
subroutine EFGToECITime(ds50UTC, posEFG, velEFG, posECI, velECI) bind(C, name = "EFGToECITime")
   real(8), value :: ds50UTC   ! Input time in days since 1950 UTC
   real(8), intent(in) :: posEFG(3)   ! The EFG position vector (km) to be converted.
   real(8), intent(in) :: velEFG(3)   ! The EFG velocity vector (km/s) to be converted.
   real(8), intent(out) :: posECI(3)   ! The resulting ECI (TEME of Date) position vector (km).
   real(8), intent(out) :: velECI(3)   ! The resulting ECI (TEME of Date) velocity vector (km/s).
end subroutine EFGToECITime
!*******************************************************************************



! Converts ECI position and velocity vectors to EFG position and velocity vectors.
subroutine ECIToEFG(thetaG, posECI, velECI, posEFG, velEFG) bind(C, name = "ECIToEFG")
   real(8), value :: thetaG   ! Theta - Greenwich mean sidereal time (rad).
   real(8), intent(in) :: posECI(3)   ! The ECI (TEME of Date) position vector (km) to be converted.
   real(8), intent(in) :: velECI(3)   ! The ECI (TEME of Date) velocity vector (km/s) to be converted.
   real(8), intent(out) :: posEFG(3)   ! The resulting EFG position vector (km).
   real(8), intent(out) :: velEFG(3)   ! The resulting EFG velocity vector (km/s).
end subroutine ECIToEFG
!*******************************************************************************



! Converts ECI position and velocity vectors to EFG position and velocity vectors at the specified time.
subroutine ECIToEFGTime(ds50UTC, posECI, velECI, posEFG, velEFG) bind(C, name = "ECIToEFGTime")
   real(8), value :: ds50UTC   ! Input time in days since 1950 UTC
   real(8), intent(in) :: posECI(3)   ! The ECI (TEME of Date) position vector (km) to be converted.
   real(8), intent(in) :: velECI(3)   ! The ECI (TEME of Date) velocity vector (km/s) to be converted.
   real(8), intent(out) :: posEFG(3)   ! The resulting EFG position vector (km).
   real(8), intent(out) :: velEFG(3)   ! The resulting EFG velocity vector (km/s).
end subroutine ECIToEFGTime
!*******************************************************************************



! Converts ECR position and velocity vectors to EFG position and velocity vectors.
subroutine ECRToEFG(polarX, polarY, posECR, velECR, posEFG, velEFG) bind(C, name = "ECRToEFG")
   real(8), value :: polarX   ! Polar motion X (arc-sec).
   real(8), value :: polarY   ! Polar motion Y (arc-sec).
   real(8), intent(in) :: posECR(3)   ! The ECR position vector (km) to be converted.
   real(8), intent(in) :: velECR(3)   ! The ECR velocity vector (km/s) to be converted.
   real(8), intent(out) :: posEFG(3)   ! The resulting EFG position vector (km).
   real(8), intent(out) :: velEFG(3)   ! The resulting EFG velocity vector (km/s).
end subroutine ECRToEFG
!*******************************************************************************



! Converts ECR position and velocity vectors to EFG position and velocity vectors at the specified time.
subroutine ECRToEFGTime(ds50UTC, posECR, velECR, posEFG, velEFG) bind(C, name = "ECRToEFGTime")
   real(8), value :: ds50UTC   ! Input time in days since 1950 UTC.
   real(8), intent(in) :: posECR(3)   ! The ECR position vector (km) to be converted.
   real(8), intent(in) :: velECR(3)   ! The ECR velocity vector (km/s) to be converted.
   real(8), intent(out) :: posEFG(3)   ! The resulting EFG position vector (km) (set to zeros if timing constants not loaded).
   real(8), intent(out) :: velEFG(3)   ! The resulting EFG velocity vector (km/s) (set to zeros if timing constants not loaded).
end subroutine ECRToEFGTime
!*******************************************************************************



! Converts EFG position and velocity vectors to ECR position and velocity vectors.
subroutine EFGToECR(polarX, polarY, posEFG, velEFG, posECR, velECR) bind(C, name = "EFGToECR")
   real(8), value :: polarX   ! Polar motion X (arc-sec).
   real(8), value :: polarY   ! Polar motion Y (arc-sec).
   real(8), intent(in) :: posEFG(3)   ! The EFG position vector (km) to be converted.
   real(8), intent(in) :: velEFG(3)   ! The EFG velocity vector (km/s) to be converted.
   real(8), intent(out) :: posECR(3)   ! The resulting ECR position vector (km).
   real(8), intent(out) :: velECR(3)   ! The resulting ECR velocity vector (km/s).
end subroutine EFGToECR
!*******************************************************************************



! Converts EFG position and velocity vectors to ECR position and velocity vectors at the specified time.
subroutine EFGToECRTime(ds50UTC, posEFG, velEFG, posECR, velECR) bind(C, name = "EFGToECRTime")
   real(8), value :: ds50UTC   ! Input time in days since 1950 UTC
   real(8), intent(in) :: posEFG(3)   ! The EFG position vector (km) to be converted.
   real(8), intent(in) :: velEFG(3)   ! The EFG velocity vector (km/s) to be converted.
   real(8), intent(out) :: posECR(3)   ! The resulting ECR position vector (km) (set to zeros if timing constants not loaded).
   real(8), intent(out) :: velECR(3)   ! The resulting ECR velocity vector (km/s) (set to zeros if timing constants not loaded).
end subroutine EFGToECRTime
!*******************************************************************************



! Converts an EFG position vector to geodetic latitude, longitude, and height.
subroutine EFGPosToLLH(posEFG, metricLLH) bind(C, name = "EFGPosToLLH")
   real(8), intent(in) :: posEFG(3)   ! The EFG position vector (km) to be converted.
   real(8), intent(out) :: metricLLH(3)   ! The resulting geodetic north latitude (degree), east longitude (degree), and height (km).
end subroutine EFGPosToLLH
!*******************************************************************************



! Converts geodetic latitude, longitude, and height to an EFG position vector.
subroutine LLHToEFGPos(metricLLH, posEFG) bind(C, name = "LLHToEFGPos")
   real(8), intent(in) :: metricLLH(3)   ! An Array containing the geodetic north latitude (degree), east longitude (degree), and height (km) to be converted.
   real(8), intent(out) :: posEFG(3)   ! The resulting EFG position vector (km).
end subroutine LLHToEFGPos
!*******************************************************************************



! Rotates position and velocity vectors from J2000 to coordinates of the specified date, expressed in ds50TAI.
subroutine RotJ2KToDate(spectr, nutationTerms, ds50TAI, posJ2K, velJ2K, posDate, velDate) bind(C, name = "RotJ2KToDate")
   integer, value :: spectr   ! Specifies whether to run in SPECTR compatibility mode. A value of 1 means Yes.
   integer, value :: nutationTerms   ! Nutation terms (4-106, 4:least accurate, 106:most acurate).
   real(8), value :: ds50TAI   ! The date to rotate to coordinates of, expressed in days since 1950, TAI.
   real(8), intent(in) :: posJ2K(3)   ! The position vector from J2000.
   real(8), intent(in) :: velJ2K(3)   ! The velocity vector from J2000.
   real(8), intent(out) :: posDate(3)   ! The resulting position vector in coordinates of date, ds50TAI.
   real(8), intent(out) :: velDate(3)   ! The resulting velocity vector in coordinates of date, ds50TAI.
end subroutine RotJ2KToDate
!*******************************************************************************



! Rotates position and velocity vectors from coordinates of date to J2000.
subroutine RotDateToJ2K(spectr, nutationTerms, ds50TAI, posDate, velDate, posJ2K, velJ2K) bind(C, name = "RotDateToJ2K")
   integer, value :: spectr   ! Specifies whether to run in SPECTR compatibility mode. A value of 1 means Yes.
   integer, value :: nutationTerms   ! Nutation terms (4-106, 4:least accurate, 106:most acurate).
   real(8), value :: ds50TAI   ! Time in days since 1950, TAI for which the coordinates of position and velocity vectors are currently expressed.
   real(8), intent(in) :: posDate(3)   ! The position vector from coordinates of Date.
   real(8), intent(in) :: velDate(3)   ! The velocity vector from coordinates of Date.
   real(8), intent(out) :: posJ2K(3)   ! The resulting position vector in coordinates of J2000.
   real(8), intent(out) :: velJ2K(3)   ! The resulting velocity vector in coordinates of J2000.
end subroutine RotDateToJ2K
!*******************************************************************************



! Computes the Sun and Moon position at the specified time.
subroutine CompSunMoonPos(ds50ET, uvecSun, sunVecMag, uvecMoon, moonVecMag) bind(C, name = "CompSunMoonPos")
   real(8), value :: ds50ET   ! The number of days since 1950, ET (Ephemeris Time/Terrestrial Time) for which to compute the sun and moon position.
   real(8), intent(out) :: uvecSun(3)   ! The resulting sun position unit vector.
   real(8), intent(out) :: sunVecMag   ! The resulting magnitude of the sun position vector (km).
   real(8), intent(out) :: uvecMoon(3)   ! The resulting moon position unit vector.
   real(8), intent(out) :: moonVecMag   ! The resulting magnitude of the moon position vector (km).
end subroutine CompSunMoonPos
!*******************************************************************************



! Computes the Sun position at the specified time.
subroutine CompSunPos(ds50ET, uvecSun, sunVecMag) bind(C, name = "CompSunPos")
   real(8), value :: ds50ET   ! The number of days since 1950, ET (Ephemeris Time/Terrestrial Time) for which to compute the sun position.
   real(8), intent(out) :: uvecSun(3)   ! The resulting sun position unit vector.
   real(8), intent(out) :: sunVecMag   ! The resulting magnitude of the sun position vector (km).
end subroutine CompSunPos
!*******************************************************************************



! Computes the Moon position at the specified time.
subroutine CompMoonPos(ds50ET, uvecMoon, moonVecMag) bind(C, name = "CompMoonPos")
   real(8), value :: ds50ET   ! The number of days since 1950, ET (Ephemeris Time/Terrestrial Time) for which to compute the moon position.
   real(8), intent(out) :: uvecMoon(3)   ! The resulting moon position unit vector.
   real(8), intent(out) :: moonVecMag   ! The resulting magnitude of the moon position vector (km).
end subroutine CompMoonPos
!*******************************************************************************



! This function is intended for future use.  No information is currently available.
! This function is intended for future use.  No information is currently available.
subroutine AstroConvFrTo(xf_Conv, frArr, toArr) bind(C, name = "AstroConvFrTo")
   integer, value :: xf_Conv   ! Index of the conversion function
   real(8), intent(in) :: frArr(128)   ! The input array
   real(8), intent(out) :: toArr(128)   ! The resulting array
end subroutine AstroConvFrTo
!*******************************************************************************



! Converts right ascension and declination to vector triad LAD in topocentric equatorial coordinate system.
subroutine RADecToLAD(ra, dec, l, a_tilde, d_tilde) bind(C, name = "RADecToLAD")
   real(8), value :: ra   ! Right ascension (deg).
   real(8), value :: dec   ! Declination (deg).
   real(8), intent(out) :: l(3)   ! The resulting unit vector from the station to the satellite (referred to the equatorial coordinate system axis).
   real(8), intent(out) :: a_tilde(3)   ! The resulting unit vector perpendicular to the hour circle passing through the satellite, in the direction of increasing RA.
   real(8), intent(out) :: d_tilde(3)   ! The resulting unit vector perpendicular to L and is directed toward the north, in the plane of the hour circle.
end subroutine RADecToLAD
!*******************************************************************************



! Converts azimuth and elevation to vector triad LAD in topocentric horizontal coordinate system.
subroutine AzElToLAD(az, el, lh, ah, dh) bind(C, name = "AzElToLAD")
   real(8), value :: az   ! Input azimuth (deg).
   real(8), value :: el   ! Input elevation angle (deg).
   real(8), intent(out) :: lh(3)   ! The resulting unit vector from the station to the satellite (referred to the horizon coordinate system axis).
   real(8), intent(out) :: ah(3)   ! The resulting unit vector perpendicular to the hour circle passing through the satellite, in the direction of increasing Az.
   real(8), intent(out) :: dh(3)   ! The resulting unit vector perpendicular to L and is directed toward the zenith, in the plane of the hour circle.
end subroutine AzElToLAD
!*******************************************************************************



! Converts satellite ECI position/velocity vectors and sensor location to topocentric components.
! The xa_topo array has the following structure:
! [0]: Resulting right ascension (RA) (deg)
! [1]: Declination (deg)
! [2]: Azimuth (deg)
! [3]: Elevation (deg)
! [4]: Range (km)
! [5]: RAdot (first derivative of right ascension) (deg/s)
! [6]: DecDot (first derivative of declination) (deg/s)
! [7]: AzDot (first derivative of azimuth) (deg/s)
! [8]: ElDot (first derivative of elevation) (deg/s)
! [9]: RangeDot (first derivative of range) (km/s)   
subroutine ECIToTopoComps(theta, lat, senPos, satPos, satVel, xa_topo) bind(C, name = "ECIToTopoComps")
   real(8), value :: theta   ! Theta - local sidereal time(rad).
   real(8), value :: lat   ! Station's astronomical latitude (deg). (+N) (-S)
   real(8), intent(in) :: senPos(3)   ! Sensor position in ECI (km).
   real(8), intent(in) :: satPos(3)   ! Satellite position in ECI (km).
   real(8), intent(in) :: satVel(3)   ! Satellite velocity in ECI (km/s).
   real(8), intent(out) :: xa_topo(10)   ! An array that stores the resulting topocentric components.  see XA_TOPO_?
end subroutine ECIToTopoComps
!*******************************************************************************



! Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
subroutine RaDecToAzEl(thetaG, lat, lon, ra, dec, az, el) bind(C, name = "RaDecToAzEl")
   real(8), value :: thetaG   ! Theta - Greenwich mean sidereal time (rad).
   real(8), value :: lat   ! Station's astronomical latitude (deg). (+N) (-S)
   real(8), value :: lon   ! Station's astronomical longitude (deg). (+E) (-W)
   real(8), value :: ra   ! Right ascension (deg)
   real(8), value :: dec   ! Declination (deg)
   real(8), intent(out) :: az   ! Azimuth (deg)
   real(8), intent(out) :: el   ! Elevation (deg)
end subroutine RaDecToAzEl
!*******************************************************************************



! Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
subroutine RaDecToAzElTime(ds50UTC, lat, lon, ra, dec, az, el) bind(C, name = "RaDecToAzElTime")
   real(8), value :: ds50UTC   ! Input time in days since 1950 UTC
   real(8), value :: lat   ! Station's astronomical latitude (deg). (+N) (-S)
   real(8), value :: lon   ! Station's astronomical longitude (deg). (+E) (-W)
   real(8), value :: ra   ! Right ascension (deg)
   real(8), value :: dec   ! Declination (deg)
   real(8), intent(out) :: az   ! Azimuth (deg)
   real(8), intent(out) :: el   ! Elevation (deg)
end subroutine RaDecToAzElTime
!*******************************************************************************



! Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
subroutine AzElToRaDec(thetaG, lat, lon, az, el, ra, dec) bind(C, name = "AzElToRaDec")
   real(8), value :: thetaG   ! Theta - Greenwich mean sidereal time (rad).
   real(8), value :: lat   ! Station's astronomical latitude (deg). (+N) (-S)
   real(8), value :: lon   ! Station's astronomical longitude (deg). (+E) (-W)
   real(8), value :: az   ! Azimuth (deg)
   real(8), value :: el   ! Elevation (deg)
   real(8), intent(out) :: ra   ! Right ascension (deg)
   real(8), intent(out) :: dec   ! Declination (deg)
end subroutine AzElToRaDec
!*******************************************************************************



! Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
subroutine AzElToRaDecTime(ds50UTC, lat, lon, az, el, ra, dec) bind(C, name = "AzElToRaDecTime")
   real(8), value :: ds50UTC   ! Input time in days since 1950 UTC
   real(8), value :: lat   ! Station's astronomical latitude (deg). (+N) (-S)
   real(8), value :: lon   ! Station's astronomical longitude (deg). (+E) (-W)
   real(8), value :: az   ! Azimuth (deg)
   real(8), value :: el   ! Elevation (deg)
   real(8), intent(out) :: ra   ! Right ascension (deg)
   real(8), intent(out) :: dec   ! Declination (deg)
end subroutine AzElToRaDecTime
!*******************************************************************************



! Converts full state RAE (range, az, el, and their rates) to full state ECI (position and velocity)
! The xa_rae array has the following structure:
! [0]: Range (km)
! [1]: Azimuth (deg)
! [2]: Elevation (deg)
! [3]: Range Dot (km/s)
! [4]: Azimuth Dot (deg/s)
! [5]: Elevation Dot (deg/s)
subroutine RAEToECI(theta, astroLat, xa_rae, senPos, satPos, satVel) bind(C, name = "RAEToECI")
   real(8), value :: theta   ! Theta - local sidereal time(rad).
   real(8), value :: astroLat   ! Astronomical latitude (ded).
   real(8), intent(in) :: xa_rae(6)   ! An array contains input data.  see XA_RAE_?
   real(8), intent(in) :: senPos(3)   ! Sensor position in ECI (km).
   real(8), intent(out) :: satPos(3)   ! Satellite position in ECI (km).
   real(8), intent(out) :: satVel(3)   ! Satellite velocity in ECI (km/s).
end subroutine RAEToECI
!*******************************************************************************



! Computes initial values for the SGP drag term nDot and the SGP4 drag term BSTAR based upon eccentricity and semi-major axis.
subroutine GetInitialDrag(semiMajorAxis, eccen, nDot, bstar) bind(C, name = "GetInitialDrag")
   real(8), value :: semiMajorAxis   ! Semi-major axis (km).
   real(8), value :: eccen   ! Eccentricity (unitless).
   real(8), intent(out) :: nDot   ! nDot (revs/day^2).
   real(8), intent(out) :: bstar   ! Bstar (1/earth radii).
end subroutine GetInitialDrag
!*******************************************************************************



! Converts covariance matrix PTW to UVW.
! PTW = P: TxW, T: along velocity direction, W: pos x vel.
! UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
subroutine CovMtxPTWToUVW(pos, vel, ptwCovMtx, uvwCovMtx) bind(C, name = "CovMtxPTWToUVW")
   real(8), intent(in) :: pos(3)   ! The input position vector (km).
   real(8), intent(in) :: vel(3)   ! The input velocity vector (km/s).
   real(8), intent(in) :: ptwCovMtx(6, 6)   ! The PTW covariance matrix to be converted.
   real(8), intent(out) :: uvwCovMtx(6, 6)   ! The resulting UVW covariance matrix.
end subroutine CovMtxPTWToUVW
!*******************************************************************************



! Converts covariance matrix UVW to PTW.
! PTW = P: TxW, T: along velocity direction, W: pos x vel.
! UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
subroutine CovMtxUVWToPTW(pos, vel, uvwCovMtx, ptwCovMtx) bind(C, name = "CovMtxUVWToPTW")
   real(8), intent(in) :: pos(3)   ! The input position vector (km).
   real(8), intent(in) :: vel(3)   ! The input velocity vector (km/s).
   real(8), intent(in) :: uvwCovMtx(6, 6)   ! The UVW covariance matrix to be converted.
   real(8), intent(out) :: ptwCovMtx(6, 6)   ! The resulting PTW covariance matrix.
end subroutine CovMtxUVWToPTW
!*******************************************************************************



! Computes Earth/Sensor/Earth Limb and Earth/Sensor/Satellite angles.
subroutine EarthObstructionAngles(earthLimb, satECI, senECI, earthSenLimb, earthSenSat, satEarthSen) &
bind(C, name = "EarthObstructionAngles")
   real(8), value :: earthLimb   ! Earth limb distance (km).
   real(8), intent(in) :: satECI(3)   ! Satellite position in ECI (km).
   real(8), intent(in) :: senECI(3)   ! Sensor position in ECI (km).
   real(8), intent(out) :: earthSenLimb   ! The resulting earth/sensor/limb angle (deg).
   real(8), intent(out) :: earthSenSat   ! The resulting earth/sensor/sat angle (deg).
   real(8), intent(out) :: satEarthSen   ! The resulting sat/earth/sensor angle (deg).
end subroutine EarthObstructionAngles
!*******************************************************************************



! Determines if a point in space is sunlit at the input time ds50ET
function IsPointSunlit(ds50ET, ptEci) bind(C, name = "IsPointSunlit") result(yesNo)
   integer :: yesNo	! 0=no, the specified point isn't sunlit, 1=yes, the specified point is sunlit
   real(8), value :: ds50ET   ! The number of days since 1950, ET (Ephemeris Time/Terrestrial Time) for which to determine if the point is sunlit.
   real(8), intent(in) :: ptEci(3)   ! a position in ECI (km).
end function IsPointSunlit
!*******************************************************************************



! Rotates Right Ascension and Declination to specified epoch
subroutine RotRADecl(nutationTerms, dir, ds50UTCIn, raIn, declIn, ds50UTCOut, raOut, declOut) bind(C, name = "RotRADecl")
   integer, value :: nutationTerms   ! Nutation terms (4-106, 4:least accurate, 106:most acurate).
   integer, value :: dir   ! 1: TEME of Date To MEME year of equinox, 2: MEME year of equinox to TEME of Date
   real(8), value :: ds50UTCIn   ! Origin time in days since 1950 UTC
   real(8), value :: raIn   ! Input right ascension (deg)
   real(8), value :: declIn   ! Input declination (deg)
   real(8), value :: ds50UTCOut   ! Destination time in days since 1950 UTC
   real(8), intent(out) :: raOut   ! Output right ascension (deg)
   real(8), intent(out) :: declOut   ! Output declination (deg)
end subroutine RotRADecl
!*******************************************************************************



! Rotates Right Ascension and Declination from TEME of Date to MEME of the specified year of equinox
function RotRADec_DateToEqnx(nutationTerms, yrOfEqnx, ds50UTCIn, raIn, declIn, raOut, declOut) &
bind(C, name = "RotRADec_DateToEqnx") result(errCode)
   integer :: errCode	! 0 if the rotation was successful, non-0 if there is an error
   integer, value :: nutationTerms   ! Nutation terms (4-106, 4:least accurate, 106:most acurate).
   integer, value :: yrOfEqnx   ! Year of equinox (=1: 0 Jan of input year, =2: J2000, =3: B1950)
   real(8), value :: ds50UTCIn   ! Input time in days since 1950 UTC
   real(8), value :: raIn   ! Input right ascension (deg)
   real(8), value :: declIn   ! Input declination (deg)
   real(8), intent(out) :: raOut   ! Output right ascension (deg)
   real(8), intent(out) :: declOut   ! Output declination (deg)
end function RotRADec_DateToEqnx
!*******************************************************************************



! Rotates Right Ascension and Declination from MEME of the specified year of equinox to TEME of Date
function RotRADec_EqnxToDate(nutationTerms, yrOfEqnx, ds50UTCIn, raIn, declIn, raOut, declOut) &
bind(C, name = "RotRADec_EqnxToDate") result(errCode)
   integer :: errCode	! 0 if the rotation was successful, non-0 if there is an error
   integer, value :: nutationTerms   ! Nutation terms (4-106, 4:least accurate, 106:most acurate)
   integer, value :: yrOfEqnx   ! Year of equinox (=1: 0 Jan of input year, =2: J2000, =3: B1950)
   real(8), value :: ds50UTCIn   ! Input time in days since 1950 UTC
   real(8), value :: raIn   ! Input right ascension (deg)
   real(8), value :: declIn   ! Input declination (deg)
   real(8), intent(out) :: raOut   ! Output right ascension (deg)
   real(8), intent(out) :: declOut   ! Output declination (deg)
end function RotRADec_EqnxToDate
!*******************************************************************************



! Rotates the Equinoctial covariance to UVW
! Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
! The n terms must be normalized by n
! The input position, velocity and covariance must all have the same reference equator and equinox.
subroutine CovMtxEqnxToUVW(pos, vel, covMtxEqnx, covMtxUVW) bind(C, name = "CovMtxEqnxToUVW")
   real(8), intent(in) :: pos(3)   ! The input position vector in ECI
   real(8), intent(in) :: vel(3)   ! The input velocity vector in ECI
   real(8), intent(in) :: covMtxEqnx(6, 6)   ! The input covariance matrix in equinoctial elements (af, ag, Lbar, n/n, chi, psi)
   real(8), intent(out) :: covMtxUVW(6, 6)   ! The output covariance in UVW
end subroutine CovMtxEqnxToUVW
!*******************************************************************************



! Rotates the UVW covariance to Equinoctial
! Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
! The n terms are normalized by n
! The input position, velocity reference equator and equinox determine the output covariance reference frame.
subroutine CovMtxUVWToEqnx(pos, vel, covMtxUVW, covMtxEqnx) bind(C, name = "CovMtxUVWToEqnx")
   real(8), intent(in) :: pos(3)   ! The input position vector in ECI TEME Of Date
   real(8), intent(in) :: vel(3)   ! The input velocity vector in ECI TEME Of Date
   real(8), intent(in) :: covMtxUVW(6, 6)   ! The input covariance matrix UVW
   real(8), intent(out) :: covMtxEqnx(6, 6)   ! The output covariance in in equinoctial elements (af, ag, Lbar, n/n, chi, psi)
end subroutine CovMtxUVWToEqnx
!*******************************************************************************



! Rotates the ECI covariance to UVW
! Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
subroutine CovMtxECIToUVW(pos, vel, covMtxECI, covMtxUVW) bind(C, name = "CovMtxECIToUVW")
   real(8), intent(in) :: pos(3)   ! The input position vector in either TEME or J2K ECI
   real(8), intent(in) :: vel(3)   ! The input velocity vector in either TEME or J2K ECI
   real(8), intent(in) :: covMtxECI(6, 6)   ! The input covariance matrix in ECI
   real(8), intent(out) :: covMtxUVW(6, 6)   ! The output covariance in UVW
end subroutine CovMtxECIToUVW
!*******************************************************************************



! Rotates the UVW covariance to ECI
! Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
subroutine CovMtxUVWToECI(pos, vel, covMtxUVW, covMtxECI) bind(C, name = "CovMtxUVWToECI")
   real(8), intent(in) :: pos(3)   ! The input position vector in either TEME or J2K ECI
   real(8), intent(in) :: vel(3)   ! The input velocity vector in either TEME or J2K ECI
   real(8), intent(in) :: covMtxUVW(6, 6)   ! The input covariance matrix in UVW
   real(8), intent(out) :: covMtxECI(6, 6)   ! The output covariance in ECI
end subroutine CovMtxUVWToECI
!*******************************************************************************



! Converts covariance matrix ECI to EFG.
! EFG = Earth Fixed Greenwich
! ECI = Earth Centered Inertial - need to determine TEME or J2K
subroutine CovMtxECIToEFG(thetaG, covECI, covEFG) bind(C, name = "CovMtxECIToEFG")
   real(8), value :: thetaG   ! theta - local sidereal time (rad)
   real(8), intent(in) :: covECI(6, 6)   ! 6x6 ECI Covariance
   real(8), intent(out) :: covEFG(6, 6)   ! 6x6 EFG Covariance
end subroutine CovMtxECIToEFG
!*******************************************************************************



! Converts covariance matrix EFG to ECI.
! EFG = Earth Fixed Greenwich
! ECI = Earth Centered Inertial - need to determine TEME or J2K
subroutine CovMtxEFGToECI(thetaG, covEFG, covECI) bind(C, name = "CovMtxEFGToECI")
   real(8), value :: thetaG   ! theta - local sidereal time (rad)
   real(8), intent(in) :: covEFG(6, 6)   ! 6x6 EFG Covariance
   real(8), intent(out) :: covECI(6, 6)   ! 6x6 ECI Covariance
end subroutine CovMtxEFGToECI
!*******************************************************************************



! Converts 6x6 symmetric Matrix/2D array to 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix)
subroutine Mtx6x6ToLTA21(symMtx6x6, lta21) bind(C, name = "Mtx6x6ToLTA21")
   real(8), intent(in) :: symMtx6x6(6, 6)   ! Input 6x6 symmetric matrix
   real(8), intent(out) :: lta21(21)   ! Output 1D array of 21 elements (lower triangular of a 6x6 matrix)
end subroutine Mtx6x6ToLTA21
!*******************************************************************************



! Converts 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix) to a 6x6 symmetric matrix
subroutine LTA21ToMtx6x6(lta21, symMtx6x6) bind(C, name = "LTA21ToMtx6x6")
   real(8), intent(in) :: lta21(21)   ! Input 1D array of 21 elements (lower triangular of a 6x6 matrix)
   real(8), intent(out) :: symMtx6x6(6, 6)   ! Output 6x6 symmetric matrix
end subroutine LTA21ToMtx6x6
!*******************************************************************************



! Converts 9x9 symmetric Matrix/2D array to 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix)
subroutine Mtx9x9ToLTA45(symMtx9x9, lta45) bind(C, name = "Mtx9x9ToLTA45")
   real(8), intent(in) :: symMtx9x9(9, 9)   ! Input 9x9 symmetric matrix
   real(8), intent(out) :: lta45(45)   ! Output 1D array of 45 elements (lower triangular of a 9x9 matrix)
end subroutine Mtx9x9ToLTA45
!*******************************************************************************



! Converts 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix) to a 9x9 symmetric matrix
subroutine LTA45ToMtx9x9(lta45, symMtx9x9) bind(C, name = "LTA45ToMtx9x9")
   real(8), intent(in) :: lta45(45)   ! Input 1D array of 45 elements (lower triangular of a 9x9 matrix)
   real(8), intent(out) :: symMtx9x9(9, 9)   ! Output 9x9 symmetric matrix
end subroutine LTA45ToMtx9x9
!*******************************************************************************



! Propagate xyzDate covariance forward to the propagation time
subroutine PropCovFrState(rms, consider, stateArray, cov, propCov) bind(C, name = "PropCovFrState")
   real(8), value :: rms   ! Root mean square of observation residulas
   real(8), value :: consider   ! Density consider parameter, 12 is recommended (this is a percentile)
   real(8), intent(in) :: stateArray(54)   ! State transition matrix
   real(8), intent(in) :: cov(9, 9)   ! Covariance matrix at start time
   real(8), intent(out) :: propCov(6, 6)   ! Covariance at end time for state matrix
end subroutine PropCovFrState
!*******************************************************************************



! Rotates the ECI covariance to UVW
! Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
subroutine CovMtxECIToEqnx(pos, vel, covMtxECI, covMtxEqnx) bind(C, name = "CovMtxECIToEqnx")
   real(8), intent(in) :: pos(3)   ! The input position vector in either TEME or J2K ECI
   real(8), intent(in) :: vel(3)   ! The input velocity vector in either TEME or J2K ECI
   real(8), intent(in) :: covMtxECI(9, 9)   ! The input covariance matrix in ECI
   real(8), intent(out) :: covMtxEqnx(9, 9)   ! The output covariance in UVW
end subroutine CovMtxECIToEqnx
!*******************************************************************************



! Rotates the UVW covariance to ECI
! Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
subroutine CovMtxEqnxToECI9x9(pos, vel, covEqnx, covMtxECI) bind(C, name = "CovMtxEqnxToECI9x9")
   real(8), intent(in) :: pos(3)   ! The input position vector in either TEME or J2K ECI
   real(8), intent(in) :: vel(3)   ! The input velocity vector in either TEME or J2K ECI
   real(8), intent(in) :: covEqnx(9, 9)   ! 45 or 55
   real(8), intent(out) :: covMtxECI(9, 9)   ! The output covariance in ECI
end subroutine CovMtxEqnxToECI9x9
!*******************************************************************************



! Rotates the UVW covariance to ECI
! Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
subroutine CovMtxEqnxToUVW9x9(pos, vel, covEqnx, covMtxUVW) bind(C, name = "CovMtxEqnxToUVW9x9")
   real(8), intent(in) :: pos(3)   ! The input position vector in either TEME or J2K ECI
   real(8), intent(in) :: vel(3)   ! The input velocity vector in either TEME or J2K ECI
   real(8), intent(in) :: covEqnx(9, 9)   ! 45 or 55
   real(8), intent(out) :: covMtxUVW(9, 9)   ! The output covariance in ECI
end subroutine CovMtxEqnxToUVW9x9
!*******************************************************************************



! Update (propagate) covariance to a future time with a supplied covariance, state transition matrix
! consider parameter and RMS. Consider parameter is applied to the drag term only.
! Full covariance matrix is multiplied by RMS squared.  State transition matrix can be obtained from 
! SpProp.SpGetStateMtx or supplying your own. State matrix, input and output covariance must be in 
! matching coordinate systems.
subroutine CovMtxUpdate(rmsIn, consider, cov, stateArray, propCov) bind(C, name = "CovMtxUpdate")
   real(8), value :: rmsIn   ! Root mean square of sensor errors
   real(8), value :: consider   ! Consider parameter (percentage)
   real(8), intent(in) :: cov(9, 9)   ! Covariance at epoch
   real(8), intent(in) :: stateArray(54)   ! Consider parameter and root mean square
   real(8), intent(out) :: propCov(6, 6)   ! Updated covariance
end subroutine CovMtxUpdate
!*******************************************************************************



! Annual Aberration calculated using equations from Astronomical Algorithms, Jean Meeus, 2nd Edition with Corrections as of June 15, 2005
subroutine AberrationAnnual(ra, decl, dS50UTC, raDelta, decDelta) bind(C, name = "AberrationAnnual")
   real(8), value :: ra   ! Input right ascension (deg)
   real(8), value :: decl   ! Input declination (deg)
   real(8), value :: dS50UTC   ! Time in days since 1950 UTC
   real(8), intent(out) :: raDelta   ! Right Ascension delta due to Annual Aberration (deg)
   real(8), intent(out) :: decDelta   ! Declination delta due to Annual Aberration (deg)
end subroutine AberrationAnnual
!*******************************************************************************



! Diurnal Aberration is due to the rotation of the Earth about it's axis. This is only valid for ground based sensors.
! Diurnal Aberration calculated using equations from Explanatory Supplement to the Astronomical Almanac 3rd Edition, 2013
subroutine AberrationDiurnal(ra, decl, dS50UTC, senPos, raDelta, decDelta) bind(C, name = "AberrationDiurnal")
   real(8), value :: ra   ! Input right ascension (deg)
   real(8), value :: decl   ! Input declination (deg)
   real(8), value :: dS50UTC   ! Time in days since 1950 UTC
   real(8), intent(in) :: senPos(3)   ! Sensor EFG geocentric position (meters)
   real(8), intent(out) :: raDelta   ! Right Ascension delta due to Diurnal Aberration (deg)
   real(8), intent(out) :: decDelta   ! Declination delta due to Diurnal Aberration (deg)
end subroutine AberrationDiurnal
!*******************************************************************************



! Sets JPL parameters
! Notes: Set JPL parameters will be used by SP, SPG4-XP, and anything that requires access to JPL data
subroutine JplSetParameters(jplFile, ds50Start, ds50Stop) bind(C, name = "JplSetParameters")
   character, intent(in) :: jplFile(512)   ! The name of the JPL file.
   real(8), value :: ds50Start   ! Start Time of JPL ephmeris to load
   real(8), value :: ds50Stop   ! End Time of JPL ephemeris to load
end subroutine JplSetParameters
!*******************************************************************************



! Gets JPL parameters
subroutine JplGetParameters(jplFile, ds50Start, ds50Stop) bind(C, name = "JplGetParameters")
   character, intent(out) :: jplFile(512)   ! The name of the JPL file.
   real(8), intent(out) :: ds50Start   ! Start Time of Ephmeris to load
   real(8), intent(out) :: ds50Stop   ! End Time of Ephemeris to load
end subroutine JplGetParameters
!*******************************************************************************



! Resets JPL parameters & removes JPL ephemeris data
subroutine JplReset() bind(C, name = "JplReset")
end subroutine JplReset
!*******************************************************************************



! Computes various Sun and Moon vectors base on loaded JPL data at the specified time.
! Note: if JPL data isn't loaded or available, all output parameters are set to zero
subroutine JplCompSunMoonVec(ds50UTC, uvecSun, sunVecMag, uvecMoon, moonVecMag) bind(C, name = "JplCompSunMoonVec")
   real(8), value :: ds50UTC   ! Input time in day since 1950 UTC
   real(8), intent(out) :: uvecSun(3)   ! The resulting sun position unit vector.
   real(8), intent(out) :: sunVecMag   ! The resulting magnitude of the sun position vector (km).
   real(8), intent(out) :: uvecMoon(3)   ! The resulting moon position unit vector.
   real(8), intent(out) :: moonVecMag   ! The resulting magnitude of the moon position vector (km).
end subroutine JplCompSunMoonVec
!*******************************************************************************



! Computes Sun and Moon position vectors base on loaded JPL data at the specified time.
! Note: if JPL data isn't loaded or available, all output parameters are set to zero
subroutine JplCompSunMoonPos(ds50UTC, sunVec, moonVec) bind(C, name = "JplCompSunMoonPos")
   real(8), value :: ds50UTC   ! Input time in day since 1950 UTC
   real(8), intent(out) :: sunVec(3)   ! The resulting sun position vector (km).
   real(8), intent(out) :: moonVec(3)   ! The resulting sun position vector (km).
end subroutine JplCompSunMoonPos
!*******************************************************************************



! Removes the JPL ephemeris from memory
subroutine RemoveJpl() bind(C, name = "RemoveJpl")
end subroutine RemoveJpl
!*******************************************************************************



! Rotates position and velocity vectors from TEME of Epoch to TEME of Date
subroutine TemeEpochToDate(nutationTerms, epochDs50TAI, dateDs50TAI, posEpoch, velEpoch, posDate, velDate) &
bind(C, name = "TemeEpochToDate")
   integer, value :: nutationTerms   ! Nutation terms (4-106, 4:least accurate, 106:most acurate).
   real(8), value :: epochDs50TAI   ! The date of which posEpoch/velEpoch are based on, expressed in days since 1950, TAI.
   real(8), value :: dateDs50TAI   ! The date of which posEpoch/velEpoch will rotate to, expressed in days since 1950, TAI.
   real(8), intent(in) :: posEpoch(3)   ! The position vector in TEME of Epoch.
   real(8), intent(in) :: velEpoch(3)   ! The velocity vector in TEME of Epoch.
   real(8), intent(out) :: posDate(3)   ! The resulting position vector in TEME of Date.
   real(8), intent(out) :: velDate(3)   ! The resulting velocity vector in TEME of Date.
end subroutine TemeEpochToDate
!*******************************************************************************

end interface




   
   ! Index of Keplerian elements
   integer, parameter :: &
      XA_KEP_A     =   0, &     ! semi-major axis (km)
      XA_KEP_E     =   1, &     ! eccentricity (unitless)
      XA_KEP_INCLI =   2, &     ! inclination (deg)
      XA_KEP_MA    =   3, &     ! mean anomaly (deg)
      XA_KEP_NODE  =   4, &     ! right ascension of the asending node (deg)
      XA_KEP_OMEGA =   5, &     ! argument of perigee (deg)
      XA_KEP_SIZE  =  6;   
      
   ! Index of classical elements
   integer, parameter :: &
      XA_CLS_N     =   0, &     ! N mean motion (revs/day)
      XA_CLS_E     =   1, &     ! eccentricity (unitless)
      XA_CLS_INCLI =   2, &     ! inclination (deg)
      XA_CLS_MA    =   3, &     ! mean anomaly (deg)
      XA_CLS_NODE  =   4, &     ! right ascension of the asending node (deg)
      XA_CLS_OMEGA =   5, &     ! argument of perigee (deg)
      XA_CLS_SIZE  =   6;
   
   ! Index of equinoctial elements
   integer, parameter :: &
      XA_EQNX_AF   =   0, &     ! Af (unitless) 
      XA_EQNX_AG   =   1, &     ! Ag (unitless)
      XA_EQNX_CHI  =   2, &     ! chi (unitless)
      XA_EQNX_PSI  =   3, &     ! psi (unitless)
      XA_EQNX_L    =   4, &     ! L mean longitude (deg)
      XA_EQNX_N    =   5, &     ! N mean motion (revs/day)
      XA_EQNX_SIZE =   6;
      
   ! Indexes of AstroConvFrTo
   integer, parameter :: &
      XF_CONV_SGP42SGP = 101;        ! SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot)
   
   
   ! Indexes for topocentric components
   integer, parameter :: &
      XA_TOPO_RA    = 0,      &  ! Right ascension (deg)
      XA_TOPO_DEC   = 1,      &  ! Declination (deg)
      XA_TOPO_AZ    = 2,      &  ! Azimuth (deg)
      XA_TOPO_EL    = 3,      &  ! Elevation (deg)
      XA_TOPO_RANGE = 4,      &  ! Range (km)
      XA_TOPO_RADOT = 5,      &  ! Right ascension dot (deg/s)
      XA_TOPO_DECDOT= 6,      &  ! Declincation dot (deg/s)
      XA_TOPO_AZDOT = 7,      &  ! Azimuth dot (deg/s)
      XA_TOPO_ELDOT = 8,      &  ! Elevation dot (deg/s)
      XA_TOPO_RANGEDOT = 9,   &  ! Range dot (km/s)   
      XA_TOPO_SIZE  = 10;   
      
      
   ! Indexes for RAE components
   integer, parameter :: &
      XA_RAE_RANGE   = 0,     &  ! Range (km)
      XA_RAE_AZ      = 1,     &  ! Azimuth (deg)
      XA_RAE_EL      = 2,     &  ! Elevation (deg)
      XA_RAE_RANGEDOT= 3,     &  ! Range dot (km/s)   
      XA_RAE_AZDOT   = 4,     &  ! Azimuth dot (deg/s)
      XA_RAE_ELDOT   = 5,     &  ! Elevation dot (deg/s)
      XA_RAE_SIZE    = 6;
      
      
   ! Year of Equinox indicator
   integer, parameter :: &
      YROFEQNX_OBTIME = 0, &     ! Date of observation
      YROFEQNX_CURR   = 1, &     ! 0 Jan of Date
      YROFEQNX_2000   = 2, &     ! J2000
      YROFEQNX_1950   = 3;       ! B1950
      
end module AstroFuncDll
! ========================= End of auto generated code ==========================
