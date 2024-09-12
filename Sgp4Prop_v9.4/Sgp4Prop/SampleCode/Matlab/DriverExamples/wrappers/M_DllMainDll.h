// This wrapper file was generated automatically by the GenDllWrappers program.



// Notes: This function has been deprecated since v9.0. 
// Initializes DllMain program (host of Astro Standards libraries) for use in any Astro Standards applications
// returns A handle to the global data set. You will pass this handle to other initialization functions within other DLLs in the API.
__int64 DllMainInit();


// Returns information about the DllMain DLL. 
// The returned string provides information about the version number, build date, and the platform. 
// infoStr            A string to hold the information about DllMain.dll. (out-Character[128])
void DllMainGetInfo(char* infoStr);


// Loads DllMain-related parameters (AS_MOIC) from a text file
// dllMainFile        The name of the input file. (in-Character[512])
// returns Returns zero indicating the input file has been loaded successfully. Other values indicate an error.
int DllMainLoadFile(char* dllMainFile);


// Opens a log file and enables the writing of diagnostic information into it. 
// All of the DLLs in the library will write diagnostic information into the log file once this function has been called.
// If the file specified by logFileName already exists, its contents are erased.
// 
// Enabling logging can potentially result in large amounts of diagnostic information being generated, which can lead to large amounts of storage being consumed as well as performance decreases. For this reason, it is recommended that this function only be used for debugging purposes.
// fileName           The name of the log file to use. (in-Character[512])
// returns 0 if the file was opened successfully. Other values indicate an error.
int OpenLogFile(char* fileName);


// Closes the currently open log file and reset the last logged error message to null. 
// Remember to close the log file before exiting the program.
void CloseLogFile();


// Writes a message into the log file.
// Make sure the log file is open by calling OpenLogFile before using this function.
// 
// The message is limited to 128 characters. If the message is longer than this, it will be truncated.
// msgStr             A message to be written into the log file. (in-Character[128])
void LogMessage(char* msgStr);


// Returns a character string describing the last error that occurred. 
// As a common practice, this function is called to retrieve the error message when an error occurs.
// 
// This function works with or without an opened log file.
// 
// If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
// lastErrMsg         A string that stores the last logged error message. The message will be placed in the string you pass to this function. (out-Character[128])
void GetLastErrMsg(char* lastErrMsg);


// Returns a character string describing the last informational message that was recorded. 
// This function is usually called right after space objects (TLEs, VCMs, sensors, observations, etc.) in an input text file were loaded. It gives information about how many records were successfully loaded, how many were bad, and how many were duplicated.
// 
// This function works with or without an opened log file.
// 
// If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
// This function provides a quick way to check whether all of the prerequisite DLLs have been loaded and initialized correctly. Improper initialization of the Standardized Astrodynamic Algorithms DLLs is one of the most common causes of program crashes.
// lastInfoMsg        A string that stores the last logged informational message. The message will be placed in the string you pass to this function. (out-Character[128])
void GetLastInfoMsg(char* lastInfoMsg);


// Notes: This function has been deprecated since v9.0. 
// Returns a list of names of the Standardized Astrodynamic Algorithms DLLs that were initialized successfully.
// initDllNames       A string that stores names of the DLLs that were initialized successfully. (out-Character[512])
void GetInitDllNames(char* initDllNames);


// Tests different input/output data types that are supported by the Astrodynamic Standards library.
// cIn                an input character (in-Character)
// cOut               an output character - should return the same value as the input cIn (out-Character)
// intIn              an input 32-bit integer (in-Integer)
// intOut             an output 32-bit integer - should return the same value as the input intIn (out-Integer)
// longIn             an input 64-bit integer (in-Long)
// longOut            an output 64-bit integer - should return the same value as the input longIn (out-Long)
// realIn             an input 64-bit real (in-Double)
// realOut            an output 64-bit real - should return the same value as the input realIn (out-Double)
// strIn              input string (in-Character[512])
// strOut             output string - should return the same value as the input strIn (out-Character[512])
// int1DIn            an input array of 32-bit integers (in-Integer[3])
// int1DOut           an output array of 32-bit integers - should return the same values as the input int1DIn (out-Integer[3])
// long1DIn           an input array of 64-bit integers (in-Long[3])
// long1DOut          an output array of 64-bit integers - should return the same values as the input long1DIn (out-Long[3])
// real1DIn           an input array of 64-bit reals (in-Double[3])
// real1DOut          an output array of 64-bit reals - should return the same values as the input real1DIn (out-Double[3])
// int2DIn            an input 2D-array of 32-bit integers (2 rows, 3 columns) - for column-major order language, reverse the order (in-Integer[2, 3])
// int2DOut           an output 2D-array of 32-bit integers - should return the same values as the input int2DIn (out-Integer[2, 3])
// long2DIn           an input 2D-array of 64-bit integers (2 rows, 3 columns) - for column-major order language, reverse the order (in-Long[2, 3])
// long2DOut          an output 2D-array of 64-bit integers - should return the same values as the input long2DIn (out-Long[2, 3])
// real2DIn           an input 2D-array of 64-bit reals (2 rows, 3 columns) - for column-major order language, reverse the order (in-Double[2, 3])
// real2DOut          an output 2D-array of 64-bit reals - should return the same values as the input real2DIn (out-Double[2, 3])
void TestInterface(char cIn, char* cOut, int intIn, int* intOut, __int64 longIn, __int64* longOut, double realIn, double* realOut, char* strIn, char* strOut, int* int1DIn, int* int1DOut, __int64* long1DIn, __int64* long1DOut, double* real1DIn, double* real1DOut, int* int2DIn, int* int2DOut, __int64* long2DIn, __int64* long2DOut, double* real2DIn, double* real2DOut);


// Tests different input/output data types that are supported by the Astrodynamic Standards library.
// cInOut             Output should return 'Z' (inout-Character)
// intInOut           Output should return Input + 1 (inout-Integer)
// longInOut          Output should return Input + 2 (inout-Long)
// realInOut          Output should return Input + 42.123456 (inout-Double)
// strInOut           Output should return "It doesn't matter what your string was." (inout-Character[512])
// int1DInOut         Output should return Input + 1 (inout-Integer[3])
// long1DInOut        Output should return Input + 1234567890123456789 (inout-Long[3])
// real1DInOut        Output should return Input + 42.0 (inout-Double[3])
// int2DInOut         Output should return Input + 1 (inout-Integer[2, 3])
// long2DInOut        Output should return Input + 6 (inout-Long[2, 3])
// real2DInOut        Output should return Input + 7.6 (inout-Double[2, 3])
void TestInterface2(char* cInOut, int* intInOut, __int64* longInOut, double* realInOut, char* strInOut, int* int1DInOut, __int64* long1DInOut, double* real1DInOut, int* int2DInOut, __int64* long2DInOut, double* real2DInOut);


// Tests input and output arrays with unknown length that are supported by the Astrodynamic Standards library.
// unk1DIn            Unknown dimension should be length (3) (in-Integer[*])
// unk1DOut           Unknown dimension should be length (3), unk1DOut should return same as unk1DIn * 4 (out-Integer[*])
// unk2DIn            Unknown dimension should be length (2) (in-Integer[*, 3])
// unk2DOut           Unknown dimension should be length (2), unk2DOut should return same as unk2DIn * 5 (out-Integer[*, 3])
void TestInterface3(int* unk1DIn, int* unk1DOut, int* unk2DIn, int* unk2DOut);


// Returns data parsed from user's AS_MOIC-typed input card - up to 128 fields are allowed.
// arrSize            size of the xa_moc array - actual number of fields the user enters in an "AS_MOIC" input card (in-Integer)
// xa_moic            The returning xa_moc array (out-Double[*])
void GetMOICData(int arrSize, double* xa_moic);


// Sets ELSET key mode
// This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ON" -
// and is currently calling any of these methods: DllMainLoadFile(), TleLoadFile(), SpVecLoadFile(), or VcmLoadFile()
// elset_keyMode      Desired elset key mode (see ELSET_KEYMODE_? for available modes) (in-Integer)
// returns 0 if the set is successful, non-0 if there is an error.
int SetElsetKeyMode(int elset_keyMode);


// Gets current ELSET key mode
// returns Current elset key mode (see ELSET_KEYMODE_? for available modes)
int GetElsetKeyMode();


// Sets key mode for ALL (elsets/obs/sensors). This takes precedence over individual elset/obs/sensor key mode
// This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ALL_ON"
// all_keyMode        Desired elset key mode (see ALL_KEYMODE_? for available modes) (in-Integer)
// returns 0 if the set is successful, non-0 if there is an error.
int SetAllKeyMode(int all_keyMode);


// Gets current ALL (elsets/obs/sensors) key mode
// returns Current elset key mode (see ALL_KEYMODE_? for available modes)
int GetAllKeyMode();


// Resets ALL (elsets/obs/sensors) key mode to its default value which then allows individual elsets/obs/sensors to use their own key mode settings.
// Also reset DUPLICATION key mode to its default value.
void ResetAllKeyMode();


// Sets DUPLICATION key mode - change the default behavior of returning a key which already exists in memory: zero versus actual value
// dupKeyMode         Desired duplication key mode (see DUPKEY_? for available modes) (in-Integer)
// returns 0 if the set is successful, non-0 if there is an error.
int SetDupKeyMode(int dupKeyMode);


// Gets current DUPLICATION key mode
// returns Current duplication key mode (see DUPKEY_? for available modes)
int GetDupKeyMode();

// log message string length
#define LOGMSGLEN   128    

// DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
#define FILEPATHLEN   512 

// DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
#define GETSETSTRLEN   512 

#define INFOSTRLEN   128 

// DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
#define INPUTCARDLEN   512 

// Different orbital element types 
static const int  
   ELTTYPE_TLE_SGP   = 1,    // Element type - SGP Tle type 0
   ELTTYPE_TLE_SGP4  = 2,    // Element type - SGP4 Tle type 2
   ELTTYPE_TLE_SP    = 3,    // Element type - SP Tle type 6
   ELTTYPE_SPVEC_B1P = 4,    // Element type - SP Vector
   ELTTYPE_VCM       = 5,    // Element type - VCM
   ELTTYPE_EXTEPH    = 6,    // Element type - External ephemeris
   ELTTYPE_TLE_XP    = 7;    // Element type - SGP Tle type 4 - XP

//*******************************************************************************

// Propagation types
static const int  
   PROPTYPE_GP  = 1,       // GP/SGP4/SGP4-XP propagator
   PROPTYPE_SP  = 2,       // SP propagator
   PROPTYPE_X   = 3,       // External ephemeris
   PROPTYPE_UK  = 4;       // Unknown
//*******************************************************************************

// Add sat error 
static const int  
   BADSATKEY = -1,      // Bad satellite key
   DUPSATKEY =  0;      // Duplicate satellite key

//*******************************************************************************

// satellite/observation/sensor key possible errors
static const int  
   BADKEY = -1,      // Bad (satellite/observation/sensor) key
   DUPKEY =  0;      // Duplicate (satellite/observation/sensor) key

//*******************************************************************************

// Options used in GetLoaded()   
static const int  
   IDX_ORDER_ASC   = 0,    // ascending order
   IDX_ORDER_DES   = 1,    // descending order
   IDX_ORDER_READ  = 2,    // order as read
   IDX_ORDER_QUICK = 9;    // tree traversal order

//*******************************************************************************

// Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
static const int  
   ALL_KEYMODE_NODUP  = 0,    // Default - duplicate elsets/observations/sensors can not be loaded in their binary trees                           
   ALL_KEYMODE_DMA    = 1;    // Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   
//*******************************************************************************

   
// Different key mode options for elset satKey
static const int  
   ELSET_KEYMODE_NODUP  = 0,    // Default - duplicate elsets can not be loaded in binary tree                           
   ELSET_KEYMODE_DMA    = 1;    // Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   
//*******************************************************************************
   
// Different duplication key mode options (apply to non DMA mode only)
static const int  
   DUPKEY_ZERO   = 0,    // Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
   DUPKEY_ACTUAL = 1;    // Return actual (satellite/sensor/obs) key regardless of the key/data duplication
   
//*******************************************************************************

   
static const int  
   TIME_IS_MSE = 1,     // Input time is in minutes since epoch 
   TIME_IS_TAI = 2,     // Input time is in days since 1950 TAI
   TIME_IS_UTC = 3;     // Input time is in days since 1950 UTC
   
//*******************************************************************************   
   



// ========================= End of auto generated code ==========================
