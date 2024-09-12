-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package ElOpsDll is
    
    -- Satellite maintenance category
    -- Synchronous
    SATCAT_SYNCHRONOUS : constant := 1;
    -- Deep space (not synchronous)
    SATCAT_DEEPSPACE : constant := 2;
    -- Decaying (perigee height below 575 km)
    SATCAT_DECAYING : constant := 3;
    -- Routine (everything else)
    SATCAT_ROUTINE : constant := 4;
    
    -- Indexes of available satellite data fields
    -- epoch in days since 1950, UTC
    XF_ELFIELD_EPOCHUTC : constant := 1;
    -- mean anomaly (deg)
    XF_ELFIELD_MNANOM : constant := 2;
    -- right ascension of the asending node (deg)
    XF_ELFIELD_NODE : constant := 3;
    -- argument of perigee (deg)
    XF_ELFIELD_OMEGA : constant := 4;
    -- period (min)
    XF_ELFIELD_PERIOD : constant := 5;
    -- eccentricity (unitless)
    XF_ELFIELD_ECCEN : constant := 6;
    -- inclination (deg)
    XF_ELFIELD_INCLI : constant := 7;
    -- mean motion (revs/day)
    XF_ELFIELD_MNMOTION : constant := 8;
    -- either SGP4 bStar (1/er) or SP bTerm (m2/kg)
    XF_ELFIELD_BFIELD : constant := 9;
    -- perigee height (km)
    XF_ELFIELD_PERIGEEHT : constant := 10;
    -- apogee height (km)
    XF_ELFIELD_APOGEEHT : constant := 11;
    -- perigee (km)
    XF_ELFIELD_PERIGEE : constant := 12;
    -- apogee (km)
    XF_ELFIELD_APOGEE : constant := 13;
    -- semi major axis (km)
    XF_ELFIELD_A : constant := 14;
    -- Satellite category (Synchronous, Deep space, Decaying, Routine)
    XF_ELFIELD_SATCAT : constant := 15;
    -- Astat 3 Height multiplier
    XF_ELFIELD_HTM3 : constant := 16;
    -- Center of mass offset (m)
    XF_ELFIELD_CMOFFSET : constant := 17;
    -- n-double-dot/6  (for SGP, eph-type = 0)
    XF_ELFIELD_N2DOT : constant := 18;
    
    
    -- Indexes of available satellite parameters
    -- satellite's epoch in days since 1950, UTC
    XA_SATPARM_EPOCHUTC : constant := 0;
    -- satellite's mean anomaly (deg)
    XA_SATPARM_MNANOM : constant := 1;
    -- satellite's right ascension of the asending node (deg)
    XA_SATPARM_NODE : constant := 2;
    -- satellite's argument of perigee (deg)
    XA_SATPARM_OMEGA : constant := 3;
    -- satellite's period (min)
    XA_SATPARM_PERIOD : constant := 4;
    -- satellite's eccentricity (unitless)
    XA_SATPARM_ECCEN : constant := 5;
    -- satellite's inclination (deg)
    XA_SATPARM_INCLI : constant := 6;
    -- satellite's mean motion (revs/day)
    XA_SATPARM_MNMOTION : constant := 7;
    -- satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg)
    XA_SATPARM_BFIELD : constant := 8;
    -- satellite's perigee height (km)
    XA_SATPARM_PERIGEEHT : constant := 9;
    -- satellite's apogee height (km)
    XA_SATPARM_APOGEEHT : constant := 10;
    -- satellite's perigee (km)
    XA_SATPARM_PERIGEE : constant := 11;
    -- satellite's apogee (km)
    XA_SATPARM_APOGEE : constant := 12;
    -- satellite's semi major axis (km)
    XA_SATPARM_A : constant := 13;
    -- satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine)
    XA_SATPARM_SATCAT : constant := 14;
    -- satellite's center of mass offset (m)
    XA_SATPARM_CMOFFSET : constant := 15;
    -- satellite's east longitude east subpoint (deg) - only for synchronous orbits
    XA_SATPARM_LONE : constant := 16;
    -- satellite's longitude drift rate (deg East/day) - only for synchronous orbits
    XA_SATPARM_DRIFT : constant := 17;
    -- satellite's omega rate of change (deg/day)
    XA_SATPARM_OMEGADOT : constant := 18;
    -- satellite's nodal precession rate (deg/day)
    XA_SATPARM_RADOT : constant := 19;
    -- satellite's nodal period (min)
    XA_SATPARM_NODALPRD : constant := 20;
    -- satellite's nodal crossing time prior to its epoch (ds50UTC)
    XA_SATPARM_NODALX : constant := 21;
    -- satellite is GEO: 0=no, 1=yes
    XA_SATPARM_ISGEO : constant := 22;
    -- satellite's relative energy - only for GOBS
    XA_SATPARM_RELENERGY : constant := 23;
    -- satellite's number
    XA_SATPARM_SATNUM : constant := 24;
    -- satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET)
    XA_SATPARM_ELTTYPE : constant := 25;
    -- obsolete - should use new name XA_SATPARM_ELTTYPE intead
    XA_SATPARM_OET : constant := 25;
    -- satellite's propagation type - see PROPTYPE_? for list of available values
    XA_SATPARM_PROPTYPE : constant := 26;
    -- satellite's element number
    XA_SATPARM_ELSETNUM : constant := 27;
    -- sin(incl)*sin(r.a. node)
    XA_SATPARM_WX : constant := 28;
    -- -sin(incl)*cos(r.a. node)
    XA_SATPARM_WY : constant := 29;
    -- cos(incl)
    XA_SATPARM_WZ : constant := 30;
    -- Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
    XA_SATPARM_TROUGH : constant := 31;
    
    XA_SATPARM_SIZE : constant := 32;
    
    -- Different input time options of VP card
    -- VP's input time is in days since 1950 UTC
    VP_TIME_DS50UTC : constant := 0;
    -- VP's input time is in minutes since epoch
    VP_TIME_MSE : constant := 1;
    
    -- VP record arrangement in array format
    -- VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
    XA_VP_TIMETYPE : constant := 0;
    -- VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
    XA_VP_TIMEVAL : constant := 1;
    -- impulse U-component of delta-velocity (km/sec)
    XA_VP_IMPULSE_U : constant := 2;
    -- impulse V-component of delta-velocity (km/sec)
    XA_VP_IMPULSE_V : constant := 3;
    -- impulse W-component of delta-velocity (km/sec)
    XA_VP_IMPULSE_W : constant := 4;
    -- apply above delta-v this number of times at the interval specified below
    XA_VP_REPETITIONS : constant := 5;
    -- time interval in minutes between repetitions specified above
    XA_VP_INTERVAL : constant := 6;
    
    XA_VP_SIZE : constant := 16;
    
    
    
    --*******************************************************************************
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes ElOps dll for use in the program
    function ElOpsInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ElOpsInit";

    -- Returns information about the current version of ElOps.dll. The information is placed in the string parameter you pass in
    procedure ElOpsGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ElOpsGetInfo";
        --infoStr            : String    (1..128);

    -- Checks to see if satellite has geo orbit
    function IsGeoOrbit
        (incli             :         Long_Float;
        period             :         Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "IsGeoOrbit";

    -- Estimates the approx long east subpt
    function CompLonEastSubPt
        (ds50UTC           :         Long_Float;
        node               :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "CompLonEastSubPt";

    -- Computes the decay time of the input satellite
    function FindSatDecayTime
        (satKey            :         Long_Long_Integer;
        f10Avg             :         Long_Float;
        decayDs50UTC       : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FindSatDecayTime";

    -- Returs parameters of a satellite via its satKey
    function GetSatParameters
        (satKey            :         Long_Long_Integer;
        xa_satparm         : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "GetSatParameters";
        --xa_satparm         : Double1D  (1..32);

    -- Returs the satellite number associated with the input satKey
    function SatNumOf
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatNumOf";

    -- Adds an impulsive maneuver (using VP-card string format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
    -- Note: All maneuvers have to be entered before the satellite's initialization step
    function AddManeuverVPStr
        (satKey            :         Long_Long_Integer;
        vpString           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AddManeuverVPStr";
        --vpString           : String    (1..512);

    -- Adds an impulsive maneuver (using VP-card array format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
    -- Note: All maneuvers have to be entered before the satellite's initialization step
    function AddManeuverVPArr
        (satKey            :         Long_Long_Integer;
        xa_vp              : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AddManeuverVPArr";
        --xa_vp              : Double1D  (1..16);


end ElOpsDll;

-- ========================= End of auto generated code ==========================
