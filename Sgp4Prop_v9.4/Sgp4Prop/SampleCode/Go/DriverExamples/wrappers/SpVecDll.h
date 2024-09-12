// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes SpVec DLL for use in the program
// If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
int SpVecInit(long apAddr);

// Returns information about the current version of SpVec DLL. The information is placed in the string parameter you pass in
// The returned string provides information about the version number, build date, and the platform of the SpVec DLL. 
void SpVecGetInfo(char infoStr[128]);

// Loads a text file containing SpVec's
// The users can use this function repeatedly to load B1P records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
// 
// B1P records can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]".
// 
// This function only reads B1P records from the main input file or B1P records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
int SpVecLoadFile(char spVecFile[512]);

// Saves the currently loaded SpVecs's to a file
// If the users call this routine immediately after SpVecLoadFile. The SPVECs contents in the two file should be the same (minus duplicated SPVECs or bad SPVECs).
// 
// The purpose of this function is to save the current state of the loaded SPVECs, usually used in GUI applications, for future use.
int SpVecSaveFile(char spVecFile[512], int saveMode, int saveForm);

// Removes an SpVec represented by the satKey from memory
// If the users enter an invalid satKey, a non-existing satKey in memory, the function will return a non-zero value indicating an error.
int SpVecRemoveSat(long satKey);

// Removes all SpVec's from memory
int SpVecRemoveAllSats();

// Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
// See SpVecGetLoaded for example.
// This function is useful for dynamically allocating memory for the array that is passed to the function SpVecGetLoaded().
int SpVecGetCount();

// Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
// It is recommended that SpVecGetCount() is used to count how many satellites are currently loaded in the SpVec DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
// 
// If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
void SpVecGetLoaded(int order, long satKeys[]);

// Adds an SpVec using its directly specified first and second lines
// If the satellite was previously added to the SpVec DLL's binary tree, the function also returns a negative value indicating an error. 
// 
// The users can use this function repeatedly to add many satellites (one satellite at a time) to the SpVec DLL's binary tree. 
long SpVecAddSatFrLines(char line1[512], char line2[512]);

// Works like SpVecAddSatFrLines but designed for Matlab
void SpVecAddSatFrLinesML(char line1[512], char line2[512], long* satKey);

// Adds an SpVec using its individually provided field values
long SpVecAddSatFrFields(double pos[3], double vel[3], char secClass, int satNum, char satName[8], char epochDtg[17], int revNum, int elsetNum, double bterm, double agom, double ogParm, char coordSys[5]);

// Works like SpVecAddSatFrFields but designed for Matlab 
void SpVecAddSatFrFieldsML(double pos[3], double vel[3], char secClass, int satNum, char satName[8], char epochDtg[17], int revNum, int elsetNum, double bterm, double agom, double ogParm, char coordSys[5], long* satKey);

// Updates an SpVec satellite's data in memory using individually provided field values. Note: satNum, epoch string can't be updated.
// The satellite's unique key will not be changed in this function call. 
int SpVecUpdateSatFrFields(long satKey, double pos[3], double vel[3], char secClass, char satName[8], int revNum, int elsetNum, double bterm, double agom, double ogParm, char coordSys[5]);

// Retrieves the value of a specific field of an SpVec
// <br>
// The table below shows the values for the xf_SpVec parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td> 1-3</td><td>First 3 elements of 1P</td></tr>
// <tr><td> 4-6</td><td>Second 3 elements of 1P</td></tr>
// <tr><td> 7</td><td>Security classification</td></tr>
// <tr><td> 9</td><td>Satellite number</td></tr>
// <tr><td>10</td><td>Satellite common name</td></tr>
// <tr><td>11</td><td>Epoch date</td></tr>
// <tr><td>12</td><td>Epoch revolution number</td></tr>
// <tr><td>13</td><td>Elset number</td></tr>
// <tr><td>14</td><td>Ballistic coefficient</td></tr>
// <tr><td>15</td><td>Radiation pressure coefficient</td></tr>
// <tr><td>16</td><td>Outgassing parameter</td></tr>
// <tr><td>17</td><td>Input coordinate system</td></tr>
// </table>
int SpVecGetField(long satKey, int xf_SpVec, char valueStr[512]);

// Updates the value of a field of an SpVec
// See SpVecGetField for a description of the xf_SpVec parameter.  satNum (9) and epoch date (11) cannot be altered.
// The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
int SpVecSetField(long satKey, int xf_SpVec, char valueStr[512]);

// Retrieves all of the data for an SpVec satellite in a single function call
int SpVecGetAllFields(long satKey, double pos[3], double vel[3], char secClass[1], int* satNum, char satName[8], char epochDtg[17], int* revNum, int* elsetNum, double* bterm, double* agom, double* ogParm, char coordSys[5]);

// Retrieves all of the data for an SpVec satellite in a single function call
int SpVecParse(char line1[512], char line2[512], double pos[3], double vel[3], char secClass[1], int* satNum, char satName[8], char epochDtg[17], int* revNum, int* elsetNum, double* bterm, double* agom, double* ogParm, char coordSys[5]);

// Parses SPVEC data from the input first and second lines of an 1P/2P state vector and store that data back into the output parameters.
// This function only parses data from the input SPVEC but DOES NOT load/add the input SPVEC to memory.
int SpVecLinesToArray(char line1[512], char line2[512], double xa_spVec[512], char xs_spVec[512]);

// Returns the first and second lines of the 1P/2P representation of an SpVec
int SpVecGetLines(long satKey, char line1[512], char line2[512]);

// Constructs 1P/2P cards from individually provided SpVec data fields
// Returned line1 and line2 are empty if the function fails to construct the lines as requested.
void SpVecFieldsToLines(double pos[3], double vel[3], char secClass, int satNum, char satName[8], char epochDtg[17], int revNum, int elsetNum, double bterm, double agom, double ogParm, char coordSys[5], char line1[512], char line2[512]);

// Constructs 1P/2P cards from SPVEC data stored in the input arrays.
// This function only parses data from the input data but DOES NOT load/add the SPVEC to memory.
// Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
void SpVecArrayToLines(double xa_spVec[512], char xs_spVec[512], char line1[512], char line2[512]);

// Returns the first satKey from the currently loaded set of SpVec's that contains the specified satellite number
// This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
long SpVecGetSatKey(int satNum);

// This function is similar to SpVecGetSatKey but designed to be used in Matlab. 
// This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
void SpVecGetSatKeyML(int satNum, long* satKey);

// Computes a satKey from the input data
// This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
long SpVecFieldsToSatKey(int satNum, char epochDtg[20]);

// This function is similar to SpVecFieldsToSatKey but designed to be used in Matlab. 
// This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
void SpVecFieldsToSatKeyML(int satNum, char epochDtg[20], long* satKey);

// Adds an SpVec using its individually provided field values
long SpVecAddSatFrArray(double xa_spVec[512], char xs_spVec[512]);

// Adds an SpVec using its individually provided field values
void SpVecAddSatFrArrayML(double xa_spVec[512], char xs_spVec[512], long* satKey);

// Updates existing SPVEC data with the provided new data stored in the input parameters. Note: satNum, epoch string can't be updated.
int SpVecUpdateSatFrArray(long satKey, double xa_spVec[512], char xs_spVec[512]);

// Retrieves SPVEC data and stored it in the passing parameters
int SpVecDataToArray(long satKey, double xa_spVec[512], char xs_spVec[512]);

// Indexes of SPVEC data fields
// X component of satellite's position (km)
#define XF_SPVEC_POS1       1
// Y component of satellite's position (km)
#define XF_SPVEC_POS2       2
// Z component of satellite's position (km)
#define XF_SPVEC_POS3       3
// X component of satellite's velocity (m/s)
#define XF_SPVEC_VEL1       4
// Y component of satellite's velocity (m/s)
#define XF_SPVEC_VEL2       5
// Z component of satellite's velocity (m/s)
#define XF_SPVEC_VEL3       6
// Security classification
#define XF_SPVEC_SECCLASS   7
// Satellite number
#define XF_SPVEC_SATNUM     9
// Satellite common name
#define XF_SPVEC_SATNAME   10
// Epoch date
#define XF_SPVEC_EPOCH     11
// Epoch revolution number
#define XF_SPVEC_REVNUM    12
// Elset number
#define XF_SPVEC_ELSETNUM  13
// Ballistic coefficient (m^2/kg)
#define XF_SPVEC_BTERM     14
// Radiation pressure coefficient (m^2/kg)
#define XF_SPVEC_AGOM      15
// Outgassing parameter (km/s^2)
#define XF_SPVEC_OGPARM    16
// Inpute coordinate system
#define XF_SPVEC_INPCOORD  17


// Indexes of SPVEC numerical data in an array
// Satellite number
#define XA_SPVEC_SATNUM      0
// Epoch date in days since 1950 UTC
#define XA_SPVEC_EPOCH       1
// Epoch revolution number
#define XA_SPVEC_REVNUM      2
// Elset number
#define XA_SPVEC_ELSETNUM    3
// Ballistic coefficient (m^2/kg)
#define XA_SPVEC_BTERM       4
// Radiation pressure coefficient (m^2/kg)
#define XA_SPVEC_AGOM        5
// Outgassing parameter (km/s^2)
#define XA_SPVEC_OGPARM      6
// Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options
#define XA_SPVEC_INPCOORD    7

// X component of satellite's position (km)
#define XA_SPVEC_POS1       20
// Y component of satellite's position (km)
#define XA_SPVEC_POS2       21
// Z component of satellite's position (km)
#define XA_SPVEC_POS3       22
// X component of satellite's velocity (m/s)
#define XA_SPVEC_VEL1       23
// Y component of satellite's velocity (m/s)
#define XA_SPVEC_VEL2       24
// Z component of satellite's velocity (m/s)
#define XA_SPVEC_VEL3       25

// Flag to indicate SP vec has its own numerical integration control (vs global 4P settings)
#define XA_SPVEC_HASOWNCRL  70
// Geopotential model to use
#define XA_SPVEC_GEOIDX     71
// Earth gravity pertubations flag
#define XA_SPVEC_BULGEFLG   72
// Drag pertubations flag
#define XA_SPVEC_DRAGFLG    73
// Radiation pressure pertubations flag
#define XA_SPVEC_RADFLG     74
// Lunar/Solar pertubations flag
#define XA_SPVEC_LUNSOLFLG  75
// F10 value
#define XA_SPVEC_F10        76
// F10 average value
#define XA_SPVEC_F10AVG     77
// Ap value
#define XA_SPVEC_AP         78
// Geopotential truncation order/degree/zonals
#define XA_SPVEC_TRUNC      79
// Corrector step convergence criterion; exponent of 1/10; default = 10
#define XA_SPVEC_CONVERG    80
// Outgassing pertubations flag
#define XA_SPVEC_OGFLG      81
// Solid earth and ocean tide pertubations flag
#define XA_SPVEC_TIDESFLG   82
// Nutation terms
#define XA_SPVEC_NTERMS     84
// Recompute pertubations at each corrector step
#define XA_SPVEC_REEVAL     85
// Variable of intergration control
#define XA_SPVEC_INTEGCTRL  86
// Variable step size control
#define XA_SPVEC_VARSTEP    87
// Initial step size
#define XA_SPVEC_INITSTEP   88

// weighted RM of last DC on the satellite
#define XA_SPVEC_RMS        99
// the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx)
#define XA_SPVEC_COVELEMS  100

#define XA_SPVEC_SIZE      512


// Indexes of SPVEC text data in an array of chars
// Security classification
#define XS_SPVEC_SECCLASS_1   0
// Satellite common name
#define XS_SPVEC_SATNAME_8    1

#define XS_SPVEC_SIZE        512

// SPVEC's text data fields - new convention (start index, string length)
// Security classification
#define XS_SPVEC_SECCLASS_0_1   0
// Satellite common name
#define XS_SPVEC_SATNAME_1_8    1

#define XS_SPVEC_LENGTH      512


// Different input coordinate for SpVec
// Use input coordinate specified in 4P-card
#define SPVEC_INPCOORD_4P      0
// Input coordinate systems is coordinates of epoch
#define SPVEC_INPCOORD_TMDAT   1
// Input coordinate systems is coordinates of J2000
#define SPVEC_INPCOORD_MMJ2K   2

// ========================= End of auto generated code ==========================
