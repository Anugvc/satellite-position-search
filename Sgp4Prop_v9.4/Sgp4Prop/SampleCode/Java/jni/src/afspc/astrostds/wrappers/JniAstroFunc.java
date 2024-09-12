// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: AstroFunc */
public class JniAstroFunc
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "astrofunc";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadAstroFuncDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadAstroFuncDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes AstroFunc DLL for use in the program.
   * If this function returns an error, it is recommended that you stop the program immediately.
   * 
   * An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   * @param apAddr             The handle that was returned from DllMainInit(). See the documentation for DllMain.dll for details. (in-Long)
   * @return 0 if AstroFunc.dll is initialized successfully, non-0 if there is an error.
   */
   public static native int AstroFuncInit(long apAddr);


   /**
   * Retrieves information about the current version of AstroFunc.dll. The information is placed in the string parameter you pass in.
   * The returned string provides information about the version number, build date, and platform.
   * @param infoStr            A string to hold the information about AstroFunc.dll. (out-Character[128])
   */
   public static native void AstroFuncGetInfo(byte[] infoStr);


   /**
   * Converts a set of Keplerian elements to a set of equinoctial elements. 
   * @param xa_kep             The set of Keplerian elements to be converted. see XA_KEP_? (in-Double[6])
   * @param xa_eqnx            The resulting set of equinoctial elements. see XA_EQNX_? (out-Double[6])
   */
   public static native void KepToEqnx(double[] xa_kep, double[] xa_eqnx);


   /**
   * Converts a set of osculating Keplerian elements to osculating position and velocity vectors.
   * @param xa_kep             The set of Keplerian elements to be converted. see XA_KEP_? (in-Double[6])
   * @param pos                The resulting position vector. (out-Double[3])
   * @param vel                The resulting velocity vector. (out-Double[3])
   */
   public static native void KepToPosVel(double[] xa_kep, double[] pos, double[] vel);


   /**
   * Converts a set of Keplerian elements to Ubar, Vbar, and Wbar vectors.
   * @param xa_kep             The set of Keplerian elements to be converted. see XA_KEP_? (in-Double[6])
   * @param uBar               The resulting ubar vector. (out-Double[3])
   * @param vBar               The resulting vbar vector. (out-Double[3])
   * @param wBar               The resulting wbar vector. (out-Double[3])
   */
   public static native void KepToUVW(double[] xa_kep, double[] uBar, double[] vBar, double[] wBar);


   /**
   * Converts a set of classical elements to a set of equinoctial elements. 
   * @param xa_cls             The set of classical elements to be converted. see XA_CLS_? (in-Double[6])
   * @param xa_eqnx            The resulting set of equinoctial elements. see XA_EQNX_? (out-Double[6])
   */
   public static native void ClassToEqnx(double[] xa_cls, double[] xa_eqnx);


   /**
   * Converts a set of equinoctial elements to a set of classical elements.
   * @param xa_eqnx            The set of equinoctial elements to be converted. see XA_EQNX_? (in-Double[6])
   * @param xa_cls             The resulting set of classical elements. see XA_CLS_? (out-Double[6])
   */
   public static native void EqnxToClass(double[] xa_eqnx, double[] xa_cls);


   /**
   * Converts a set of equinoctial elements to a set of Keplerian elements. 
   * @param xa_eqnx            The set of equinoctial elements to be converted. see XA_EQNX_? (in-Double[6])
   * @param xa_kep             The resulting set of Keplerian elements. see XA_KEP_? (out-Double[6])
   */
   public static native void EqnxToKep(double[] xa_eqnx, double[] xa_kep);


   /**
   * Converts a set of equinoctial elements to position and velocity vectors.
   * @param xa_eqnx            The set of equinoctial elements to be converted. see XA_EQNX_? (in-Double[6])
   * @param pos                The resulting position vector. (out-Double[3])
   * @param vel                The resulting velocity vector. (out-Double[3])
   */
   public static native void EqnxToPosVel(double[] xa_eqnx, double[] pos, double[] vel);


   /**
   * Converts position and velocity vectors to a set of equinoctial elements.
   * @param pos                The position vector to be converted. (in-Double[3])
   * @param vel                The velocity vector to be converted. (in-Double[3])
   * @param xa_eqnx            The resulting set of equinoctial elements. see XA_EQNX_? (out-Double[6])
   */
   public static native void PosVelToEqnx(double[] pos, double[] vel, double[] xa_eqnx);


   /**
   * Converts position and velocity vectors to a set of equinoctial elements with the given mu value. 
   * This function is used when working with the SP propagator to get a more accurate set of equinoctial elements.
   * @param pos                The position vector to be converted. (in-Double[3])
   * @param vel                The velocity vector to be converted. (in-Double[3])
   * @param mu                 The value of mu. (in-Double)
   * @param xa_eqnx            The resulting set of equinoctial elements. see XA_EQNX_? (out-Double[6])
   */
   public static native void PosVelMuToEqnx(double[] pos, double[] vel, double mu, double[] xa_eqnx);


   /**
   * Converts osculating position and velocity vectors to a set of osculating Keplerian elements.
   * @param pos                The position vector to be converted. (in-Double[3])
   * @param vel                The velocity vector to be converted. (in-Double[3])
   * @param xa_kep             The resulting set of Keplerian elements. see XA_KEP_? (out-Double[6])
   */
   public static native void PosVelToKep(double[] pos, double[] vel, double[] xa_kep);


   /**
   * Converts osculating position and velocity vectors to a set of osculating Keplerian elements with the given value of mu.
   * This function is used when working with the SP propagator to get a more accurate set of Keplerian elements.
   * @param pos                The position vector to be converted. (in-Double[3])
   * @param vel                The velocity vector to be converted. (in-Double[3])
   * @param mu                 The value of mu. (in-Double)
   * @param xa_kep             The resulting set of Keplerian elements. see XA_KEP_? (out-Double[6])
   */
   public static native void PosVelMuToKep(double[] pos, double[] vel, double mu, double[] xa_kep);


   /**
   * Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
   * The resulting vectors have the following meanings.
   * U vector: along radial direction
   * V vector: W x U
   * W vector: pos x vel
   * @param pos                The position vector to be converted. (in-Double[3])
   * @param vel                The velocity vector to be converted. (in-Double[3])
   * @param uvec               The resulting U vector. (out-Double[3])
   * @param vVec               The resulting V vector. (out-Double[3])
   * @param wVec               The resulting W vector. (out-Double[3])
   */
   public static native void PosVelToUUVW(double[] pos, double[] vel, double[] uvec, double[] vVec, double[] wVec);


   /**
   * Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
   * The resulting vectors have the following meanings.
   * U vector: V x W
   * V vector: along velocity direction
   * W vector: pos x vel
   * @param pos                The position vector. (in-Double[3])
   * @param vel                The velocity vector. (in-Double[3])
   * @param uvec               The resulting U vector. (out-Double[3])
   * @param vVec               The resulting V vector. (out-Double[3])
   * @param wVec               The resulting W vector. (out-Double[3])
   */
   public static native void PosVelToPTW(double[] pos, double[] vel, double[] uvec, double[] vVec, double[] wVec);


   /**
   * Solves Kepler's equation (M = E - e sin(E)) for the eccentric anomaly, E, by iteration.
   * @param xa_kep             The set of Keplerian elements for which to solve the equation. see XA_KEP_? (in-Double[6])
   * @return The eccentric anomaly.
   */
   public static native double SolveKepEqtn(double[] xa_kep);


   /**
   * Computes true anomaly from a set of Keplerian elements.
   * @param xa_kep             The set of Keplerian elements for which to compute true anomaly. see XA_KEP_? (in-Double[6])
   * @return The true anomaly in degrees.
   */
   public static native double CompTrueAnomaly(double[] xa_kep);


   /**
   * Converts mean motion N to semi-major axis A.
   * @param n                  Mean motion N (revs/day). (in-Double)
   * @return The semi-major axis A (km).
   */
   public static native double NToA(double n);


   /**
   * Converts semi-major axis A to mean motion N.
   * @param a                  Semi-major axis A (km). (in-Double)
   * @return The mean motion N (revs/day).
   */
   public static native double AToN(double a);


   /**
   * Converts Kozai mean motion to Brouwer mean motion.
   * SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
   * @param eccen              eccentricity (in-Double)
   * @param incli              inclination (degrees) (in-Double)
   * @param nKozai             Kozai mean motion (revs/day). (in-Double)
   * @return Brouwer mean motion (revs/day).
   */
   public static native double KozaiToBrouwer(double eccen, double incli, double nKozai);


   /**
   * Converts Brouwer mean motion to Kozai mean motion.
   * SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
   * @param eccen              eccentricity (in-Double)
   * @param incli              inclination (degrees) (in-Double)
   * @param nBrouwer           Brouwer mean motion (revs/day). (in-Double)
   * @return Kozai mean motion (revs/day).
   */
   public static native double BrouwerToKozai(double eccen, double incli, double nBrouwer);


   /**
   * Converts a set of osculating Keplerian elements to a set of mean Keplerian elements using method 9 algorithm.
   * @param xa_OscKep          The set of osculating Keplerian elements to be converted. see XA_KEP_? (in-Double[6])
   * @param xa_MeanKep         The resulting set of mean Keplerian elements. see XA_KEP_? (out-Double[6])
   */
   public static native void KepOscToMean(double[] xa_OscKep, double[] xa_MeanKep);


   /**
   * Converts an ECI position vector XYZ to geodetic latitude, longitude, and height.
   * @param thetaG             ThetaG - Greenwich mean sidereal time (rad). (in-Double)
   * @param metricPos          The ECI (TEME of Date) position vector (km) to be converted. (in-Double[3])
   * @param metricLLH          The resulting geodetic north latitude (degree), east longitude(degree), and height (km). (out-Double[3])
   */
   public static native void XYZToLLH(double thetaG, double[] metricPos, double[] metricLLH);


   /**
   * Converts an ECI position vector XYZ to geodetic latitude, longitude, and height at the specified time.
   * @param ds50UTC            Input time in days since 1950 UTC (in-Double)
   * @param metricPos          The ECI (TEME of Date) position vector (km) to be converted. (in-Double[3])
   * @param metricLLH          The resulting geodetic north latitude (degree), east longitude(degree), and height (km). (out-Double[3])
   */
   public static native void XYZToLLHTime(double ds50UTC, double[] metricPos, double[] metricLLH);


   /**
   * Converts geodetic latitude, longitude, and height to an ECI position vector XYZ.
   * @param thetaG             Theta - Greenwich mean sidereal time (rad). (in-Double)
   * @param metricLLH          An array containing geodetic north latitude (degree), east longitude (degree), and height (km) to be converted. (in-Double[3])
   * @param metricXYZ          The resulting ECI (TEME of Date) position vector (km). (out-Double[3])
   */
   public static native void LLHToXYZ(double thetaG, double[] metricLLH, double[] metricXYZ);


   /**
   * Converts geodetic latitude, longitude, and height to an ECI position vector XYZ at the specified time.
   * @param ds50UTC            Input time in days since 1950 UTC (in-Double)
   * @param metricLLH          An array containing geodetic north latitude (degree), east longitude (degree), and height (km) to be converted. (in-Double[3])
   * @param metricXYZ          The resulting ECI (TEME of Date) position vector (km). (out-Double[3])
   */
   public static native void LLHToXYZTime(double ds50UTC, double[] metricLLH, double[] metricXYZ);


   /**
   * Converts EFG position and velocity vectors to ECI position and velocity vectors.
   * @param thetaG             Theta - Greenwich mean sidereal time (rad). (in-Double)
   * @param posEFG             The EFG position vector (km) to be converted. (in-Double[3])
   * @param velEFG             The EFG velocity vector (km/s) to be converted. (in-Double[3])
   * @param posECI             The resulting ECI (TEME of Date) position vector (km). (out-Double[3])
   * @param velECI             The resulting ECI (TEME of Date) velocity vector (km/s). (out-Double[3])
   */
   public static native void EFGToECI(double thetaG, double[] posEFG, double[] velEFG, double[] posECI, double[] velECI);


   /**
   * Converts EFG position and velocity vectors to ECI position and velocity vectors at the specified time.
   * @param ds50UTC            Input time in days since 1950 UTC (in-Double)
   * @param posEFG             The EFG position vector (km) to be converted. (in-Double[3])
   * @param velEFG             The EFG velocity vector (km/s) to be converted. (in-Double[3])
   * @param posECI             The resulting ECI (TEME of Date) position vector (km). (out-Double[3])
   * @param velECI             The resulting ECI (TEME of Date) velocity vector (km/s). (out-Double[3])
   */
   public static native void EFGToECITime(double ds50UTC, double[] posEFG, double[] velEFG, double[] posECI, double[] velECI);


   /**
   * Converts ECI position and velocity vectors to EFG position and velocity vectors.
   * @param thetaG             Theta - Greenwich mean sidereal time (rad). (in-Double)
   * @param posECI             The ECI (TEME of Date) position vector (km) to be converted. (in-Double[3])
   * @param velECI             The ECI (TEME of Date) velocity vector (km/s) to be converted. (in-Double[3])
   * @param posEFG             The resulting EFG position vector (km). (out-Double[3])
   * @param velEFG             The resulting EFG velocity vector (km/s). (out-Double[3])
   */
   public static native void ECIToEFG(double thetaG, double[] posECI, double[] velECI, double[] posEFG, double[] velEFG);


   /**
   * Converts ECI position and velocity vectors to EFG position and velocity vectors at the specified time.
   * @param ds50UTC            Input time in days since 1950 UTC (in-Double)
   * @param posECI             The ECI (TEME of Date) position vector (km) to be converted. (in-Double[3])
   * @param velECI             The ECI (TEME of Date) velocity vector (km/s) to be converted. (in-Double[3])
   * @param posEFG             The resulting EFG position vector (km). (out-Double[3])
   * @param velEFG             The resulting EFG velocity vector (km/s). (out-Double[3])
   */
   public static native void ECIToEFGTime(double ds50UTC, double[] posECI, double[] velECI, double[] posEFG, double[] velEFG);


   /**
   * Converts ECR position and velocity vectors to EFG position and velocity vectors.
   * @param polarX             Polar motion X (arc-sec). (in-Double)
   * @param polarY             Polar motion Y (arc-sec). (in-Double)
   * @param posECR             The ECR position vector (km) to be converted. (in-Double[3])
   * @param velECR             The ECR velocity vector (km/s) to be converted. (in-Double[3])
   * @param posEFG             The resulting EFG position vector (km). (out-Double[3])
   * @param velEFG             The resulting EFG velocity vector (km/s). (out-Double[3])
   */
   public static native void ECRToEFG(double polarX, double polarY, double[] posECR, double[] velECR, double[] posEFG, double[] velEFG);


   /**
   * Converts ECR position and velocity vectors to EFG position and velocity vectors at the specified time.
   * @param ds50UTC            Input time in days since 1950 UTC. (in-Double)
   * @param posECR             The ECR position vector (km) to be converted. (in-Double[3])
   * @param velECR             The ECR velocity vector (km/s) to be converted. (in-Double[3])
   * @param posEFG             The resulting EFG position vector (km) (set to zeros if timing constants not loaded). (out-Double[3])
   * @param velEFG             The resulting EFG velocity vector (km/s) (set to zeros if timing constants not loaded). (out-Double[3])
   */
   public static native void ECRToEFGTime(double ds50UTC, double[] posECR, double[] velECR, double[] posEFG, double[] velEFG);


   /**
   * Converts EFG position and velocity vectors to ECR position and velocity vectors.
   * @param polarX             Polar motion X (arc-sec). (in-Double)
   * @param polarY             Polar motion Y (arc-sec). (in-Double)
   * @param posEFG             The EFG position vector (km) to be converted. (in-Double[3])
   * @param velEFG             The EFG velocity vector (km/s) to be converted. (in-Double[3])
   * @param posECR             The resulting ECR position vector (km). (out-Double[3])
   * @param velECR             The resulting ECR velocity vector (km/s). (out-Double[3])
   */
   public static native void EFGToECR(double polarX, double polarY, double[] posEFG, double[] velEFG, double[] posECR, double[] velECR);


   /**
   * Converts EFG position and velocity vectors to ECR position and velocity vectors at the specified time.
   * @param ds50UTC            Input time in days since 1950 UTC (in-Double)
   * @param posEFG             The EFG position vector (km) to be converted. (in-Double[3])
   * @param velEFG             The EFG velocity vector (km/s) to be converted. (in-Double[3])
   * @param posECR             The resulting ECR position vector (km) (set to zeros if timing constants not loaded). (out-Double[3])
   * @param velECR             The resulting ECR velocity vector (km/s) (set to zeros if timing constants not loaded). (out-Double[3])
   */
   public static native void EFGToECRTime(double ds50UTC, double[] posEFG, double[] velEFG, double[] posECR, double[] velECR);


   /**
   * Converts an EFG position vector to geodetic latitude, longitude, and height.
   * @param posEFG             The EFG position vector (km) to be converted. (in-Double[3])
   * @param metricLLH          The resulting geodetic north latitude (degree), east longitude (degree), and height (km). (out-Double[3])
   */
   public static native void EFGPosToLLH(double[] posEFG, double[] metricLLH);


   /**
   * Converts geodetic latitude, longitude, and height to an EFG position vector.
   * @param metricLLH          An Array containing the geodetic north latitude (degree), east longitude (degree), and height (km) to be converted. (in-Double[3])
   * @param posEFG             The resulting EFG position vector (km). (out-Double[3])
   */
   public static native void LLHToEFGPos(double[] metricLLH, double[] posEFG);


   /**
   * Rotates position and velocity vectors from J2000 to coordinates of the specified date, expressed in ds50TAI.
   * @param spectr             Specifies whether to run in SPECTR compatibility mode. A value of 1 means Yes. (in-Integer)
   * @param nutationTerms      Nutation terms (4-106, 4:least accurate, 106:most acurate). (in-Integer)
   * @param ds50TAI            The date to rotate to coordinates of, expressed in days since 1950, TAI. (in-Double)
   * @param posJ2K             The position vector from J2000. (in-Double[3])
   * @param velJ2K             The velocity vector from J2000. (in-Double[3])
   * @param posDate            The resulting position vector in coordinates of date, ds50TAI. (out-Double[3])
   * @param velDate            The resulting velocity vector in coordinates of date, ds50TAI. (out-Double[3])
   */
   public static native void RotJ2KToDate(int spectr, int nutationTerms, double ds50TAI, double[] posJ2K, double[] velJ2K, double[] posDate, double[] velDate);


   /**
   * Rotates position and velocity vectors from coordinates of date to J2000.
   * @param spectr             Specifies whether to run in SPECTR compatibility mode. A value of 1 means Yes. (in-Integer)
   * @param nutationTerms      Nutation terms (4-106, 4:least accurate, 106:most acurate). (in-Integer)
   * @param ds50TAI            Time in days since 1950, TAI for which the coordinates of position and velocity vectors are currently expressed. (in-Double)
   * @param posDate            The position vector from coordinates of Date. (in-Double[3])
   * @param velDate            The velocity vector from coordinates of Date. (in-Double[3])
   * @param posJ2K             The resulting position vector in coordinates of J2000. (out-Double[3])
   * @param velJ2K             The resulting velocity vector in coordinates of J2000. (out-Double[3])
   */
   public static native void RotDateToJ2K(int spectr, int nutationTerms, double ds50TAI, double[] posDate, double[] velDate, double[] posJ2K, double[] velJ2K);


   /**
   * Computes the Sun and Moon position at the specified time.
   * @param ds50ET             The number of days since 1950, ET (Ephemeris Time/Terrestrial Time) for which to compute the sun and moon position. (in-Double)
   * @param uvecSun            The resulting sun position unit vector. (out-Double[3])
   * @param sunVecMag          The resulting magnitude of the sun position vector (km). (out-Double)
   * @param uvecMoon           The resulting moon position unit vector. (out-Double[3])
   * @param moonVecMag         The resulting magnitude of the moon position vector (km). (out-Double)
   */
   public static native void CompSunMoonPos(double ds50ET, double[] uvecSun, double[] sunVecMag, double[] uvecMoon, double[] moonVecMag);


   /**
   * Computes the Sun position at the specified time.
   * @param ds50ET             The number of days since 1950, ET (Ephemeris Time/Terrestrial Time) for which to compute the sun position. (in-Double)
   * @param uvecSun            The resulting sun position unit vector. (out-Double[3])
   * @param sunVecMag          The resulting magnitude of the sun position vector (km). (out-Double)
   */
   public static native void CompSunPos(double ds50ET, double[] uvecSun, double[] sunVecMag);


   /**
   * Computes the Moon position at the specified time.
   * @param ds50ET             The number of days since 1950, ET (Ephemeris Time/Terrestrial Time) for which to compute the moon position. (in-Double)
   * @param uvecMoon           The resulting moon position unit vector. (out-Double[3])
   * @param moonVecMag         The resulting magnitude of the moon position vector (km). (out-Double)
   */
   public static native void CompMoonPos(double ds50ET, double[] uvecMoon, double[] moonVecMag);


   /**
   * This function is intended for future use.  No information is currently available.
   * This function is intended for future use.  No information is currently available.
   * @param xf_Conv            Index of the conversion function (in-Integer)
   * @param frArr              The input array (in-Double[128])
   * @param toArr              The resulting array (out-Double[128])
   */
   public static native void AstroConvFrTo(int xf_Conv, double[] frArr, double[] toArr);


   /**
   * Converts right ascension and declination to vector triad LAD in topocentric equatorial coordinate system.
   * @param ra                 Right ascension (deg). (in-Double)
   * @param dec                Declination (deg). (in-Double)
   * @param l                  The resulting unit vector from the station to the satellite (referred to the equatorial coordinate system axis). (out-Double[3])
   * @param a_tilde            The resulting unit vector perpendicular to the hour circle passing through the satellite, in the direction of increasing RA. (out-Double[3])
   * @param d_tilde            The resulting unit vector perpendicular to L and is directed toward the north, in the plane of the hour circle. (out-Double[3])
   */
   public static native void RADecToLAD(double ra, double dec, double[] l, double[] a_tilde, double[] d_tilde);


   /**
   * Converts azimuth and elevation to vector triad LAD in topocentric horizontal coordinate system.
   * @param az                 Input azimuth (deg). (in-Double)
   * @param el                 Input elevation angle (deg). (in-Double)
   * @param lh                 The resulting unit vector from the station to the satellite (referred to the horizon coordinate system axis). (out-Double[3])
   * @param ah                 The resulting unit vector perpendicular to the hour circle passing through the satellite, in the direction of increasing Az. (out-Double[3])
   * @param dh                 The resulting unit vector perpendicular to L and is directed toward the zenith, in the plane of the hour circle. (out-Double[3])
   */
   public static native void AzElToLAD(double az, double el, double[] lh, double[] ah, double[] dh);


   /**
   * Converts satellite ECI position/velocity vectors and sensor location to topocentric components.
   * The xa_topo array has the following structure:
   * [0]: Resulting right ascension (RA) (deg)
   * [1]: Declination (deg)
   * [2]: Azimuth (deg)
   * [3]: Elevation (deg)
   * [4]: Range (km)
   * [5]: RAdot (first derivative of right ascension) (deg/s)
   * [6]: DecDot (first derivative of declination) (deg/s)
   * [7]: AzDot (first derivative of azimuth) (deg/s)
   * [8]: ElDot (first derivative of elevation) (deg/s)
   * [9]: RangeDot (first derivative of range) (km/s)   
   * @param theta              Theta - local sidereal time(rad). (in-Double)
   * @param lat                Station's astronomical latitude (deg). (+N) (-S) (in-Double)
   * @param senPos             Sensor position in ECI (km). (in-Double[3])
   * @param satPos             Satellite position in ECI (km). (in-Double[3])
   * @param satVel             Satellite velocity in ECI (km/s). (in-Double[3])
   * @param xa_topo            An array that stores the resulting topocentric components.  see XA_TOPO_? (out-Double[10])
   */
   public static native void ECIToTopoComps(double theta, double lat, double[] senPos, double[] satPos, double[] satVel, double[] xa_topo);


   /**
   * Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
   * @param thetaG             Theta - Greenwich mean sidereal time (rad). (in-Double)
   * @param lat                Station's astronomical latitude (deg). (+N) (-S) (in-Double)
   * @param lon                Station's astronomical longitude (deg). (+E) (-W) (in-Double)
   * @param ra                 Right ascension (deg) (in-Double)
   * @param dec                Declination (deg) (in-Double)
   * @param az                 Azimuth (deg) (out-Double)
   * @param el                 Elevation (deg) (out-Double)
   */
   public static native void RaDecToAzEl(double thetaG, double lat, double lon, double ra, double dec, double[] az, double[] el);


   /**
   * Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
   * @param ds50UTC            Input time in days since 1950 UTC (in-Double)
   * @param lat                Station's astronomical latitude (deg). (+N) (-S) (in-Double)
   * @param lon                Station's astronomical longitude (deg). (+E) (-W) (in-Double)
   * @param ra                 Right ascension (deg) (in-Double)
   * @param dec                Declination (deg) (in-Double)
   * @param az                 Azimuth (deg) (out-Double)
   * @param el                 Elevation (deg) (out-Double)
   */
   public static native void RaDecToAzElTime(double ds50UTC, double lat, double lon, double ra, double dec, double[] az, double[] el);


   /**
   * Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
   * @param thetaG             Theta - Greenwich mean sidereal time (rad). (in-Double)
   * @param lat                Station's astronomical latitude (deg). (+N) (-S) (in-Double)
   * @param lon                Station's astronomical longitude (deg). (+E) (-W) (in-Double)
   * @param az                 Azimuth (deg) (in-Double)
   * @param el                 Elevation (deg) (in-Double)
   * @param ra                 Right ascension (deg) (out-Double)
   * @param dec                Declination (deg) (out-Double)
   */
   public static native void AzElToRaDec(double thetaG, double lat, double lon, double az, double el, double[] ra, double[] dec);


   /**
   * Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
   * @param ds50UTC            Input time in days since 1950 UTC (in-Double)
   * @param lat                Station's astronomical latitude (deg). (+N) (-S) (in-Double)
   * @param lon                Station's astronomical longitude (deg). (+E) (-W) (in-Double)
   * @param az                 Azimuth (deg) (in-Double)
   * @param el                 Elevation (deg) (in-Double)
   * @param ra                 Right ascension (deg) (out-Double)
   * @param dec                Declination (deg) (out-Double)
   */
   public static native void AzElToRaDecTime(double ds50UTC, double lat, double lon, double az, double el, double[] ra, double[] dec);


   /**
   * Converts full state RAE (range, az, el, and their rates) to full state ECI (position and velocity)
   * The xa_rae array has the following structure:
   * [0]: Range (km)
   * [1]: Azimuth (deg)
   * [2]: Elevation (deg)
   * [3]: Range Dot (km/s)
   * [4]: Azimuth Dot (deg/s)
   * [5]: Elevation Dot (deg/s)
   * @param theta              Theta - local sidereal time(rad). (in-Double)
   * @param astroLat           Astronomical latitude (ded). (in-Double)
   * @param xa_rae             An array contains input data.  see XA_RAE_? (in-Double[6])
   * @param senPos             Sensor position in ECI (km). (in-Double[3])
   * @param satPos             Satellite position in ECI (km). (out-Double[3])
   * @param satVel             Satellite velocity in ECI (km/s). (out-Double[3])
   */
   public static native void RAEToECI(double theta, double astroLat, double[] xa_rae, double[] senPos, double[] satPos, double[] satVel);


   /**
   * Computes initial values for the SGP drag term nDot and the SGP4 drag term BSTAR based upon eccentricity and semi-major axis.
   * @param semiMajorAxis      Semi-major axis (km). (in-Double)
   * @param eccen              Eccentricity (unitless). (in-Double)
   * @param nDot               nDot (revs/day^2). (out-Double)
   * @param bstar              Bstar (1/earth radii). (out-Double)
   */
   public static native void GetInitialDrag(double semiMajorAxis, double eccen, double[] nDot, double[] bstar);


   /**
   * Converts covariance matrix PTW to UVW.
   * PTW = P: TxW, T: along velocity direction, W: pos x vel.
   * UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   * @param pos                The input position vector (km). (in-Double[3])
   * @param vel                The input velocity vector (km/s). (in-Double[3])
   * @param ptwCovMtx          The PTW covariance matrix to be converted. (in-Double[6, 6])
   * @param uvwCovMtx          The resulting UVW covariance matrix. (out-Double[6, 6])
   */
   public static native void CovMtxPTWToUVW(double[] pos, double[] vel, double[][] ptwCovMtx, double[][] uvwCovMtx);


   /**
   * Converts covariance matrix PTW to UVW.
   * PTW = P: TxW, T: along velocity direction, W: pos x vel.
   * UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   * @param pos                The input position vector (km). (in-Double[])
   * @param vel                The input velocity vector (km/s). (in-Double[])
   * @param ptwCovMtx          The PTW covariance matrix to be converted. (in-Double[])
   * @param uvwCovMtx          The resulting UVW covariance matrix. (out-Double[])
   */
   public static native void CovMtxPTWToUVW2Das1D(double[] pos, double[] vel, double[][] ptwCovMtx, double[] uvwCovMtx);


   /**
   * Converts covariance matrix UVW to PTW.
   * PTW = P: TxW, T: along velocity direction, W: pos x vel.
   * UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   * @param pos                The input position vector (km). (in-Double[3])
   * @param vel                The input velocity vector (km/s). (in-Double[3])
   * @param uvwCovMtx          The UVW covariance matrix to be converted. (in-Double[6, 6])
   * @param ptwCovMtx          The resulting PTW covariance matrix. (out-Double[6, 6])
   */
   public static native void CovMtxUVWToPTW(double[] pos, double[] vel, double[][] uvwCovMtx, double[][] ptwCovMtx);


   /**
   * Converts covariance matrix UVW to PTW.
   * PTW = P: TxW, T: along velocity direction, W: pos x vel.
   * UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   * @param pos                The input position vector (km). (in-Double[])
   * @param vel                The input velocity vector (km/s). (in-Double[])
   * @param uvwCovMtx          The UVW covariance matrix to be converted. (in-Double[])
   * @param ptwCovMtx          The resulting PTW covariance matrix. (out-Double[])
   */
   public static native void CovMtxUVWToPTW2Das1D(double[] pos, double[] vel, double[][] uvwCovMtx, double[] ptwCovMtx);


   /**
   * Computes Earth/Sensor/Earth Limb and Earth/Sensor/Satellite angles.
   * @param earthLimb          Earth limb distance (km). (in-Double)
   * @param satECI             Satellite position in ECI (km). (in-Double[3])
   * @param senECI             Sensor position in ECI (km). (in-Double[3])
   * @param earthSenLimb       The resulting earth/sensor/limb angle (deg). (out-Double)
   * @param earthSenSat        The resulting earth/sensor/sat angle (deg). (out-Double)
   * @param satEarthSen        The resulting sat/earth/sensor angle (deg). (out-Double)
   */
   public static native void EarthObstructionAngles(double earthLimb, double[] satECI, double[] senECI, double[] earthSenLimb, double[] earthSenSat, double[] satEarthSen);


   /**
   * Determines if a point in space is sunlit at the input time ds50ET
   * @param ds50ET             The number of days since 1950, ET (Ephemeris Time/Terrestrial Time) for which to determine if the point is sunlit. (in-Double)
   * @param ptEci              a position in ECI (km). (in-Double[3])
   * @return 0=no, the specified point isn't sunlit, 1=yes, the specified point is sunlit
   */
   public static native int IsPointSunlit(double ds50ET, double[] ptEci);


   /**
   * Rotates Right Ascension and Declination to specified epoch
   * @param nutationTerms      Nutation terms (4-106, 4:least accurate, 106:most acurate). (in-Integer)
   * @param dir                1: TEME of Date To MEME year of equinox, 2: MEME year of equinox to TEME of Date (in-Integer)
   * @param ds50UTCIn          Origin time in days since 1950 UTC (in-Double)
   * @param raIn               Input right ascension (deg) (in-Double)
   * @param declIn             Input declination (deg) (in-Double)
   * @param ds50UTCOut         Destination time in days since 1950 UTC (in-Double)
   * @param raOut              Output right ascension (deg) (out-Double)
   * @param declOut            Output declination (deg) (out-Double)
   */
   public static native void RotRADecl(int nutationTerms, int dir, double ds50UTCIn, double raIn, double declIn, double ds50UTCOut, double[] raOut, double[] declOut);


   /**
   * Rotates Right Ascension and Declination from TEME of Date to MEME of the specified year of equinox
   * @param nutationTerms      Nutation terms (4-106, 4:least accurate, 106:most acurate). (in-Integer)
   * @param yrOfEqnx           Year of equinox (=1: 0 Jan of input year, =2: J2000, =3: B1950) (in-Integer)
   * @param ds50UTCIn          Input time in days since 1950 UTC (in-Double)
   * @param raIn               Input right ascension (deg) (in-Double)
   * @param declIn             Input declination (deg) (in-Double)
   * @param raOut              Output right ascension (deg) (out-Double)
   * @param declOut            Output declination (deg) (out-Double)
   * @return 0 if the rotation was successful, non-0 if there is an error
   */
   public static native int RotRADec_DateToEqnx(int nutationTerms, int yrOfEqnx, double ds50UTCIn, double raIn, double declIn, double[] raOut, double[] declOut);


   /**
   * Rotates Right Ascension and Declination from MEME of the specified year of equinox to TEME of Date
   * @param nutationTerms      Nutation terms (4-106, 4:least accurate, 106:most acurate) (in-Integer)
   * @param yrOfEqnx           Year of equinox (=1: 0 Jan of input year, =2: J2000, =3: B1950) (in-Integer)
   * @param ds50UTCIn          Input time in days since 1950 UTC (in-Double)
   * @param raIn               Input right ascension (deg) (in-Double)
   * @param declIn             Input declination (deg) (in-Double)
   * @param raOut              Output right ascension (deg) (out-Double)
   * @param declOut            Output declination (deg) (out-Double)
   * @return 0 if the rotation was successful, non-0 if there is an error
   */
   public static native int RotRADec_EqnxToDate(int nutationTerms, int yrOfEqnx, double ds50UTCIn, double raIn, double declIn, double[] raOut, double[] declOut);


   /**
   * Rotates the Equinoctial covariance to UVW
   * Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   * The n terms must be normalized by n
   * The input position, velocity and covariance must all have the same reference equator and equinox.
   * @param pos                The input position vector in ECI (in-Double[3])
   * @param vel                The input velocity vector in ECI (in-Double[3])
   * @param covMtxEqnx         The input covariance matrix in equinoctial elements (af, ag, Lbar, n/n, chi, psi) (in-Double[6, 6])
   * @param covMtxUVW          The output covariance in UVW (out-Double[6, 6])
   */
   public static native void CovMtxEqnxToUVW(double[] pos, double[] vel, double[][] covMtxEqnx, double[][] covMtxUVW);


   /**
   * Rotates the Equinoctial covariance to UVW
   * Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   * The n terms must be normalized by n
   * The input position, velocity and covariance must all have the same reference equator and equinox.
   * @param pos                The input position vector in ECI (in-Double[])
   * @param vel                The input velocity vector in ECI (in-Double[])
   * @param covMtxEqnx         The input covariance matrix in equinoctial elements (af, ag, Lbar, n/n, chi, psi) (in-Double[])
   * @param covMtxUVW          The output covariance in UVW (out-Double[])
   */
   public static native void CovMtxEqnxToUVW2Das1D(double[] pos, double[] vel, double[][] covMtxEqnx, double[] covMtxUVW);


   /**
   * Rotates the UVW covariance to Equinoctial
   * Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   * The n terms are normalized by n
   * The input position, velocity reference equator and equinox determine the output covariance reference frame.
   * @param pos                The input position vector in ECI TEME Of Date (in-Double[3])
   * @param vel                The input velocity vector in ECI TEME Of Date (in-Double[3])
   * @param covMtxUVW          The input covariance matrix UVW (in-Double[6, 6])
   * @param covMtxEqnx         The output covariance in in equinoctial elements (af, ag, Lbar, n/n, chi, psi) (out-Double[6, 6])
   */
   public static native void CovMtxUVWToEqnx(double[] pos, double[] vel, double[][] covMtxUVW, double[][] covMtxEqnx);


   /**
   * Rotates the UVW covariance to Equinoctial
   * Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   * The n terms are normalized by n
   * The input position, velocity reference equator and equinox determine the output covariance reference frame.
   * @param pos                The input position vector in ECI TEME Of Date (in-Double[])
   * @param vel                The input velocity vector in ECI TEME Of Date (in-Double[])
   * @param covMtxUVW          The input covariance matrix UVW (in-Double[])
   * @param covMtxEqnx         The output covariance in in equinoctial elements (af, ag, Lbar, n/n, chi, psi) (out-Double[])
   */
   public static native void CovMtxUVWToEqnx2Das1D(double[] pos, double[] vel, double[][] covMtxUVW, double[] covMtxEqnx);


   /**
   * Rotates the ECI covariance to UVW
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[3])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[3])
   * @param covMtxECI          The input covariance matrix in ECI (in-Double[6, 6])
   * @param covMtxUVW          The output covariance in UVW (out-Double[6, 6])
   */
   public static native void CovMtxECIToUVW(double[] pos, double[] vel, double[][] covMtxECI, double[][] covMtxUVW);


   /**
   * Rotates the ECI covariance to UVW
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[])
   * @param covMtxECI          The input covariance matrix in ECI (in-Double[])
   * @param covMtxUVW          The output covariance in UVW (out-Double[])
   */
   public static native void CovMtxECIToUVW2Das1D(double[] pos, double[] vel, double[][] covMtxECI, double[] covMtxUVW);


   /**
   * Rotates the UVW covariance to ECI
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[3])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[3])
   * @param covMtxUVW          The input covariance matrix in UVW (in-Double[6, 6])
   * @param covMtxECI          The output covariance in ECI (out-Double[6, 6])
   */
   public static native void CovMtxUVWToECI(double[] pos, double[] vel, double[][] covMtxUVW, double[][] covMtxECI);


   /**
   * Rotates the UVW covariance to ECI
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[])
   * @param covMtxUVW          The input covariance matrix in UVW (in-Double[])
   * @param covMtxECI          The output covariance in ECI (out-Double[])
   */
   public static native void CovMtxUVWToECI2Das1D(double[] pos, double[] vel, double[][] covMtxUVW, double[] covMtxECI);


   /**
   * Converts covariance matrix ECI to EFG.
   * EFG = Earth Fixed Greenwich
   * ECI = Earth Centered Inertial - need to determine TEME or J2K
   * @param thetaG             theta - local sidereal time (rad) (in-Double)
   * @param covECI             6x6 ECI Covariance (in-Double[6, 6])
   * @param covEFG             6x6 EFG Covariance (out-Double[6, 6])
   */
   public static native void CovMtxECIToEFG(double thetaG, double[][] covECI, double[][] covEFG);


   /**
   * Converts covariance matrix ECI to EFG.
   * EFG = Earth Fixed Greenwich
   * ECI = Earth Centered Inertial - need to determine TEME or J2K
   * @param thetaG             theta - local sidereal time (rad) (in-Double)
   * @param covECI             6x6 ECI Covariance (in-Double[])
   * @param covEFG             6x6 EFG Covariance (out-Double[])
   */
   public static native void CovMtxECIToEFG2Das1D(double thetaG, double[][] covECI, double[] covEFG);


   /**
   * Converts covariance matrix EFG to ECI.
   * EFG = Earth Fixed Greenwich
   * ECI = Earth Centered Inertial - need to determine TEME or J2K
   * @param thetaG             theta - local sidereal time (rad) (in-Double)
   * @param covEFG             6x6 EFG Covariance (in-Double[6, 6])
   * @param covECI             6x6 ECI Covariance (out-Double[6, 6])
   */
   public static native void CovMtxEFGToECI(double thetaG, double[][] covEFG, double[][] covECI);


   /**
   * Converts covariance matrix EFG to ECI.
   * EFG = Earth Fixed Greenwich
   * ECI = Earth Centered Inertial - need to determine TEME or J2K
   * @param thetaG             theta - local sidereal time (rad) (in-Double)
   * @param covEFG             6x6 EFG Covariance (in-Double[])
   * @param covECI             6x6 ECI Covariance (out-Double[])
   */
   public static native void CovMtxEFGToECI2Das1D(double thetaG, double[][] covEFG, double[] covECI);


   /**
   * Converts 6x6 symmetric Matrix/2D array to 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix)
   * @param symMtx6x6          Input 6x6 symmetric matrix (in-Double[6, 6])
   * @param lta21              Output 1D array of 21 elements (lower triangular of a 6x6 matrix) (out-Double[21])
   */
   public static native void Mtx6x6ToLTA21(double[][] symMtx6x6, double[] lta21);


   /**
   * Converts 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix) to a 6x6 symmetric matrix
   * @param lta21              Input 1D array of 21 elements (lower triangular of a 6x6 matrix) (in-Double[21])
   * @param symMtx6x6          Output 6x6 symmetric matrix (out-Double[6, 6])
   */
   public static native void LTA21ToMtx6x6(double[] lta21, double[][] symMtx6x6);


   /**
   * Converts 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix) to a 6x6 symmetric matrix
   * @param lta21              Input 1D array of 21 elements (lower triangular of a 6x6 matrix) (in-Double[])
   * @param symMtx6x6          Output 6x6 symmetric matrix (out-Double[])
   */
   public static native void LTA21ToMtx6x62Das1D(double[] lta21, double[] symMtx6x6);


   /**
   * Converts 9x9 symmetric Matrix/2D array to 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix)
   * @param symMtx9x9          Input 9x9 symmetric matrix (in-Double[9, 9])
   * @param lta45              Output 1D array of 45 elements (lower triangular of a 9x9 matrix) (out-Double[45])
   */
   public static native void Mtx9x9ToLTA45(double[][] symMtx9x9, double[] lta45);


   /**
   * Converts 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix) to a 9x9 symmetric matrix
   * @param lta45              Input 1D array of 45 elements (lower triangular of a 9x9 matrix) (in-Double[45])
   * @param symMtx9x9          Output 9x9 symmetric matrix (out-Double[9, 9])
   */
   public static native void LTA45ToMtx9x9(double[] lta45, double[][] symMtx9x9);


   /**
   * Converts 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix) to a 9x9 symmetric matrix
   * @param lta45              Input 1D array of 45 elements (lower triangular of a 9x9 matrix) (in-Double[])
   * @param symMtx9x9          Output 9x9 symmetric matrix (out-Double[])
   */
   public static native void LTA45ToMtx9x92Das1D(double[] lta45, double[] symMtx9x9);


   /**
   * Propagate xyzDate covariance forward to the propagation time
   * @param rms                Root mean square of observation residulas (in-Double)
   * @param consider           Density consider parameter, 12 is recommended (this is a percentile) (in-Double)
   * @param stateArray         State transition matrix (in-Double[54])
   * @param cov                Covariance matrix at start time (in-Double[9, 9])
   * @param propCov            Covariance at end time for state matrix (out-Double[6, 6])
   */
   public static native void PropCovFrState(double rms, double consider, double[] stateArray, double[][] cov, double[][] propCov);


   /**
   * Propagate xyzDate covariance forward to the propagation time
   * @param rms                Root mean square of observation residulas (in-Double)
   * @param consider           Density consider parameter, 12 is recommended (this is a percentile) (in-Double)
   * @param stateArray         State transition matrix (in-Double[])
   * @param cov                Covariance matrix at start time (in-Double[])
   * @param propCov            Covariance at end time for state matrix (out-Double[])
   */
   public static native void PropCovFrState2Das1D(double rms, double consider, double[] stateArray, double[][] cov, double[] propCov);


   /**
   * Rotates the ECI covariance to UVW
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[3])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[3])
   * @param covMtxECI          The input covariance matrix in ECI (in-Double[9, 9])
   * @param covMtxEqnx         The output covariance in UVW (out-Double[9, 9])
   */
   public static native void CovMtxECIToEqnx(double[] pos, double[] vel, double[][] covMtxECI, double[][] covMtxEqnx);


   /**
   * Rotates the ECI covariance to UVW
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[])
   * @param covMtxECI          The input covariance matrix in ECI (in-Double[])
   * @param covMtxEqnx         The output covariance in UVW (out-Double[])
   */
   public static native void CovMtxECIToEqnx2Das1D(double[] pos, double[] vel, double[][] covMtxECI, double[] covMtxEqnx);


   /**
   * Rotates the UVW covariance to ECI
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[3])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[3])
   * @param covEqnx            45 or 55 (in-Double[9, 9])
   * @param covMtxECI          The output covariance in ECI (out-Double[9, 9])
   */
   public static native void CovMtxEqnxToECI9x9(double[] pos, double[] vel, double[][] covEqnx, double[][] covMtxECI);


   /**
   * Rotates the UVW covariance to ECI
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[])
   * @param covEqnx            45 or 55 (in-Double[])
   * @param covMtxECI          The output covariance in ECI (out-Double[])
   */
   public static native void CovMtxEqnxToECI9x92Das1D(double[] pos, double[] vel, double[][] covEqnx, double[] covMtxECI);


   /**
   * Rotates the UVW covariance to ECI
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[3])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[3])
   * @param covEqnx            45 or 55 (in-Double[9, 9])
   * @param covMtxUVW          The output covariance in ECI (out-Double[9, 9])
   */
   public static native void CovMtxEqnxToUVW9x9(double[] pos, double[] vel, double[][] covEqnx, double[][] covMtxUVW);


   /**
   * Rotates the UVW covariance to ECI
   * Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   * @param pos                The input position vector in either TEME or J2K ECI (in-Double[])
   * @param vel                The input velocity vector in either TEME or J2K ECI (in-Double[])
   * @param covEqnx            45 or 55 (in-Double[])
   * @param covMtxUVW          The output covariance in ECI (out-Double[])
   */
   public static native void CovMtxEqnxToUVW9x92Das1D(double[] pos, double[] vel, double[][] covEqnx, double[] covMtxUVW);


   /**
   * Update (propagate) covariance to a future time with a supplied covariance, state transition matrix
   * consider parameter and RMS. Consider parameter is applied to the drag term only.
   * Full covariance matrix is multiplied by RMS squared.  State transition matrix can be obtained from 
   * SpProp.SpGetStateMtx or supplying your own. State matrix, input and output covariance must be in 
   * matching coordinate systems.
   * @param rmsIn              Root mean square of sensor errors (in-Double)
   * @param consider           Consider parameter (percentage) (in-Double)
   * @param cov                Covariance at epoch (in-Double[9, 9])
   * @param stateArray         Consider parameter and root mean square (in-Double[54])
   * @param propCov            Updated covariance (out-Double[6, 6])
   */
   public static native void CovMtxUpdate(double rmsIn, double consider, double[][] cov, double[] stateArray, double[][] propCov);


   /**
   * Update (propagate) covariance to a future time with a supplied covariance, state transition matrix
   * consider parameter and RMS. Consider parameter is applied to the drag term only.
   * Full covariance matrix is multiplied by RMS squared.  State transition matrix can be obtained from 
   * SpProp.SpGetStateMtx or supplying your own. State matrix, input and output covariance must be in 
   * matching coordinate systems.
   * @param rmsIn              Root mean square of sensor errors (in-Double)
   * @param consider           Consider parameter (percentage) (in-Double)
   * @param cov                Covariance at epoch (in-Double[])
   * @param stateArray         Consider parameter and root mean square (in-Double[])
   * @param propCov            Updated covariance (out-Double[])
   */
   public static native void CovMtxUpdate2Das1D(double rmsIn, double consider, double[][] cov, double[] stateArray, double[] propCov);


   /**
   * Annual Aberration calculated using equations from Astronomical Algorithms, Jean Meeus, 2nd Edition with Corrections as of June 15, 2005
   * @param ra                 Input right ascension (deg) (in-Double)
   * @param decl               Input declination (deg) (in-Double)
   * @param dS50UTC            Time in days since 1950 UTC (in-Double)
   * @param raDelta            Right Ascension delta due to Annual Aberration (deg) (out-Double)
   * @param decDelta           Declination delta due to Annual Aberration (deg) (out-Double)
   */
   public static native void AberrationAnnual(double ra, double decl, double dS50UTC, double[] raDelta, double[] decDelta);


   /**
   * Diurnal Aberration is due to the rotation of the Earth about it's axis. This is only valid for ground based sensors.
   * Diurnal Aberration calculated using equations from Explanatory Supplement to the Astronomical Almanac 3rd Edition, 2013
   * @param ra                 Input right ascension (deg) (in-Double)
   * @param decl               Input declination (deg) (in-Double)
   * @param dS50UTC            Time in days since 1950 UTC (in-Double)
   * @param senPos             Sensor EFG geocentric position (meters) (in-Double[3])
   * @param raDelta            Right Ascension delta due to Diurnal Aberration (deg) (out-Double)
   * @param decDelta           Declination delta due to Diurnal Aberration (deg) (out-Double)
   */
   public static native void AberrationDiurnal(double ra, double decl, double dS50UTC, double[] senPos, double[] raDelta, double[] decDelta);


   /**
   * Sets JPL parameters
   * Notes: Set JPL parameters will be used by SP, SPG4-XP, and anything that requires access to JPL data
   * @param jplFile            The name of the JPL file. (in-Character[512])
   * @param ds50Start          Start Time of JPL ephmeris to load (in-Double)
   * @param ds50Stop           End Time of JPL ephemeris to load (in-Double)
   */
   public static native void JplSetParameters(String jplFile, double ds50Start, double ds50Stop);


   /**
   * Gets JPL parameters
   * @param jplFile            The name of the JPL file. (out-Character[512])
   * @param ds50Start          Start Time of Ephmeris to load (out-Double)
   * @param ds50Stop           End Time of Ephemeris to load (out-Double)
   */
   public static native void JplGetParameters(byte[] jplFile, double[] ds50Start, double[] ds50Stop);


   /**
   * Resets JPL parameters & removes JPL ephemeris data
   */
   public static native void JplReset();


   /**
   * Computes various Sun and Moon vectors base on loaded JPL data at the specified time.
   * Note: if JPL data isn't loaded or available, all output parameters are set to zero
   * @param ds50UTC            Input time in day since 1950 UTC (in-Double)
   * @param uvecSun            The resulting sun position unit vector. (out-Double[3])
   * @param sunVecMag          The resulting magnitude of the sun position vector (km). (out-Double)
   * @param uvecMoon           The resulting moon position unit vector. (out-Double[3])
   * @param moonVecMag         The resulting magnitude of the moon position vector (km). (out-Double)
   */
   public static native void JplCompSunMoonVec(double ds50UTC, double[] uvecSun, double[] sunVecMag, double[] uvecMoon, double[] moonVecMag);


   /**
   * Computes Sun and Moon position vectors base on loaded JPL data at the specified time.
   * Note: if JPL data isn't loaded or available, all output parameters are set to zero
   * @param ds50UTC            Input time in day since 1950 UTC (in-Double)
   * @param sunVec             The resulting sun position vector (km). (out-Double[3])
   * @param moonVec            The resulting sun position vector (km). (out-Double[3])
   */
   public static native void JplCompSunMoonPos(double ds50UTC, double[] sunVec, double[] moonVec);


   /**
   * Removes the JPL ephemeris from memory
   */
   public static native void RemoveJpl();


   /**
   * Rotates position and velocity vectors from TEME of Epoch to TEME of Date
   * @param nutationTerms      Nutation terms (4-106, 4:least accurate, 106:most acurate). (in-Integer)
   * @param epochDs50TAI       The date of which posEpoch/velEpoch are based on, expressed in days since 1950, TAI. (in-Double)
   * @param dateDs50TAI        The date of which posEpoch/velEpoch will rotate to, expressed in days since 1950, TAI. (in-Double)
   * @param posEpoch           The position vector in TEME of Epoch. (in-Double[3])
   * @param velEpoch           The velocity vector in TEME of Epoch. (in-Double[3])
   * @param posDate            The resulting position vector in TEME of Date. (out-Double[3])
   * @param velDate            The resulting velocity vector in TEME of Date. (out-Double[3])
   */
   public static native void TemeEpochToDate(int nutationTerms, double epochDs50TAI, double dateDs50TAI, double[] posEpoch, double[] velEpoch, double[] posDate, double[] velDate);
   
   // Index of Keplerian elements
   /** semi-major axis (km) */
   public static final int XA_KEP_A     =   0;
   /** eccentricity (unitless) */
   public static final int XA_KEP_E     =   1;
   /** inclination (deg) */
   public static final int XA_KEP_INCLI =   2;
   /** mean anomaly (deg) */
   public static final int XA_KEP_MA    =   3;
   /** right ascension of the asending node (deg) */
   public static final int XA_KEP_NODE  =   4;
   /** argument of perigee (deg) */
   public static final int XA_KEP_OMEGA =   5;
   public static final int XA_KEP_SIZE  =  6;
   
   // Index of classical elements
   /** N mean motion (revs/day) */
   public static final int XA_CLS_N     =   0;
   /** eccentricity (unitless) */
   public static final int XA_CLS_E     =   1;
   /** inclination (deg) */
   public static final int XA_CLS_INCLI =   2;
   /** mean anomaly (deg) */
   public static final int XA_CLS_MA    =   3;
   /** right ascension of the asending node (deg) */
   public static final int XA_CLS_NODE  =   4;
   /** argument of perigee (deg) */
   public static final int XA_CLS_OMEGA =   5;
   public static final int XA_CLS_SIZE  =   6;
   
   // Index of equinoctial elements
   /** Af (unitless) */
   public static final int XA_EQNX_AF   =   0;
   /** Ag (unitless) */
   public static final int XA_EQNX_AG   =   1;
   /** chi (unitless) */
   public static final int XA_EQNX_CHI  =   2;
   /** psi (unitless) */
   public static final int XA_EQNX_PSI  =   3;
   /** L mean longitude (deg) */
   public static final int XA_EQNX_L    =   4;
   /** N mean motion (revs/day) */
   public static final int XA_EQNX_N    =   5;
   public static final int XA_EQNX_SIZE =   6;
   
   // Indexes of AstroConvFrTo
   /** SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot) */
   public static final int XF_CONV_SGP42SGP = 101;
   
   
   // Indexes for topocentric components
   /** Right ascension (deg) */
   public static final int XA_TOPO_RA    = 0;
   /** Declination (deg) */
   public static final int XA_TOPO_DEC   = 1;
   /** Azimuth (deg) */
   public static final int XA_TOPO_AZ    = 2;
   /** Elevation (deg) */
   public static final int XA_TOPO_EL    = 3;
   /** Range (km) */
   public static final int XA_TOPO_RANGE = 4;
   /** Right ascension dot (deg/s) */
   public static final int XA_TOPO_RADOT = 5;
   /** Declincation dot (deg/s) */
   public static final int XA_TOPO_DECDOT= 6;
   /** Azimuth dot (deg/s) */
   public static final int XA_TOPO_AZDOT = 7;
   /** Elevation dot (deg/s) */
   public static final int XA_TOPO_ELDOT = 8;
   /** Range dot (km/s) */
   public static final int XA_TOPO_RANGEDOT = 9;
   public static final int XA_TOPO_SIZE  = 10;
   
   
   // Indexes for RAE components
   /** Range (km) */
   public static final int XA_RAE_RANGE   = 0;
   /** Azimuth (deg) */
   public static final int XA_RAE_AZ      = 1;
   /** Elevation (deg) */
   public static final int XA_RAE_EL      = 2;
   /** Range dot (km/s) */
   public static final int XA_RAE_RANGEDOT= 3;
   /** Azimuth dot (deg/s) */
   public static final int XA_RAE_AZDOT   = 4;
   /** Elevation dot (deg/s) */
   public static final int XA_RAE_ELDOT   = 5;
   public static final int XA_RAE_SIZE    = 6;
   
   
   // Year of Equinox indicator
   /** Date of observation */
   public static final int YROFEQNX_OBTIME = 0;
   /** 0 Jan of Date */
   public static final int YROFEQNX_CURR   = 1;
   /** J2000 */
   public static final int YROFEQNX_2000   = 2;
   /** B1950 */
   public static final int YROFEQNX_1950   = 3;
   
// ========================= End of auto generated code ==========================
}
