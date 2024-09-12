% This wrapper file was generated automatically by the GenDllWrappers program.
function loadDllMain(OctFilePath)   
   % log message string length
   global  LOGMSGLEN
   
   % DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
   global  FILEPATHLEN
   
   % DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
   global  GETSETSTRLEN
   
   global  INFOSTRLEN
   
   % DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
   global  INPUTCARDLEN
   
   % Different orbital element types
   % Element type - SGP Tle type 0
   global  ELTTYPE_TLE_SGP;
   % Element type - SGP4 Tle type 2
   global  ELTTYPE_TLE_SGP4;
   % Element type - SP Tle type 6
   global  ELTTYPE_TLE_SP;
   % Element type - SP Vector
   global  ELTTYPE_SPVEC_B1P;
   % Element type - VCM
   global  ELTTYPE_VCM;
   % Element type - External ephemeris
   global  ELTTYPE_EXTEPH;
   % Element type - SGP Tle type 4 - XP
   global  ELTTYPE_TLE_XP;
   
   %*******************************************************************************
   
   % Propagation types
   % GP/SGP4/SGP4-XP propagator
   global  PROPTYPE_GP;
   % SP propagator
   global  PROPTYPE_SP;
   % External ephemeris
   global  PROPTYPE_X;
   % Unknown
   global  PROPTYPE_UK;
   %*******************************************************************************
   
   % Add sat error
   % Bad satellite key
   global  BADSATKEY;
   % Duplicate satellite key
   global  DUPSATKEY;
   
   %*******************************************************************************
   
   % satellite/observation/sensor key possible errors
   % Bad (satellite/observation/sensor) key
   global  BADKEY;
   % Duplicate (satellite/observation/sensor) key
   global  DUPKEY;
   
   %*******************************************************************************
   
   % Options used in GetLoaded()
   % ascending order
   global  IDX_ORDER_ASC;
   % descending order
   global  IDX_ORDER_DES;
   % order as read
   global  IDX_ORDER_READ;
   % tree traversal order
   global  IDX_ORDER_QUICK;
   
   %*******************************************************************************
   
   % Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
   % Default - duplicate elsets/observations/sensors can not be loaded in their binary trees
   global  ALL_KEYMODE_NODUP;
   % Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   global  ALL_KEYMODE_DMA;
   
   %*******************************************************************************
   
   
   % Different key mode options for elset satKey
   % Default - duplicate elsets can not be loaded in binary tree
   global  ELSET_KEYMODE_NODUP;
   % Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   global  ELSET_KEYMODE_DMA;
   
   %*******************************************************************************
   
   % Different duplication key mode options (apply to non DMA mode only)
   % Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
   global  DUPKEY_ZERO;
   % Return actual (satellite/sensor/obs) key regardless of the key/data duplication
   global  DUPKEY_ACTUAL;
   
   %*******************************************************************************
   
   
   % Input time is in minutes since epoch
   global  TIME_IS_MSE;
   % Input time is in days since 1950 TAI
   global  TIME_IS_TAI;
   % Input time is in days since 1950 UTC
   global  TIME_IS_UTC;
   
   %*******************************************************************************
   
   
   % log message string length
   LOGMSGLEN = 128;
   
   % DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
   FILEPATHLEN = 512;
   
   % DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
   GETSETSTRLEN = 512;
   
   INFOSTRLEN = 128;
   
   % DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
   INPUTCARDLEN = 512;
   
   % Different orbital element types
   % Element type - SGP Tle type 0
   ELTTYPE_TLE_SGP   = 1;
   % Element type - SGP4 Tle type 2
   ELTTYPE_TLE_SGP4  = 2;
   % Element type - SP Tle type 6
   ELTTYPE_TLE_SP    = 3;
   % Element type - SP Vector
   ELTTYPE_SPVEC_B1P = 4;
   % Element type - VCM
   ELTTYPE_VCM       = 5;
   % Element type - External ephemeris
   ELTTYPE_EXTEPH    = 6;
   % Element type - SGP Tle type 4 - XP
   ELTTYPE_TLE_XP    = 7;
   
   %*******************************************************************************
   
   % Propagation types
   % GP/SGP4/SGP4-XP propagator
   PROPTYPE_GP  = 1;
   % SP propagator
   PROPTYPE_SP  = 2;
   % External ephemeris
   PROPTYPE_X   = 3;
   % Unknown
   PROPTYPE_UK  = 4;
   %*******************************************************************************
   
   % Add sat error
   % Bad satellite key
   BADSATKEY = -1;
   % Duplicate satellite key
   DUPSATKEY =  0;
   
   %*******************************************************************************
   
   % satellite/observation/sensor key possible errors
   % Bad (satellite/observation/sensor) key
   BADKEY = -1;
   % Duplicate (satellite/observation/sensor) key
   DUPKEY =  0;
   
   %*******************************************************************************
   
   % Options used in GetLoaded()
   % ascending order
   IDX_ORDER_ASC   = 0;
   % descending order
   IDX_ORDER_DES   = 1;
   % order as read
   IDX_ORDER_READ  = 2;
   % tree traversal order
   IDX_ORDER_QUICK = 9;
   
   %*******************************************************************************
   
   % Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
   % Default - duplicate elsets/observations/sensors can not be loaded in their binary trees
   ALL_KEYMODE_NODUP  = 0;
   % Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   ALL_KEYMODE_DMA    = 1;
   
   %*******************************************************************************
   
   
   % Different key mode options for elset satKey
   % Default - duplicate elsets can not be loaded in binary tree
   ELSET_KEYMODE_NODUP  = 0;
   % Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   ELSET_KEYMODE_DMA    = 1;
   
   %*******************************************************************************
   
   % Different duplication key mode options (apply to non DMA mode only)
   % Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
   DUPKEY_ZERO   = 0;
   % Return actual (satellite/sensor/obs) key regardless of the key/data duplication
   DUPKEY_ACTUAL = 1;
   
   %*******************************************************************************
   
   
   % Input time is in minutes since epoch
   TIME_IS_MSE = 1;
   % Input time is in days since 1950 TAI
   TIME_IS_TAI = 2;
   % Input time is in days since 1950 UTC
   TIME_IS_UTC = 3;
   
   %*******************************************************************************
   
   autoload("LoadDllMainDll",strcat(OctFilePath,"DllMain.oct"));
   autoload("FreeDllMainDll",strcat(OctFilePath,"DllMain.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes DllMain program (host of Astro Standards libraries) for use in any Astro Standards applications
   autoload("DllMainInit",strcat(OctFilePath,"DllMain.oct"));
   
   %  Returns information about the DllMain DLL. 
   %  The returned string provides information about the version number, build date, and the platform. 
   autoload("DllMainGetInfo",strcat(OctFilePath,"DllMain.oct"));
   
   %  Loads DllMain-related parameters (AS_MOIC) from a text file
   autoload("DllMainLoadFile",strcat(OctFilePath,"DllMain.oct"));
   
   %  Opens a log file and enables the writing of diagnostic information into it. 
   %  All of the DLLs in the library will write diagnostic information into the log file once this function has been called.
   %  If the file specified by logFileName already exists, its contents are erased.
   %  
   %  Enabling logging can potentially result in large amounts of diagnostic information being generated, which can lead to large amounts of storage being consumed as well as performance decreases. For this reason, it is recommended that this function only be used for debugging purposes.
   autoload("OpenLogFile",strcat(OctFilePath,"DllMain.oct"));
   
   %  Closes the currently open log file and reset the last logged error message to null. 
   %  Remember to close the log file before exiting the program.
   autoload("CloseLogFile",strcat(OctFilePath,"DllMain.oct"));
   
   %  Writes a message into the log file.
   %  Make sure the log file is open by calling OpenLogFile before using this function.
   %  
   %  The message is limited to 128 characters. If the message is longer than this, it will be truncated.
   autoload("LogMessage",strcat(OctFilePath,"DllMain.oct"));
   
   %  Returns a character string describing the last error that occurred. 
   %  As a common practice, this function is called to retrieve the error message when an error occurs.
   %  
   %  This function works with or without an opened log file.
   %  
   %  If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
   autoload("GetLastErrMsg",strcat(OctFilePath,"DllMain.oct"));
   
   %  Returns a character string describing the last informational message that was recorded. 
   %  This function is usually called right after space objects (TLEs, VCMs, sensors, observations, etc.) in an input text file were loaded. It gives information about how many records were successfully loaded, how many were bad, and how many were duplicated.
   %  
   %  This function works with or without an opened log file.
   %  
   %  If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
   %  This function provides a quick way to check whether all of the prerequisite DLLs have been loaded and initialized correctly. Improper initialization of the Standardized Astrodynamic Algorithms DLLs is one of the most common causes of program crashes.
   autoload("GetLastInfoMsg",strcat(OctFilePath,"DllMain.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Returns a list of names of the Standardized Astrodynamic Algorithms DLLs that were initialized successfully.
   autoload("GetInitDllNames",strcat(OctFilePath,"DllMain.oct"));
   
   %  Tests different input/output data types that are supported by the Astrodynamic Standards library.
   autoload("TestInterface",strcat(OctFilePath,"DllMain.oct"));
   
   %  Tests different input/output data types that are supported by the Astrodynamic Standards library.
   autoload("TestInterface2",strcat(OctFilePath,"DllMain.oct"));
   
   %  Tests input and output arrays with unknown length that are supported by the Astrodynamic Standards library.
   autoload("TestInterface3",strcat(OctFilePath,"DllMain.oct"));
   
   %  Returns data parsed from user's AS_MOIC-typed input card - up to 128 fields are allowed.
   autoload("GetMOICData",strcat(OctFilePath,"DllMain.oct"));
   
   %  Sets ELSET key mode
   %  This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ON" -
   %  and is currently calling any of these methods: DllMainLoadFile(), TleLoadFile(), SpVecLoadFile(), or VcmLoadFile()
   autoload("SetElsetKeyMode",strcat(OctFilePath,"DllMain.oct"));
   
   %  Gets current ELSET key mode
   autoload("GetElsetKeyMode",strcat(OctFilePath,"DllMain.oct"));
   
   %  Sets key mode for ALL (elsets/obs/sensors). This takes precedence over individual elset/obs/sensor key mode
   %  This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ALL_ON"
   autoload("SetAllKeyMode",strcat(OctFilePath,"DllMain.oct"));
   
   %  Gets current ALL (elsets/obs/sensors) key mode
   autoload("GetAllKeyMode",strcat(OctFilePath,"DllMain.oct"));
   
   %  Resets ALL (elsets/obs/sensors) key mode to its default value which then allows individual elsets/obs/sensors to use their own key mode settings.
   %  Also reset DUPLICATION key mode to its default value.
   autoload("ResetAllKeyMode",strcat(OctFilePath,"DllMain.oct"));
   
   %  Sets DUPLICATION key mode - change the default behavior of returning a key which already exists in memory: zero versus actual value
   autoload("SetDupKeyMode",strcat(OctFilePath,"DllMain.oct"));
   
   %  Gets current DUPLICATION key mode
   autoload("GetDupKeyMode",strcat(OctFilePath,"DllMain.oct"));
   LoadDllMainDll;
endfunction
% ========================= End of auto generated code ==========================
