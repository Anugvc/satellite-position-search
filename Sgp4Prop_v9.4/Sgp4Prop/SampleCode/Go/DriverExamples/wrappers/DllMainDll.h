// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes DllMain program (host of Astro Standards libraries) for use in any Astro Standards applications
long DllMainInit();

// Returns information about the DllMain DLL. 
// The returned string provides information about the version number, build date, and the platform. 
void DllMainGetInfo(char infoStr[128]);

// Loads DllMain-related parameters (AS_MOIC) from a text file
int DllMainLoadFile(char dllMainFile[512]);

// Opens a log file and enables the writing of diagnostic information into it. 
// All of the DLLs in the library will write diagnostic information into the log file once this function has been called.
// If the file specified by logFileName already exists, its contents are erased.
// 
// Enabling logging can potentially result in large amounts of diagnostic information being generated, which can lead to large amounts of storage being consumed as well as performance decreases. For this reason, it is recommended that this function only be used for debugging purposes.
int OpenLogFile(char fileName[512]);

// Closes the currently open log file and reset the last logged error message to null. 
// Remember to close the log file before exiting the program.
void CloseLogFile();

// Writes a message into the log file.
// Make sure the log file is open by calling OpenLogFile before using this function.
// 
// The message is limited to 128 characters. If the message is longer than this, it will be truncated.
void LogMessage(char msgStr[128]);

// Returns a character string describing the last error that occurred. 
// As a common practice, this function is called to retrieve the error message when an error occurs.
// 
// This function works with or without an opened log file.
// 
// If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
void GetLastErrMsg(char lastErrMsg[128]);

// Returns a character string describing the last informational message that was recorded. 
// This function is usually called right after space objects (TLEs, VCMs, sensors, observations, etc.) in an input text file were loaded. It gives information about how many records were successfully loaded, how many were bad, and how many were duplicated.
// 
// This function works with or without an opened log file.
// 
// If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
// This function provides a quick way to check whether all of the prerequisite DLLs have been loaded and initialized correctly. Improper initialization of the Standardized Astrodynamic Algorithms DLLs is one of the most common causes of program crashes.
void GetLastInfoMsg(char lastInfoMsg[128]);

// Notes: This function has been deprecated since v9.0. 
// Returns a list of names of the Standardized Astrodynamic Algorithms DLLs that were initialized successfully.
void GetInitDllNames(char initDllNames[512]);

// Tests different input/output data types that are supported by the Astrodynamic Standards library.
void TestInterface(char cIn, char cOut[1], int intIn, int* intOut, long longIn, long* longOut, double realIn, double* realOut, char strIn[512], char strOut[512], int int1DIn[3], int int1DOut[3], long long1DIn[3], long long1DOut[3], double real1DIn[3], double real1DOut[3], int int2DIn[2][3], int int2DOut[2][3], long long2DIn[2][3], long long2DOut[2][3], double real2DIn[2][3], double real2DOut[2][3]);

// Tests different input/output data types that are supported by the Astrodynamic Standards library.
void TestInterface2(char cInOut[1], int* intInOut, long* longInOut, double* realInOut, char strInOut[512], int int1DInOut[3], long long1DInOut[3], double real1DInOut[3], int int2DInOut[2][3], long long2DInOut[2][3], double real2DInOut[2][3]);

// Tests input and output arrays with unknown length that are supported by the Astrodynamic Standards library.
void TestInterface3(int unk1DIn[], int unk1DOut[], int unk2DIn[][3], int unk2DOut[][3]);

// Returns data parsed from user's AS_MOIC-typed input card - up to 128 fields are allowed.
void GetMOICData(int arrSize, double xa_moic[]);

// Sets ELSET key mode
// This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ON" -
// and is currently calling any of these methods: DllMainLoadFile(), TleLoadFile(), SpVecLoadFile(), or VcmLoadFile()
int SetElsetKeyMode(int elset_keyMode);

// Gets current ELSET key mode
int GetElsetKeyMode();

// Sets key mode for ALL (elsets/obs/sensors). This takes precedence over individual elset/obs/sensor key mode
// This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ALL_ON"
int SetAllKeyMode(int all_keyMode);

// Gets current ALL (elsets/obs/sensors) key mode
int GetAllKeyMode();

// Resets ALL (elsets/obs/sensors) key mode to its default value which then allows individual elsets/obs/sensors to use their own key mode settings.
// Also reset DUPLICATION key mode to its default value.
void ResetAllKeyMode();

// Sets DUPLICATION key mode - change the default behavior of returning a key which already exists in memory: zero versus actual value
int SetDupKeyMode(int dupKeyMode);

// Gets current DUPLICATION key mode
int GetDupKeyMode();

// log message string length
#define LOGMSGLEN  128

// DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
#define FILEPATHLEN  512

// DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
#define GETSETSTRLEN  512

#define INFOSTRLEN  128

// DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
#define INPUTCARDLEN  512

// Different orbital element types
// Element type - SGP Tle type 0
#define ELTTYPE_TLE_SGP    1
// Element type - SGP4 Tle type 2
#define ELTTYPE_TLE_SGP4   2
// Element type - SP Tle type 6
#define ELTTYPE_TLE_SP     3
// Element type - SP Vector
#define ELTTYPE_SPVEC_B1P  4
// Element type - VCM
#define ELTTYPE_VCM        5
// Element type - External ephemeris
#define ELTTYPE_EXTEPH     6
// Element type - SGP Tle type 4 - XP
#define ELTTYPE_TLE_XP     7

//*******************************************************************************

// Propagation types
// GP/SGP4/SGP4-XP propagator
#define PROPTYPE_GP   1
// SP propagator
#define PROPTYPE_SP   2
// External ephemeris
#define PROPTYPE_X    3
// Unknown
#define PROPTYPE_UK   4
//*******************************************************************************

// Add sat error
// Bad satellite key
#define BADSATKEY  -1
// Duplicate satellite key
#define DUPSATKEY   0

//*******************************************************************************

// satellite/observation/sensor key possible errors
// Bad (satellite/observation/sensor) key
#define BADKEY  -1
// Duplicate (satellite/observation/sensor) key
#define DUPKEY   0

//*******************************************************************************

// Options used in GetLoaded()
// ascending order
#define IDX_ORDER_ASC    0
// descending order
#define IDX_ORDER_DES    1
// order as read
#define IDX_ORDER_READ   2
// tree traversal order
#define IDX_ORDER_QUICK  9

//*******************************************************************************

// Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
// Default - duplicate elsets/observations/sensors can not be loaded in their binary trees
#define ALL_KEYMODE_NODUP   0
// Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
#define ALL_KEYMODE_DMA     1

//*******************************************************************************


// Different key mode options for elset satKey
// Default - duplicate elsets can not be loaded in binary tree
#define ELSET_KEYMODE_NODUP   0
// Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
#define ELSET_KEYMODE_DMA     1

//*******************************************************************************

// Different duplication key mode options (apply to non DMA mode only)
// Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
#define DUPKEY_ZERO    0
// Return actual (satellite/sensor/obs) key regardless of the key/data duplication
#define DUPKEY_ACTUAL  1

//*******************************************************************************


// Input time is in minutes since epoch
#define TIME_IS_MSE  1
// Input time is in days since 1950 TAI
#define TIME_IS_TAI  2
// Input time is in days since 1950 UTC
#define TIME_IS_UTC  3

//*******************************************************************************

// ========================= End of auto generated code ==========================
