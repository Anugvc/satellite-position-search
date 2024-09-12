-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package ExtEphemDll is
    
    -- Indexes of coordinate systems
    -- ECI TEME of DATE
    COORD_ECI : constant := 1;
    -- MEME of J2K
    COORD_J2K : constant := 2;
    -- Earth Fixed Greenwich (EFG)
    COORD_EFG : constant := 3;
    -- Earch Centered Rotation (ECR)
    COORD_ECR : constant := 4;
    -- Lat Lon Height and a vector offset (range, azimuth, elevation)
    COORD_LLH : constant := 5;
    -- Sensor site (ECR) and a vector offset (range, azimuth, elevation)
    COORD_SEN : constant := 6;
    
    -- ECI TEME of DATE, fixed point
    COORD_ECIFP : constant := 11;
    -- MEME of J2K, fixed point
    COORD_J2KFP : constant := 12;
    -- Earth Fixed Greenwich (EFG), fixed point
    COORD_EFGFP : constant := 13;
    -- Earch Centered Rotation (ECR), fixed point
    COORD_ECRFP : constant := 14;
    -- Lat Lon Height and an offset vector (range, azimuth, elevation)
    COORD_LLHOV : constant := 15;
    -- Sensor site (ECR) and an offset vector (range, azimuth, elevation)
    COORD_SENOV : constant := 16;
    -- Current position (LLH), heading (azimuth), and constant speed of an mobile object that travels in a rhumb line course
    COORD_HCSRL : constant := 17;
    -- List of waypoints (LLH) that describes the movement of an object that travels in a rhumb line course
    COORD_WPTRL : constant := 18;
    -- Current position (LLH), initial heading (azimuth), and constant speed of an mobile object that travels in a great circle course
    COORD_HCSGC : constant := 19;
    -- List of waypoints (LLH) that describes the movement of an object that travels in a great circle course
    COORD_WPTGC : constant := 20;
    
    
    -- Invalid coordinate system
    COORD_INVALID : constant := 100;
    
    -- UVW convariance matrix - TEME of DATE
    COVMTX_UVW_DATE : constant := 0;
    -- Cartesian covariance matrix - TEME of DATE
    COVMTX_XYZ_DATE : constant := 10;
    -- Equinoctial covariance matrix - TEME of DATE
    COVMTX_EQNX_DATE : constant := 20;
    -- UVW convariance matrix - MEME of J2K
    COVMTX_UVW_J2K : constant := 30;
    -- Cartesian covariance matrix - MEME of J2K
    COVMTX_XYZ_J2K : constant := 40;
    -- Equinoctial covariance matrix - MEME of J2K
    COVMTX_EQNX_J2K : constant := 50;
    
    
    -- Get ephemeris data using time in minutes since epoch
    XF_GETEPH_MSE : constant := 1;
    -- Get ephemeris data using time in days since 1950 UTC
    XF_GETEPH_UTC : constant := 2;
    -- Get ephemeris data using index of the element in the array
    XF_GETEPH_IDX : constant := 3;
    
    -- Indexes of EXTEPH data fields
    -- Satellite number I5
    XF_EXTEPH_SATNUM : constant := 1;
    -- Epoch YYDDDHHMMSS.SSS
    XF_EXTEPH_EPOCH : constant := 2;
    -- Earth radius (km)
    XF_EXTEPH_AE : constant := 3;
    -- Ke
    XF_EXTEPH_KE : constant := 4;
    -- position X (km) F16.8
    XF_EXTEPH_POSX : constant := 5;
    -- position Y (km) F16.8
    XF_EXTEPH_POSY : constant := 6;
    -- position Z (km) F16.8
    XF_EXTEPH_POSZ : constant := 7;
    -- velocity X (km/s) F16.12
    XF_EXTEPH_VELX : constant := 8;
    -- velocity Y (km/s) F16.12
    XF_EXTEPH_VELY : constant := 9;
    -- velocity Z (km/s) F16.12
    XF_EXTEPH_VELZ : constant := 10;
    -- Input coordinate systems
    XF_EXTEPH_COORD : constant := 11;
    -- Num of ephemeris points
    XF_EXTEPH_NUMOFPTS : constant := 12;
    -- Ephemeris file path
    XF_EXTEPH_FILEPATH : constant := 13;
    -- International Designator
    XF_EXTEPH_SATNAME : constant := 14;
    -- Record name
    XF_EXTEPH_RECNAME : constant := 15;
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes ExtEphem DLL for use in the program
    -- If this function returns an error, it is recommended that the users stop the program immediately. 
    -- The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed 
    -- in the DLL Prerequisite section, before using this DLL.
    function ExtEphInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphInit";

    -- Returns information about the current version of ExtEphem DLL. 
    -- The information is placed in the string parameter passed in.
    -- The returned string provides information about the version number, build date, and the platform of the ExtEphem DLL. 
    procedure ExtEphGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ExtEphGetInfo";
        --infoStr            : String    (1..128);

    -- Loads a file containing EXTEPHEM's
    -- The users can use this function repeatedly to load EXTEPHEMs from different input files. 
    -- However, only unique satKeys are stored in the binary tree. Duplicated EXTEPHEMs 
    -- (determined by same file name, satellite number + epoch) won't be stored.
    -- 
    -- EXTEPHEMs can be included directly in the main input file or they can be read from a 
    -- separate file identified with "EPHFIL =[pathname\filename]".
    -- 
    -- This function only reads EXTEPHEMs from the main input file or EXTEPHEMs from the file 
    -- identified with EPHFIL in the input file. It won't read anything else.
    function ExtEphLoadFile
        (extEphFile        : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphLoadFile";
        --extEphFile         : String    (1..512);

    -- Saves the currently loaded EXTEPHEM's to a file (EPHFIL=input file name)
    function ExtEphSaveFile
        (extEphFile        : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphSaveFile";
        --extEphFile         : String    (1..512);

    -- Removes an EXTEPHEM represented by the satKey from memory
    -- If the users enter an invalid satKey (the satKey does not exist in memory), the function will return a non-zero value indicating an error.
    function ExtEphRemoveSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphRemoveSat";

    -- Removes all EXTEPHEMS from memory
    function ExtEphRemoveAllSats return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphRemoveAllSats";

    -- Returns the number of EXTEPHEM's currently loaded
    -- See ExtEphGetLoaded for example.
    -- This function is useful for dynamically allocating memory for the array that is passed to the function ExtEphGetLoaded().
    function ExtEphGetCount return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphGetCount";

    -- Retrieves all of the currently loaded satKeys. These satKeys can be used to access the external ephemeris data for the EXTEPHEM's
    -- It is recommended that ExtEphGetCount() is used to count how many satellites are currently loaded in the ExtEphem DLL's binary tree. 
    -- The users then use this number to dynamically allocate the satKeys array and pass it to this function.
    -- 
    -- If the users prefer to pass a static array to the function, ensure that it is big enough to store all the satKeys in memory.
    procedure ExtEphGetLoaded
        (order             :         Integer;
        satKeys            : out     Long1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "ExtEphGetLoaded";

    -- Allows for an EXTEPHEM to be added to memory without using an input file. The function creates a place holder for an EXTEPHEM
    -- If the same satellite (same satNum and epochDs50UTC) was previously added to the ExtEphem DLL's binary tree, 
    -- the function will generate a new unique satKey. This is very useful when the users want to compare ephemerides 
    -- of the same satellite number and same epoch time from different sources. 
    function ExtEphAddSat
        (satNum            :         Integer;
        epochDs50UTC       :         Long_Float;
        ae                 :         Long_Float;
        ke                 :         Long_Float;
        coordSys           :         Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphAddSat";

    -- Adds an ephemeris point to the end of an EXTEPHEM's set of ephemeris points
    -- The new ephemeris point will only be added to the array if its time is greater than the times of all points already in the array. 
    -- Therefore, the array is always in sorted order (t1 < t2 <... < tn).
    function ExtEphAddSatEphem
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        pos                : in      Double1D;
        vel                : in      Double1D;
        revNum             :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphAddSatEphem";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
    function ExtEphAddSatEphemCovMtx
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        pos                : in      Double1D;
        vel                : in      Double1D;
        revNum             :         Integer;
        covUVW             : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphAddSatEphemCovMtx";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covUVW             : Double1D  (1..21);

    -- Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
    function ExtEphAddSatEphemExt
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        pos                : in      Double1D;
        vel                : in      Double1D;
        revNum             :         Integer;
        extArr             : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphAddSatEphemExt";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --extArr             : Double1D  (1..128);

    -- Loads satellite data from an external ephemeris file (any valid external ephemeris file formats) and returns a satKey on success
    function ExtEphAddSatFrFile
        (extEphFile        : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphAddSatFrFile";
        --extEphFile         : String    (1..512);

    -- Retrieves all data for an EXTEPHEM with a single function call
    function ExtEphGetAllFields
        (satKey            :         Long_Long_Integer;
        satNum             : out     Integer;
        satName            : out     String;
        recName            : out     String;
        epochDs50UTC       : out     Long_Float;
        ae                 : out     Long_Float;
        ke                 : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        coordSys           : out     Integer;
        numOfPts           : out     Integer;
        fileLoc            : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphGetAllFields";
        --satName            : String    (1..8);
        --recName            : String    (1..128);
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --fileLoc            : String    (1..512);

    -- Retrieves the value of a specific field of an EXTEPHEM
    -- 
    -- When using xf_ExtEph = 11, the input coordinate system is returned as an integer value.  The table below shows the coordinate system values:
    -- 
    -- table
    -- 
    -- Value
    -- Coordinate System
    -- 
    -- 1  ECI TEME of DATE
    -- 2  MEME of J2K
    -- 3  Earth Fixed Greenwich (EFG)
    -- 4  Earch Centered Rotation (ECR)
    -- 100Invalid
    --    
    function ExtEphGetField
        (satKey            :         Long_Long_Integer;
        xf_ExtEph          :         Integer;
        valueStr           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphGetField";
        --valueStr           : String    (1..512);

    -- Updates the value of a specific field of an EXTEPHEM
    function ExtEphSetField
        (satKey            :         Long_Long_Integer;
        xf_ExtEph          :         Integer;
        valueStr           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphSetField";
        --valueStr           : String    (1..512);

    -- Retrieves the times (in days since 1950 UTC) of the start and end ephemeris points of the EXTEPHEM  
    function ExtEphStartEndTime
        (satKey            :         Long_Long_Integer;
        startDs50UTC       : out     Long_Float;
        endDs50UTC         : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphStartEndTime";

    -- Retrieves the data for a specific point within an EXTEPHEM
    -- It is important to know that the array subscript starts at one (not zero).
    function ExtEphGetEphemeris
        (satKey            :         Long_Long_Integer;
        index              :         Integer;
        ds50UTC            : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        revNum             : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphGetEphemeris";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Retrieves the data (including the covariance matrix) for a specific point within an EXTEPHEM
    function ExtEphGetCovMtx
        (satKey            :         Long_Long_Integer;
        index              :         Integer;
        ds50UTC            : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        revNum             : out     Integer;
        covMtx             : out     Double2D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphGetCovMtx";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covMtx             : Double2D  (1..6,1..6);

    -- Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
    -- The coordinate system of the output position and velocity is the same as the input ephemerides.
    function ExtEphMse
        (satKey            :         Long_Long_Integer;
        mse                :         Long_Float;
        ds50UTC            : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        revNum             : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphMse";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
    function ExtEphMseCovMtx
        (satKey            :         Long_Long_Integer;
        mse                :         Long_Float;
        ds50UTC            : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        revNum             : out     Integer;
        covMtx             : out     Double2D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphMseCovMtx";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covMtx             : Double2D  (1..6,1..6);

    -- Interpolates the external ephemeris data to the requested time in days since 1950, UTC
    -- The coordinate system of the output position and velocity is the same as the input ephemerides.
    function ExtEphDs50UTC
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        mse                : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        revNum             : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphDs50UTC";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Interpolates the external ephemeris data to the requested time in days since 1950, UTC
    function ExtEphDs50UTCCovMtx
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        mse                : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        revNum             : out     Integer;
        covMtx             : out     Double2D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphDs50UTCCovMtx";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --covMtx             : Double2D  (1..6,1..6);

    -- Extensible routine which retrieves/interpolates external ephemeris data based on user's request
    function ExtEphXten
        (satKey            :         Long_Long_Integer;
        xf_getEph          :         Integer;
        inVal              :         Long_Float;
        extArr             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphXten";
        --extArr             : Double1D  (1..128);

    -- This function returns a string that represents the EXTFIL= directive used to read a particular EXTEPHEM
    function ExtEphGetLine
        (satKey            :         Long_Long_Integer;
        line               : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphGetLine";
        --line               : String    (1..512);

    -- Returns the first satKey that matches the satNum in the EXTEPHEM binary tree
    -- This function is useful when ExtEphem DLL is used in applications that requires only one record (one EXTEPHEM entry) 
    -- for one satellite and the applications refer to that EXTEPHEM by its satellite number. 
    -- However, the Astrodynamic Standard Shared library only uses satKeys; this function helps to return the associated satKey of that satellite.
    function ExtEphGetSatKey
        (satNum            :         Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphGetSatKey";

    -- Creates satKey from EXTEPHEM's satelite number and date time group string
    -- This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
    function ExtEphFieldsToSatKey
        (satNum            :         Integer;
        epochDtg           : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphFieldsToSatKey";
        --epochDtg           : String    (1..20);


end ExtEphemDll;

-- ========================= End of auto generated code ==========================
