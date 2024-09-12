% This wrapper file was generated automatically by the GenDllWrappers program.
function freeSpVec()   
   % Indexes of SPVEC data fields
   % X component of satellite's position (km)
   global XF_SPVEC_POS1;
   % Y component of satellite's position (km)
   global XF_SPVEC_POS2;
   % Z component of satellite's position (km)
   global XF_SPVEC_POS3;
   % X component of satellite's velocity (m/s)
   global XF_SPVEC_VEL1;
   % Y component of satellite's velocity (m/s)
   global XF_SPVEC_VEL2;
   % Z component of satellite's velocity (m/s)
   global XF_SPVEC_VEL3;
   % Security classification
   global XF_SPVEC_SECCLASS;
   % Satellite number
   global XF_SPVEC_SATNUM;
   % Satellite common name
   global XF_SPVEC_SATNAME;
   % Epoch date
   global XF_SPVEC_EPOCH;
   % Epoch revolution number
   global XF_SPVEC_REVNUM;
   % Elset number
   global XF_SPVEC_ELSETNUM;
   % Ballistic coefficient (m^2/kg)
   global XF_SPVEC_BTERM;
   % Radiation pressure coefficient (m^2/kg)
   global XF_SPVEC_AGOM;
   % Outgassing parameter (km/s^2)
   global XF_SPVEC_OGPARM;
   % Inpute coordinate system
   global XF_SPVEC_INPCOORD;
   
   
   % Indexes of SPVEC numerical data in an array
   % Satellite number
   global XA_SPVEC_SATNUM;
   % Epoch date in days since 1950 UTC
   global XA_SPVEC_EPOCH;
   % Epoch revolution number
   global XA_SPVEC_REVNUM;
   % Elset number
   global XA_SPVEC_ELSETNUM;
   % Ballistic coefficient (m^2/kg)
   global XA_SPVEC_BTERM;
   % Radiation pressure coefficient (m^2/kg)
   global XA_SPVEC_AGOM;
   % Outgassing parameter (km/s^2)
   global XA_SPVEC_OGPARM;
   % Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options
   global XA_SPVEC_INPCOORD;
   
   % X component of satellite's position (km)
   global XA_SPVEC_POS1;
   % Y component of satellite's position (km)
   global XA_SPVEC_POS2;
   % Z component of satellite's position (km)
   global XA_SPVEC_POS3;
   % X component of satellite's velocity (m/s)
   global XA_SPVEC_VEL1;
   % Y component of satellite's velocity (m/s)
   global XA_SPVEC_VEL2;
   % Z component of satellite's velocity (m/s)
   global XA_SPVEC_VEL3;
   
   % Flag to indicate SP vec has its own numerical integration control (vs global 4P settings)
   global XA_SPVEC_HASOWNCRL;
   % Geopotential model to use
   global XA_SPVEC_GEOIDX;
   % Earth gravity pertubations flag
   global XA_SPVEC_BULGEFLG;
   % Drag pertubations flag
   global XA_SPVEC_DRAGFLG;
   % Radiation pressure pertubations flag
   global XA_SPVEC_RADFLG;
   % Lunar/Solar pertubations flag
   global XA_SPVEC_LUNSOLFLG;
   % F10 value
   global XA_SPVEC_F10;
   % F10 average value
   global XA_SPVEC_F10AVG;
   % Ap value
   global XA_SPVEC_AP;
   % Geopotential truncation order/degree/zonals
   global XA_SPVEC_TRUNC;
   % Corrector step convergence criterion; exponent of 1/10; default = 10
   global XA_SPVEC_CONVERG;
   % Outgassing pertubations flag
   global XA_SPVEC_OGFLG;
   % Solid earth and ocean tide pertubations flag
   global XA_SPVEC_TIDESFLG;
   % Nutation terms
   global XA_SPVEC_NTERMS;
   % Recompute pertubations at each corrector step
   global XA_SPVEC_REEVAL;
   % Variable of intergration control
   global XA_SPVEC_INTEGCTRL;
   % Variable step size control
   global XA_SPVEC_VARSTEP;
   % Initial step size
   global XA_SPVEC_INITSTEP;
   
   % weighted RM of last DC on the satellite
   global XA_SPVEC_RMS;
   % the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx)
   global XA_SPVEC_COVELEMS;
   
   global XA_SPVEC_SIZE;
   
   
   % Indexes of SPVEC text data in an array of chars
   % Security classification
   global XS_SPVEC_SECCLASS_1;
   % Satellite common name
   global XS_SPVEC_SATNAME_8;
   
   global XS_SPVEC_SIZE;
   
   % SPVEC's text data fields - new convention (start index, string length)
   % Security classification
   global XS_SPVEC_SECCLASS_0_1;
   % Satellite common name
   global XS_SPVEC_SATNAME_1_8;
   
   global XS_SPVEC_LENGTH;
   
   
   % Different input coordinate for SpVec
   % Use input coordinate specified in 4P-card
   global SPVEC_INPCOORD_4P;
   % Input coordinate systems is coordinates of epoch
   global SPVEC_INPCOORD_TMDAT;
   % Input coordinate systems is coordinates of J2000
   global SPVEC_INPCOORD_MMJ2K;
   
   
   % Indexes of SPVEC data fields
   % X component of satellite's position (km)
   clear XF_SPVEC_POS1;
   % Y component of satellite's position (km)
   clear XF_SPVEC_POS2;
   % Z component of satellite's position (km)
   clear XF_SPVEC_POS3;
   % X component of satellite's velocity (m/s)
   clear XF_SPVEC_VEL1;
   % Y component of satellite's velocity (m/s)
   clear XF_SPVEC_VEL2;
   % Z component of satellite's velocity (m/s)
   clear XF_SPVEC_VEL3;
   % Security classification
   clear XF_SPVEC_SECCLASS;
   % Satellite number
   clear XF_SPVEC_SATNUM;
   % Satellite common name
   clear XF_SPVEC_SATNAME;
   % Epoch date
   clear XF_SPVEC_EPOCH;
   % Epoch revolution number
   clear XF_SPVEC_REVNUM;
   % Elset number
   clear XF_SPVEC_ELSETNUM;
   % Ballistic coefficient (m^2/kg)
   clear XF_SPVEC_BTERM;
   % Radiation pressure coefficient (m^2/kg)
   clear XF_SPVEC_AGOM;
   % Outgassing parameter (km/s^2)
   clear XF_SPVEC_OGPARM;
   % Inpute coordinate system
   clear XF_SPVEC_INPCOORD;
   
   
   % Indexes of SPVEC numerical data in an array
   % Satellite number
   clear XA_SPVEC_SATNUM;
   % Epoch date in days since 1950 UTC
   clear XA_SPVEC_EPOCH;
   % Epoch revolution number
   clear XA_SPVEC_REVNUM;
   % Elset number
   clear XA_SPVEC_ELSETNUM;
   % Ballistic coefficient (m^2/kg)
   clear XA_SPVEC_BTERM;
   % Radiation pressure coefficient (m^2/kg)
   clear XA_SPVEC_AGOM;
   % Outgassing parameter (km/s^2)
   clear XA_SPVEC_OGPARM;
   % Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options
   clear XA_SPVEC_INPCOORD;
   
   % X component of satellite's position (km)
   clear XA_SPVEC_POS1;
   % Y component of satellite's position (km)
   clear XA_SPVEC_POS2;
   % Z component of satellite's position (km)
   clear XA_SPVEC_POS3;
   % X component of satellite's velocity (m/s)
   clear XA_SPVEC_VEL1;
   % Y component of satellite's velocity (m/s)
   clear XA_SPVEC_VEL2;
   % Z component of satellite's velocity (m/s)
   clear XA_SPVEC_VEL3;
   
   % Flag to indicate SP vec has its own numerical integration control (vs global 4P settings)
   clear XA_SPVEC_HASOWNCRL;
   % Geopotential model to use
   clear XA_SPVEC_GEOIDX;
   % Earth gravity pertubations flag
   clear XA_SPVEC_BULGEFLG;
   % Drag pertubations flag
   clear XA_SPVEC_DRAGFLG;
   % Radiation pressure pertubations flag
   clear XA_SPVEC_RADFLG;
   % Lunar/Solar pertubations flag
   clear XA_SPVEC_LUNSOLFLG;
   % F10 value
   clear XA_SPVEC_F10;
   % F10 average value
   clear XA_SPVEC_F10AVG;
   % Ap value
   clear XA_SPVEC_AP;
   % Geopotential truncation order/degree/zonals
   clear XA_SPVEC_TRUNC;
   % Corrector step convergence criterion; exponent of 1/10; default = 10
   clear XA_SPVEC_CONVERG;
   % Outgassing pertubations flag
   clear XA_SPVEC_OGFLG;
   % Solid earth and ocean tide pertubations flag
   clear XA_SPVEC_TIDESFLG;
   % Nutation terms
   clear XA_SPVEC_NTERMS;
   % Recompute pertubations at each corrector step
   clear XA_SPVEC_REEVAL;
   % Variable of intergration control
   clear XA_SPVEC_INTEGCTRL;
   % Variable step size control
   clear XA_SPVEC_VARSTEP;
   % Initial step size
   clear XA_SPVEC_INITSTEP;
   
   % weighted RM of last DC on the satellite
   clear XA_SPVEC_RMS;
   % the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx)
   clear XA_SPVEC_COVELEMS;
   
   clear XA_SPVEC_SIZE;
   
   
   % Indexes of SPVEC text data in an array of chars
   % Security classification
   clear XS_SPVEC_SECCLASS_1;
   % Satellite common name
   clear XS_SPVEC_SATNAME_8;
   
   clear XS_SPVEC_SIZE;
   
   % SPVEC's text data fields - new convention (start index, string length)
   % Security classification
   clear XS_SPVEC_SECCLASS_0_1;
   % Satellite common name
   clear XS_SPVEC_SATNAME_1_8;
   
   clear XS_SPVEC_LENGTH;
   
   
   % Different input coordinate for SpVec
   % Use input coordinate specified in 4P-card
   clear SPVEC_INPCOORD_4P;
   % Input coordinate systems is coordinates of epoch
   clear SPVEC_INPCOORD_TMDAT;
   % Input coordinate systems is coordinates of J2000
   clear SPVEC_INPCOORD_MMJ2K;
   
   FreeSpVecDll;
   clear LoadSpVecDll;
   clear FreeSpVecDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes SpVec DLL for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
   clear SpVecInit
   
   %  Returns information about the current version of SpVec DLL. The information is placed in the string parameter you pass in
   %  The returned string provides information about the version number, build date, and the platform of the SpVec DLL. 
   clear SpVecGetInfo
   
   %  Loads a text file containing SpVec's
   %  The users can use this function repeatedly to load B1P records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
   %  
   %  B1P records can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]".
   %  
   %  This function only reads B1P records from the main input file or B1P records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
   clear SpVecLoadFile
   
   %  Saves the currently loaded SpVecs's to a file
   %  If the users call this routine immediately after SpVecLoadFile. The SPVECs contents in the two file should be the same (minus duplicated SPVECs or bad SPVECs).
   %  
   %  The purpose of this function is to save the current state of the loaded SPVECs, usually used in GUI applications, for future use.
   clear SpVecSaveFile
   
   %  Removes an SpVec represented by the satKey from memory
   %  If the users enter an invalid satKey, a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   clear SpVecRemoveSat
   
   %  Removes all SpVec's from memory
   clear SpVecRemoveAllSats
   
   %  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
   %  See SpVecGetLoaded for example.
   %  This function is useful for dynamically allocating memory for the array that is passed to the function SpVecGetLoaded().
   clear SpVecGetCount
   
   %  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
   %  It is recommended that SpVecGetCount() is used to count how many satellites are currently loaded in the SpVec DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
   %  
   %  If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   clear SpVecGetLoaded
   
   %  Adds an SpVec using its directly specified first and second lines
   %  If the satellite was previously added to the SpVec DLL's binary tree, the function also returns a negative value indicating an error. 
   %  
   %  The users can use this function repeatedly to add many satellites (one satellite at a time) to the SpVec DLL's binary tree. 
   clear SpVecAddSatFrLines
   
   %  Works like SpVecAddSatFrLines but designed for Matlab
   clear SpVecAddSatFrLinesML
   
   %  Adds an SpVec using its individually provided field values
   clear SpVecAddSatFrFields
   
   %  Works like SpVecAddSatFrFields but designed for Matlab 
   clear SpVecAddSatFrFieldsML
   
   %  Updates an SpVec satellite's data in memory using individually provided field values. Note: satNum, epoch string can't be updated.
   %  The satellite's unique key will not be changed in this function call. 
   clear SpVecUpdateSatFrFields
   
   %  Retrieves the value of a specific field of an SpVec
   %  <br>
   %  The table below shows the values for the xf_SpVec parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td> 1-3</td><td>First 3 elements of 1P</td></tr>
   %  <tr><td> 4-6</td><td>Second 3 elements of 1P</td></tr>
   %  <tr><td> 7</td><td>Security classification</td></tr>
   %  <tr><td> 9</td><td>Satellite number</td></tr>
   %  <tr><td>10</td><td>Satellite common name</td></tr>
   %  <tr><td>11</td><td>Epoch date</td></tr>
   %  <tr><td>12</td><td>Epoch revolution number</td></tr>
   %  <tr><td>13</td><td>Elset number</td></tr>
   %  <tr><td>14</td><td>Ballistic coefficient</td></tr>
   %  <tr><td>15</td><td>Radiation pressure coefficient</td></tr>
   %  <tr><td>16</td><td>Outgassing parameter</td></tr>
   %  <tr><td>17</td><td>Input coordinate system</td></tr>
   %  </table>
   clear SpVecGetField
   
   %  Updates the value of a field of an SpVec
   %  See SpVecGetField for a description of the xf_SpVec parameter.  satNum (9) and epoch date (11) cannot be altered.
   %  The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
   clear SpVecSetField
   
   %  Retrieves all of the data for an SpVec satellite in a single function call
   clear SpVecGetAllFields
   
   %  Retrieves all of the data for an SpVec satellite in a single function call
   clear SpVecParse
   
   %  Parses SPVEC data from the input first and second lines of an 1P/2P state vector and store that data back into the output parameters.
   %  This function only parses data from the input SPVEC but DOES NOT load/add the input SPVEC to memory.
   clear SpVecLinesToArray
   
   %  Returns the first and second lines of the 1P/2P representation of an SpVec
   clear SpVecGetLines
   
   %  Constructs 1P/2P cards from individually provided SpVec data fields
   %  Returned line1 and line2 are empty if the function fails to construct the lines as requested.
   clear SpVecFieldsToLines
   
   %  Constructs 1P/2P cards from SPVEC data stored in the input arrays.
   %  This function only parses data from the input data but DOES NOT load/add the SPVEC to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   clear SpVecArrayToLines
   
   %  Returns the first satKey from the currently loaded set of SpVec's that contains the specified satellite number
   %  This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   clear SpVecGetSatKey
   
   %  This function is similar to SpVecGetSatKey but designed to be used in Matlab. 
   %  This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   clear SpVecGetSatKeyML
   
   %  Computes a satKey from the input data
   %  This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
   clear SpVecFieldsToSatKey
   
   %  This function is similar to SpVecFieldsToSatKey but designed to be used in Matlab. 
   %  This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
   clear SpVecFieldsToSatKeyML
   
   %  Adds an SpVec using its individually provided field values
   clear SpVecAddSatFrArray
   
   %  Adds an SpVec using its individually provided field values
   clear SpVecAddSatFrArrayML
   
   %  Updates existing SPVEC data with the provided new data stored in the input parameters. Note: satNum, epoch string can't be updated.
   clear SpVecUpdateSatFrArray
   
   %  Retrieves SPVEC data and stored it in the passing parameters
   clear SpVecDataToArray
endfunction
% ========================= End of auto generated code ==========================
