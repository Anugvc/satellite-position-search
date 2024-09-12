// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes AstroFunc DLL for use in the program.
   //  If this function returns an error, it is recommended that you stop the program immediately.
   //  
   //  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   pub fn AstroFuncInit(apAddr: i64) -> i32;
   //  Retrieves information about the current version of AstroFunc.dll. The information is placed in the string parameter you pass in.
   //  The returned string provides information about the version number, build date, and platform.
   pub fn AstroFuncGetInfo(infoStr: *const c_char);
   //  Converts a set of Keplerian elements to a set of equinoctial elements. 
   pub fn KepToEqnx(xa_kep: *const [f64; 6], xa_eqnx: *mut [f64; 6]);
   //  Converts a set of osculating Keplerian elements to osculating position and velocity vectors.
   pub fn KepToPosVel(xa_kep: *const [f64; 6], pos: *mut [f64; 3], vel: *mut [f64; 3]);
   //  Converts a set of Keplerian elements to Ubar, Vbar, and Wbar vectors.
   pub fn KepToUVW(xa_kep: *const [f64; 6], uBar: *mut [f64; 3], vBar: *mut [f64; 3], wBar: *mut [f64; 3]);
   //  Converts a set of classical elements to a set of equinoctial elements. 
   pub fn ClassToEqnx(xa_cls: *const [f64; 6], xa_eqnx: *mut [f64; 6]);
   //  Converts a set of equinoctial elements to a set of classical elements.
   pub fn EqnxToClass(xa_eqnx: *const [f64; 6], xa_cls: *mut [f64; 6]);
   //  Converts a set of equinoctial elements to a set of Keplerian elements. 
   pub fn EqnxToKep(xa_eqnx: *const [f64; 6], xa_kep: *mut [f64; 6]);
   //  Converts a set of equinoctial elements to position and velocity vectors.
   pub fn EqnxToPosVel(xa_eqnx: *const [f64; 6], pos: *mut [f64; 3], vel: *mut [f64; 3]);
   //  Converts position and velocity vectors to a set of equinoctial elements.
   pub fn PosVelToEqnx(pos: *const [f64; 3], vel: *const [f64; 3], xa_eqnx: *mut [f64; 6]);
   //  Converts position and velocity vectors to a set of equinoctial elements with the given mu value. 
   //  This function is used when working with the SP propagator to get a more accurate set of equinoctial elements.
   pub fn PosVelMuToEqnx(pos: *const [f64; 3], vel: *const [f64; 3], mu: f64, xa_eqnx: *mut [f64; 6]);
   //  Converts osculating position and velocity vectors to a set of osculating Keplerian elements.
   pub fn PosVelToKep(pos: *const [f64; 3], vel: *const [f64; 3], xa_kep: *mut [f64; 6]);
   //  Converts osculating position and velocity vectors to a set of osculating Keplerian elements with the given value of mu.
   //  This function is used when working with the SP propagator to get a more accurate set of Keplerian elements.
   pub fn PosVelMuToKep(pos: *const [f64; 3], vel: *const [f64; 3], mu: f64, xa_kep: *mut [f64; 6]);
   //  Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
   //  The resulting vectors have the following meanings.
   //  U vector: along radial direction
   //  V vector: W x U
   //  W vector: pos x vel
   pub fn PosVelToUUVW(pos: *const [f64; 3], vel: *const [f64; 3], uvec: *mut [f64; 3], vVec: *mut [f64; 3], wVec: *mut [f64; 3]);
   //  Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
   //  The resulting vectors have the following meanings.
   //  U vector: V x W
   //  V vector: along velocity direction
   //  W vector: pos x vel
   pub fn PosVelToPTW(pos: *const [f64; 3], vel: *const [f64; 3], uvec: *mut [f64; 3], vVec: *mut [f64; 3], wVec: *mut [f64; 3]);
   //  Solves Kepler's equation (M = E - e sin(E)) for the eccentric anomaly, E, by iteration.
   pub fn SolveKepEqtn(xa_kep: *const [f64; 6]) -> f64;
   //  Computes true anomaly from a set of Keplerian elements.
   pub fn CompTrueAnomaly(xa_kep: *const [f64; 6]) -> f64;
   //  Converts mean motion N to semi-major axis A.
   pub fn NToA(n: f64) -> f64;
   //  Converts semi-major axis A to mean motion N.
   pub fn AToN(a: f64) -> f64;
   //  Converts Kozai mean motion to Brouwer mean motion.
   //  SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
   pub fn KozaiToBrouwer(eccen: f64, incli: f64, nKozai: f64) -> f64;
   //  Converts Brouwer mean motion to Kozai mean motion.
   //  SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
   pub fn BrouwerToKozai(eccen: f64, incli: f64, nBrouwer: f64) -> f64;
   //  Converts a set of osculating Keplerian elements to a set of mean Keplerian elements using method 9 algorithm.
   pub fn KepOscToMean(xa_OscKep: *const [f64; 6], xa_MeanKep: *mut [f64; 6]);
   //  Converts an ECI position vector XYZ to geodetic latitude, longitude, and height.
   pub fn XYZToLLH(thetaG: f64, metricPos: *const [f64; 3], metricLLH: *mut [f64; 3]);
   //  Converts an ECI position vector XYZ to geodetic latitude, longitude, and height at the specified time.
   pub fn XYZToLLHTime(ds50UTC: f64, metricPos: *const [f64; 3], metricLLH: *mut [f64; 3]);
   //  Converts geodetic latitude, longitude, and height to an ECI position vector XYZ.
   pub fn LLHToXYZ(thetaG: f64, metricLLH: *const [f64; 3], metricXYZ: *mut [f64; 3]);
   //  Converts geodetic latitude, longitude, and height to an ECI position vector XYZ at the specified time.
   pub fn LLHToXYZTime(ds50UTC: f64, metricLLH: *const [f64; 3], metricXYZ: *mut [f64; 3]);
   //  Converts EFG position and velocity vectors to ECI position and velocity vectors.
   pub fn EFGToECI(thetaG: f64, posEFG: *const [f64; 3], velEFG: *const [f64; 3], posECI: *mut [f64; 3], velECI: *mut [f64; 3]);
   //  Converts EFG position and velocity vectors to ECI position and velocity vectors at the specified time.
   pub fn EFGToECITime(ds50UTC: f64, posEFG: *const [f64; 3], velEFG: *const [f64; 3], posECI: *mut [f64; 3], velECI: *mut [f64; 3]);
   //  Converts ECI position and velocity vectors to EFG position and velocity vectors.
   pub fn ECIToEFG(thetaG: f64, posECI: *const [f64; 3], velECI: *const [f64; 3], posEFG: *mut [f64; 3], velEFG: *mut [f64; 3]);
   //  Converts ECI position and velocity vectors to EFG position and velocity vectors at the specified time.
   pub fn ECIToEFGTime(ds50UTC: f64, posECI: *const [f64; 3], velECI: *const [f64; 3], posEFG: *mut [f64; 3], velEFG: *mut [f64; 3]);
   //  Converts ECR position and velocity vectors to EFG position and velocity vectors.
   pub fn ECRToEFG(polarX: f64, polarY: f64, posECR: *const [f64; 3], velECR: *const [f64; 3], posEFG: *mut [f64; 3], velEFG: *mut [f64; 3]);
   //  Converts ECR position and velocity vectors to EFG position and velocity vectors at the specified time.
   pub fn ECRToEFGTime(ds50UTC: f64, posECR: *const [f64; 3], velECR: *const [f64; 3], posEFG: *mut [f64; 3], velEFG: *mut [f64; 3]);
   //  Converts EFG position and velocity vectors to ECR position and velocity vectors.
   pub fn EFGToECR(polarX: f64, polarY: f64, posEFG: *const [f64; 3], velEFG: *const [f64; 3], posECR: *mut [f64; 3], velECR: *mut [f64; 3]);
   //  Converts EFG position and velocity vectors to ECR position and velocity vectors at the specified time.
   pub fn EFGToECRTime(ds50UTC: f64, posEFG: *const [f64; 3], velEFG: *const [f64; 3], posECR: *mut [f64; 3], velECR: *mut [f64; 3]);
   //  Converts an EFG position vector to geodetic latitude, longitude, and height.
   pub fn EFGPosToLLH(posEFG: *const [f64; 3], metricLLH: *mut [f64; 3]);
   //  Converts geodetic latitude, longitude, and height to an EFG position vector.
   pub fn LLHToEFGPos(metricLLH: *const [f64; 3], posEFG: *mut [f64; 3]);
   //  Rotates position and velocity vectors from J2000 to coordinates of the specified date, expressed in ds50TAI.
   pub fn RotJ2KToDate(spectr: i32, nutationTerms: i32, ds50TAI: f64, posJ2K: *const [f64; 3], velJ2K: *const [f64; 3], posDate: *mut [f64; 3], velDate: *mut [f64; 3]);
   //  Rotates position and velocity vectors from coordinates of date to J2000.
   pub fn RotDateToJ2K(spectr: i32, nutationTerms: i32, ds50TAI: f64, posDate: *const [f64; 3], velDate: *const [f64; 3], posJ2K: *mut [f64; 3], velJ2K: *mut [f64; 3]);
   //  Computes the Sun and Moon position at the specified time.
   pub fn CompSunMoonPos(ds50ET: f64, uvecSun: *mut [f64; 3], sunVecMag: *mut f64, uvecMoon: *mut [f64; 3], moonVecMag: *mut f64);
   //  Computes the Sun position at the specified time.
   pub fn CompSunPos(ds50ET: f64, uvecSun: *mut [f64; 3], sunVecMag: *mut f64);
   //  Computes the Moon position at the specified time.
   pub fn CompMoonPos(ds50ET: f64, uvecMoon: *mut [f64; 3], moonVecMag: *mut f64);
   //  This function is intended for future use.  No information is currently available.
   //  This function is intended for future use.  No information is currently available.
   pub fn AstroConvFrTo(xf_Conv: i32, frArr: *const [f64; 128], toArr: *mut [f64; 128]);
   //  Converts right ascension and declination to vector triad LAD in topocentric equatorial coordinate system.
   pub fn RADecToLAD(ra: f64, dec: f64, l: *mut [f64; 3], a_tilde: *mut [f64; 3], d_tilde: *mut [f64; 3]);
   //  Converts azimuth and elevation to vector triad LAD in topocentric horizontal coordinate system.
   pub fn AzElToLAD(az: f64, el: f64, lh: *mut [f64; 3], ah: *mut [f64; 3], dh: *mut [f64; 3]);
   //  Converts satellite ECI position/velocity vectors and sensor location to topocentric components.
   //  The xa_topo array has the following structure:
   //  [0]: Resulting right ascension (RA) (deg)
   //  [1]: Declination (deg)
   //  [2]: Azimuth (deg)
   //  [3]: Elevation (deg)
   //  [4]: Range (km)
   //  [5]: RAdot (first derivative of right ascension) (deg/s)
   //  [6]: DecDot (first derivative of declination) (deg/s)
   //  [7]: AzDot (first derivative of azimuth) (deg/s)
   //  [8]: ElDot (first derivative of elevation) (deg/s)
   //  [9]: RangeDot (first derivative of range) (km/s)   
   pub fn ECIToTopoComps(theta: f64, lat: f64, senPos: *const [f64; 3], satPos: *const [f64; 3], satVel: *const [f64; 3], xa_topo: *mut [f64; 10]);
   //  Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
   pub fn RaDecToAzEl(thetaG: f64, lat: f64, lon: f64, ra: f64, dec: f64, az: *mut f64, el: *mut f64);
   //  Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
   pub fn RaDecToAzElTime(ds50UTC: f64, lat: f64, lon: f64, ra: f64, dec: f64, az: *mut f64, el: *mut f64);
   //  Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
   pub fn AzElToRaDec(thetaG: f64, lat: f64, lon: f64, az: f64, el: f64, ra: *mut f64, dec: *mut f64);
   //  Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
   pub fn AzElToRaDecTime(ds50UTC: f64, lat: f64, lon: f64, az: f64, el: f64, ra: *mut f64, dec: *mut f64);
   //  Converts full state RAE (range, az, el, and their rates) to full state ECI (position and velocity)
   //  The xa_rae array has the following structure:
   //  [0]: Range (km)
   //  [1]: Azimuth (deg)
   //  [2]: Elevation (deg)
   //  [3]: Range Dot (km/s)
   //  [4]: Azimuth Dot (deg/s)
   //  [5]: Elevation Dot (deg/s)
   pub fn RAEToECI(theta: f64, astroLat: f64, xa_rae: *const [f64; 6], senPos: *const [f64; 3], satPos: *mut [f64; 3], satVel: *mut [f64; 3]);
   //  Computes initial values for the SGP drag term nDot and the SGP4 drag term BSTAR based upon eccentricity and semi-major axis.
   pub fn GetInitialDrag(semiMajorAxis: f64, eccen: f64, nDot: *mut f64, bstar: *mut f64);
   //  Converts covariance matrix PTW to UVW.
   //  PTW = P: TxW, T: along velocity direction, W: pos x vel.
   //  UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   pub fn CovMtxPTWToUVW(pos: *const [f64; 3], vel: *const [f64; 3], ptwCovMtx: *const [[f64; 6]; 6], uvwCovMtx: *mut [[f64; 6]; 6]);
   //  Converts covariance matrix UVW to PTW.
   //  PTW = P: TxW, T: along velocity direction, W: pos x vel.
   //  UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   pub fn CovMtxUVWToPTW(pos: *const [f64; 3], vel: *const [f64; 3], uvwCovMtx: *const [[f64; 6]; 6], ptwCovMtx: *mut [[f64; 6]; 6]);
   //  Computes Earth/Sensor/Earth Limb and Earth/Sensor/Satellite angles.
   pub fn EarthObstructionAngles(earthLimb: f64, satECI: *const [f64; 3], senECI: *const [f64; 3], earthSenLimb: *mut f64, earthSenSat: *mut f64, satEarthSen: *mut f64);
   //  Determines if a point in space is sunlit at the input time ds50ET
   pub fn IsPointSunlit(ds50ET: f64, ptEci: *const [f64; 3]) -> i32;
   //  Rotates Right Ascension and Declination to specified epoch
   pub fn RotRADecl(nutationTerms: i32, dir: i32, ds50UTCIn: f64, raIn: f64, declIn: f64, ds50UTCOut: f64, raOut: *mut f64, declOut: *mut f64);
   //  Rotates Right Ascension and Declination from TEME of Date to MEME of the specified year of equinox
   pub fn RotRADec_DateToEqnx(nutationTerms: i32, yrOfEqnx: i32, ds50UTCIn: f64, raIn: f64, declIn: f64, raOut: *mut f64, declOut: *mut f64) -> i32;
   //  Rotates Right Ascension and Declination from MEME of the specified year of equinox to TEME of Date
   pub fn RotRADec_EqnxToDate(nutationTerms: i32, yrOfEqnx: i32, ds50UTCIn: f64, raIn: f64, declIn: f64, raOut: *mut f64, declOut: *mut f64) -> i32;
   //  Rotates the Equinoctial covariance to UVW
   //  Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   //  The n terms must be normalized by n
   //  The input position, velocity and covariance must all have the same reference equator and equinox.
   pub fn CovMtxEqnxToUVW(pos: *const [f64; 3], vel: *const [f64; 3], covMtxEqnx: *const [[f64; 6]; 6], covMtxUVW: *mut [[f64; 6]; 6]);
   //  Rotates the UVW covariance to Equinoctial
   //  Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   //  The n terms are normalized by n
   //  The input position, velocity reference equator and equinox determine the output covariance reference frame.
   pub fn CovMtxUVWToEqnx(pos: *const [f64; 3], vel: *const [f64; 3], covMtxUVW: *const [[f64; 6]; 6], covMtxEqnx: *mut [[f64; 6]; 6]);
   //  Rotates the ECI covariance to UVW
   //  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   pub fn CovMtxECIToUVW(pos: *const [f64; 3], vel: *const [f64; 3], covMtxECI: *const [[f64; 6]; 6], covMtxUVW: *mut [[f64; 6]; 6]);
   //  Rotates the UVW covariance to ECI
   //  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   pub fn CovMtxUVWToECI(pos: *const [f64; 3], vel: *const [f64; 3], covMtxUVW: *const [[f64; 6]; 6], covMtxECI: *mut [[f64; 6]; 6]);
   //  Converts covariance matrix ECI to EFG.
   //  EFG = Earth Fixed Greenwich
   //  ECI = Earth Centered Inertial - need to determine TEME or J2K
   pub fn CovMtxECIToEFG(thetaG: f64, covECI: *const [[f64; 6]; 6], covEFG: *mut [[f64; 6]; 6]);
   //  Converts covariance matrix EFG to ECI.
   //  EFG = Earth Fixed Greenwich
   //  ECI = Earth Centered Inertial - need to determine TEME or J2K
   pub fn CovMtxEFGToECI(thetaG: f64, covEFG: *const [[f64; 6]; 6], covECI: *mut [[f64; 6]; 6]);
   //  Converts 6x6 symmetric Matrix/2D array to 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix)
   pub fn Mtx6x6ToLTA21(symMtx6x6: *const [[f64; 6]; 6], lta21: *mut [f64; 21]);
   //  Converts 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix) to a 6x6 symmetric matrix
   pub fn LTA21ToMtx6x6(lta21: *const [f64; 21], symMtx6x6: *mut [[f64; 6]; 6]);
   //  Converts 9x9 symmetric Matrix/2D array to 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix)
   pub fn Mtx9x9ToLTA45(symMtx9x9: *const [[f64; 9]; 9], lta45: *mut [f64; 45]);
   //  Converts 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix) to a 9x9 symmetric matrix
   pub fn LTA45ToMtx9x9(lta45: *const [f64; 45], symMtx9x9: *mut [[f64; 9]; 9]);
   //  Propagate xyzDate covariance forward to the propagation time
   pub fn PropCovFrState(rms: f64, consider: f64, stateArray: *const [f64; 54], cov: *const [[f64; 9]; 9], propCov: *mut [[f64; 6]; 6]);
   //  Rotates the ECI covariance to UVW
   //  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   pub fn CovMtxECIToEqnx(pos: *const [f64; 3], vel: *const [f64; 3], covMtxECI: *const [[f64; 9]; 9], covMtxEqnx: *mut [[f64; 9]; 9]);
   //  Rotates the UVW covariance to ECI
   //  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   pub fn CovMtxEqnxToECI9x9(pos: *const [f64; 3], vel: *const [f64; 3], covEqnx: *const [[f64; 9]; 9], covMtxECI: *mut [[f64; 9]; 9]);
   //  Rotates the UVW covariance to ECI
   //  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   pub fn CovMtxEqnxToUVW9x9(pos: *const [f64; 3], vel: *const [f64; 3], covEqnx: *const [[f64; 9]; 9], covMtxUVW: *mut [[f64; 9]; 9]);
   //  Update (propagate) covariance to a future time with a supplied covariance, state transition matrix
   //  consider parameter and RMS. Consider parameter is applied to the drag term only.
   //  Full covariance matrix is multiplied by RMS squared.  State transition matrix can be obtained from 
   //  SpProp.SpGetStateMtx or supplying your own. State matrix, input and output covariance must be in 
   //  matching coordinate systems.
   pub fn CovMtxUpdate(rmsIn: f64, consider: f64, cov: *const [[f64; 9]; 9], stateArray: *const [f64; 54], propCov: *mut [[f64; 6]; 6]);
   //  Annual Aberration calculated using equations from Astronomical Algorithms, Jean Meeus, 2nd Edition with Corrections as of June 15, 2005
   pub fn AberrationAnnual(ra: f64, decl: f64, dS50UTC: f64, raDelta: *mut f64, decDelta: *mut f64);
   //  Diurnal Aberration is due to the rotation of the Earth about it's axis. This is only valid for ground based sensors.
   //  Diurnal Aberration calculated using equations from Explanatory Supplement to the Astronomical Almanac 3rd Edition, 2013
   pub fn AberrationDiurnal(ra: f64, decl: f64, dS50UTC: f64, senPos: *const [f64; 3], raDelta: *mut f64, decDelta: *mut f64);
   //  Sets JPL parameters
   //  Notes: Set JPL parameters will be used by SP, SPG4-XP, and anything that requires access to JPL data
   pub fn JplSetParameters(jplFile: *const c_char, ds50Start: f64, ds50Stop: f64);
   //  Gets JPL parameters
   pub fn JplGetParameters(jplFile: *const c_char, ds50Start: *mut f64, ds50Stop: *mut f64);
   //  Resets JPL parameters & removes JPL ephemeris data
   pub fn JplReset();
   //  Computes various Sun and Moon vectors base on loaded JPL data at the specified time.
   //  Note: if JPL data isn't loaded or available, all output parameters are set to zero
   pub fn JplCompSunMoonVec(ds50UTC: f64, uvecSun: *mut [f64; 3], sunVecMag: *mut f64, uvecMoon: *mut [f64; 3], moonVecMag: *mut f64);
   //  Computes Sun and Moon position vectors base on loaded JPL data at the specified time.
   //  Note: if JPL data isn't loaded or available, all output parameters are set to zero
   pub fn JplCompSunMoonPos(ds50UTC: f64, sunVec: *mut [f64; 3], moonVec: *mut [f64; 3]);
   //  Removes the JPL ephemeris from memory
   pub fn RemoveJpl();
   //  Rotates position and velocity vectors from TEME of Epoch to TEME of Date
   pub fn TemeEpochToDate(nutationTerms: i32, epochDs50TAI: f64, dateDs50TAI: f64, posEpoch: *const [f64; 3], velEpoch: *const [f64; 3], posDate: *mut [f64; 3], velDate: *mut [f64; 3]);
}
   
   // Index of Keplerian elements
   // semi-major axis (km)
   pub static XA_KEP_A: i32 =   0;
   // eccentricity (unitless)
   pub static XA_KEP_E: i32 =   1;
   // inclination (deg)
   pub static XA_KEP_INCLI: i32 =   2;
   // mean anomaly (deg)
   pub static XA_KEP_MA: i32 =   3;
   // right ascension of the asending node (deg)
   pub static XA_KEP_NODE: i32 =   4;
   // argument of perigee (deg)
   pub static XA_KEP_OMEGA: i32 =   5;
   pub static XA_KEP_SIZE: i32 =  6;
   
   // Index of classical elements
   // N mean motion (revs/day)
   pub static XA_CLS_N: i32 =   0;
   // eccentricity (unitless)
   pub static XA_CLS_E: i32 =   1;
   // inclination (deg)
   pub static XA_CLS_INCLI: i32 =   2;
   // mean anomaly (deg)
   pub static XA_CLS_MA: i32 =   3;
   // right ascension of the asending node (deg)
   pub static XA_CLS_NODE: i32 =   4;
   // argument of perigee (deg)
   pub static XA_CLS_OMEGA: i32 =   5;
   pub static XA_CLS_SIZE: i32 =   6;
   
   // Index of equinoctial elements
   // Af (unitless)
   pub static XA_EQNX_AF: i32 =   0;
   // Ag (unitless)
   pub static XA_EQNX_AG: i32 =   1;
   // chi (unitless)
   pub static XA_EQNX_CHI: i32 =   2;
   // psi (unitless)
   pub static XA_EQNX_PSI: i32 =   3;
   // L mean longitude (deg)
   pub static XA_EQNX_L: i32 =   4;
   // N mean motion (revs/day)
   pub static XA_EQNX_N: i32 =   5;
   pub static XA_EQNX_SIZE: i32 =   6;
   
   // Indexes of AstroConvFrTo
   // SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot)
   pub static XF_CONV_SGP42SGP: i32 = 101;
   
   
   // Indexes for topocentric components
   // Right ascension (deg)
   pub static XA_TOPO_RA: i32 = 0;
   // Declination (deg)
   pub static XA_TOPO_DEC: i32 = 1;
   // Azimuth (deg)
   pub static XA_TOPO_AZ: i32 = 2;
   // Elevation (deg)
   pub static XA_TOPO_EL: i32 = 3;
   // Range (km)
   pub static XA_TOPO_RANGE: i32 = 4;
   // Right ascension dot (deg/s)
   pub static XA_TOPO_RADOT: i32 = 5;
   // Declincation dot (deg/s)
   pub static XA_TOPO_DECDOT: i32 = 6;
   // Azimuth dot (deg/s)
   pub static XA_TOPO_AZDOT: i32 = 7;
   // Elevation dot (deg/s)
   pub static XA_TOPO_ELDOT: i32 = 8;
   // Range dot (km/s)
   pub static XA_TOPO_RANGEDOT: i32 = 9;
   pub static XA_TOPO_SIZE: i32 = 10;
   
   
   // Indexes for RAE components
   // Range (km)
   pub static XA_RAE_RANGE: i32 = 0;
   // Azimuth (deg)
   pub static XA_RAE_AZ: i32 = 1;
   // Elevation (deg)
   pub static XA_RAE_EL: i32 = 2;
   // Range dot (km/s)
   pub static XA_RAE_RANGEDOT: i32 = 3;
   // Azimuth dot (deg/s)
   pub static XA_RAE_AZDOT: i32 = 4;
   // Elevation dot (deg/s)
   pub static XA_RAE_ELDOT: i32 = 5;
   pub static XA_RAE_SIZE: i32 = 6;
   
   
   // Year of Equinox indicator
   // Date of observation
   pub static YROFEQNX_OBTIME: i32 = 0;
   // 0 Jan of Date
   pub static YROFEQNX_CURR: i32 = 1;
   // J2000
   pub static YROFEQNX_2000: i32 = 2;
   // B1950
   pub static YROFEQNX_1950: i32 = 3;
   
// ========================= End of auto generated code ==========================
