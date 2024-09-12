% This wrapper file was generated automatically by the GenDllWrappers program.
function loadAstroFunc(OctFilePath)   
   % Index of Keplerian elements
   % semi-major axis (km)
   global  XA_KEP_A;
   % eccentricity (unitless)
   global  XA_KEP_E;
   % inclination (deg)
   global  XA_KEP_INCLI;
   % mean anomaly (deg)
   global  XA_KEP_MA;
   % right ascension of the asending node (deg)
   global  XA_KEP_NODE;
   % argument of perigee (deg)
   global  XA_KEP_OMEGA;
   global  XA_KEP_SIZE
   
   % Index of classical elements
   % N mean motion (revs/day)
   global  XA_CLS_N;
   % eccentricity (unitless)
   global  XA_CLS_E;
   % inclination (deg)
   global  XA_CLS_INCLI;
   % mean anomaly (deg)
   global  XA_CLS_MA;
   % right ascension of the asending node (deg)
   global  XA_CLS_NODE;
   % argument of perigee (deg)
   global  XA_CLS_OMEGA;
   global  XA_CLS_SIZE
   
   % Index of equinoctial elements
   % Af (unitless)
   global  XA_EQNX_AF;
   % Ag (unitless)
   global  XA_EQNX_AG;
   % chi (unitless)
   global  XA_EQNX_CHI;
   % psi (unitless)
   global  XA_EQNX_PSI;
   % L mean longitude (deg)
   global  XA_EQNX_L;
   % N mean motion (revs/day)
   global  XA_EQNX_N;
   global  XA_EQNX_SIZE
   
   % Indexes of AstroConvFrTo
   % SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot)
   global  XF_CONV_SGP42SGP;
   
   
   % Indexes for topocentric components
   % Right ascension (deg)
   global  XA_TOPO_RA;
   % Declination (deg)
   global  XA_TOPO_DEC;
   % Azimuth (deg)
   global  XA_TOPO_AZ;
   % Elevation (deg)
   global  XA_TOPO_EL;
   % Range (km)
   global  XA_TOPO_RANGE;
   % Right ascension dot (deg/s)
   global  XA_TOPO_RADOT;
   % Declincation dot (deg/s)
   global  XA_TOPO_DECDOT;
   % Azimuth dot (deg/s)
   global  XA_TOPO_AZDOT;
   % Elevation dot (deg/s)
   global  XA_TOPO_ELDOT;
   % Range dot (km/s)
   global  XA_TOPO_RANGEDOT;
   global  XA_TOPO_SIZE
   
   
   % Indexes for RAE components
   % Range (km)
   global  XA_RAE_RANGE;
   % Azimuth (deg)
   global  XA_RAE_AZ;
   % Elevation (deg)
   global  XA_RAE_EL;
   % Range dot (km/s)
   global  XA_RAE_RANGEDOT;
   % Azimuth dot (deg/s)
   global  XA_RAE_AZDOT;
   % Elevation dot (deg/s)
   global  XA_RAE_ELDOT;
   global  XA_RAE_SIZE
   
   
   % Year of Equinox indicator
   % Date of observation
   global  YROFEQNX_OBTIME;
   % 0 Jan of Date
   global  YROFEQNX_CURR;
   % J2000
   global  YROFEQNX_2000;
   % B1950
   global  YROFEQNX_1950;
   
   
   % Index of Keplerian elements
   % semi-major axis (km)
   XA_KEP_A     =   0;
   % eccentricity (unitless)
   XA_KEP_E     =   1;
   % inclination (deg)
   XA_KEP_INCLI =   2;
   % mean anomaly (deg)
   XA_KEP_MA    =   3;
   % right ascension of the asending node (deg)
   XA_KEP_NODE  =   4;
   % argument of perigee (deg)
   XA_KEP_OMEGA =   5;
   XA_KEP_SIZE  =  6;
   
   % Index of classical elements
   % N mean motion (revs/day)
   XA_CLS_N     =   0;
   % eccentricity (unitless)
   XA_CLS_E     =   1;
   % inclination (deg)
   XA_CLS_INCLI =   2;
   % mean anomaly (deg)
   XA_CLS_MA    =   3;
   % right ascension of the asending node (deg)
   XA_CLS_NODE  =   4;
   % argument of perigee (deg)
   XA_CLS_OMEGA =   5;
   XA_CLS_SIZE  =   6;
   
   % Index of equinoctial elements
   % Af (unitless)
   XA_EQNX_AF   =   0;
   % Ag (unitless)
   XA_EQNX_AG   =   1;
   % chi (unitless)
   XA_EQNX_CHI  =   2;
   % psi (unitless)
   XA_EQNX_PSI  =   3;
   % L mean longitude (deg)
   XA_EQNX_L    =   4;
   % N mean motion (revs/day)
   XA_EQNX_N    =   5;
   XA_EQNX_SIZE =   6;
   
   % Indexes of AstroConvFrTo
   % SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot)
   XF_CONV_SGP42SGP = 101;
   
   
   % Indexes for topocentric components
   % Right ascension (deg)
   XA_TOPO_RA    = 0;
   % Declination (deg)
   XA_TOPO_DEC   = 1;
   % Azimuth (deg)
   XA_TOPO_AZ    = 2;
   % Elevation (deg)
   XA_TOPO_EL    = 3;
   % Range (km)
   XA_TOPO_RANGE = 4;
   % Right ascension dot (deg/s)
   XA_TOPO_RADOT = 5;
   % Declincation dot (deg/s)
   XA_TOPO_DECDOT= 6;
   % Azimuth dot (deg/s)
   XA_TOPO_AZDOT = 7;
   % Elevation dot (deg/s)
   XA_TOPO_ELDOT = 8;
   % Range dot (km/s)
   XA_TOPO_RANGEDOT = 9;
   XA_TOPO_SIZE  = 10;
   
   
   % Indexes for RAE components
   % Range (km)
   XA_RAE_RANGE   = 0;
   % Azimuth (deg)
   XA_RAE_AZ      = 1;
   % Elevation (deg)
   XA_RAE_EL      = 2;
   % Range dot (km/s)
   XA_RAE_RANGEDOT= 3;
   % Azimuth dot (deg/s)
   XA_RAE_AZDOT   = 4;
   % Elevation dot (deg/s)
   XA_RAE_ELDOT   = 5;
   XA_RAE_SIZE    = 6;
   
   
   % Year of Equinox indicator
   % Date of observation
   YROFEQNX_OBTIME = 0;
   % 0 Jan of Date
   YROFEQNX_CURR   = 1;
   % J2000
   YROFEQNX_2000   = 2;
   % B1950
   YROFEQNX_1950   = 3;
   
   autoload("LoadAstroFuncDll",strcat(OctFilePath,"AstroFunc.oct"));
   autoload("FreeAstroFuncDll",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes AstroFunc DLL for use in the program.
   %  If this function returns an error, it is recommended that you stop the program immediately.
   %  
   %  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   autoload("AstroFuncInit",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Retrieves information about the current version of AstroFunc.dll. The information is placed in the string parameter you pass in.
   %  The returned string provides information about the version number, build date, and platform.
   autoload("AstroFuncGetInfo",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts a set of Keplerian elements to a set of equinoctial elements. 
   autoload("KepToEqnx",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts a set of osculating Keplerian elements to osculating position and velocity vectors.
   autoload("KepToPosVel",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts a set of Keplerian elements to Ubar, Vbar, and Wbar vectors.
   autoload("KepToUVW",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts a set of classical elements to a set of equinoctial elements. 
   autoload("ClassToEqnx",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts a set of equinoctial elements to a set of classical elements.
   autoload("EqnxToClass",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts a set of equinoctial elements to a set of Keplerian elements. 
   autoload("EqnxToKep",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts a set of equinoctial elements to position and velocity vectors.
   autoload("EqnxToPosVel",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts position and velocity vectors to a set of equinoctial elements.
   autoload("PosVelToEqnx",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts position and velocity vectors to a set of equinoctial elements with the given mu value. 
   %  This function is used when working with the SP propagator to get a more accurate set of equinoctial elements.
   autoload("PosVelMuToEqnx",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts osculating position and velocity vectors to a set of osculating Keplerian elements.
   autoload("PosVelToKep",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts osculating position and velocity vectors to a set of osculating Keplerian elements with the given value of mu.
   %  This function is used when working with the SP propagator to get a more accurate set of Keplerian elements.
   autoload("PosVelMuToKep",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
   %  The resulting vectors have the following meanings.
   %  U vector: along radial direction
   %  V vector: W x U
   %  W vector: pos x vel
   autoload("PosVelToUUVW",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
   %  The resulting vectors have the following meanings.
   %  U vector: V x W
   %  V vector: along velocity direction
   %  W vector: pos x vel
   autoload("PosVelToPTW",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Solves Kepler's equation (M = E - e sin(E)) for the eccentric anomaly, E, by iteration.
   autoload("SolveKepEqtn",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Computes true anomaly from a set of Keplerian elements.
   autoload("CompTrueAnomaly",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts mean motion N to semi-major axis A.
   autoload("NToA",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts semi-major axis A to mean motion N.
   autoload("AToN",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts Kozai mean motion to Brouwer mean motion.
   %  SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
   autoload("KozaiToBrouwer",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts Brouwer mean motion to Kozai mean motion.
   %  SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
   autoload("BrouwerToKozai",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts a set of osculating Keplerian elements to a set of mean Keplerian elements using method 9 algorithm.
   autoload("KepOscToMean",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts an ECI position vector XYZ to geodetic latitude, longitude, and height.
   autoload("XYZToLLH",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts an ECI position vector XYZ to geodetic latitude, longitude, and height at the specified time.
   autoload("XYZToLLHTime",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts geodetic latitude, longitude, and height to an ECI position vector XYZ.
   autoload("LLHToXYZ",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts geodetic latitude, longitude, and height to an ECI position vector XYZ at the specified time.
   autoload("LLHToXYZTime",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts EFG position and velocity vectors to ECI position and velocity vectors.
   autoload("EFGToECI",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts EFG position and velocity vectors to ECI position and velocity vectors at the specified time.
   autoload("EFGToECITime",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts ECI position and velocity vectors to EFG position and velocity vectors.
   autoload("ECIToEFG",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts ECI position and velocity vectors to EFG position and velocity vectors at the specified time.
   autoload("ECIToEFGTime",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts ECR position and velocity vectors to EFG position and velocity vectors.
   autoload("ECRToEFG",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts ECR position and velocity vectors to EFG position and velocity vectors at the specified time.
   autoload("ECRToEFGTime",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts EFG position and velocity vectors to ECR position and velocity vectors.
   autoload("EFGToECR",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts EFG position and velocity vectors to ECR position and velocity vectors at the specified time.
   autoload("EFGToECRTime",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts an EFG position vector to geodetic latitude, longitude, and height.
   autoload("EFGPosToLLH",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts geodetic latitude, longitude, and height to an EFG position vector.
   autoload("LLHToEFGPos",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates position and velocity vectors from J2000 to coordinates of the specified date, expressed in ds50TAI.
   autoload("RotJ2KToDate",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates position and velocity vectors from coordinates of date to J2000.
   autoload("RotDateToJ2K",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Computes the Sun and Moon position at the specified time.
   autoload("CompSunMoonPos",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Computes the Sun position at the specified time.
   autoload("CompSunPos",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Computes the Moon position at the specified time.
   autoload("CompMoonPos",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  This function is intended for future use.  No information is currently available.
   %  This function is intended for future use.  No information is currently available.
   autoload("AstroConvFrTo",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts right ascension and declination to vector triad LAD in topocentric equatorial coordinate system.
   autoload("RADecToLAD",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts azimuth and elevation to vector triad LAD in topocentric horizontal coordinate system.
   autoload("AzElToLAD",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts satellite ECI position/velocity vectors and sensor location to topocentric components.
   %  The xa_topo array has the following structure:
   %  [0]: Resulting right ascension (RA) (deg)
   %  [1]: Declination (deg)
   %  [2]: Azimuth (deg)
   %  [3]: Elevation (deg)
   %  [4]: Range (km)
   %  [5]: RAdot (first derivative of right ascension) (deg/s)
   %  [6]: DecDot (first derivative of declination) (deg/s)
   %  [7]: AzDot (first derivative of azimuth) (deg/s)
   %  [8]: ElDot (first derivative of elevation) (deg/s)
   %  [9]: RangeDot (first derivative of range) (km/s)   
   autoload("ECIToTopoComps",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
   autoload("RaDecToAzEl",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
   autoload("RaDecToAzElTime",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
   autoload("AzElToRaDec",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
   autoload("AzElToRaDecTime",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts full state RAE (range, az, el, and their rates) to full state ECI (position and velocity)
   %  The xa_rae array has the following structure:
   %  [0]: Range (km)
   %  [1]: Azimuth (deg)
   %  [2]: Elevation (deg)
   %  [3]: Range Dot (km/s)
   %  [4]: Azimuth Dot (deg/s)
   %  [5]: Elevation Dot (deg/s)
   autoload("RAEToECI",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Computes initial values for the SGP drag term nDot and the SGP4 drag term BSTAR based upon eccentricity and semi-major axis.
   autoload("GetInitialDrag",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts covariance matrix PTW to UVW.
   %  PTW = P: TxW, T: along velocity direction, W: pos x vel.
   %  UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   autoload("CovMtxPTWToUVW",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts covariance matrix UVW to PTW.
   %  PTW = P: TxW, T: along velocity direction, W: pos x vel.
   %  UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   autoload("CovMtxUVWToPTW",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Computes Earth/Sensor/Earth Limb and Earth/Sensor/Satellite angles.
   autoload("EarthObstructionAngles",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Determines if a point in space is sunlit at the input time ds50ET
   autoload("IsPointSunlit",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates Right Ascension and Declination to specified epoch
   autoload("RotRADecl",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates Right Ascension and Declination from TEME of Date to MEME of the specified year of equinox
   autoload("RotRADec_DateToEqnx",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates Right Ascension and Declination from MEME of the specified year of equinox to TEME of Date
   autoload("RotRADec_EqnxToDate",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates the Equinoctial covariance to UVW
   %  Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   %  The n terms must be normalized by n
   %  The input position, velocity and covariance must all have the same reference equator and equinox.
   autoload("CovMtxEqnxToUVW",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates the UVW covariance to Equinoctial
   %  Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   %  The n terms are normalized by n
   %  The input position, velocity reference equator and equinox determine the output covariance reference frame.
   autoload("CovMtxUVWToEqnx",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates the ECI covariance to UVW
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   autoload("CovMtxECIToUVW",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates the UVW covariance to ECI
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   autoload("CovMtxUVWToECI",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts covariance matrix ECI to EFG.
   %  EFG = Earth Fixed Greenwich
   %  ECI = Earth Centered Inertial - need to determine TEME or J2K
   autoload("CovMtxECIToEFG",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts covariance matrix EFG to ECI.
   %  EFG = Earth Fixed Greenwich
   %  ECI = Earth Centered Inertial - need to determine TEME or J2K
   autoload("CovMtxEFGToECI",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts 6x6 symmetric Matrix/2D array to 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix)
   autoload("Mtx6x6ToLTA21",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix) to a 6x6 symmetric matrix
   autoload("LTA21ToMtx6x6",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts 9x9 symmetric Matrix/2D array to 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix)
   autoload("Mtx9x9ToLTA45",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Converts 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix) to a 9x9 symmetric matrix
   autoload("LTA45ToMtx9x9",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Propagate xyzDate covariance forward to the propagation time
   autoload("PropCovFrState",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates the ECI covariance to UVW
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   autoload("CovMtxECIToEqnx",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates the UVW covariance to ECI
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   autoload("CovMtxEqnxToECI9x9",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates the UVW covariance to ECI
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   autoload("CovMtxEqnxToUVW9x9",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Update (propagate) covariance to a future time with a supplied covariance, state transition matrix
   %  consider parameter and RMS. Consider parameter is applied to the drag term only.
   %  Full covariance matrix is multiplied by RMS squared.  State transition matrix can be obtained from 
   %  SpProp.SpGetStateMtx or supplying your own. State matrix, input and output covariance must be in 
   %  matching coordinate systems.
   autoload("CovMtxUpdate",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Annual Aberration calculated using equations from Astronomical Algorithms, Jean Meeus, 2nd Edition with Corrections as of June 15, 2005
   autoload("AberrationAnnual",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Diurnal Aberration is due to the rotation of the Earth about it's axis. This is only valid for ground based sensors.
   %  Diurnal Aberration calculated using equations from Explanatory Supplement to the Astronomical Almanac 3rd Edition, 2013
   autoload("AberrationDiurnal",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Sets JPL parameters
   %  Notes: Set JPL parameters will be used by SP, SPG4-XP, and anything that requires access to JPL data
   autoload("JplSetParameters",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Gets JPL parameters
   autoload("JplGetParameters",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Resets JPL parameters & removes JPL ephemeris data
   autoload("JplReset",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Computes various Sun and Moon vectors base on loaded JPL data at the specified time.
   %  Note: if JPL data isn't loaded or available, all output parameters are set to zero
   autoload("JplCompSunMoonVec",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Computes Sun and Moon position vectors base on loaded JPL data at the specified time.
   %  Note: if JPL data isn't loaded or available, all output parameters are set to zero
   autoload("JplCompSunMoonPos",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Removes the JPL ephemeris from memory
   autoload("RemoveJpl",strcat(OctFilePath,"AstroFunc.oct"));
   
   %  Rotates position and velocity vectors from TEME of Epoch to TEME of Date
   autoload("TemeEpochToDate",strcat(OctFilePath,"AstroFunc.oct"));
   LoadAstroFuncDll;
endfunction
% ========================= End of auto generated code ==========================
