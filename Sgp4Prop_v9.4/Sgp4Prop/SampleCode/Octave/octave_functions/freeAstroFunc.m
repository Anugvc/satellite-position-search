% This wrapper file was generated automatically by the GenDllWrappers program.
function freeAstroFunc()   
   % Index of Keplerian elements
   % semi-major axis (km)
   global XA_KEP_A;
   % eccentricity (unitless)
   global XA_KEP_E;
   % inclination (deg)
   global XA_KEP_INCLI;
   % mean anomaly (deg)
   global XA_KEP_MA;
   % right ascension of the asending node (deg)
   global XA_KEP_NODE;
   % argument of perigee (deg)
   global XA_KEP_OMEGA;
   global XA_KEP_SIZE;
   
   % Index of classical elements
   % N mean motion (revs/day)
   global XA_CLS_N;
   % eccentricity (unitless)
   global XA_CLS_E;
   % inclination (deg)
   global XA_CLS_INCLI;
   % mean anomaly (deg)
   global XA_CLS_MA;
   % right ascension of the asending node (deg)
   global XA_CLS_NODE;
   % argument of perigee (deg)
   global XA_CLS_OMEGA;
   global XA_CLS_SIZE;
   
   % Index of equinoctial elements
   % Af (unitless)
   global XA_EQNX_AF;
   % Ag (unitless)
   global XA_EQNX_AG;
   % chi (unitless)
   global XA_EQNX_CHI;
   % psi (unitless)
   global XA_EQNX_PSI;
   % L mean longitude (deg)
   global XA_EQNX_L;
   % N mean motion (revs/day)
   global XA_EQNX_N;
   global XA_EQNX_SIZE;
   
   % Indexes of AstroConvFrTo
   % SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot)
   global XF_CONV_SGP42SGP;
   
   
   % Indexes for topocentric components
   % Right ascension (deg)
   global XA_TOPO_RA;
   % Declination (deg)
   global XA_TOPO_DEC;
   % Azimuth (deg)
   global XA_TOPO_AZ;
   % Elevation (deg)
   global XA_TOPO_EL;
   % Range (km)
   global XA_TOPO_RANGE;
   % Right ascension dot (deg/s)
   global XA_TOPO_RADOT;
   % Declincation dot (deg/s)
   global XA_TOPO_DECDOT;
   % Azimuth dot (deg/s)
   global XA_TOPO_AZDOT;
   % Elevation dot (deg/s)
   global XA_TOPO_ELDOT;
   % Range dot (km/s)
   global XA_TOPO_RANGEDOT;
   global XA_TOPO_SIZE;
   
   
   % Indexes for RAE components
   % Range (km)
   global XA_RAE_RANGE;
   % Azimuth (deg)
   global XA_RAE_AZ;
   % Elevation (deg)
   global XA_RAE_EL;
   % Range dot (km/s)
   global XA_RAE_RANGEDOT;
   % Azimuth dot (deg/s)
   global XA_RAE_AZDOT;
   % Elevation dot (deg/s)
   global XA_RAE_ELDOT;
   global XA_RAE_SIZE;
   
   
   % Year of Equinox indicator
   % Date of observation
   global YROFEQNX_OBTIME;
   % 0 Jan of Date
   global YROFEQNX_CURR;
   % J2000
   global YROFEQNX_2000;
   % B1950
   global YROFEQNX_1950;
   
   
   % Index of Keplerian elements
   % semi-major axis (km)
   clear XA_KEP_A;
   % eccentricity (unitless)
   clear XA_KEP_E;
   % inclination (deg)
   clear XA_KEP_INCLI;
   % mean anomaly (deg)
   clear XA_KEP_MA;
   % right ascension of the asending node (deg)
   clear XA_KEP_NODE;
   % argument of perigee (deg)
   clear XA_KEP_OMEGA;
   clear XA_KEP_SIZE;
   
   % Index of classical elements
   % N mean motion (revs/day)
   clear XA_CLS_N;
   % eccentricity (unitless)
   clear XA_CLS_E;
   % inclination (deg)
   clear XA_CLS_INCLI;
   % mean anomaly (deg)
   clear XA_CLS_MA;
   % right ascension of the asending node (deg)
   clear XA_CLS_NODE;
   % argument of perigee (deg)
   clear XA_CLS_OMEGA;
   clear XA_CLS_SIZE;
   
   % Index of equinoctial elements
   % Af (unitless)
   clear XA_EQNX_AF;
   % Ag (unitless)
   clear XA_EQNX_AG;
   % chi (unitless)
   clear XA_EQNX_CHI;
   % psi (unitless)
   clear XA_EQNX_PSI;
   % L mean longitude (deg)
   clear XA_EQNX_L;
   % N mean motion (revs/day)
   clear XA_EQNX_N;
   clear XA_EQNX_SIZE;
   
   % Indexes of AstroConvFrTo
   % SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot)
   clear XF_CONV_SGP42SGP;
   
   
   % Indexes for topocentric components
   % Right ascension (deg)
   clear XA_TOPO_RA;
   % Declination (deg)
   clear XA_TOPO_DEC;
   % Azimuth (deg)
   clear XA_TOPO_AZ;
   % Elevation (deg)
   clear XA_TOPO_EL;
   % Range (km)
   clear XA_TOPO_RANGE;
   % Right ascension dot (deg/s)
   clear XA_TOPO_RADOT;
   % Declincation dot (deg/s)
   clear XA_TOPO_DECDOT;
   % Azimuth dot (deg/s)
   clear XA_TOPO_AZDOT;
   % Elevation dot (deg/s)
   clear XA_TOPO_ELDOT;
   % Range dot (km/s)
   clear XA_TOPO_RANGEDOT;
   clear XA_TOPO_SIZE;
   
   
   % Indexes for RAE components
   % Range (km)
   clear XA_RAE_RANGE;
   % Azimuth (deg)
   clear XA_RAE_AZ;
   % Elevation (deg)
   clear XA_RAE_EL;
   % Range dot (km/s)
   clear XA_RAE_RANGEDOT;
   % Azimuth dot (deg/s)
   clear XA_RAE_AZDOT;
   % Elevation dot (deg/s)
   clear XA_RAE_ELDOT;
   clear XA_RAE_SIZE;
   
   
   % Year of Equinox indicator
   % Date of observation
   clear YROFEQNX_OBTIME;
   % 0 Jan of Date
   clear YROFEQNX_CURR;
   % J2000
   clear YROFEQNX_2000;
   % B1950
   clear YROFEQNX_1950;
   
   FreeAstroFuncDll;
   clear LoadAstroFuncDll;
   clear FreeAstroFuncDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes AstroFunc DLL for use in the program.
   %  If this function returns an error, it is recommended that you stop the program immediately.
   %  
   %  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   clear AstroFuncInit
   
   %  Retrieves information about the current version of AstroFunc.dll. The information is placed in the string parameter you pass in.
   %  The returned string provides information about the version number, build date, and platform.
   clear AstroFuncGetInfo
   
   %  Converts a set of Keplerian elements to a set of equinoctial elements. 
   clear KepToEqnx
   
   %  Converts a set of osculating Keplerian elements to osculating position and velocity vectors.
   clear KepToPosVel
   
   %  Converts a set of Keplerian elements to Ubar, Vbar, and Wbar vectors.
   clear KepToUVW
   
   %  Converts a set of classical elements to a set of equinoctial elements. 
   clear ClassToEqnx
   
   %  Converts a set of equinoctial elements to a set of classical elements.
   clear EqnxToClass
   
   %  Converts a set of equinoctial elements to a set of Keplerian elements. 
   clear EqnxToKep
   
   %  Converts a set of equinoctial elements to position and velocity vectors.
   clear EqnxToPosVel
   
   %  Converts position and velocity vectors to a set of equinoctial elements.
   clear PosVelToEqnx
   
   %  Converts position and velocity vectors to a set of equinoctial elements with the given mu value. 
   %  This function is used when working with the SP propagator to get a more accurate set of equinoctial elements.
   clear PosVelMuToEqnx
   
   %  Converts osculating position and velocity vectors to a set of osculating Keplerian elements.
   clear PosVelToKep
   
   %  Converts osculating position and velocity vectors to a set of osculating Keplerian elements with the given value of mu.
   %  This function is used when working with the SP propagator to get a more accurate set of Keplerian elements.
   clear PosVelMuToKep
   
   %  Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
   %  The resulting vectors have the following meanings.
   %  U vector: along radial direction
   %  V vector: W x U
   %  W vector: pos x vel
   clear PosVelToUUVW
   
   %  Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
   %  The resulting vectors have the following meanings.
   %  U vector: V x W
   %  V vector: along velocity direction
   %  W vector: pos x vel
   clear PosVelToPTW
   
   %  Solves Kepler's equation (M = E - e sin(E)) for the eccentric anomaly, E, by iteration.
   clear SolveKepEqtn
   
   %  Computes true anomaly from a set of Keplerian elements.
   clear CompTrueAnomaly
   
   %  Converts mean motion N to semi-major axis A.
   clear NToA
   
   %  Converts semi-major axis A to mean motion N.
   clear AToN
   
   %  Converts Kozai mean motion to Brouwer mean motion.
   %  SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
   clear KozaiToBrouwer
   
   %  Converts Brouwer mean motion to Kozai mean motion.
   %  SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
   clear BrouwerToKozai
   
   %  Converts a set of osculating Keplerian elements to a set of mean Keplerian elements using method 9 algorithm.
   clear KepOscToMean
   
   %  Converts an ECI position vector XYZ to geodetic latitude, longitude, and height.
   clear XYZToLLH
   
   %  Converts an ECI position vector XYZ to geodetic latitude, longitude, and height at the specified time.
   clear XYZToLLHTime
   
   %  Converts geodetic latitude, longitude, and height to an ECI position vector XYZ.
   clear LLHToXYZ
   
   %  Converts geodetic latitude, longitude, and height to an ECI position vector XYZ at the specified time.
   clear LLHToXYZTime
   
   %  Converts EFG position and velocity vectors to ECI position and velocity vectors.
   clear EFGToECI
   
   %  Converts EFG position and velocity vectors to ECI position and velocity vectors at the specified time.
   clear EFGToECITime
   
   %  Converts ECI position and velocity vectors to EFG position and velocity vectors.
   clear ECIToEFG
   
   %  Converts ECI position and velocity vectors to EFG position and velocity vectors at the specified time.
   clear ECIToEFGTime
   
   %  Converts ECR position and velocity vectors to EFG position and velocity vectors.
   clear ECRToEFG
   
   %  Converts ECR position and velocity vectors to EFG position and velocity vectors at the specified time.
   clear ECRToEFGTime
   
   %  Converts EFG position and velocity vectors to ECR position and velocity vectors.
   clear EFGToECR
   
   %  Converts EFG position and velocity vectors to ECR position and velocity vectors at the specified time.
   clear EFGToECRTime
   
   %  Converts an EFG position vector to geodetic latitude, longitude, and height.
   clear EFGPosToLLH
   
   %  Converts geodetic latitude, longitude, and height to an EFG position vector.
   clear LLHToEFGPos
   
   %  Rotates position and velocity vectors from J2000 to coordinates of the specified date, expressed in ds50TAI.
   clear RotJ2KToDate
   
   %  Rotates position and velocity vectors from coordinates of date to J2000.
   clear RotDateToJ2K
   
   %  Computes the Sun and Moon position at the specified time.
   clear CompSunMoonPos
   
   %  Computes the Sun position at the specified time.
   clear CompSunPos
   
   %  Computes the Moon position at the specified time.
   clear CompMoonPos
   
   %  This function is intended for future use.  No information is currently available.
   %  This function is intended for future use.  No information is currently available.
   clear AstroConvFrTo
   
   %  Converts right ascension and declination to vector triad LAD in topocentric equatorial coordinate system.
   clear RADecToLAD
   
   %  Converts azimuth and elevation to vector triad LAD in topocentric horizontal coordinate system.
   clear AzElToLAD
   
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
   clear ECIToTopoComps
   
   %  Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
   clear RaDecToAzEl
   
   %  Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
   clear RaDecToAzElTime
   
   %  Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
   clear AzElToRaDec
   
   %  Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
   clear AzElToRaDecTime
   
   %  Converts full state RAE (range, az, el, and their rates) to full state ECI (position and velocity)
   %  The xa_rae array has the following structure:
   %  [0]: Range (km)
   %  [1]: Azimuth (deg)
   %  [2]: Elevation (deg)
   %  [3]: Range Dot (km/s)
   %  [4]: Azimuth Dot (deg/s)
   %  [5]: Elevation Dot (deg/s)
   clear RAEToECI
   
   %  Computes initial values for the SGP drag term nDot and the SGP4 drag term BSTAR based upon eccentricity and semi-major axis.
   clear GetInitialDrag
   
   %  Converts covariance matrix PTW to UVW.
   %  PTW = P: TxW, T: along velocity direction, W: pos x vel.
   %  UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   clear CovMtxPTWToUVW
   
   %  Converts covariance matrix UVW to PTW.
   %  PTW = P: TxW, T: along velocity direction, W: pos x vel.
   %  UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
   clear CovMtxUVWToPTW
   
   %  Computes Earth/Sensor/Earth Limb and Earth/Sensor/Satellite angles.
   clear EarthObstructionAngles
   
   %  Determines if a point in space is sunlit at the input time ds50ET
   clear IsPointSunlit
   
   %  Rotates Right Ascension and Declination to specified epoch
   clear RotRADecl
   
   %  Rotates Right Ascension and Declination from TEME of Date to MEME of the specified year of equinox
   clear RotRADec_DateToEqnx
   
   %  Rotates Right Ascension and Declination from MEME of the specified year of equinox to TEME of Date
   clear RotRADec_EqnxToDate
   
   %  Rotates the Equinoctial covariance to UVW
   %  Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   %  The n terms must be normalized by n
   %  The input position, velocity and covariance must all have the same reference equator and equinox.
   clear CovMtxEqnxToUVW
   
   %  Rotates the UVW covariance to Equinoctial
   %  Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
   %  The n terms are normalized by n
   %  The input position, velocity reference equator and equinox determine the output covariance reference frame.
   clear CovMtxUVWToEqnx
   
   %  Rotates the ECI covariance to UVW
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   clear CovMtxECIToUVW
   
   %  Rotates the UVW covariance to ECI
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   clear CovMtxUVWToECI
   
   %  Converts covariance matrix ECI to EFG.
   %  EFG = Earth Fixed Greenwich
   %  ECI = Earth Centered Inertial - need to determine TEME or J2K
   clear CovMtxECIToEFG
   
   %  Converts covariance matrix EFG to ECI.
   %  EFG = Earth Fixed Greenwich
   %  ECI = Earth Centered Inertial - need to determine TEME or J2K
   clear CovMtxEFGToECI
   
   %  Converts 6x6 symmetric Matrix/2D array to 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix)
   clear Mtx6x6ToLTA21
   
   %  Converts 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix) to a 6x6 symmetric matrix
   clear LTA21ToMtx6x6
   
   %  Converts 9x9 symmetric Matrix/2D array to 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix)
   clear Mtx9x9ToLTA45
   
   %  Converts 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix) to a 9x9 symmetric matrix
   clear LTA45ToMtx9x9
   
   %  Propagate xyzDate covariance forward to the propagation time
   clear PropCovFrState
   
   %  Rotates the ECI covariance to UVW
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   clear CovMtxECIToEqnx
   
   %  Rotates the UVW covariance to ECI
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   clear CovMtxEqnxToECI9x9
   
   %  Rotates the UVW covariance to ECI
   %  Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
   clear CovMtxEqnxToUVW9x9
   
   %  Update (propagate) covariance to a future time with a supplied covariance, state transition matrix
   %  consider parameter and RMS. Consider parameter is applied to the drag term only.
   %  Full covariance matrix is multiplied by RMS squared.  State transition matrix can be obtained from 
   %  SpProp.SpGetStateMtx or supplying your own. State matrix, input and output covariance must be in 
   %  matching coordinate systems.
   clear CovMtxUpdate
   
   %  Annual Aberration calculated using equations from Astronomical Algorithms, Jean Meeus, 2nd Edition with Corrections as of June 15, 2005
   clear AberrationAnnual
   
   %  Diurnal Aberration is due to the rotation of the Earth about it's axis. This is only valid for ground based sensors.
   %  Diurnal Aberration calculated using equations from Explanatory Supplement to the Astronomical Almanac 3rd Edition, 2013
   clear AberrationDiurnal
   
   %  Sets JPL parameters
   %  Notes: Set JPL parameters will be used by SP, SPG4-XP, and anything that requires access to JPL data
   clear JplSetParameters
   
   %  Gets JPL parameters
   clear JplGetParameters
   
   %  Resets JPL parameters & removes JPL ephemeris data
   clear JplReset
   
   %  Computes various Sun and Moon vectors base on loaded JPL data at the specified time.
   %  Note: if JPL data isn't loaded or available, all output parameters are set to zero
   clear JplCompSunMoonVec
   
   %  Computes Sun and Moon position vectors base on loaded JPL data at the specified time.
   %  Note: if JPL data isn't loaded or available, all output parameters are set to zero
   clear JplCompSunMoonPos
   
   %  Removes the JPL ephemeris from memory
   clear RemoveJpl
   
   %  Rotates position and velocity vectors from TEME of Epoch to TEME of Date
   clear TemeEpochToDate
endfunction
% ========================= End of auto generated code ==========================
