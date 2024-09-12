-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package SatStateDll is
    
    -- Indexes of available satellite data fields
    -- Satellite epoch time in days since 1950 UTC
    XF_SATFIELD_EPOCHUTC : constant := 1;
    -- Mean anomaly (deg)
    XF_SATFIELD_MNANOM : constant := 2;
    -- Right ascension of asending node (deg)
    XF_SATFIELD_NODE : constant := 3;
    -- Argument of perigee (deg)
    XF_SATFIELD_OMEGA : constant := 4;
    -- Satellite's period (min)
    XF_SATFIELD_PERIOD : constant := 5;
    -- Eccentricity
    XF_SATFIELD_ECCEN : constant := 6;
    -- Orbit inclination (deg)
    XF_SATFIELD_INCLI : constant := 7;
    -- Mean motion (rev/day)
    XF_SATFIELD_MNMOTION : constant := 8;
    -- GP B* drag term (1/er)  or SP Radiation Pressure Coefficient
    XF_SATFIELD_BFIELD : constant := 9;
    -- Perigee height above the geoid (km)
    XF_SATFIELD_PERIGEEHT : constant := 10;
    -- Apogee height above the geoid (km)
    XF_SATFIELD_APOGEEHT : constant := 11;
    -- Perigee height above the center of the earth (km)
    XF_SATFIELD_PERIGEE : constant := 12;
    -- Apogee height above the center of the earth (km)
    XF_SATFIELD_APOGEE : constant := 13;
    -- Semimajor axis (km)
    XF_SATFIELD_A : constant := 14;
    -- Mean motion derivative (rev/day /2)
    XF_SATFIELD_NDOT : constant := 15;
    -- Satellite category (Synchronous, Deep space, Decaying, Routine)
    XF_SATFIELD_SATCAT : constant := 16;
    -- Astat 3 Height multiplier
    XF_SATFIELD_HTM3 : constant := 17;
    -- Center of mass offset (m)
    XF_SATFIELD_CMOFFSET : constant := 18;
    -- Unused
    XF_SATFIELD_N2DOT : constant := 19;
    -- GP node dot (deg/s)
    XF_SATFIELD_NODEDOT : constant := 20;
    -- GP only - the last time when propagation has error
    XF_SATFIELD_ERRORTIME : constant := 21;
    -- value of mu
    XF_SATFIELD_MU : constant := 22;
    
    
    --*******************************************************************************
    
    -- Indexes of available deltas
    -- delta position (km)
    XA_DELTA_POS : constant := 0;
    -- delta time (sec)
    XA_DELTA_TIME : constant := 1;
    -- delta position in radial direction (km)
    XA_DELTA_PRADIAL : constant := 2;
    -- delta position in in-track direction (km)
    XA_DELTA_PINTRCK : constant := 3;
    -- delta position in cross-track direction (km)
    XA_DELTA_PCRSSTRCK : constant := 4;
    -- delta velocity (km/sec)
    XA_DELTA_VEL : constant := 5;
    -- delta velocity in radial direction (km/sec)
    XA_DELTA_VRADIAL : constant := 6;
    -- delta velocity in in-track direction (km/sec)
    XA_DELTA_VINTRCK : constant := 7;
    -- delta velocity in cross-track direction (km/sec)
    XA_DELTA_VCRSSTRCK : constant := 8;
    -- delta Beta (deg)
    XA_DELTA_BETA : constant := 9;
    -- delta height (km)
    XA_DELTA_HEIGHT : constant := 10;
    -- delta angular momentum (deg)
    XA_DELTA_ANGMOM : constant := 11;
    -- 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on)
    XA_DELTA_MHLNBS_UVW : constant := 12;
    -- 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on)
    XA_DELTA_MHLNBS_HTB : constant := 13;
    
    XA_DELTA_SIZE : constant := 100;
    
    -- Indexes of Satellite data fields
    -- Satellite number I5
    XF_SAT_NUM : constant := 1;
    -- Satellite international designator A8
    XF_SAT_NAME : constant := 2;
    -- Element type I1 (old name XF_SAT_EPHTYPE)
    XF_SAT_ELTTYPE : constant := 3;
    -- Obsolete - should use new name XF_SAT_ELTTYPE instead
    XF_SAT_EPHTYPE : constant := 3;
    -- Epoch revolution number I6
    XF_SAT_REVNUM : constant := 4;
    -- Epoch time in days since 1950
    XF_SAT_EPOCH : constant := 5;
    -- BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg)
    XF_SAT_BFIELD : constant := 6;
    -- Element set number
    XF_SAT_ELSETNUM : constant := 7;
    -- Inclination (deg)
    XF_SAT_INCLI : constant := 8;
    -- Right ascension of ascending node (deg)
    XF_SAT_NODE : constant := 9;
    -- Eccentricity
    XF_SAT_ECCEN : constant := 10;
    -- Argument of perigee (deg)
    XF_SAT_OMEGA : constant := 11;
    -- Mean anomaly (deg)
    XF_SAT_MNANOM : constant := 12;
    -- Mean motion (revs/day)
    XF_SAT_MNMOTN : constant := 13;
    -- Satellite period (min)
    XF_SAT_PERIOD : constant := 14;
    -- Perigee Height(km)
    XF_SAT_PERIGEEHT : constant := 15;
    -- Apogee Height (km)
    XF_SAT_APOGEEHT : constant := 16;
    -- Perigee(km)
    XF_SAT_PERIGEE : constant := 17;
    -- Apogee (km)
    XF_SAT_APOGEE : constant := 18;
    -- Semi-major axis (km)
    XF_SAT_A : constant := 19;
    
    
    -- Indexes of SatState's load/save file task mode
    -- Only load/save propagator control parameters
    XF_TASK_CTRLONLY : constant := 1;
    -- Only load/save orbital elements/external ephemeris data
    XF_TASK_SATONLY : constant := 2;
    -- Load/Save both 1 and 2
    XF_TASK_BOTH : constant := 3;
    
    
    -- Different external ephemeris file types
    -- ITC file format
    EPHFILETYPE_ITC : constant := 1;
    -- ITC compact (without covariance matrix) file format
    EPHFILETYPE_ITC_WOCOV : constant := 2;
    
    
    -- Gobs records
    -- Satellite number
    XA_GOBS_SATNUM : constant := 0;
    -- East Longitude
    XA_GOBS_LONE : constant := 1;
    -- Longitude Drift Rate
    XA_GOBS_DRIFT : constant := 2;
    -- satellite's relative energy (deg^2/sec^2) - only for GOBS
    XA_GOBS_RELENERGY : constant := 3;
    -- sin(incl)*sin(r.a. node)
    XA_GOBS_WX : constant := 4;
    -- -sin(incl)*cos(r.a. node)
    XA_GOBS_WY : constant := 5;
    -- cos(incl)
    XA_GOBS_WZ : constant := 6;
    -- af
    XA_GOBS_AF : constant := 7;
    -- ag
    XA_GOBS_AG : constant := 8;
    -- AGOM
    XA_GOBS_AGOM : constant := 9;
    -- Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
    XA_GOBS_TROUGH : constant := 10;
    
    XA_GOBS_SIZE : constant := 32;
    
    
    -- Indexes of GOBS limits
    -- 0 - ignore trough logic, 1 - implement trough logic
    XA_GOBS_LIM_TROUGH : constant := 0;
    -- Primary satellite is plane changer
    XA_GOBS_LIM_PCP : constant := 1;
    -- Secondary satellite is plane changer
    XA_GOBS_LIM_PCS : constant := 2;
    -- Primary satellite is plane changer
    XA_GOBS_LIM_ACTIVEP : constant := 3;
    -- Secondary satellite is plane changer
    XA_GOBS_LIM_ACTIVES : constant := 4;
    -- Min Longitude of sat
    XA_GOBS_LIM_LONGMIN : constant := 5;
    -- Max Longitude of sat
    XA_GOBS_LIM_LONGMAX : constant := 6;
    -- Min Agom of sat
    XA_GOBS_LIM_AGOMMIN : constant := 7;
    -- Max Agom of sat
    XA_GOBS_LIM_AGOMMAX : constant := 8;
    
    XA_GOBS_LIM_SIZE : constant := 16;
    
    
    -- Indexes of available deltas
    -- Primary satellite number
    XA_GOBS_DELTA_PRIMESAT : constant := 0;
    -- Secondary satellite number
    XA_GOBS_DELTA_SECONDARYSAT : constant := 1;
    -- GOBS correlation score
    XA_GOBS_DELTA_ASTAT : constant := 2;
    -- delta orbital plane
    XA_GOBS_DELTA_DOP : constant := 3;
    -- delta shape
    XA_GOBS_DELTA_DSHAPE : constant := 4;
    -- delta Relative Energy (deg^2/day^2)
    XA_GOBS_DELTA_DRELENERGY : constant := 5;
    -- Longitude of Primary
    XA_GOBS_DELTA_LONGP : constant := 6;
    -- Minimum Longitude of Secondary
    XA_GOBS_DELTA_LONGMIN : constant := 7;
    -- Maximum Longitude of Secondary
    XA_GOBS_DELTA_LONGMAX : constant := 8;
    -- 0 - opposite throughs or drift rates, 1 - trough or drift rates match
    XA_GOBS_DELTA_TROUGH : constant := 9;
    -- 0|1    Plane Match Flag
    XA_GOBS_DELTA_PLANE : constant := 10;
    -- 0|1    Shape Match Flag
    XA_GOBS_DELTA_SHAPE : constant := 11;
    -- 0|1    Energy Match Flag
    XA_GOBS_DELTA_ENERGY : constant := 12;
    -- 0|1|2  Longitude Match Flag (2 is fuzzy match)
    XA_GOBS_DELTA_LONG : constant := 13;
    -- 0|1    Agom Match Flag
    XA_GOBS_DELTA_AGOM : constant := 14;
    
    XA_GOBS_DELTA_SIZE : constant := 16;
    
    
    --*******************************************************************************
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes SatState DLL for use in the program
    -- If this function returns an error, it is recommended that the users stop the program immediately. 
    -- The error occurs if the users forget to load and initialize all the prerequisite DLLs, 
    -- as listed in the DLL Prerequisite section, before using this DLL.
    function SatStateInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateInit";

    -- Returns information about the current version of SatState DLL. 
    -- The information is placed in the string parameter passed in.
    -- The returned string provides information about the version number, build date, and the platform of the SatState DLL. 
    procedure SatStateGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "SatStateGetInfo";
        --infoStr            : String    (1..128);

    -- Loads any orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls from an input text file
    -- Internally, if taskMode = 1, this function calls SpProp.SpLoadFile(); 
    -- and if taskMode = 2, this function calls Tle.TleLoadFile(), SpVec.SpVecLoadFile(), Vcm.VcmLoadFile(), ExtEphem.ExtEphLoadFile(); 
    -- if taskMode = 3, both tasks (1 and 2) are executed.
    function SatStateLoadFile
        (inputFile         : in      String;
        xf_Task            :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateLoadFile";
        --inputFile          : String    (1..512);

    -- Saves currently loaded orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls to a file
    -- The purpose of this function is to save the current SatState-related settings, usually used in GUI applications, for future use.
    -- 
    -- Internally, if taskMode = 1, this function calls SpProp.SpSaveFile(); 
    -- and if taskMode = 2, this function calls Tle.TleSaveFile(), SpVec.SpVecSavedFile(), Vcm.VcmSaveFile(), ExtEphem.ExtEphSaveFile(); 
    -- if taskMode = 3, both tasks (1 and 2) are executed.
    function SatStateSaveFile
        (outFile           : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer;
        xf_Task            :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateSaveFile";
        --outFile            : String    (1..512);

    -- Removes a satellite from the appropriate elset DLL's set of loaded satellites. 
    -- The function will automatically choose the proper set of elsets from which to remove the satellite. 
    -- The choices are: Tle.dll, SpVec.dll, Vcm.dll, or ExtEphem.dll   
    -- If the users enter an invalid satKey (a satKey that does not exist in memory), the function will return a non-zero value indicating an error.
    function SatStateRemoveSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateRemoveSat";

    -- Removes a satellite from the appropriate sets of loaded satellites (elset dll and propagator dll). 
    -- The function will remove the satellite from the elset DLL's sets as in SatStateRemoveSat() and 
    -- from the appropriate propagator's set of initialized satellites if it exists there.
    function SatStateRemoveSatAll
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateRemoveSatAll";

    -- Removes all satellites from all of the loaded data sets. 
    -- It will remove all satellites from the following sets: Tle, SpVec, Vcm, ExtEphem, Sgp4Prop, and SpProp
    function SatStateRemoveAllSats return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateRemoveAllSats";

    -- Resets propagator settings back to their default values
    procedure SatStateReset
    with Import => True,
        Convention => C,
        External_Name => "SatStateReset";

    -- Returns the total number of satellites (TLE's, SPVEC's, VCM's, and EXTEPHEM's) currently loaded in memory
    -- See SatStateGetLoaded for example.
    -- This function is useful for dynamically allocating memory for the array that is passed to the function SatStateGetLoaded.
    function SatStateGetCount return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateGetCount";

    -- Retrieves all of the currently loaded satKeys. 
    -- These satKeys can be used to access the internal data for the satellites.
    -- It is recommended that SatStateGetCount() is used to count how many satellites are currently loaded in memory. 
    -- The user can then use this number to dynamically allocate the satKeys array and pass it to this function.
    -- 
    -- If the user prefers to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
    procedure SatStateGetLoaded
        (order             :         Integer;
        satKeys            : out     Long1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "SatStateGetLoaded";

    -- Returns the first satKey that contains the specified satellite number in all sets of loaded satellites. 
    -- These sets will be searched: Tle, SpVec, Vcm, and ExtEphem.
    -- This function is useful when a satellite is used in applications that require only one record for one 
    -- satellite and the applications refer to that satellite by its satellite number. 
    -- However, the Astrodynamic Standard Shared library is only working with satKeys, this function helps to return the associated satKey of that satellite.
    function SatStateNumToKey
        (satNum            :         Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateNumToKey";

    -- Retrieves the data which is common to all satellite types. 
    -- All common fields are retrieved with a single function call.
    -- The apogee height and perigee height are defined as the distance above an ellipsoid 
    -- created using the earth flattening factor from the selected geopotential model.
    -- Note:  When using SP elsets (TLE type 6, SPVEC, or VCM), calling SatStateGetSatDataAll 
    -- will implicitly call SpInit in order to extract the mu value from the GEO file the elset is tied to.  
    -- The elset must have a valid GEO directory available or an error will be returned.
    function SatStateGetSatDataAll
        (satKey            :         Long_Long_Integer;
        satNum             : out     Integer;
        satName            : out     String;
        eltType            : out     Integer;
        revNum             : out     Integer;
        epochDs50UTC       : out     Long_Float;
        bField             : out     Long_Float;
        elsetNum           : out     Integer;
        incli              : out     Long_Float;
        node               : out     Long_Float;
        eccen              : out     Long_Float;
        omega              : out     Long_Float;
        mnAnomaly          : out     Long_Float;
        mnMotion           : out     Long_Float;
        period             : out     Long_Float;
        perigeeHt          : out     Long_Float;
        apogeeHt           : out     Long_Float;
        perigee            : out     Long_Float;
        apogee             : out     Long_Float;
        a                  : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateGetSatDataAll";
        --satName            : String    (1..8);

    -- Retrieves an individual field of a satellite. 
    function SatStateGetSatDataField
        (satKey            :         Long_Long_Integer;
        xf_Sat             :         Integer;
        retVal             : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateGetSatDataField";
        --retVal             : String    (1..512);

    -- Initializes a TLE, SPVEC, or VCM in preparation for propagation, or an EXTEPHEM in preparation for interpolation
    function SatStateInitSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateInitSat";

    -- Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
    -- The satellite is propagated/interpolated to the specified time calculated in minutes since the satellite's epoch time
    function SatStateMse
        (satKey            :         Long_Long_Integer;
        mse                :         Long_Float;
        ds50UTC            : out     Long_Float;
        revNum             : out     Integer;
        pos                : out     Double1D;
        vel                : out     Double1D;
        llh                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateMse";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --llh                : Double1D  (1..3);

    -- Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
    -- The satellite is propagated/interpolated to the specified time calculated in days since 1950, UTC.
    function SatStateDs50UTC
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        mse                : out     Long_Float;
        revNum             : out     Integer;
        pos                : out     Double1D;
        vel                : out     Double1D;
        llh                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateDs50UTC";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --llh                : Double1D  (1..3);

    -- Returns additional propagated/interpolated results (reserved for future implementation)
    -- Reserved for future implementation
    -- Use this function immediately after the call to SatStateMse or SatStateDs50UTC. 
    function SatStateGetPropOut
        (satKey            :         Long_Long_Integer;
        index              :         Integer;
        destArr            : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateGetPropOut";
        --destArr            : Double1D  (1..128);

    -- Returns various ephemeris comparison results between two satellite states.
    -- 
    -- The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
    -- defined by the position vector (radial) and the angular momentum vector (cross-track).
    function SatStateEphCom
        (primSatKey        :         Long_Long_Integer;
        secSatKey          :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        uvwFlag            :         Integer;
        xa_Delta           : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateEphCom";
        --xa_Delta           : Double1D  (1..100);

    -- Returns various ephemeris comparison results between two satellite states (_OS one step) .
    -- 
    -- The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
    -- defined by the position vector (radial) and the angular momentum vector (cross-track).
    procedure SatStateEphCom_OS
        (priPosVel         : in      Double1D;
        secPosVel          : in      Double1D;
        ds50UTC            :         Long_Float;
        uvwFlag            :         Integer;
        xa_Delta           : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "SatStateEphCom_OS";
        --priPosVel          : Double1D  (1..6);
        --secPosVel          : Double1D  (1..6);
        --xa_Delta           : Double1D  (1..100);

    -- Determines if a satellite contains covariance matrix. 
    -- 0=no, 1=yes
    function SatStateHasCovMtx
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateHasCovMtx";

    -- Propagates/Interpolates UVW covariance matrix from VCM/External ephemeris to the time in days since 1950
    function SatStateGetCovUVW
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        covUVW             : out     Double2D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateGetCovUVW";
        --covUVW             : Double2D  (1..6,1..6);

    -- Generate external ephemeris file for the specified satellite (via its unique satKey) 
    -- Note: No need to initialize the satellite before this call. If it was intialized, it will be removed after this call
    function SatStateGenEphFile
        (satKey            :         Long_Long_Integer;
        startDs50UTC       :         Long_Float;
        stopDs50UTC        :         Long_Float;
        stepSizeSecs       :         Long_Float;
        ephFileName        : in      String;
        ephFileType        :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatStateGenEphFile";
        --ephFileName        : String    (1..512);

    -- Finds the time of ascending nodal crossing of the specified satellite prior to an input time in days since 1950 TAI
    function GetNodalCrossingPriorToTime
        (satKey            :         Long_Long_Integer;
        ds50TAI            :         Long_Float) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "GetNodalCrossingPriorToTime";

    -- Get the Gobs parameters for a TLE
    procedure GetGobsParams
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        xa_gobs            : out     Double1D;
        errCode            : out     Integer)
    with Import => True,
        Convention => C,
        External_Name => "GetGobsParams";
        --xa_gobs            : Double1D  (1..32);

    -- Does an XP GOBS comparison
    function GobsCom
        (primSatKey        :         Long_Long_Integer;
        secSatKey          :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        xa_gobs_lim        : in      Double1D;
        xa_gobs_delta      : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "GobsCom";
        --xa_gobs_lim        : Double1D  (1..16);
        --xa_gobs_delta      : Double1D  (1..16);

    -- Does an XP GOBS comparison using gobs arrays
    procedure GobsComArr
        (xa_gobs_prim      : in      Double1D;
        xa_gobs_sec        : in      Double1D;
        xa_gobs_lim        : in      Double1D;
        xa_gobs_delta      : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "GobsComArr";
        --xa_gobs_prim       : Double1D  (1..32);
        --xa_gobs_sec        : Double1D  (1..32);
        --xa_gobs_lim        : Double1D  (1..16);
        --xa_gobs_delta      : Double1D  (1..16);


end SatStateDll;

-- ========================= End of auto generated code ==========================
