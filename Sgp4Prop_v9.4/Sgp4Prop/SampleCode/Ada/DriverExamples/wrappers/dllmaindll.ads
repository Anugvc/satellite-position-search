-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package DllMainDll is
    
    -- log message string length
    LOGMSGLEN : constant := 128;
    
    -- DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
    FILEPATHLEN : constant := 512;
    
    -- DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
    GETSETSTRLEN : constant := 512;
    
    INFOSTRLEN : constant := 128;
    
    -- DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
    INPUTCARDLEN : constant := 512;
    
    -- Different orbital element types
    -- Element type - SGP Tle type 0
    ELTTYPE_TLE_SGP : constant := 1;
    -- Element type - SGP4 Tle type 2
    ELTTYPE_TLE_SGP4 : constant := 2;
    -- Element type - SP Tle type 6
    ELTTYPE_TLE_SP : constant := 3;
    -- Element type - SP Vector
    ELTTYPE_SPVEC_B1P : constant := 4;
    -- Element type - VCM
    ELTTYPE_VCM : constant := 5;
    -- Element type - External ephemeris
    ELTTYPE_EXTEPH : constant := 6;
    -- Element type - SGP Tle type 4 - XP
    ELTTYPE_TLE_XP : constant := 7;
    
    --*******************************************************************************
    
    -- Propagation types
    -- GP/SGP4/SGP4-XP propagator
    PROPTYPE_GP : constant := 1;
    -- SP propagator
    PROPTYPE_SP : constant := 2;
    -- External ephemeris
    PROPTYPE_X : constant := 3;
    -- Unknown
    PROPTYPE_UK : constant := 4;
    --*******************************************************************************
    
    -- Add sat error
    -- Bad satellite key
    BADSATKEY : constant := -1;
    -- Duplicate satellite key
    DUPSATKEY : constant := 0;
    
    --*******************************************************************************
    
    -- satellite/observation/sensor key possible errors
    -- Bad (satellite/observation/sensor) key
    BADKEY : constant := -1;
    -- Duplicate (satellite/observation/sensor) key
    DUPKEY : constant := 0;
    
    --*******************************************************************************
    
    -- Options used in GetLoaded()
    -- ascending order
    IDX_ORDER_ASC : constant := 0;
    -- descending order
    IDX_ORDER_DES : constant := 1;
    -- order as read
    IDX_ORDER_READ : constant := 2;
    -- tree traversal order
    IDX_ORDER_QUICK : constant := 9;
    
    --*******************************************************************************
    
    -- Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
    -- Default - duplicate elsets/observations/sensors can not be loaded in their binary trees
    ALL_KEYMODE_NODUP : constant := 0;
    -- Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
    ALL_KEYMODE_DMA : constant := 1;
    
    --*******************************************************************************
    
    
    -- Different key mode options for elset satKey
    -- Default - duplicate elsets can not be loaded in binary tree
    ELSET_KEYMODE_NODUP : constant := 0;
    -- Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
    ELSET_KEYMODE_DMA : constant := 1;
    
    --*******************************************************************************
    
    -- Different duplication key mode options (apply to non DMA mode only)
    -- Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
    DUPKEY_ZERO : constant := 0;
    -- Return actual (satellite/sensor/obs) key regardless of the key/data duplication
    DUPKEY_ACTUAL : constant := 1;
    
    --*******************************************************************************
    
    
    -- Input time is in minutes since epoch
    TIME_IS_MSE : constant := 1;
    -- Input time is in days since 1950 TAI
    TIME_IS_TAI : constant := 2;
    -- Input time is in days since 1950 UTC
    TIME_IS_UTC : constant := 3;
    
    --*******************************************************************************
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes DllMain program (host of Astro Standards libraries) for use in any Astro Standards applications
    function DllMainInit return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "DllMainInit";

    -- Returns information about the DllMain DLL. 
    -- The returned string provides information about the version number, build date, and the platform. 
    procedure DllMainGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "DllMainGetInfo";
        --infoStr            : String    (1..128);

    -- Loads DllMain-related parameters (AS_MOIC) from a text file
    function DllMainLoadFile
        (dllMainFile       : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "DllMainLoadFile";
        --dllMainFile        : String    (1..512);

    -- Opens a log file and enables the writing of diagnostic information into it. 
    -- All of the DLLs in the library will write diagnostic information into the log file once this function has been called.
    -- If the file specified by logFileName already exists, its contents are erased.
    -- 
    -- Enabling logging can potentially result in large amounts of diagnostic information being generated, which can lead to large amounts of storage being consumed as well as performance decreases. For this reason, it is recommended that this function only be used for debugging purposes.
    function OpenLogFile
        (fileName          : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "OpenLogFile";
        --fileName           : String    (1..512);

    -- Closes the currently open log file and reset the last logged error message to null. 
    -- Remember to close the log file before exiting the program.
    procedure CloseLogFile
    with Import => True,
        Convention => C,
        External_Name => "CloseLogFile";

    -- Writes a message into the log file.
    -- Make sure the log file is open by calling OpenLogFile before using this function.
    -- 
    -- The message is limited to 128 characters. If the message is longer than this, it will be truncated.
    procedure LogMessage
        (msgStr            : in      String)
    with Import => True,
        Convention => C,
        External_Name => "LogMessage";
        --msgStr             : String    (1..128);

    -- Returns a character string describing the last error that occurred. 
    -- As a common practice, this function is called to retrieve the error message when an error occurs.
    -- 
    -- This function works with or without an opened log file.
    -- 
    -- If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
    procedure GetLastErrMsg
        (lastErrMsg        : out     String)
    with Import => True,
        Convention => C,
        External_Name => "GetLastErrMsg";
        --lastErrMsg         : String    (1..128);

    -- Returns a character string describing the last informational message that was recorded. 
    -- This function is usually called right after space objects (TLEs, VCMs, sensors, observations, etc.) in an input text file were loaded. It gives information about how many records were successfully loaded, how many were bad, and how many were duplicated.
    -- 
    -- This function works with or without an opened log file.
    -- 
    -- If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
    -- This function provides a quick way to check whether all of the prerequisite DLLs have been loaded and initialized correctly. Improper initialization of the Standardized Astrodynamic Algorithms DLLs is one of the most common causes of program crashes.
    procedure GetLastInfoMsg
        (lastInfoMsg       : out     String)
    with Import => True,
        Convention => C,
        External_Name => "GetLastInfoMsg";
        --lastInfoMsg        : String    (1..128);

    -- Notes: This function has been deprecated since v9.0. 
    -- Returns a list of names of the Standardized Astrodynamic Algorithms DLLs that were initialized successfully.
    procedure GetInitDllNames
        (initDllNames      : out     String)
    with Import => True,
        Convention => C,
        External_Name => "GetInitDllNames";
        --initDllNames       : String    (1..512);

    -- Tests different input/output data types that are supported by the Astrodynamic Standards library.
    procedure TestInterface
        (cIn               :         Character;
        cOut               : out     Character;
        intIn              :         Integer;
        intOut             : out     Integer;
        longIn             :         Long_Long_Integer;
        longOut            : out     Long_Long_Integer;
        realIn             :         Long_Float;
        realOut            : out     Long_Float;
        strIn              : in      String;
        strOut             : out     String;
        int1DIn            : in      Int1D;
        int1DOut           : out     Int1D;
        long1DIn           : in      Long1D;
        long1DOut          : out     Long1D;
        real1DIn           : in      Double1D;
        real1DOut          : out     Double1D;
        int2DIn            : in      Int2D;
        int2DOut           : out     Int2D;
        long2DIn           : in      Long2D;
        long2DOut          : out     Long2D;
        real2DIn           : in      Double2D;
        real2DOut          : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "TestInterface";
        --strIn              : String    (1..512);
        --strOut             : String    (1..512);
        --int1DIn            : Int1D     (1..3);
        --int1DOut           : Int1D     (1..3);
        --long1DIn           : Long1D    (1..3);
        --long1DOut          : Long1D    (1..3);
        --real1DIn           : Double1D  (1..3);
        --real1DOut          : Double1D  (1..3);
        --int2DIn            : Int2D     (1..3,1..2);
        --int2DOut           : Int2D     (1..3,1..2);
        --long2DIn           : Long2D    (1..3,1..2);
        --long2DOut          : Long2D    (1..3,1..2);
        --real2DIn           : Double2D  (1..3,1..2);
        --real2DOut          : Double2D  (1..3,1..2);

    -- Tests different input/output data types that are supported by the Astrodynamic Standards library.
    procedure TestInterface2
        (cInOut            : in out  Character;
        intInOut           : in out  Integer;
        longInOut          : in out  Long_Long_Integer;
        realInOut          : in out  Long_Float;
        strInOut           : in out  String;
        int1DInOut         : in out  Int1D;
        long1DInOut        : in out  Long1D;
        real1DInOut        : in out  Double1D;
        int2DInOut         : in out  Int2D;
        long2DInOut        : in out  Long2D;
        real2DInOut        : in out  Double2D)
    with Import => True,
        Convention => C,
        External_Name => "TestInterface2";
        --strInOut           : String    (1..512);
        --int1DInOut         : Int1D     (1..3);
        --long1DInOut        : Long1D    (1..3);
        --real1DInOut        : Double1D  (1..3);
        --int2DInOut         : Int2D     (1..3,1..2);
        --long2DInOut        : Long2D    (1..3,1..2);
        --real2DInOut        : Double2D  (1..3,1..2);

    -- Tests input and output arrays with unknown length that are supported by the Astrodynamic Standards library.
    procedure TestInterface3
        (unk1DIn           : in      Int1D_Ptr;
        unk1DOut           : out     Int1D_Ptr;
        unk2DIn            : in      Int2D_Ptr;
        unk2DOut           : out     Int2D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "TestInterface3";

    -- Returns data parsed from user's AS_MOIC-typed input card - up to 128 fields are allowed.
    procedure GetMOICData
        (arrSize           :         Integer;
        xa_moic            : out     Double1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "GetMOICData";

    -- Sets ELSET key mode
    -- This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ON" -
    -- and is currently calling any of these methods: DllMainLoadFile(), TleLoadFile(), SpVecLoadFile(), or VcmLoadFile()
    function SetElsetKeyMode
        (elset_keyMode     :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SetElsetKeyMode";

    -- Gets current ELSET key mode
    function GetElsetKeyMode return Integer
    with Import => True,
        Convention => C,
        External_Name => "GetElsetKeyMode";

    -- Sets key mode for ALL (elsets/obs/sensors). This takes precedence over individual elset/obs/sensor key mode
    -- This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ALL_ON"
    function SetAllKeyMode
        (all_keyMode       :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SetAllKeyMode";

    -- Gets current ALL (elsets/obs/sensors) key mode
    function GetAllKeyMode return Integer
    with Import => True,
        Convention => C,
        External_Name => "GetAllKeyMode";

    -- Resets ALL (elsets/obs/sensors) key mode to its default value which then allows individual elsets/obs/sensors to use their own key mode settings.
    -- Also reset DUPLICATION key mode to its default value.
    procedure ResetAllKeyMode
    with Import => True,
        Convention => C,
        External_Name => "ResetAllKeyMode";

    -- Sets DUPLICATION key mode - change the default behavior of returning a key which already exists in memory: zero versus actual value
    function SetDupKeyMode
        (dupKeyMode        :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SetDupKeyMode";

    -- Gets current DUPLICATION key mode
    function GetDupKeyMode return Integer
    with Import => True,
        Convention => C,
        External_Name => "GetDupKeyMode";


end DllMainDll;

-- ========================= End of auto generated code ==========================
