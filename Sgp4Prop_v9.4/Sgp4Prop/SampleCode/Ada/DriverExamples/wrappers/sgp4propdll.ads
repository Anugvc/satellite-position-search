-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package Sgp4PropDll is
    -- Different return values of errCode from Sgp4 propagation
    -- SGP4 propagates successfully
    GP_ERR_NONE : constant := 0;
    -- Bad FK model (FK5 must be selected)
    GP_ERR_BADFK : constant := 1;
    -- A is negative
    GP_ERR_ANEGATIVE : constant := 2;
    -- A is to large
    GP_ERR_ATOOLARGE : constant := 3;
    -- Eccentricity is hyperbolic
    GP_ERR_EHYPERPOLIC : constant := 4;
    -- Eccentricity is negative
    GP_ERR_ENEGATIVE : constant := 5;
    -- Mean anomaly is too large
    GP_ERR_MATOOLARGE : constant := 6;
    -- e**2 is too large
    GP_ERR_E2TOOLARGE : constant := 7;
    
    -- Different time types for passing to Sgp4PropAll
    -- propagation time is in minutes since epoch
    SGP4_TIMETYPE_MSE : constant := 0;
    -- propagation time is in days since 1950, UTC
    SGP4_TIMETYPE_DS50UTC : constant := 1;
    
    -- Sgp4 propagated output fields
    -- Revolution number
    XF_SGP4OUT_REVNUM : constant := 1;
    -- Nodal period, apogee, perigee
    XF_SGP4OUT_NODAL_AP_PER : constant := 2;
    -- Mean Keplerian
    XF_SGP4OUT_MEAN_KEP : constant := 3;
    -- Osculating Keplerian
    XF_SGP4OUT_OSC_KEP : constant := 4;
    
    -- Sgp4 propagated data
    -- Propagation time in days since 1950, UTC
    XA_SGP4OUT_DS50UTC : constant := 0;
    -- Propagation time in minutes since the satellite's epoch time
    XA_SGP4OUT_MSE : constant := 1;
    -- ECI X position (km) in True Equator and Mean Equinox of Epoch
    XA_SGP4OUT_POSX : constant := 2;
    -- ECI Y position (km) in True Equator and Mean Equinox of Epoch
    XA_SGP4OUT_POSY : constant := 3;
    -- ECI Z position (km) in True Equator and Mean Equinox of Epoch
    XA_SGP4OUT_POSZ : constant := 4;
    -- ECI X velocity (km/s) in True Equator and Mean Equinox of Epoch
    XA_SGP4OUT_VELX : constant := 5;
    -- ECI Y velocity (km/s) in True Equator and Mean Equinox of Epoch
    XA_SGP4OUT_VELY : constant := 6;
    -- ECI Z velocity (km/s) in True Equator and Mean Equinox of Epoch
    XA_SGP4OUT_VELZ : constant := 7;
    -- Geodetic latitude (deg)
    XA_SGP4OUT_LAT : constant := 8;
    -- Geodetic longitude (deg)
    XA_SGP4OUT_LON : constant := 9;
    -- Height above geoid (km)
    XA_SGP4OUT_HEIGHT : constant := 10;
    -- Revolution number
    XA_SGP4OUT_REVNUM : constant := 11;
    -- Nodal period (min)
    XA_SGP4OUT_NODALPER : constant := 12;
    -- Apogee (km)
    XA_SGP4OUT_APOGEE : constant := 13;
    -- Perigee (km)
    XA_SGP4OUT_PERIGEE : constant := 14;
    -- Mean semi-major axis (km)
    XA_SGP4OUT_MN_A : constant := 15;
    -- Mean eccentricity (unitless)
    XA_SGP4OUT_MN_E : constant := 16;
    -- Mean inclination (deg)
    XA_SGP4OUT_MN_INCLI : constant := 17;
    -- Mean mean anomaly (deg)
    XA_SGP4OUT_MN_MA : constant := 18;
    -- Mean right ascension of the asending node (deg)
    XA_SGP4OUT_MN_NODE : constant := 19;
    -- Mean argument of perigee (deg)
    XA_SGP4OUT_MN_OMEGA : constant := 20;
    -- Osculating semi-major axis (km)
    XA_SGP4OUT_OSC_A : constant := 21;
    -- Osculating eccentricity (unitless)
    XA_SGP4OUT_OSC_E : constant := 22;
    -- Osculating inclination (deg)
    XA_SGP4OUT_OSC_INCLI : constant := 23;
    -- Osculating mean anomaly (deg)
    XA_SGP4OUT_OSC_MA : constant := 24;
    -- Osculating right ascension of the asending node (deg)
    XA_SGP4OUT_OSC_NODE : constant := 25;
    -- Osculating argument of perigee (deg)
    XA_SGP4OUT_OSC_OMEGA : constant := 26;
    
    XA_SGP4OUT_SIZE : constant := 64;
    
    -- Different options for generating ephemerides from SGP4
    -- ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
    SGP4_EPHEM_ECI : constant := 1;
    -- MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
    SGP4_EPHEM_J2K : constant := 2;
    
    
    -- Different dynamic step size options
    -- Use a simple algorithm to determine step size based on satellite's current position
    DYN_SS_BASIC : constant := -1;
    
    --*******************************************************************************
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes the Sgp4 DLL for use in the program.
    -- 
    -- If this function returns an error, it is recommended that you stop the program immediately.
    -- 
    -- An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
    function Sgp4Init
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4Init";

    -- Returns information about the current version of Sgp4Prop.dll. The information is placed in the string parameter you pass in.
    -- The returned string provides information about the version number, build date, and platform.
    procedure Sgp4GetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "Sgp4GetInfo";
        --infoStr            : String    (1..128);

    -- Loads SGP4-related parameters (prediction controls, JPL settings) and SGP4 elsets from a text file
    function Sgp4LoadFileAll
        (sgp4InputFile     : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4LoadFileAll";
        --sgp4InputFile      : String    (1..512);

    -- Saves currently loaded SGP4-related parameters (SGP4 application controls, prediction controls, integration controls) to a file
    -- The purpose of this function is to save the current SGP4-related settings, usually used in GUI applications, for future use.
    function Sgp4SaveFile
        (sgp4File          : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4SaveFile";
        --sgp4File           : String    (1..512);

    -- Initializes an SGP4 satellite from an SGP or SGP4 TLE.
    -- Internally, when this function is called, Tle.dll's set of TLEs is searched for the provided satKey. If found, the associated TLE data will be used to create an SGP4 satellite which then will be added to Sgp4Prop.dll's set of satellites. Subsequent calls to propagate this satellite will use the data in this set to compute the satellite's new state.
    -- 
    -- This routine should be called once for each satellite you wish to propagate before propagation begins, or any time the associated data that is stored by Tle.dll is changed.
    -- 
    -- The call to this routine needs to be placed before any calls to the SGP4 propagator routines (Sgp4PropMse(), Sgp4PropDs50UTC(), etc.).
    function Sgp4InitSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4InitSat";

    -- Removing a satellite from the propagator's set of satellites does not affect the corresponding TLE data loaded by calls to routines in Tle.dll.
    function Sgp4RemoveSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4RemoveSat";

    -- Removes all currently loaded satellites from memory.
    -- Calling this function removes all satellites from the set maintained by Sgp4Prop.dll. However, the TLE data loaded by Tle.dll is unaffected by this function.
    function Sgp4RemoveAllSats return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4RemoveAllSats";

    -- Returns the number of GP objects currently created. 
    function Sgp4GetCount return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4GetCount";

    -- Propagates a satellite, represented by the satKey, to the time expressed in minutes since the satellite's epoch time. 
    -- The resulting data about the satellite is placed in the various reference parameters.
    -- It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
    -- 
    -- This function can be called in random time requests.
    -- The following cases will result in an error:
    -- 
    -- Semi major axis A 1.0D6
    -- Eccentricity E >= 1.0 or E 
    -- Mean anomaly MA>=1.0D10
    -- Hyperbolic orbit E2>= 1.0
    -- satKey doesn't exist in the set of loaded satellites
    -- FK model not set to FK5
    -- 
    function Sgp4PropMse
        (satKey            :         Long_Long_Integer;
        mse                :         Long_Float;
        ds50UTC            : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        llh                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4PropMse";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --llh                : Double1D  (1..3);

    -- Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
    -- The resulting data about the satellite is placed in the pos (position), vel (velocity), and llh (Lat/Lon/Height) parameters.
    -- It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
    -- The following cases will result in an error:
    -- 
    -- Semi major axis A 1.0D6
    -- Eccentricity E >= 1.0 or E 
    -- Mean anomaly MA>=1.0D10
    -- Hyperbolic orbit E2>= 1.0
    -- satKey doesn't exist in the set of loaded satellites
    -- GEO model not set to WGS-72 and/or FK model not set to FK5
    -- 
    function Sgp4PropDs50UTC
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        mse                : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        llh                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4PropDs50UTC";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --llh                : Double1D  (1..3);

    -- Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
    -- The resulting data about the satellite is placed in the pos (position), vel (velocity) parameters.
    function Sgp4PropDs50UtcPosVel
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4PropDs50UtcPosVel";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
    -- Only the geodetic information is returned by this function.
    -- It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
    -- 
    -- This function is similar to Sgp4PropDs50UTC but returns only LLH.  This function is designed especially for applications which plot ground traces.
    -- The following cases will result in an error:
    -- 
    -- Semi major axis A 1.0D6
    -- Eccentricity E >= 1.0 or E 
    -- Mean anomaly MA>=1.0D10
    -- Hyperbolic orbit E2>= 1.0
    -- satKey doesn't exist in the set of loaded satellites
    -- GEO model not set to WGS-72 and/or FK model not set to FK5
    -- 
    function Sgp4PropDs50UtcLLH
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        llh                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4PropDs50UtcLLH";
        --llh                : Double1D  (1..3);

    -- Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
    -- Only the ECI position vector is returned by this function.
    -- It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
    -- 
    -- This function is similar to Sgp4PropDs50UTC but returns only ECI position vector.  This function is designed especially for applications which plot satellite position in 3D.
    -- The following cases will result in an error:
    -- 
    -- Semi major axis A 1.0D6
    -- Eccentricity E >= 1.0 or E 
    -- Mean anomaly MA>=1.0D10
    -- Hyperbolic orbit E2>= 1.0
    -- satKey doesn't exist in the set of loaded satellites
    -- GEO model not set to WGS-72 and/or FK model not set to FK5
    -- 
    function Sgp4PropDs50UtcPos
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        pos                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4PropDs50UtcPos";
        --pos                : Double1D  (1..3);

    -- Retrieves propagator's precomputed results. This function can be used to obtain results from 
    -- a propagation which are not made available through calls to the propagation functions themselves.
    -- 
    -- See example in Sgp4PropMse or Sgp4PropDs50UTC.
    -- 
    -- This function should be called immediately after a successful call to Sgp4PropMse() or Sgp4PropDs50UTC() to retrieve the desired values.
    -- 
    -- It is the caller's responsibility to ensure that the array passed in the destArray parameter is large enough to hold the requested values. The required size can be found by looking at the destArray size column of the table below describing valid index values.
    -- 
    -- The destArray Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element. In other programming languages, the subscript of the first element is 1.
    -- 
    -- Note: This function is not thread safe, please use Sgp4PropAll() instead 
    -- 
    -- The table below shows the values for the xf_Sgp4Out parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- DestArray size
    -- DestArray Arrangement
    -- 
    -- 1Revolution number1Revolution number (based on the Osculating Keplerian
    -- Elements)
    -- 2Nodal Apogee Perigee3nodal period (minutes)apogee
    -- (km)perigee (km)
    -- 3Mean Keplerian Elements6semi-major axis (km)eccentricity
    -- (unitless)inclination (degree)mean anomaly (degree)right ascension of the ascending node
    -- (degree)argument of perigee (degree)
    -- 4Osculating Keplerian Elements6Same as Mean Keplerian Elements
    -- 
    function Sgp4GetPropOut
        (satKey            :         Long_Long_Integer;
        xf_Sgp4Out         :         Integer;
        destArr            : out     Double1D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4GetPropOut";

    -- Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
    -- All propagation data is returned by this function.
    function Sgp4PropAll
        (satKey            :         Long_Long_Integer;
        timeType           :         Integer;
        timeIn             :         Long_Float;
        xa_Sgp4Out         : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4PropAll";
        --xa_Sgp4Out         : Double1D  (1..64);

    -- Converts osculating position and velocity vectors to a set of mean Keplerian SGP4 elements.
    -- The new position and velocity vectors are the results of using SGP4 propagator to propagate the computed sgp4MeanKep to the time specified in year and day of epoch time. 
    -- They should be closely matched with the input osculating position and velocity vectors.
    -- 
    -- The mean Keplerian elements are SGP4's Brouwer mean motion not SGP's Kozai mean motion.
    -- Notes: Even if the function fails, the less acurate results may still be availalbe 
    function Sgp4PosVelToKep
        (yr                :         Integer;
        day                :         Long_Float;
        pos                : in      Double1D;
        vel                : in      Double1D;
        posNew             : out     Double1D;
        velNew             : out     Double1D;
        xa_kep             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4PosVelToKep";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --posNew             : Double1D  (1..3);
        --velNew             : Double1D  (1..3);
        --xa_kep             : Double1D  (1..6);

    -- Converts osculating position and velocity vectors to TLE array - allows bstar/bterm, drag values to be used in the conversion if desired
    -- The function is similar to Sgp4PosVelToKep but allows the user to specify agom (XP mode) and bstar/bterm values, if desired, to be used in solving for the new Keplerian elements.
    -- 
    -- The updated elements returned in the xa_tle array is of type SGP and the mean motion is Kozai mean motion.
    -- Notes: Even if the function fails, the less acurate results may still be availalbe 
    function Sgp4PosVelToTleArr
        (pos               : in      Double1D;
        vel                : in      Double1D;
        xa_tle             : in out  Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4PosVelToTleArr";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --xa_tle             : Double1D  (1..64);

    -- Reepochs a loaded TLE, represented by the satKey, to a new epoch.
    function Sgp4ReepochTLE
        (satKey            :         Long_Long_Integer;
        reEpochDs50UTC     :         Long_Float;
        line1Out           : out     String;
        line2Out           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4ReepochTLE";
        --line1Out           : String    (1..512);
        --line2Out           : String    (1..512);

    -- Reepochs a loaded TLE, represented by the satKey, to a new epoch in Csv format.
    function Sgp4ReepochCsv
        (satKey            :         Long_Long_Integer;
        reEpochDs50UTC     :         Long_Float;
        csvLine            : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4ReepochCsv";
        --csvLine            : String    (1..512);

    -- This function has been deprecated since v8.2
    -- Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
    procedure Sgp4SetLicFilePath
        (licFilePath       : in      String)
    with Import => True,
        Convention => C,
        External_Name => "Sgp4SetLicFilePath";
        --licFilePath        : String    (1..512);

    -- This function has been deprecated since v8.2
    -- Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
    procedure Sgp4GetLicFilePath
        (licFilePath       : out     String)
    with Import => True,
        Convention => C,
        External_Name => "Sgp4GetLicFilePath";
        --licFilePath        : String    (1..512);

    -- Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
    -- Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
    -- that many points (arrSize) and the errCode is set to IDX_ERR_WARN
    function Sgp4GenEphems
        (satKey            :         Long_Long_Integer;
        startTime          :         Long_Float;
        endTime            :         Long_Float;
        stepSize           :         Long_Float;
        sgp4_ephem         :         Integer;
        arrSize            :         Integer;
        ephemArr           : out     Double2D_Ptr;
        genEphemPts        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4GenEphems";

    -- Generates ephemerides for the input TLE - in an array format - for the specified time span and step size (OS - in One Step)
    -- Notes: 
    -- - This function takes in TLE data directly and doesn't need to go through loading/geting satKey/initializing steps
    -- - if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
    --   that many points (arrSize) and the errCode is set to IDX_ERR_WARN
    function Sgp4GenEphems_OS
        (xa_tle            : in      Double1D;
        startTime          :         Long_Float;
        endTime            :         Long_Float;
        stepSize           :         Long_Float;
        sgp4_ephem         :         Integer;
        arrSize            :         Integer;
        ephemArr           : out     Double2D_Ptr;
        genEphemPts        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4GenEphems_OS";
        --xa_tle             : Double1D  (1..64);

    -- Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
    function Sgp4PropAllSats
        (satKeys           : in      Long1D_Ptr;
        numOfSats          :         Integer;
        ds50UTC            :         Long_Float;
        ephemArr           : out     Double2D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Sgp4PropAllSats";

    -- Provides the native XP equinoctial elements and rates at given time
    function XpGetNativeElts
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        xa_eqnx            : out     Double1D;
        xa_eqnx_dot        : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "XpGetNativeElts";
        --xa_eqnx            : Double1D  (1..6);
        --xa_eqnx_dot        : Double1D  (1..6);

    -- Reepochs to a csv and provides the native XP equinoctial elements and rates
    function XpReepochGetNativeElts
        (satKey            :         Long_Long_Integer;
        reEpochDs50UTC     :         Long_Float;
        csvLine            : out     String;
        xa_eqnx            : out     Double1D;
        xa_eqnx_dot        : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "XpReepochGetNativeElts";
        --csvLine            : String    (1..512);
        --xa_eqnx            : Double1D  (1..6);
        --xa_eqnx_dot        : Double1D  (1..6);


end Sgp4PropDll;

-- ========================= End of auto generated code ==========================
