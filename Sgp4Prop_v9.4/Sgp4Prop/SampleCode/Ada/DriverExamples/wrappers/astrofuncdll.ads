-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package AstroFuncDll is
    
    -- Index of Keplerian elements
    -- semi-major axis (km)
    XA_KEP_A : constant := 0;
    -- eccentricity (unitless)
    XA_KEP_E : constant := 1;
    -- inclination (deg)
    XA_KEP_INCLI : constant := 2;
    -- mean anomaly (deg)
    XA_KEP_MA : constant := 3;
    -- right ascension of the asending node (deg)
    XA_KEP_NODE : constant := 4;
    -- argument of perigee (deg)
    XA_KEP_OMEGA : constant := 5;
    XA_KEP_SIZE : constant := 6;
    
    -- Index of classical elements
    -- N mean motion (revs/day)
    XA_CLS_N : constant := 0;
    -- eccentricity (unitless)
    XA_CLS_E : constant := 1;
    -- inclination (deg)
    XA_CLS_INCLI : constant := 2;
    -- mean anomaly (deg)
    XA_CLS_MA : constant := 3;
    -- right ascension of the asending node (deg)
    XA_CLS_NODE : constant := 4;
    -- argument of perigee (deg)
    XA_CLS_OMEGA : constant := 5;
    XA_CLS_SIZE : constant := 6;
    
    -- Index of equinoctial elements
    -- Af (unitless)
    XA_EQNX_AF : constant := 0;
    -- Ag (unitless)
    XA_EQNX_AG : constant := 1;
    -- chi (unitless)
    XA_EQNX_CHI : constant := 2;
    -- psi (unitless)
    XA_EQNX_PSI : constant := 3;
    -- L mean longitude (deg)
    XA_EQNX_L : constant := 4;
    -- N mean motion (revs/day)
    XA_EQNX_N : constant := 5;
    XA_EQNX_SIZE : constant := 6;
    
    -- Indexes of AstroConvFrTo
    -- SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot)
    XF_CONV_SGP42SGP : constant := 101;
    
    
    -- Indexes for topocentric components
    -- Right ascension (deg)
    XA_TOPO_RA : constant := 0;
    -- Declination (deg)
    XA_TOPO_DEC : constant := 1;
    -- Azimuth (deg)
    XA_TOPO_AZ : constant := 2;
    -- Elevation (deg)
    XA_TOPO_EL : constant := 3;
    -- Range (km)
    XA_TOPO_RANGE : constant := 4;
    -- Right ascension dot (deg/s)
    XA_TOPO_RADOT : constant := 5;
    -- Declincation dot (deg/s)
    XA_TOPO_DECDOT : constant := 6;
    -- Azimuth dot (deg/s)
    XA_TOPO_AZDOT : constant := 7;
    -- Elevation dot (deg/s)
    XA_TOPO_ELDOT : constant := 8;
    -- Range dot (km/s)
    XA_TOPO_RANGEDOT : constant := 9;
    XA_TOPO_SIZE : constant := 10;
    
    
    -- Indexes for RAE components
    -- Range (km)
    XA_RAE_RANGE : constant := 0;
    -- Azimuth (deg)
    XA_RAE_AZ : constant := 1;
    -- Elevation (deg)
    XA_RAE_EL : constant := 2;
    -- Range dot (km/s)
    XA_RAE_RANGEDOT : constant := 3;
    -- Azimuth dot (deg/s)
    XA_RAE_AZDOT : constant := 4;
    -- Elevation dot (deg/s)
    XA_RAE_ELDOT : constant := 5;
    XA_RAE_SIZE : constant := 6;
    
    
    -- Year of Equinox indicator
    -- Date of observation
    YROFEQNX_OBTIME : constant := 0;
    -- 0 Jan of Date
    YROFEQNX_CURR : constant := 1;
    -- J2000
    YROFEQNX_2000 : constant := 2;
    -- B1950
    YROFEQNX_1950 : constant := 3;
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes AstroFunc DLL for use in the program.
    -- If this function returns an error, it is recommended that you stop the program immediately.
    -- 
    -- An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
    function AstroFuncInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AstroFuncInit";

    -- Retrieves information about the current version of AstroFunc.dll. The information is placed in the string parameter you pass in.
    -- The returned string provides information about the version number, build date, and platform.
    procedure AstroFuncGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "AstroFuncGetInfo";
        --infoStr            : String    (1..128);

    -- Converts a set of Keplerian elements to a set of equinoctial elements. 
    procedure KepToEqnx
        (xa_kep            : in      Double1D;
        xa_eqnx            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "KepToEqnx";
        --xa_kep             : Double1D  (1..6);
        --xa_eqnx            : Double1D  (1..6);

    -- Converts a set of osculating Keplerian elements to osculating position and velocity vectors.
    procedure KepToPosVel
        (xa_kep            : in      Double1D;
        pos                : out     Double1D;
        vel                : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "KepToPosVel";
        --xa_kep             : Double1D  (1..6);
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Converts a set of Keplerian elements to Ubar, Vbar, and Wbar vectors.
    procedure KepToUVW
        (xa_kep            : in      Double1D;
        uBar               : out     Double1D;
        vBar               : out     Double1D;
        wBar               : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "KepToUVW";
        --xa_kep             : Double1D  (1..6);
        --uBar               : Double1D  (1..3);
        --vBar               : Double1D  (1..3);
        --wBar               : Double1D  (1..3);

    -- Converts a set of classical elements to a set of equinoctial elements. 
    procedure ClassToEqnx
        (xa_cls            : in      Double1D;
        xa_eqnx            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "ClassToEqnx";
        --xa_cls             : Double1D  (1..6);
        --xa_eqnx            : Double1D  (1..6);

    -- Converts a set of equinoctial elements to a set of classical elements.
    procedure EqnxToClass
        (xa_eqnx           : in      Double1D;
        xa_cls             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "EqnxToClass";
        --xa_eqnx            : Double1D  (1..6);
        --xa_cls             : Double1D  (1..6);

    -- Converts a set of equinoctial elements to a set of Keplerian elements. 
    procedure EqnxToKep
        (xa_eqnx           : in      Double1D;
        xa_kep             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "EqnxToKep";
        --xa_eqnx            : Double1D  (1..6);
        --xa_kep             : Double1D  (1..6);

    -- Converts a set of equinoctial elements to position and velocity vectors.
    procedure EqnxToPosVel
        (xa_eqnx           : in      Double1D;
        pos                : out     Double1D;
        vel                : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "EqnxToPosVel";
        --xa_eqnx            : Double1D  (1..6);
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Converts position and velocity vectors to a set of equinoctial elements.
    procedure PosVelToEqnx
        (pos               : in      Double1D;
        vel                : in      Double1D;
        xa_eqnx            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "PosVelToEqnx";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --xa_eqnx            : Double1D  (1..6);

    -- Converts position and velocity vectors to a set of equinoctial elements with the given mu value. 
    -- This function is used when working with the SP propagator to get a more accurate set of equinoctial elements.
    procedure PosVelMuToEqnx
        (pos               : in      Double1D;
        vel                : in      Double1D;
        mu                 :         Long_Float;
        xa_eqnx            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "PosVelMuToEqnx";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --xa_eqnx            : Double1D  (1..6);

    -- Converts osculating position and velocity vectors to a set of osculating Keplerian elements.
    procedure PosVelToKep
        (pos               : in      Double1D;
        vel                : in      Double1D;
        xa_kep             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "PosVelToKep";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --xa_kep             : Double1D  (1..6);

    -- Converts osculating position and velocity vectors to a set of osculating Keplerian elements with the given value of mu.
    -- This function is used when working with the SP propagator to get a more accurate set of Keplerian elements.
    procedure PosVelMuToKep
        (pos               : in      Double1D;
        vel                : in      Double1D;
        mu                 :         Long_Float;
        xa_kep             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "PosVelMuToKep";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --xa_kep             : Double1D  (1..6);

    -- Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
    -- The resulting vectors have the following meanings.
    -- U vector: along radial direction
    -- V vector: W x U
    -- W vector: pos x vel
    procedure PosVelToUUVW
        (pos               : in      Double1D;
        vel                : in      Double1D;
        uvec               : out     Double1D;
        vVec               : out     Double1D;
        wVec               : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "PosVelToUUVW";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --uvec               : Double1D  (1..3);
        --vVec               : Double1D  (1..3);
        --wVec               : Double1D  (1..3);

    -- Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
    -- The resulting vectors have the following meanings.
    -- U vector: V x W
    -- V vector: along velocity direction
    -- W vector: pos x vel
    procedure PosVelToPTW
        (pos               : in      Double1D;
        vel                : in      Double1D;
        uvec               : out     Double1D;
        vVec               : out     Double1D;
        wVec               : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "PosVelToPTW";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --uvec               : Double1D  (1..3);
        --vVec               : Double1D  (1..3);
        --wVec               : Double1D  (1..3);

    -- Solves Kepler's equation (M = E - e sin(E)) for the eccentric anomaly, E, by iteration.
    function SolveKepEqtn
        (xa_kep            : in      Double1D) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "SolveKepEqtn";
        --xa_kep             : Double1D  (1..6);

    -- Computes true anomaly from a set of Keplerian elements.
    function CompTrueAnomaly
        (xa_kep            : in      Double1D) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "CompTrueAnomaly";
        --xa_kep             : Double1D  (1..6);

    -- Converts mean motion N to semi-major axis A.
    function NToA
        (n                 :         Long_Float) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "NToA";

    -- Converts semi-major axis A to mean motion N.
    function AToN
        (a                 :         Long_Float) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "AToN";

    -- Converts Kozai mean motion to Brouwer mean motion.
    -- SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
    function KozaiToBrouwer
        (eccen             :         Long_Float;
        incli              :         Long_Float;
        nKozai             :         Long_Float) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "KozaiToBrouwer";

    -- Converts Brouwer mean motion to Kozai mean motion.
    -- SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
    function BrouwerToKozai
        (eccen             :         Long_Float;
        incli              :         Long_Float;
        nBrouwer           :         Long_Float) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "BrouwerToKozai";

    -- Converts a set of osculating Keplerian elements to a set of mean Keplerian elements using method 9 algorithm.
    procedure KepOscToMean
        (xa_OscKep         : in      Double1D;
        xa_MeanKep         : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "KepOscToMean";
        --xa_OscKep          : Double1D  (1..6);
        --xa_MeanKep         : Double1D  (1..6);

    -- Converts an ECI position vector XYZ to geodetic latitude, longitude, and height.
    procedure XYZToLLH
        (thetaG            :         Long_Float;
        metricPos          : in      Double1D;
        metricLLH          : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "XYZToLLH";
        --metricPos          : Double1D  (1..3);
        --metricLLH          : Double1D  (1..3);

    -- Converts an ECI position vector XYZ to geodetic latitude, longitude, and height at the specified time.
    procedure XYZToLLHTime
        (ds50UTC           :         Long_Float;
        metricPos          : in      Double1D;
        metricLLH          : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "XYZToLLHTime";
        --metricPos          : Double1D  (1..3);
        --metricLLH          : Double1D  (1..3);

    -- Converts geodetic latitude, longitude, and height to an ECI position vector XYZ.
    procedure LLHToXYZ
        (thetaG            :         Long_Float;
        metricLLH          : in      Double1D;
        metricXYZ          : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "LLHToXYZ";
        --metricLLH          : Double1D  (1..3);
        --metricXYZ          : Double1D  (1..3);

    -- Converts geodetic latitude, longitude, and height to an ECI position vector XYZ at the specified time.
    procedure LLHToXYZTime
        (ds50UTC           :         Long_Float;
        metricLLH          : in      Double1D;
        metricXYZ          : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "LLHToXYZTime";
        --metricLLH          : Double1D  (1..3);
        --metricXYZ          : Double1D  (1..3);

    -- Converts EFG position and velocity vectors to ECI position and velocity vectors.
    procedure EFGToECI
        (thetaG            :         Long_Float;
        posEFG             : in      Double1D;
        velEFG             : in      Double1D;
        posECI             : out     Double1D;
        velECI             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "EFGToECI";
        --posEFG             : Double1D  (1..3);
        --velEFG             : Double1D  (1..3);
        --posECI             : Double1D  (1..3);
        --velECI             : Double1D  (1..3);

    -- Converts EFG position and velocity vectors to ECI position and velocity vectors at the specified time.
    procedure EFGToECITime
        (ds50UTC           :         Long_Float;
        posEFG             : in      Double1D;
        velEFG             : in      Double1D;
        posECI             : out     Double1D;
        velECI             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "EFGToECITime";
        --posEFG             : Double1D  (1..3);
        --velEFG             : Double1D  (1..3);
        --posECI             : Double1D  (1..3);
        --velECI             : Double1D  (1..3);

    -- Converts ECI position and velocity vectors to EFG position and velocity vectors.
    procedure ECIToEFG
        (thetaG            :         Long_Float;
        posECI             : in      Double1D;
        velECI             : in      Double1D;
        posEFG             : out     Double1D;
        velEFG             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "ECIToEFG";
        --posECI             : Double1D  (1..3);
        --velECI             : Double1D  (1..3);
        --posEFG             : Double1D  (1..3);
        --velEFG             : Double1D  (1..3);

    -- Converts ECI position and velocity vectors to EFG position and velocity vectors at the specified time.
    procedure ECIToEFGTime
        (ds50UTC           :         Long_Float;
        posECI             : in      Double1D;
        velECI             : in      Double1D;
        posEFG             : out     Double1D;
        velEFG             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "ECIToEFGTime";
        --posECI             : Double1D  (1..3);
        --velECI             : Double1D  (1..3);
        --posEFG             : Double1D  (1..3);
        --velEFG             : Double1D  (1..3);

    -- Converts ECR position and velocity vectors to EFG position and velocity vectors.
    procedure ECRToEFG
        (polarX            :         Long_Float;
        polarY             :         Long_Float;
        posECR             : in      Double1D;
        velECR             : in      Double1D;
        posEFG             : out     Double1D;
        velEFG             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "ECRToEFG";
        --posECR             : Double1D  (1..3);
        --velECR             : Double1D  (1..3);
        --posEFG             : Double1D  (1..3);
        --velEFG             : Double1D  (1..3);

    -- Converts ECR position and velocity vectors to EFG position and velocity vectors at the specified time.
    procedure ECRToEFGTime
        (ds50UTC           :         Long_Float;
        posECR             : in      Double1D;
        velECR             : in      Double1D;
        posEFG             : out     Double1D;
        velEFG             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "ECRToEFGTime";
        --posECR             : Double1D  (1..3);
        --velECR             : Double1D  (1..3);
        --posEFG             : Double1D  (1..3);
        --velEFG             : Double1D  (1..3);

    -- Converts EFG position and velocity vectors to ECR position and velocity vectors.
    procedure EFGToECR
        (polarX            :         Long_Float;
        polarY             :         Long_Float;
        posEFG             : in      Double1D;
        velEFG             : in      Double1D;
        posECR             : out     Double1D;
        velECR             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "EFGToECR";
        --posEFG             : Double1D  (1..3);
        --velEFG             : Double1D  (1..3);
        --posECR             : Double1D  (1..3);
        --velECR             : Double1D  (1..3);

    -- Converts EFG position and velocity vectors to ECR position and velocity vectors at the specified time.
    procedure EFGToECRTime
        (ds50UTC           :         Long_Float;
        posEFG             : in      Double1D;
        velEFG             : in      Double1D;
        posECR             : out     Double1D;
        velECR             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "EFGToECRTime";
        --posEFG             : Double1D  (1..3);
        --velEFG             : Double1D  (1..3);
        --posECR             : Double1D  (1..3);
        --velECR             : Double1D  (1..3);

    -- Converts an EFG position vector to geodetic latitude, longitude, and height.
    procedure EFGPosToLLH
        (posEFG            : in      Double1D;
        metricLLH          : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "EFGPosToLLH";
        --posEFG             : Double1D  (1..3);
        --metricLLH          : Double1D  (1..3);

    -- Converts geodetic latitude, longitude, and height to an EFG position vector.
    procedure LLHToEFGPos
        (metricLLH         : in      Double1D;
        posEFG             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "LLHToEFGPos";
        --metricLLH          : Double1D  (1..3);
        --posEFG             : Double1D  (1..3);

    -- Rotates position and velocity vectors from J2000 to coordinates of the specified date, expressed in ds50TAI.
    procedure RotJ2KToDate
        (spectr            :         Integer;
        nutationTerms      :         Integer;
        ds50TAI            :         Long_Float;
        posJ2K             : in      Double1D;
        velJ2K             : in      Double1D;
        posDate            : out     Double1D;
        velDate            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "RotJ2KToDate";
        --posJ2K             : Double1D  (1..3);
        --velJ2K             : Double1D  (1..3);
        --posDate            : Double1D  (1..3);
        --velDate            : Double1D  (1..3);

    -- Rotates position and velocity vectors from coordinates of date to J2000.
    procedure RotDateToJ2K
        (spectr            :         Integer;
        nutationTerms      :         Integer;
        ds50TAI            :         Long_Float;
        posDate            : in      Double1D;
        velDate            : in      Double1D;
        posJ2K             : out     Double1D;
        velJ2K             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "RotDateToJ2K";
        --posDate            : Double1D  (1..3);
        --velDate            : Double1D  (1..3);
        --posJ2K             : Double1D  (1..3);
        --velJ2K             : Double1D  (1..3);

    -- Computes the Sun and Moon position at the specified time.
    procedure CompSunMoonPos
        (ds50ET            :         Long_Float;
        uvecSun            : out     Double1D;
        sunVecMag          : out     Long_Float;
        uvecMoon           : out     Double1D;
        moonVecMag         : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "CompSunMoonPos";
        --uvecSun            : Double1D  (1..3);
        --uvecMoon           : Double1D  (1..3);

    -- Computes the Sun position at the specified time.
    procedure CompSunPos
        (ds50ET            :         Long_Float;
        uvecSun            : out     Double1D;
        sunVecMag          : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "CompSunPos";
        --uvecSun            : Double1D  (1..3);

    -- Computes the Moon position at the specified time.
    procedure CompMoonPos
        (ds50ET            :         Long_Float;
        uvecMoon           : out     Double1D;
        moonVecMag         : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "CompMoonPos";
        --uvecMoon           : Double1D  (1..3);

    -- This function is intended for future use.  No information is currently available.
    -- This function is intended for future use.  No information is currently available.
    procedure AstroConvFrTo
        (xf_Conv           :         Integer;
        frArr              : in      Double1D;
        toArr              : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "AstroConvFrTo";
        --frArr              : Double1D  (1..128);
        --toArr              : Double1D  (1..128);

    -- Converts right ascension and declination to vector triad LAD in topocentric equatorial coordinate system.
    procedure RADecToLAD
        (ra                :         Long_Float;
        dec                :         Long_Float;
        l                  : out     Double1D;
        a_tilde            : out     Double1D;
        d_tilde            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "RADecToLAD";
        --l                  : Double1D  (1..3);
        --a_tilde            : Double1D  (1..3);
        --d_tilde            : Double1D  (1..3);

    -- Converts azimuth and elevation to vector triad LAD in topocentric horizontal coordinate system.
    procedure AzElToLAD
        (az                :         Long_Float;
        el                 :         Long_Float;
        lh                 : out     Double1D;
        ah                 : out     Double1D;
        dh                 : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "AzElToLAD";
        --lh                 : Double1D  (1..3);
        --ah                 : Double1D  (1..3);
        --dh                 : Double1D  (1..3);

    -- Converts satellite ECI position/velocity vectors and sensor location to topocentric components.
    -- The xa_topo array has the following structure:
    -- [0]: Resulting right ascension (RA) (deg)
    -- [1]: Declination (deg)
    -- [2]: Azimuth (deg)
    -- [3]: Elevation (deg)
    -- [4]: Range (km)
    -- [5]: RAdot (first derivative of right ascension) (deg/s)
    -- [6]: DecDot (first derivative of declination) (deg/s)
    -- [7]: AzDot (first derivative of azimuth) (deg/s)
    -- [8]: ElDot (first derivative of elevation) (deg/s)
    -- [9]: RangeDot (first derivative of range) (km/s)   
    procedure ECIToTopoComps
        (theta             :         Long_Float;
        lat                :         Long_Float;
        senPos             : in      Double1D;
        satPos             : in      Double1D;
        satVel             : in      Double1D;
        xa_topo            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "ECIToTopoComps";
        --senPos             : Double1D  (1..3);
        --satPos             : Double1D  (1..3);
        --satVel             : Double1D  (1..3);
        --xa_topo            : Double1D  (1..10);

    -- Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
    procedure RaDecToAzEl
        (thetaG            :         Long_Float;
        lat                :         Long_Float;
        lon                :         Long_Float;
        ra                 :         Long_Float;
        dec                :         Long_Float;
        az                 : out     Long_Float;
        el                 : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "RaDecToAzEl";

    -- Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
    procedure RaDecToAzElTime
        (ds50UTC           :         Long_Float;
        lat                :         Long_Float;
        lon                :         Long_Float;
        ra                 :         Long_Float;
        dec                :         Long_Float;
        az                 : out     Long_Float;
        el                 : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "RaDecToAzElTime";

    -- Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
    procedure AzElToRaDec
        (thetaG            :         Long_Float;
        lat                :         Long_Float;
        lon                :         Long_Float;
        az                 :         Long_Float;
        el                 :         Long_Float;
        ra                 : out     Long_Float;
        dec                : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "AzElToRaDec";

    -- Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
    procedure AzElToRaDecTime
        (ds50UTC           :         Long_Float;
        lat                :         Long_Float;
        lon                :         Long_Float;
        az                 :         Long_Float;
        el                 :         Long_Float;
        ra                 : out     Long_Float;
        dec                : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "AzElToRaDecTime";

    -- Converts full state RAE (range, az, el, and their rates) to full state ECI (position and velocity)
    -- The xa_rae array has the following structure:
    -- [0]: Range (km)
    -- [1]: Azimuth (deg)
    -- [2]: Elevation (deg)
    -- [3]: Range Dot (km/s)
    -- [4]: Azimuth Dot (deg/s)
    -- [5]: Elevation Dot (deg/s)
    procedure RAEToECI
        (theta             :         Long_Float;
        astroLat           :         Long_Float;
        xa_rae             : in      Double1D;
        senPos             : in      Double1D;
        satPos             : out     Double1D;
        satVel             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "RAEToECI";
        --xa_rae             : Double1D  (1..6);
        --senPos             : Double1D  (1..3);
        --satPos             : Double1D  (1..3);
        --satVel             : Double1D  (1..3);

    -- Computes initial values for the SGP drag term nDot and the SGP4 drag term BSTAR based upon eccentricity and semi-major axis.
    procedure GetInitialDrag
        (semiMajorAxis     :         Long_Float;
        eccen              :         Long_Float;
        nDot               : out     Long_Float;
        bstar              : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "GetInitialDrag";

    -- Converts covariance matrix PTW to UVW.
    -- PTW = P: TxW, T: along velocity direction, W: pos x vel.
    -- UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
    procedure CovMtxPTWToUVW
        (pos               : in      Double1D;
        vel                : in      Double1D;
        ptwCovMtx          : in      Double2D;
        uvwCovMtx          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxPTWToUVW";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --ptwCovMtx          : Double2D  (1..6,1..6);
        --uvwCovMtx          : Double2D  (1..6,1..6);

    -- Converts covariance matrix UVW to PTW.
    -- PTW = P: TxW, T: along velocity direction, W: pos x vel.
    -- UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
    procedure CovMtxUVWToPTW
        (pos               : in      Double1D;
        vel                : in      Double1D;
        uvwCovMtx          : in      Double2D;
        ptwCovMtx          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxUVWToPTW";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --uvwCovMtx          : Double2D  (1..6,1..6);
        --ptwCovMtx          : Double2D  (1..6,1..6);

    -- Computes Earth/Sensor/Earth Limb and Earth/Sensor/Satellite angles.
    procedure EarthObstructionAngles
        (earthLimb         :         Long_Float;
        satECI             : in      Double1D;
        senECI             : in      Double1D;
        earthSenLimb       : out     Long_Float;
        earthSenSat        : out     Long_Float;
        satEarthSen        : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "EarthObstructionAngles";
        --satECI             : Double1D  (1..3);
        --senECI             : Double1D  (1..3);

    -- Determines if a point in space is sunlit at the input time ds50ET
    function IsPointSunlit
        (ds50ET            :         Long_Float;
        ptEci              : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "IsPointSunlit";
        --ptEci              : Double1D  (1..3);

    -- Rotates Right Ascension and Declination to specified epoch
    procedure RotRADecl
        (nutationTerms     :         Integer;
        dir                :         Integer;
        ds50UTCIn          :         Long_Float;
        raIn               :         Long_Float;
        declIn             :         Long_Float;
        ds50UTCOut         :         Long_Float;
        raOut              : out     Long_Float;
        declOut            : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "RotRADecl";

    -- Rotates Right Ascension and Declination from TEME of Date to MEME of the specified year of equinox
    function RotRADec_DateToEqnx
        (nutationTerms     :         Integer;
        yrOfEqnx           :         Integer;
        ds50UTCIn          :         Long_Float;
        raIn               :         Long_Float;
        declIn             :         Long_Float;
        raOut              : out     Long_Float;
        declOut            : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotRADec_DateToEqnx";

    -- Rotates Right Ascension and Declination from MEME of the specified year of equinox to TEME of Date
    function RotRADec_EqnxToDate
        (nutationTerms     :         Integer;
        yrOfEqnx           :         Integer;
        ds50UTCIn          :         Long_Float;
        raIn               :         Long_Float;
        declIn             :         Long_Float;
        raOut              : out     Long_Float;
        declOut            : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotRADec_EqnxToDate";

    -- Rotates the Equinoctial covariance to UVW
    -- Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
    -- The n terms must be normalized by n
    -- The input position, velocity and covariance must all have the same reference equator and equinox.
    procedure CovMtxEqnxToUVW
        (pos               : in      Double1D;
        vel                : in      Double1D;
        covMtxEqnx         : in      Double2D;
        covMtxUVW          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxEqnxToUVW";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covMtxEqnx         : Double2D  (1..6,1..6);
        --covMtxUVW          : Double2D  (1..6,1..6);

    -- Rotates the UVW covariance to Equinoctial
    -- Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
    -- The n terms are normalized by n
    -- The input position, velocity reference equator and equinox determine the output covariance reference frame.
    procedure CovMtxUVWToEqnx
        (pos               : in      Double1D;
        vel                : in      Double1D;
        covMtxUVW          : in      Double2D;
        covMtxEqnx         : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxUVWToEqnx";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covMtxUVW          : Double2D  (1..6,1..6);
        --covMtxEqnx         : Double2D  (1..6,1..6);

    -- Rotates the ECI covariance to UVW
    -- Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
    procedure CovMtxECIToUVW
        (pos               : in      Double1D;
        vel                : in      Double1D;
        covMtxECI          : in      Double2D;
        covMtxUVW          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxECIToUVW";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covMtxECI          : Double2D  (1..6,1..6);
        --covMtxUVW          : Double2D  (1..6,1..6);

    -- Rotates the UVW covariance to ECI
    -- Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
    procedure CovMtxUVWToECI
        (pos               : in      Double1D;
        vel                : in      Double1D;
        covMtxUVW          : in      Double2D;
        covMtxECI          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxUVWToECI";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covMtxUVW          : Double2D  (1..6,1..6);
        --covMtxECI          : Double2D  (1..6,1..6);

    -- Converts covariance matrix ECI to EFG.
    -- EFG = Earth Fixed Greenwich
    -- ECI = Earth Centered Inertial - need to determine TEME or J2K
    procedure CovMtxECIToEFG
        (thetaG            :         Long_Float;
        covECI             : in      Double2D;
        covEFG             : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxECIToEFG";
        --covECI             : Double2D  (1..6,1..6);
        --covEFG             : Double2D  (1..6,1..6);

    -- Converts covariance matrix EFG to ECI.
    -- EFG = Earth Fixed Greenwich
    -- ECI = Earth Centered Inertial - need to determine TEME or J2K
    procedure CovMtxEFGToECI
        (thetaG            :         Long_Float;
        covEFG             : in      Double2D;
        covECI             : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxEFGToECI";
        --covEFG             : Double2D  (1..6,1..6);
        --covECI             : Double2D  (1..6,1..6);

    -- Converts 6x6 symmetric Matrix/2D array to 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix)
    procedure Mtx6x6ToLTA21
        (symMtx6x6         : in      Double2D;
        lta21              : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "Mtx6x6ToLTA21";
        --symMtx6x6          : Double2D  (1..6,1..6);
        --lta21              : Double1D  (1..21);

    -- Converts 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix) to a 6x6 symmetric matrix
    procedure LTA21ToMtx6x6
        (lta21             : in      Double1D;
        symMtx6x6          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "LTA21ToMtx6x6";
        --lta21              : Double1D  (1..21);
        --symMtx6x6          : Double2D  (1..6,1..6);

    -- Converts 9x9 symmetric Matrix/2D array to 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix)
    procedure Mtx9x9ToLTA45
        (symMtx9x9         : in      Double2D;
        lta45              : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "Mtx9x9ToLTA45";
        --symMtx9x9          : Double2D  (1..9,1..9);
        --lta45              : Double1D  (1..45);

    -- Converts 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix) to a 9x9 symmetric matrix
    procedure LTA45ToMtx9x9
        (lta45             : in      Double1D;
        symMtx9x9          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "LTA45ToMtx9x9";
        --lta45              : Double1D  (1..45);
        --symMtx9x9          : Double2D  (1..9,1..9);

    -- Propagate xyzDate covariance forward to the propagation time
    procedure PropCovFrState
        (rms               :         Long_Float;
        consider           :         Long_Float;
        stateArray         : in      Double1D;
        cov                : in      Double2D;
        propCov            : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "PropCovFrState";
        --stateArray         : Double1D  (1..54);
        --cov                : Double2D  (1..9,1..9);
        --propCov            : Double2D  (1..6,1..6);

    -- Rotates the ECI covariance to UVW
    -- Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
    procedure CovMtxECIToEqnx
        (pos               : in      Double1D;
        vel                : in      Double1D;
        covMtxECI          : in      Double2D;
        covMtxEqnx         : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxECIToEqnx";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covMtxECI          : Double2D  (1..9,1..9);
        --covMtxEqnx         : Double2D  (1..9,1..9);

    -- Rotates the UVW covariance to ECI
    -- Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
    procedure CovMtxEqnxToECI9x9
        (pos               : in      Double1D;
        vel                : in      Double1D;
        covEqnx            : in      Double2D;
        covMtxECI          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxEqnxToECI9x9";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covEqnx            : Double2D  (1..9,1..9);
        --covMtxECI          : Double2D  (1..9,1..9);

    -- Rotates the UVW covariance to ECI
    -- Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
    procedure CovMtxEqnxToUVW9x9
        (pos               : in      Double1D;
        vel                : in      Double1D;
        covEqnx            : in      Double2D;
        covMtxUVW          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxEqnxToUVW9x9";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covEqnx            : Double2D  (1..9,1..9);
        --covMtxUVW          : Double2D  (1..9,1..9);

    -- Update (propagate) covariance to a future time with a supplied covariance, state transition matrix
    -- consider parameter and RMS. Consider parameter is applied to the drag term only.
    -- Full covariance matrix is multiplied by RMS squared.  State transition matrix can be obtained from 
    -- SpProp.SpGetStateMtx or supplying your own. State matrix, input and output covariance must be in 
    -- matching coordinate systems.
    procedure CovMtxUpdate
        (rmsIn             :         Long_Float;
        consider           :         Long_Float;
        cov                : in      Double2D;
        stateArray         : in      Double1D;
        propCov            : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "CovMtxUpdate";
        --cov                : Double2D  (1..9,1..9);
        --stateArray         : Double1D  (1..54);
        --propCov            : Double2D  (1..6,1..6);

    -- Annual Aberration calculated using equations from Astronomical Algorithms, Jean Meeus, 2nd Edition with Corrections as of June 15, 2005
    procedure AberrationAnnual
        (ra                :         Long_Float;
        decl               :         Long_Float;
        dS50UTC            :         Long_Float;
        raDelta            : out     Long_Float;
        decDelta           : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "AberrationAnnual";

    -- Diurnal Aberration is due to the rotation of the Earth about it's axis. This is only valid for ground based sensors.
    -- Diurnal Aberration calculated using equations from Explanatory Supplement to the Astronomical Almanac 3rd Edition, 2013
    procedure AberrationDiurnal
        (ra                :         Long_Float;
        decl               :         Long_Float;
        dS50UTC            :         Long_Float;
        senPos             : in      Double1D;
        raDelta            : out     Long_Float;
        decDelta           : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "AberrationDiurnal";
        --senPos             : Double1D  (1..3);

    -- Sets JPL parameters
    -- Notes: Set JPL parameters will be used by SP, SPG4-XP, and anything that requires access to JPL data
    procedure JplSetParameters
        (jplFile           : in      String;
        ds50Start          :         Long_Float;
        ds50Stop           :         Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "JplSetParameters";
        --jplFile            : String    (1..512);

    -- Gets JPL parameters
    procedure JplGetParameters
        (jplFile           : out     String;
        ds50Start          : out     Long_Float;
        ds50Stop           : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "JplGetParameters";
        --jplFile            : String    (1..512);

    -- Resets JPL parameters & removes JPL ephemeris data
    procedure JplReset
    with Import => True,
        Convention => C,
        External_Name => "JplReset";

    -- Computes various Sun and Moon vectors base on loaded JPL data at the specified time.
    -- Note: if JPL data isn't loaded or available, all output parameters are set to zero
    procedure JplCompSunMoonVec
        (ds50UTC           :         Long_Float;
        uvecSun            : out     Double1D;
        sunVecMag          : out     Long_Float;
        uvecMoon           : out     Double1D;
        moonVecMag         : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "JplCompSunMoonVec";
        --uvecSun            : Double1D  (1..3);
        --uvecMoon           : Double1D  (1..3);

    -- Computes Sun and Moon position vectors base on loaded JPL data at the specified time.
    -- Note: if JPL data isn't loaded or available, all output parameters are set to zero
    procedure JplCompSunMoonPos
        (ds50UTC           :         Long_Float;
        sunVec             : out     Double1D;
        moonVec            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "JplCompSunMoonPos";
        --sunVec             : Double1D  (1..3);
        --moonVec            : Double1D  (1..3);

    -- Removes the JPL ephemeris from memory
    procedure RemoveJpl
    with Import => True,
        Convention => C,
        External_Name => "RemoveJpl";

    -- Rotates position and velocity vectors from TEME of Epoch to TEME of Date
    procedure TemeEpochToDate
        (nutationTerms     :         Integer;
        epochDs50TAI       :         Long_Float;
        dateDs50TAI        :         Long_Float;
        posEpoch           : in      Double1D;
        velEpoch           : in      Double1D;
        posDate            : out     Double1D;
        velDate            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "TemeEpochToDate";
        --posEpoch           : Double1D  (1..3);
        --velEpoch           : Double1D  (1..3);
        --posDate            : Double1D  (1..3);
        --velDate            : Double1D  (1..3);


end AstroFuncDll;

-- ========================= End of auto generated code ==========================
