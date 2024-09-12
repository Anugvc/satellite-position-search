// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes SpVec DLL for use in the program
   //  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
   pub fn SpVecInit(apAddr: i64) -> i32;
   //  Returns information about the current version of SpVec DLL. The information is placed in the string parameter you pass in
   //  The returned string provides information about the version number, build date, and the platform of the SpVec DLL. 
   pub fn SpVecGetInfo(infoStr: *const c_char);
   //  Loads a text file containing SpVec's
   //  The users can use this function repeatedly to load B1P records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
   //  
   //  B1P records can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]".
   //  
   //  This function only reads B1P records from the main input file or B1P records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
   pub fn SpVecLoadFile(spVecFile: *const c_char) -> i32;
   //  Saves the currently loaded SpVecs's to a file
   //  If the users call this routine immediately after SpVecLoadFile. The SPVECs contents in the two file should be the same (minus duplicated SPVECs or bad SPVECs).
   //  
   //  The purpose of this function is to save the current state of the loaded SPVECs, usually used in GUI applications, for future use.
   pub fn SpVecSaveFile(spVecFile: *const c_char, saveMode: i32, saveForm: i32) -> i32;
   //  Removes an SpVec represented by the satKey from memory
   //  If the users enter an invalid satKey, a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   pub fn SpVecRemoveSat(satKey: i64) -> i32;
   //  Removes all SpVec's from memory
   pub fn SpVecRemoveAllSats() -> i32;
   //  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
   //  See SpVecGetLoaded for example.
   //  This function is useful for dynamically allocating memory for the array that is passed to the function SpVecGetLoaded().
   pub fn SpVecGetCount() -> i32;
   //  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
   //  It is recommended that SpVecGetCount() is used to count how many satellites are currently loaded in the SpVec DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
   //  
   //  If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   pub fn SpVecGetLoaded(order: i32, satKeys: *mut i64);
   //  Adds an SpVec using its directly specified first and second lines
   //  If the satellite was previously added to the SpVec DLL's binary tree, the function also returns a negative value indicating an error. 
   //  
   //  The users can use this function repeatedly to add many satellites (one satellite at a time) to the SpVec DLL's binary tree. 
   pub fn SpVecAddSatFrLines(line1: *const c_char, line2: *const c_char) -> i64;
   //  Works like SpVecAddSatFrLines but designed for Matlab
   pub fn SpVecAddSatFrLinesML(line1: *const c_char, line2: *const c_char, satKey: *mut i64);
   //  Adds an SpVec using its individually provided field values
   pub fn SpVecAddSatFrFields(pos: *const [f64; 3], vel: *const [f64; 3], secClass: c_char, satNum: i32, satName: *const c_char, epochDtg: *const c_char, revNum: i32, elsetNum: i32, bterm: f64, agom: f64, ogParm: f64, coordSys: *const c_char) -> i64;
   //  Works like SpVecAddSatFrFields but designed for Matlab 
   pub fn SpVecAddSatFrFieldsML(pos: *const [f64; 3], vel: *const [f64; 3], secClass: c_char, satNum: i32, satName: *const c_char, epochDtg: *const c_char, revNum: i32, elsetNum: i32, bterm: f64, agom: f64, ogParm: f64, coordSys: *const c_char, satKey: *mut i64);
   //  Updates an SpVec satellite's data in memory using individually provided field values. Note: satNum, epoch string can't be updated.
   //  The satellite's unique key will not be changed in this function call. 
   pub fn SpVecUpdateSatFrFields(satKey: i64, pos: *const [f64; 3], vel: *const [f64; 3], secClass: c_char, satName: *const c_char, revNum: i32, elsetNum: i32, bterm: f64, agom: f64, ogParm: f64, coordSys: *const c_char) -> i32;
   //  Retrieves the value of a specific field of an SpVec
   //  <br>
   //  The table below shows the values for the xf_SpVec parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td> 1-3</td><td>First 3 elements of 1P</td></tr>
   //  <tr><td> 4-6</td><td>Second 3 elements of 1P</td></tr>
   //  <tr><td> 7</td><td>Security classification</td></tr>
   //  <tr><td> 9</td><td>Satellite number</td></tr>
   //  <tr><td>10</td><td>Satellite common name</td></tr>
   //  <tr><td>11</td><td>Epoch date</td></tr>
   //  <tr><td>12</td><td>Epoch revolution number</td></tr>
   //  <tr><td>13</td><td>Elset number</td></tr>
   //  <tr><td>14</td><td>Ballistic coefficient</td></tr>
   //  <tr><td>15</td><td>Radiation pressure coefficient</td></tr>
   //  <tr><td>16</td><td>Outgassing parameter</td></tr>
   //  <tr><td>17</td><td>Input coordinate system</td></tr>
   //  </table>
   pub fn SpVecGetField(satKey: i64, xf_SpVec: i32, valueStr: *const c_char) -> i32;
   //  Updates the value of a field of an SpVec
   //  See SpVecGetField for a description of the xf_SpVec parameter.  satNum (9) and epoch date (11) cannot be altered.
   //  The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
   pub fn SpVecSetField(satKey: i64, xf_SpVec: i32, valueStr: *const c_char) -> i32;
   //  Retrieves all of the data for an SpVec satellite in a single function call
   pub fn SpVecGetAllFields(satKey: i64, pos: *mut [f64; 3], vel: *mut [f64; 3], secClass: *const c_char, satNum: *mut i32, satName: *const c_char, epochDtg: *const c_char, revNum: *mut i32, elsetNum: *mut i32, bterm: *mut f64, agom: *mut f64, ogParm: *mut f64, coordSys: *const c_char) -> i32;
   //  Retrieves all of the data for an SpVec satellite in a single function call
   pub fn SpVecParse(line1: *const c_char, line2: *const c_char, pos: *mut [f64; 3], vel: *mut [f64; 3], secClass: *const c_char, satNum: *mut i32, satName: *const c_char, epochDtg: *const c_char, revNum: *mut i32, elsetNum: *mut i32, bterm: *mut f64, agom: *mut f64, ogParm: *mut f64, coordSys: *const c_char) -> i32;
   //  Parses SPVEC data from the input first and second lines of an 1P/2P state vector and store that data back into the output parameters.
   //  This function only parses data from the input SPVEC but DOES NOT load/add the input SPVEC to memory.
   pub fn SpVecLinesToArray(line1: *const c_char, line2: *const c_char, xa_spVec: *mut [f64; 512], xs_spVec: *const c_char) -> i32;
   //  Returns the first and second lines of the 1P/2P representation of an SpVec
   pub fn SpVecGetLines(satKey: i64, line1: *const c_char, line2: *const c_char) -> i32;
   //  Constructs 1P/2P cards from individually provided SpVec data fields
   //  Returned line1 and line2 are empty if the function fails to construct the lines as requested.
   pub fn SpVecFieldsToLines(pos: *const [f64; 3], vel: *const [f64; 3], secClass: c_char, satNum: i32, satName: *const c_char, epochDtg: *const c_char, revNum: i32, elsetNum: i32, bterm: f64, agom: f64, ogParm: f64, coordSys: *const c_char, line1: *const c_char, line2: *const c_char);
   //  Constructs 1P/2P cards from SPVEC data stored in the input arrays.
   //  This function only parses data from the input data but DOES NOT load/add the SPVEC to memory.
   //  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   pub fn SpVecArrayToLines(xa_spVec: *const [f64; 512], xs_spVec: *const c_char, line1: *const c_char, line2: *const c_char);
   //  Returns the first satKey from the currently loaded set of SpVec's that contains the specified satellite number
   //  This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   pub fn SpVecGetSatKey(satNum: i32) -> i64;
   //  This function is similar to SpVecGetSatKey but designed to be used in Matlab. 
   //  This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   pub fn SpVecGetSatKeyML(satNum: i32, satKey: *mut i64);
   //  Computes a satKey from the input data
   //  This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
   pub fn SpVecFieldsToSatKey(satNum: i32, epochDtg: *const c_char) -> i64;
   //  This function is similar to SpVecFieldsToSatKey but designed to be used in Matlab. 
   //  This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
   pub fn SpVecFieldsToSatKeyML(satNum: i32, epochDtg: *const c_char, satKey: *mut i64);
   //  Adds an SpVec using its individually provided field values
   pub fn SpVecAddSatFrArray(xa_spVec: *const [f64; 512], xs_spVec: *const c_char) -> i64;
   //  Adds an SpVec using its individually provided field values
   pub fn SpVecAddSatFrArrayML(xa_spVec: *const [f64; 512], xs_spVec: *const c_char, satKey: *mut i64);
   //  Updates existing SPVEC data with the provided new data stored in the input parameters. Note: satNum, epoch string can't be updated.
   pub fn SpVecUpdateSatFrArray(satKey: i64, xa_spVec: *const [f64; 512], xs_spVec: *const c_char) -> i32;
   //  Retrieves SPVEC data and stored it in the passing parameters
   pub fn SpVecDataToArray(satKey: i64, xa_spVec: *mut [f64; 512], xs_spVec: *const c_char) -> i32;
}
   
   // Indexes of SPVEC data fields
   // X component of satellite's position (km)
   pub static XF_SPVEC_POS1: i32 =  1;
   // Y component of satellite's position (km)
   pub static XF_SPVEC_POS2: i32 =  2;
   // Z component of satellite's position (km)
   pub static XF_SPVEC_POS3: i32 =  3;
   // X component of satellite's velocity (m/s)
   pub static XF_SPVEC_VEL1: i32 =  4;
   // Y component of satellite's velocity (m/s)
   pub static XF_SPVEC_VEL2: i32 =  5;
   // Z component of satellite's velocity (m/s)
   pub static XF_SPVEC_VEL3: i32 =  6;
   // Security classification
   pub static XF_SPVEC_SECCLASS: i32 =  7;
   // Satellite number
   pub static XF_SPVEC_SATNUM: i32 =  9;
   // Satellite common name
   pub static XF_SPVEC_SATNAME: i32 = 10;
   // Epoch date
   pub static XF_SPVEC_EPOCH: i32 = 11;
   // Epoch revolution number
   pub static XF_SPVEC_REVNUM: i32 = 12;
   // Elset number
   pub static XF_SPVEC_ELSETNUM: i32 = 13;
   // Ballistic coefficient (m^2/kg)
   pub static XF_SPVEC_BTERM: i32 = 14;
   // Radiation pressure coefficient (m^2/kg)
   pub static XF_SPVEC_AGOM: i32 = 15;
   // Outgassing parameter (km/s^2)
   pub static XF_SPVEC_OGPARM: i32 = 16;
   // Inpute coordinate system
   pub static XF_SPVEC_INPCOORD: i32 = 17;
   
   
   // Indexes of SPVEC numerical data in an array
   // Satellite number
   pub static XA_SPVEC_SATNUM: i32 =   0;
   // Epoch date in days since 1950 UTC
   pub static XA_SPVEC_EPOCH: i32 =   1;
   // Epoch revolution number
   pub static XA_SPVEC_REVNUM: i32 =   2;
   // Elset number
   pub static XA_SPVEC_ELSETNUM: i32 =   3;
   // Ballistic coefficient (m^2/kg)
   pub static XA_SPVEC_BTERM: i32 =   4;
   // Radiation pressure coefficient (m^2/kg)
   pub static XA_SPVEC_AGOM: i32 =   5;
   // Outgassing parameter (km/s^2)
   pub static XA_SPVEC_OGPARM: i32 =   6;
   // Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options
   pub static XA_SPVEC_INPCOORD: i32 =   7;
   
   // X component of satellite's position (km)
   pub static XA_SPVEC_POS1: i32 =  20;
   // Y component of satellite's position (km)
   pub static XA_SPVEC_POS2: i32 =  21;
   // Z component of satellite's position (km)
   pub static XA_SPVEC_POS3: i32 =  22;
   // X component of satellite's velocity (m/s)
   pub static XA_SPVEC_VEL1: i32 =  23;
   // Y component of satellite's velocity (m/s)
   pub static XA_SPVEC_VEL2: i32 =  24;
   // Z component of satellite's velocity (m/s)
   pub static XA_SPVEC_VEL3: i32 =  25;
   
   // Flag to indicate SP vec has its own numerical integration control (vs global 4P settings)
   pub static XA_SPVEC_HASOWNCRL: i32 =  70;
   // Geopotential model to use
   pub static XA_SPVEC_GEOIDX: i32 =  71;
   // Earth gravity pertubations flag
   pub static XA_SPVEC_BULGEFLG: i32 =  72;
   // Drag pertubations flag
   pub static XA_SPVEC_DRAGFLG: i32 =  73;
   // Radiation pressure pertubations flag
   pub static XA_SPVEC_RADFLG: i32 =  74;
   // Lunar/Solar pertubations flag
   pub static XA_SPVEC_LUNSOLFLG: i32 =  75;
   // F10 value
   pub static XA_SPVEC_F10: i32 =  76;
   // F10 average value
   pub static XA_SPVEC_F10AVG: i32 =  77;
   // Ap value
   pub static XA_SPVEC_AP: i32 =  78;
   // Geopotential truncation order/degree/zonals
   pub static XA_SPVEC_TRUNC: i32 =  79;
   // Corrector step convergence criterion; exponent of 1/10; default = 10
   pub static XA_SPVEC_CONVERG: i32 =  80;
   // Outgassing pertubations flag
   pub static XA_SPVEC_OGFLG: i32 =  81;
   // Solid earth and ocean tide pertubations flag
   pub static XA_SPVEC_TIDESFLG: i32 =  82;
   // Nutation terms
   pub static XA_SPVEC_NTERMS: i32 =  84;
   // Recompute pertubations at each corrector step
   pub static XA_SPVEC_REEVAL: i32 =  85;
   // Variable of intergration control
   pub static XA_SPVEC_INTEGCTRL: i32 =  86;
   // Variable step size control
   pub static XA_SPVEC_VARSTEP: i32 =  87;
   // Initial step size
   pub static XA_SPVEC_INITSTEP: i32 =  88;
   
   // weighted RM of last DC on the satellite
   pub static XA_SPVEC_RMS: i32 =  99;
   // the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx)
   pub static XA_SPVEC_COVELEMS: i32 = 100;
   
   pub static XA_SPVEC_SIZE: i32 = 512;
   
   
   // Indexes of SPVEC text data in an array of chars
   // Security classification
   pub static XS_SPVEC_SECCLASS_1: i32 =  0;
   // Satellite common name
   pub static XS_SPVEC_SATNAME_8: i32 =  1;
   
   pub static XS_SPVEC_SIZE: i32 = 512;
   
   // SPVEC's text data fields - new convention (start index, string length)
   // Security classification
   pub static XS_SPVEC_SECCLASS_0_1: i32 =  0;
   // Satellite common name
   pub static XS_SPVEC_SATNAME_1_8: i32 =  1;
   
   pub static XS_SPVEC_LENGTH: i32 = 512;
   
   
   // Different input coordinate for SpVec
   // Use input coordinate specified in 4P-card
   pub static SPVEC_INPCOORD_4P: i32 =  0;
   // Input coordinate systems is coordinates of epoch
   pub static SPVEC_INPCOORD_TMDAT: i32 =  1;
   // Input coordinate systems is coordinates of J2000
   pub static SPVEC_INPCOORD_MMJ2K: i32 =  2;
   
// ========================= End of auto generated code ==========================
