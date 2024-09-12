// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes AstroFunc DLL for use in the program.
// If this function returns an error, it is recommended that you stop the program immediately.
// 
// An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
int AstroFuncInit(long apAddr);

// Retrieves information about the current version of AstroFunc.dll. The information is placed in the string parameter you pass in.
// The returned string provides information about the version number, build date, and platform.
void AstroFuncGetInfo(char infoStr[128]);

// Converts a set of Keplerian elements to a set of equinoctial elements. 
void KepToEqnx(double xa_kep[6], double xa_eqnx[6]);

// Converts a set of osculating Keplerian elements to osculating position and velocity vectors.
void KepToPosVel(double xa_kep[6], double pos[3], double vel[3]);

// Converts a set of Keplerian elements to Ubar, Vbar, and Wbar vectors.
void KepToUVW(double xa_kep[6], double uBar[3], double vBar[3], double wBar[3]);

// Converts a set of classical elements to a set of equinoctial elements. 
void ClassToEqnx(double xa_cls[6], double xa_eqnx[6]);

// Converts a set of equinoctial elements to a set of classical elements.
void EqnxToClass(double xa_eqnx[6], double xa_cls[6]);

// Converts a set of equinoctial elements to a set of Keplerian elements. 
void EqnxToKep(double xa_eqnx[6], double xa_kep[6]);

// Converts a set of equinoctial elements to position and velocity vectors.
void EqnxToPosVel(double xa_eqnx[6], double pos[3], double vel[3]);

// Converts position and velocity vectors to a set of equinoctial elements.
void PosVelToEqnx(double pos[3], double vel[3], double xa_eqnx[6]);

// Converts position and velocity vectors to a set of equinoctial elements with the given mu value. 
// This function is used when working with the SP propagator to get a more accurate set of equinoctial elements.
void PosVelMuToEqnx(double pos[3], double vel[3], double mu, double xa_eqnx[6]);

// Converts osculating position and velocity vectors to a set of osculating Keplerian elements.
void PosVelToKep(double pos[3], double vel[3], double xa_kep[6]);

// Converts osculating position and velocity vectors to a set of osculating Keplerian elements with the given value of mu.
// This function is used when working with the SP propagator to get a more accurate set of Keplerian elements.
void PosVelMuToKep(double pos[3], double vel[3], double mu, double xa_kep[6]);

// Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
// The resulting vectors have the following meanings.
// U vector: along radial direction
// V vector: W x U
// W vector: pos x vel
void PosVelToUUVW(double pos[3], double vel[3], double uvec[3], double vVec[3], double wVec[3]);

// Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
// The resulting vectors have the following meanings.
// U vector: V x W
// V vector: along velocity direction
// W vector: pos x vel
void PosVelToPTW(double pos[3], double vel[3], double uvec[3], double vVec[3], double wVec[3]);

// Solves Kepler's equation (M = E - e sin(E)) for the eccentric anomaly, E, by iteration.
double SolveKepEqtn(double xa_kep[6]);

// Computes true anomaly from a set of Keplerian elements.
double CompTrueAnomaly(double xa_kep[6]);

// Converts mean motion N to semi-major axis A.
double NToA(double n);

// Converts semi-major axis A to mean motion N.
double AToN(double a);

// Converts Kozai mean motion to Brouwer mean motion.
// SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
double KozaiToBrouwer(double eccen, double incli, double nKozai);

// Converts Brouwer mean motion to Kozai mean motion.
// SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
double BrouwerToKozai(double eccen, double incli, double nBrouwer);

// Converts a set of osculating Keplerian elements to a set of mean Keplerian elements using method 9 algorithm.
void KepOscToMean(double xa_OscKep[6], double xa_MeanKep[6]);

// Converts an ECI position vector XYZ to geodetic latitude, longitude, and height.
void XYZToLLH(double thetaG, double metricPos[3], double metricLLH[3]);

// Converts an ECI position vector XYZ to geodetic latitude, longitude, and height at the specified time.
void XYZToLLHTime(double ds50UTC, double metricPos[3], double metricLLH[3]);

// Converts geodetic latitude, longitude, and height to an ECI position vector XYZ.
void LLHToXYZ(double thetaG, double metricLLH[3], double metricXYZ[3]);

// Converts geodetic latitude, longitude, and height to an ECI position vector XYZ at the specified time.
void LLHToXYZTime(double ds50UTC, double metricLLH[3], double metricXYZ[3]);

// Converts EFG position and velocity vectors to ECI position and velocity vectors.
void EFGToECI(double thetaG, double posEFG[3], double velEFG[3], double posECI[3], double velECI[3]);

// Converts EFG position and velocity vectors to ECI position and velocity vectors at the specified time.
void EFGToECITime(double ds50UTC, double posEFG[3], double velEFG[3], double posECI[3], double velECI[3]);

// Converts ECI position and velocity vectors to EFG position and velocity vectors.
void ECIToEFG(double thetaG, double posECI[3], double velECI[3], double posEFG[3], double velEFG[3]);

// Converts ECI position and velocity vectors to EFG position and velocity vectors at the specified time.
void ECIToEFGTime(double ds50UTC, double posECI[3], double velECI[3], double posEFG[3], double velEFG[3]);

// Converts ECR position and velocity vectors to EFG position and velocity vectors.
void ECRToEFG(double polarX, double polarY, double posECR[3], double velECR[3], double posEFG[3], double velEFG[3]);

// Converts ECR position and velocity vectors to EFG position and velocity vectors at the specified time.
void ECRToEFGTime(double ds50UTC, double posECR[3], double velECR[3], double posEFG[3], double velEFG[3]);

// Converts EFG position and velocity vectors to ECR position and velocity vectors.
void EFGToECR(double polarX, double polarY, double posEFG[3], double velEFG[3], double posECR[3], double velECR[3]);

// Converts EFG position and velocity vectors to ECR position and velocity vectors at the specified time.
void EFGToECRTime(double ds50UTC, double posEFG[3], double velEFG[3], double posECR[3], double velECR[3]);

// Converts an EFG position vector to geodetic latitude, longitude, and height.
void EFGPosToLLH(double posEFG[3], double metricLLH[3]);

// Converts geodetic latitude, longitude, and height to an EFG position vector.
void LLHToEFGPos(double metricLLH[3], double posEFG[3]);

// Rotates position and velocity vectors from J2000 to coordinates of the specified date, expressed in ds50TAI.
void RotJ2KToDate(int spectr, int nutationTerms, double ds50TAI, double posJ2K[3], double velJ2K[3], double posDate[3], double velDate[3]);

// Rotates position and velocity vectors from coordinates of date to J2000.
void RotDateToJ2K(int spectr, int nutationTerms, double ds50TAI, double posDate[3], double velDate[3], double posJ2K[3], double velJ2K[3]);

// Computes the Sun and Moon position at the specified time.
void CompSunMoonPos(double ds50ET, double uvecSun[3], double* sunVecMag, double uvecMoon[3], double* moonVecMag);

// Computes the Sun position at the specified time.
void CompSunPos(double ds50ET, double uvecSun[3], double* sunVecMag);

// Computes the Moon position at the specified time.
void CompMoonPos(double ds50ET, double uvecMoon[3], double* moonVecMag);

// This function is intended for future use.  No information is currently available.
// This function is intended for future use.  No information is currently available.
void AstroConvFrTo(int xf_Conv, double frArr[128], double toArr[128]);

// Converts right ascension and declination to vector triad LAD in topocentric equatorial coordinate system.
void RADecToLAD(double ra, double dec, double l[3], double a_tilde[3], double d_tilde[3]);

// Converts azimuth and elevation to vector triad LAD in topocentric horizontal coordinate system.
void AzElToLAD(double az, double el, double lh[3], double ah[3], double dh[3]);

// Converts satellite ECI position/velocity vectors and sensor location to topocentric components.
// The xa_topo array has the following structure:
// [0]: Resulting right ascension (RA) (deg)
// [1]: Declination (deg)
// [2]: Azimuth (deg)
// [3]: Elevation (deg)
// [4]: Range (km)
// [5]: RAdot (first derivative of right ascension) (deg/s)
// [6]: DecDot (first derivative of declination) (deg/s)
// [7]: AzDot (first derivative of azimuth) (deg/s)
// [8]: ElDot (first derivative of elevation) (deg/s)
// [9]: RangeDot (first derivative of range) (km/s)   
void ECIToTopoComps(double theta, double lat, double senPos[3], double satPos[3], double satVel[3], double xa_topo[10]);

// Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
void RaDecToAzEl(double thetaG, double lat, double lon, double ra, double dec, double* az, double* el);

// Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
void RaDecToAzElTime(double ds50UTC, double lat, double lon, double ra, double dec, double* az, double* el);

// Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
void AzElToRaDec(double thetaG, double lat, double lon, double az, double el, double* ra, double* dec);

// Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
void AzElToRaDecTime(double ds50UTC, double lat, double lon, double az, double el, double* ra, double* dec);

// Converts full state RAE (range, az, el, and their rates) to full state ECI (position and velocity)
// The xa_rae array has the following structure:
// [0]: Range (km)
// [1]: Azimuth (deg)
// [2]: Elevation (deg)
// [3]: Range Dot (km/s)
// [4]: Azimuth Dot (deg/s)
// [5]: Elevation Dot (deg/s)
void RAEToECI(double theta, double astroLat, double xa_rae[6], double senPos[3], double satPos[3], double satVel[3]);

// Computes initial values for the SGP drag term nDot and the SGP4 drag term BSTAR based upon eccentricity and semi-major axis.
void GetInitialDrag(double semiMajorAxis, double eccen, double* nDot, double* bstar);

// Converts covariance matrix PTW to UVW.
// PTW = P: TxW, T: along velocity direction, W: pos x vel.
// UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
void CovMtxPTWToUVW(double pos[3], double vel[3], double ptwCovMtx[6][6], double uvwCovMtx[6][6]);

// Converts covariance matrix UVW to PTW.
// PTW = P: TxW, T: along velocity direction, W: pos x vel.
// UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
void CovMtxUVWToPTW(double pos[3], double vel[3], double uvwCovMtx[6][6], double ptwCovMtx[6][6]);

// Computes Earth/Sensor/Earth Limb and Earth/Sensor/Satellite angles.
void EarthObstructionAngles(double earthLimb, double satECI[3], double senECI[3], double* earthSenLimb, double* earthSenSat, double* satEarthSen);

// Determines if a point in space is sunlit at the input time ds50ET
int IsPointSunlit(double ds50ET, double ptEci[3]);

// Rotates Right Ascension and Declination to specified epoch
void RotRADecl(int nutationTerms, int dir, double ds50UTCIn, double raIn, double declIn, double ds50UTCOut, double* raOut, double* declOut);

// Rotates Right Ascension and Declination from TEME of Date to MEME of the specified year of equinox
int RotRADec_DateToEqnx(int nutationTerms, int yrOfEqnx, double ds50UTCIn, double raIn, double declIn, double* raOut, double* declOut);

// Rotates Right Ascension and Declination from MEME of the specified year of equinox to TEME of Date
int RotRADec_EqnxToDate(int nutationTerms, int yrOfEqnx, double ds50UTCIn, double raIn, double declIn, double* raOut, double* declOut);

// Rotates the Equinoctial covariance to UVW
// Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
// The n terms must be normalized by n
// The input position, velocity and covariance must all have the same reference equator and equinox.
void CovMtxEqnxToUVW(double pos[3], double vel[3], double covMtxEqnx[6][6], double covMtxUVW[6][6]);

// Rotates the UVW covariance to Equinoctial
// Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
// The n terms are normalized by n
// The input position, velocity reference equator and equinox determine the output covariance reference frame.
void CovMtxUVWToEqnx(double pos[3], double vel[3], double covMtxUVW[6][6], double covMtxEqnx[6][6]);

// Rotates the ECI covariance to UVW
// Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
void CovMtxECIToUVW(double pos[3], double vel[3], double covMtxECI[6][6], double covMtxUVW[6][6]);

// Rotates the UVW covariance to ECI
// Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
void CovMtxUVWToECI(double pos[3], double vel[3], double covMtxUVW[6][6], double covMtxECI[6][6]);

// Converts covariance matrix ECI to EFG.
// EFG = Earth Fixed Greenwich
// ECI = Earth Centered Inertial - need to determine TEME or J2K
void CovMtxECIToEFG(double thetaG, double covECI[6][6], double covEFG[6][6]);

// Converts covariance matrix EFG to ECI.
// EFG = Earth Fixed Greenwich
// ECI = Earth Centered Inertial - need to determine TEME or J2K
void CovMtxEFGToECI(double thetaG, double covEFG[6][6], double covECI[6][6]);

// Converts 6x6 symmetric Matrix/2D array to 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix)
void Mtx6x6ToLTA21(double symMtx6x6[6][6], double lta21[21]);

// Converts 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix) to a 6x6 symmetric matrix
void LTA21ToMtx6x6(double lta21[21], double symMtx6x6[6][6]);

// Converts 9x9 symmetric Matrix/2D array to 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix)
void Mtx9x9ToLTA45(double symMtx9x9[9][9], double lta45[45]);

// Converts 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix) to a 9x9 symmetric matrix
void LTA45ToMtx9x9(double lta45[45], double symMtx9x9[9][9]);

// Propagate xyzDate covariance forward to the propagation time
void PropCovFrState(double rms, double consider, double stateArray[54], double cov[9][9], double propCov[6][6]);

// Rotates the ECI covariance to UVW
// Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
void CovMtxECIToEqnx(double pos[3], double vel[3], double covMtxECI[9][9], double covMtxEqnx[9][9]);

// Rotates the UVW covariance to ECI
// Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
void CovMtxEqnxToECI9x9(double pos[3], double vel[3], double covEqnx[9][9], double covMtxECI[9][9]);

// Rotates the UVW covariance to ECI
// Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
void CovMtxEqnxToUVW9x9(double pos[3], double vel[3], double covEqnx[9][9], double covMtxUVW[9][9]);

// Update (propagate) covariance to a future time with a supplied covariance, state transition matrix
// consider parameter and RMS. Consider parameter is applied to the drag term only.
// Full covariance matrix is multiplied by RMS squared.  State transition matrix can be obtained from 
// SpProp.SpGetStateMtx or supplying your own. State matrix, input and output covariance must be in 
// matching coordinate systems.
void CovMtxUpdate(double rmsIn, double consider, double cov[9][9], double stateArray[54], double propCov[6][6]);

// Annual Aberration calculated using equations from Astronomical Algorithms, Jean Meeus, 2nd Edition with Corrections as of June 15, 2005
void AberrationAnnual(double ra, double decl, double dS50UTC, double* raDelta, double* decDelta);

// Diurnal Aberration is due to the rotation of the Earth about it's axis. This is only valid for ground based sensors.
// Diurnal Aberration calculated using equations from Explanatory Supplement to the Astronomical Almanac 3rd Edition, 2013
void AberrationDiurnal(double ra, double decl, double dS50UTC, double senPos[3], double* raDelta, double* decDelta);

// Sets JPL parameters
// Notes: Set JPL parameters will be used by SP, SPG4-XP, and anything that requires access to JPL data
void JplSetParameters(char jplFile[512], double ds50Start, double ds50Stop);

// Gets JPL parameters
void JplGetParameters(char jplFile[512], double* ds50Start, double* ds50Stop);

// Resets JPL parameters & removes JPL ephemeris data
void JplReset();

// Computes various Sun and Moon vectors base on loaded JPL data at the specified time.
// Note: if JPL data isn't loaded or available, all output parameters are set to zero
void JplCompSunMoonVec(double ds50UTC, double uvecSun[3], double* sunVecMag, double uvecMoon[3], double* moonVecMag);

// Computes Sun and Moon position vectors base on loaded JPL data at the specified time.
// Note: if JPL data isn't loaded or available, all output parameters are set to zero
void JplCompSunMoonPos(double ds50UTC, double sunVec[3], double moonVec[3]);

// Removes the JPL ephemeris from memory
void RemoveJpl();

// Rotates position and velocity vectors from TEME of Epoch to TEME of Date
void TemeEpochToDate(int nutationTerms, double epochDs50TAI, double dateDs50TAI, double posEpoch[3], double velEpoch[3], double posDate[3], double velDate[3]);

// Index of Keplerian elements
// semi-major axis (km)
#define XA_KEP_A        0
// eccentricity (unitless)
#define XA_KEP_E        1
// inclination (deg)
#define XA_KEP_INCLI    2
// mean anomaly (deg)
#define XA_KEP_MA       3
// right ascension of the asending node (deg)
#define XA_KEP_NODE     4
// argument of perigee (deg)
#define XA_KEP_OMEGA    5
#define XA_KEP_SIZE    6

// Index of classical elements
// N mean motion (revs/day)
#define XA_CLS_N        0
// eccentricity (unitless)
#define XA_CLS_E        1
// inclination (deg)
#define XA_CLS_INCLI    2
// mean anomaly (deg)
#define XA_CLS_MA       3
// right ascension of the asending node (deg)
#define XA_CLS_NODE     4
// argument of perigee (deg)
#define XA_CLS_OMEGA    5
#define XA_CLS_SIZE     6

// Index of equinoctial elements
// Af (unitless)
#define XA_EQNX_AF      0
// Ag (unitless)
#define XA_EQNX_AG      1
// chi (unitless)
#define XA_EQNX_CHI     2
// psi (unitless)
#define XA_EQNX_PSI     3
// L mean longitude (deg)
#define XA_EQNX_L       4
// N mean motion (revs/day)
#define XA_EQNX_N       5
#define XA_EQNX_SIZE    6

// Indexes of AstroConvFrTo
// SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot)
#define XF_CONV_SGP42SGP  101


// Indexes for topocentric components
// Right ascension (deg)
#define XA_TOPO_RA     0
// Declination (deg)
#define XA_TOPO_DEC    1
// Azimuth (deg)
#define XA_TOPO_AZ     2
// Elevation (deg)
#define XA_TOPO_EL     3
// Range (km)
#define XA_TOPO_RANGE  4
// Right ascension dot (deg/s)
#define XA_TOPO_RADOT  5
// Declincation dot (deg/s)
#define XA_TOPO_DECDOT 6
// Azimuth dot (deg/s)
#define XA_TOPO_AZDOT  7
// Elevation dot (deg/s)
#define XA_TOPO_ELDOT  8
// Range dot (km/s)
#define XA_TOPO_RANGEDOT  9
#define XA_TOPO_SIZE   10


// Indexes for RAE components
// Range (km)
#define XA_RAE_RANGE    0
// Azimuth (deg)
#define XA_RAE_AZ       1
// Elevation (deg)
#define XA_RAE_EL       2
// Range dot (km/s)
#define XA_RAE_RANGEDOT 3
// Azimuth dot (deg/s)
#define XA_RAE_AZDOT    4
// Elevation dot (deg/s)
#define XA_RAE_ELDOT    5
#define XA_RAE_SIZE     6


// Year of Equinox indicator
// Date of observation
#define YROFEQNX_OBTIME  0
// 0 Jan of Date
#define YROFEQNX_CURR    1
// J2000
#define YROFEQNX_2000    2
// B1950
#define YROFEQNX_1950    3

// ========================= End of auto generated code ==========================
