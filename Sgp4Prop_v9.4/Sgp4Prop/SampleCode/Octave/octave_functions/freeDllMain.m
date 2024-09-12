% This wrapper file was generated automatically by the GenDllWrappers program.
function freeDllMain()   
   % log message string length
   global LOGMSGLEN;
   
   % DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
   global FILEPATHLEN;
   
   % DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
   global GETSETSTRLEN;
   
   global INFOSTRLEN;
   
   % DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
   global INPUTCARDLEN;
   
   % Different orbital element types
   % Element type - SGP Tle type 0
   global ELTTYPE_TLE_SGP;
   % Element type - SGP4 Tle type 2
   global ELTTYPE_TLE_SGP4;
   % Element type - SP Tle type 6
   global ELTTYPE_TLE_SP;
   % Element type - SP Vector
   global ELTTYPE_SPVEC_B1P;
   % Element type - VCM
   global ELTTYPE_VCM;
   % Element type - External ephemeris
   global ELTTYPE_EXTEPH;
   % Element type - SGP Tle type 4 - XP
   global ELTTYPE_TLE_XP;
   
   %*******************************************************************************
   
   % Propagation types
   % GP/SGP4/SGP4-XP propagator
   global PROPTYPE_GP;
   % SP propagator
   global PROPTYPE_SP;
   % External ephemeris
   global PROPTYPE_X;
   % Unknown
   global PROPTYPE_UK;
   %*******************************************************************************
   
   % Add sat error
   % Bad satellite key
   global BADSATKEY;
   % Duplicate satellite key
   global DUPSATKEY;
   
   %*******************************************************************************
   
   % satellite/observation/sensor key possible errors
   % Bad (satellite/observation/sensor) key
   global BADKEY;
   % Duplicate (satellite/observation/sensor) key
   global DUPKEY;
   
   %*******************************************************************************
   
   % Options used in GetLoaded()
   % ascending order
   global IDX_ORDER_ASC;
   % descending order
   global IDX_ORDER_DES;
   % order as read
   global IDX_ORDER_READ;
   % tree traversal order
   global IDX_ORDER_QUICK;
   
   %*******************************************************************************
   
   % Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
   % Default - duplicate elsets/observations/sensors can not be loaded in their binary trees
   global ALL_KEYMODE_NODUP;
   % Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   global ALL_KEYMODE_DMA;
   
   %*******************************************************************************
   
   
   % Different key mode options for elset satKey
   % Default - duplicate elsets can not be loaded in binary tree
   global ELSET_KEYMODE_NODUP;
   % Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   global ELSET_KEYMODE_DMA;
   
   %*******************************************************************************
   
   % Different duplication key mode options (apply to non DMA mode only)
   % Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
   global DUPKEY_ZERO;
   % Return actual (satellite/sensor/obs) key regardless of the key/data duplication
   global DUPKEY_ACTUAL;
   
   %*******************************************************************************
   
   
   % Input time is in minutes since epoch
   global TIME_IS_MSE;
   % Input time is in days since 1950 TAI
   global TIME_IS_TAI;
   % Input time is in days since 1950 UTC
   global TIME_IS_UTC;
   
   %*******************************************************************************
   
   
   % log message string length
   clear LOGMSGLEN;
   
   % DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
   clear FILEPATHLEN;
   
   % DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
   clear GETSETSTRLEN;
   
   clear INFOSTRLEN;
   
   % DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
   clear INPUTCARDLEN;
   
   % Different orbital element types
   % Element type - SGP Tle type 0
   clear ELTTYPE_TLE_SGP;
   % Element type - SGP4 Tle type 2
   clear ELTTYPE_TLE_SGP4;
   % Element type - SP Tle type 6
   clear ELTTYPE_TLE_SP;
   % Element type - SP Vector
   clear ELTTYPE_SPVEC_B1P;
   % Element type - VCM
   clear ELTTYPE_VCM;
   % Element type - External ephemeris
   clear ELTTYPE_EXTEPH;
   % Element type - SGP Tle type 4 - XP
   clear ELTTYPE_TLE_XP;
   
   %*******************************************************************************
   
   % Propagation types
   % GP/SGP4/SGP4-XP propagator
   clear PROPTYPE_GP;
   % SP propagator
   clear PROPTYPE_SP;
   % External ephemeris
   clear PROPTYPE_X;
   % Unknown
   clear PROPTYPE_UK;
   %*******************************************************************************
   
   % Add sat error
   % Bad satellite key
   clear BADSATKEY;
   % Duplicate satellite key
   clear DUPSATKEY;
   
   %*******************************************************************************
   
   % satellite/observation/sensor key possible errors
   % Bad (satellite/observation/sensor) key
   clear BADKEY;
   % Duplicate (satellite/observation/sensor) key
   clear DUPKEY;
   
   %*******************************************************************************
   
   % Options used in GetLoaded()
   % ascending order
   clear IDX_ORDER_ASC;
   % descending order
   clear IDX_ORDER_DES;
   % order as read
   clear IDX_ORDER_READ;
   % tree traversal order
   clear IDX_ORDER_QUICK;
   
   %*******************************************************************************
   
   % Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
   % Default - duplicate elsets/observations/sensors can not be loaded in their binary trees
   clear ALL_KEYMODE_NODUP;
   % Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   clear ALL_KEYMODE_DMA;
   
   %*******************************************************************************
   
   
   % Different key mode options for elset satKey
   % Default - duplicate elsets can not be loaded in binary tree
   clear ELSET_KEYMODE_NODUP;
   % Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   clear ELSET_KEYMODE_DMA;
   
   %*******************************************************************************
   
   % Different duplication key mode options (apply to non DMA mode only)
   % Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
   clear DUPKEY_ZERO;
   % Return actual (satellite/sensor/obs) key regardless of the key/data duplication
   clear DUPKEY_ACTUAL;
   
   %*******************************************************************************
   
   
   % Input time is in minutes since epoch
   clear TIME_IS_MSE;
   % Input time is in days since 1950 TAI
   clear TIME_IS_TAI;
   % Input time is in days since 1950 UTC
   clear TIME_IS_UTC;
   
   %*******************************************************************************
   
   FreeDllMainDll;
   clear LoadDllMainDll;
   clear FreeDllMainDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes DllMain program (host of Astro Standards libraries) for use in any Astro Standards applications
   clear DllMainInit
   
   %  Returns information about the DllMain DLL. 
   %  The returned string provides information about the version number, build date, and the platform. 
   clear DllMainGetInfo
   
   %  Loads DllMain-related parameters (AS_MOIC) from a text file
   clear DllMainLoadFile
   
   %  Opens a log file and enables the writing of diagnostic information into it. 
   %  All of the DLLs in the library will write diagnostic information into the log file once this function has been called.
   %  If the file specified by logFileName already exists, its contents are erased.
   %  
   %  Enabling logging can potentially result in large amounts of diagnostic information being generated, which can lead to large amounts of storage being consumed as well as performance decreases. For this reason, it is recommended that this function only be used for debugging purposes.
   clear OpenLogFile
   
   %  Closes the currently open log file and reset the last logged error message to null. 
   %  Remember to close the log file before exiting the program.
   clear CloseLogFile
   
   %  Writes a message into the log file.
   %  Make sure the log file is open by calling OpenLogFile before using this function.
   %  
   %  The message is limited to 128 characters. If the message is longer than this, it will be truncated.
   clear LogMessage
   
   %  Returns a character string describing the last error that occurred. 
   %  As a common practice, this function is called to retrieve the error message when an error occurs.
   %  
   %  This function works with or without an opened log file.
   %  
   %  If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
   clear GetLastErrMsg
   
   %  Returns a character string describing the last informational message that was recorded. 
   %  This function is usually called right after space objects (TLEs, VCMs, sensors, observations, etc.) in an input text file were loaded. It gives information about how many records were successfully loaded, how many were bad, and how many were duplicated.
   %  
   %  This function works with or without an opened log file.
   %  
   %  If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
   %  This function provides a quick way to check whether all of the prerequisite DLLs have been loaded and initialized correctly. Improper initialization of the Standardized Astrodynamic Algorithms DLLs is one of the most common causes of program crashes.
   clear GetLastInfoMsg
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Returns a list of names of the Standardized Astrodynamic Algorithms DLLs that were initialized successfully.
   clear GetInitDllNames
   
   %  Tests different input/output data types that are supported by the Astrodynamic Standards library.
   clear TestInterface
   
   %  Tests different input/output data types that are supported by the Astrodynamic Standards library.
   clear TestInterface2
   
   %  Tests input and output arrays with unknown length that are supported by the Astrodynamic Standards library.
   clear TestInterface3
   
   %  Returns data parsed from user's AS_MOIC-typed input card - up to 128 fields are allowed.
   clear GetMOICData
   
   %  Sets ELSET key mode
   %  This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ON" -
   %  and is currently calling any of these methods: DllMainLoadFile(), TleLoadFile(), SpVecLoadFile(), or VcmLoadFile()
   clear SetElsetKeyMode
   
   %  Gets current ELSET key mode
   clear GetElsetKeyMode
   
   %  Sets key mode for ALL (elsets/obs/sensors). This takes precedence over individual elset/obs/sensor key mode
   %  This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ALL_ON"
   clear SetAllKeyMode
   
   %  Gets current ALL (elsets/obs/sensors) key mode
   clear GetAllKeyMode
   
   %  Resets ALL (elsets/obs/sensors) key mode to its default value which then allows individual elsets/obs/sensors to use their own key mode settings.
   %  Also reset DUPLICATION key mode to its default value.
   clear ResetAllKeyMode
   
   %  Sets DUPLICATION key mode - change the default behavior of returning a key which already exists in memory: zero versus actual value
   clear SetDupKeyMode
   
   %  Gets current DUPLICATION key mode
   clear GetDupKeyMode
endfunction
% ========================= End of auto generated code ==========================
