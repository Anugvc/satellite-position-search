% This wrapper file was generated automatically by the GenDllWrappers program.
function loadSpVec(OctFilePath)   
   % Indexes of SPVEC data fields
   % X component of satellite's position (km)
   global  XF_SPVEC_POS1;
   % Y component of satellite's position (km)
   global  XF_SPVEC_POS2;
   % Z component of satellite's position (km)
   global  XF_SPVEC_POS3;
   % X component of satellite's velocity (m/s)
   global  XF_SPVEC_VEL1;
   % Y component of satellite's velocity (m/s)
   global  XF_SPVEC_VEL2;
   % Z component of satellite's velocity (m/s)
   global  XF_SPVEC_VEL3;
   % Security classification
   global  XF_SPVEC_SECCLASS;
   % Satellite number
   global  XF_SPVEC_SATNUM;
   % Satellite common name
   global  XF_SPVEC_SATNAME;
   % Epoch date
   global  XF_SPVEC_EPOCH;
   % Epoch revolution number
   global  XF_SPVEC_REVNUM;
   % Elset number
   global  XF_SPVEC_ELSETNUM;
   % Ballistic coefficient (m^2/kg)
   global  XF_SPVEC_BTERM;
   % Radiation pressure coefficient (m^2/kg)
   global  XF_SPVEC_AGOM;
   % Outgassing parameter (km/s^2)
   global  XF_SPVEC_OGPARM;
   % Inpute coordinate system
   global  XF_SPVEC_INPCOORD;
   
   
   % Indexes of SPVEC numerical data in an array
   % Satellite number
   global  XA_SPVEC_SATNUM;
   % Epoch date in days since 1950 UTC
   global  XA_SPVEC_EPOCH;
   % Epoch revolution number
   global  XA_SPVEC_REVNUM;
   % Elset number
   global  XA_SPVEC_ELSETNUM;
   % Ballistic coefficient (m^2/kg)
   global  XA_SPVEC_BTERM;
   % Radiation pressure coefficient (m^2/kg)
   global  XA_SPVEC_AGOM;
   % Outgassing parameter (km/s^2)
   global  XA_SPVEC_OGPARM;
   % Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options
   global  XA_SPVEC_INPCOORD;
   
   % X component of satellite's position (km)
   global  XA_SPVEC_POS1;
   % Y component of satellite's position (km)
   global  XA_SPVEC_POS2;
   % Z component of satellite's position (km)
   global  XA_SPVEC_POS3;
   % X component of satellite's velocity (m/s)
   global  XA_SPVEC_VEL1;
   % Y component of satellite's velocity (m/s)
   global  XA_SPVEC_VEL2;
   % Z component of satellite's velocity (m/s)
   global  XA_SPVEC_VEL3;
   
   % Flag to indicate SP vec has its own numerical integration control (vs global 4P settings)
   global  XA_SPVEC_HASOWNCRL;
   % Geopotential model to use
   global  XA_SPVEC_GEOIDX;
   % Earth gravity pertubations flag
   global  XA_SPVEC_BULGEFLG;
   % Drag pertubations flag
   global  XA_SPVEC_DRAGFLG;
   % Radiation pressure pertubations flag
   global  XA_SPVEC_RADFLG;
   % Lunar/Solar pertubations flag
   global  XA_SPVEC_LUNSOLFLG;
   % F10 value
   global  XA_SPVEC_F10;
   % F10 average value
   global  XA_SPVEC_F10AVG;
   % Ap value
   global  XA_SPVEC_AP;
   % Geopotential truncation order/degree/zonals
   global  XA_SPVEC_TRUNC;
   % Corrector step convergence criterion; exponent of 1/10; default = 10
   global  XA_SPVEC_CONVERG;
   % Outgassing pertubations flag
   global  XA_SPVEC_OGFLG;
   % Solid earth and ocean tide pertubations flag
   global  XA_SPVEC_TIDESFLG;
   % Nutation terms
   global  XA_SPVEC_NTERMS;
   % Recompute pertubations at each corrector step
   global  XA_SPVEC_REEVAL;
   % Variable of intergration control
   global  XA_SPVEC_INTEGCTRL;
   % Variable step size control
   global  XA_SPVEC_VARSTEP;
   % Initial step size
   global  XA_SPVEC_INITSTEP;
   
   % weighted RM of last DC on the satellite
   global  XA_SPVEC_RMS;
   % the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx)
   global  XA_SPVEC_COVELEMS;
   
   global  XA_SPVEC_SIZE
   
   
   % Indexes of SPVEC text data in an array of chars
   % Security classification
   global  XS_SPVEC_SECCLASS_1;
   % Satellite common name
   global  XS_SPVEC_SATNAME_8;
   
   global  XS_SPVEC_SIZE
   
   % SPVEC's text data fields - new convention (start index, string length)
   % Security classification
   global  XS_SPVEC_SECCLASS_0_1;
   % Satellite common name
   global  XS_SPVEC_SATNAME_1_8;
   
   global  XS_SPVEC_LENGTH
   
   
   % Different input coordinate for SpVec
   % Use input coordinate specified in 4P-card
   global  SPVEC_INPCOORD_4P;
   % Input coordinate systems is coordinates of epoch
   global  SPVEC_INPCOORD_TMDAT;
   % Input coordinate systems is coordinates of J2000
   global  SPVEC_INPCOORD_MMJ2K;
   
   
   % Indexes of SPVEC data fields
   % X component of satellite's position (km)
   XF_SPVEC_POS1     =  1;
   % Y component of satellite's position (km)
   XF_SPVEC_POS2     =  2;
   % Z component of satellite's position (km)
   XF_SPVEC_POS3     =  3;
   % X component of satellite's velocity (m/s)
   XF_SPVEC_VEL1     =  4;
   % Y component of satellite's velocity (m/s)
   XF_SPVEC_VEL2     =  5;
   % Z component of satellite's velocity (m/s)
   XF_SPVEC_VEL3     =  6;
   % Security classification
   XF_SPVEC_SECCLASS =  7;
   % Satellite number
   XF_SPVEC_SATNUM   =  9;
   % Satellite common name
   XF_SPVEC_SATNAME  = 10;
   % Epoch date
   XF_SPVEC_EPOCH    = 11;
   % Epoch revolution number
   XF_SPVEC_REVNUM   = 12;
   % Elset number
   XF_SPVEC_ELSETNUM = 13;
   % Ballistic coefficient (m^2/kg)
   XF_SPVEC_BTERM    = 14;
   % Radiation pressure coefficient (m^2/kg)
   XF_SPVEC_AGOM     = 15;
   % Outgassing parameter (km/s^2)
   XF_SPVEC_OGPARM   = 16;
   % Inpute coordinate system
   XF_SPVEC_INPCOORD = 17;
   
   
   % Indexes of SPVEC numerical data in an array
   % Satellite number
   XA_SPVEC_SATNUM   =   0;
   % Epoch date in days since 1950 UTC
   XA_SPVEC_EPOCH    =   1;
   % Epoch revolution number
   XA_SPVEC_REVNUM   =   2;
   % Elset number
   XA_SPVEC_ELSETNUM =   3;
   % Ballistic coefficient (m^2/kg)
   XA_SPVEC_BTERM    =   4;
   % Radiation pressure coefficient (m^2/kg)
   XA_SPVEC_AGOM     =   5;
   % Outgassing parameter (km/s^2)
   XA_SPVEC_OGPARM   =   6;
   % Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options
   XA_SPVEC_INPCOORD =   7;
   
   % X component of satellite's position (km)
   XA_SPVEC_POS1     =  20;
   % Y component of satellite's position (km)
   XA_SPVEC_POS2     =  21;
   % Z component of satellite's position (km)
   XA_SPVEC_POS3     =  22;
   % X component of satellite's velocity (m/s)
   XA_SPVEC_VEL1     =  23;
   % Y component of satellite's velocity (m/s)
   XA_SPVEC_VEL2     =  24;
   % Z component of satellite's velocity (m/s)
   XA_SPVEC_VEL3     =  25;
   
   % Flag to indicate SP vec has its own numerical integration control (vs global 4P settings)
   XA_SPVEC_HASOWNCRL=  70;
   % Geopotential model to use
   XA_SPVEC_GEOIDX   =  71;
   % Earth gravity pertubations flag
   XA_SPVEC_BULGEFLG =  72;
   % Drag pertubations flag
   XA_SPVEC_DRAGFLG  =  73;
   % Radiation pressure pertubations flag
   XA_SPVEC_RADFLG   =  74;
   % Lunar/Solar pertubations flag
   XA_SPVEC_LUNSOLFLG=  75;
   % F10 value
   XA_SPVEC_F10      =  76;
   % F10 average value
   XA_SPVEC_F10AVG   =  77;
   % Ap value
   XA_SPVEC_AP       =  78;
   % Geopotential truncation order/degree/zonals
   XA_SPVEC_TRUNC    =  79;
   % Corrector step convergence criterion; exponent of 1/10; default = 10
   XA_SPVEC_CONVERG  =  80;
   % Outgassing pertubations flag
   XA_SPVEC_OGFLG    =  81;
   % Solid earth and ocean tide pertubations flag
   XA_SPVEC_TIDESFLG =  82;
   % Nutation terms
   XA_SPVEC_NTERMS   =  84;
   % Recompute pertubations at each corrector step
   XA_SPVEC_REEVAL   =  85;
   % Variable of intergration control
   XA_SPVEC_INTEGCTRL=  86;
   % Variable step size control
   XA_SPVEC_VARSTEP  =  87;
   % Initial step size
   XA_SPVEC_INITSTEP =  88;
   
   % weighted RM of last DC on the satellite
   XA_SPVEC_RMS      =  99;
   % the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx)
   XA_SPVEC_COVELEMS = 100;
   
   XA_SPVEC_SIZE     = 512;
   
   
   % Indexes of SPVEC text data in an array of chars
   % Security classification
   XS_SPVEC_SECCLASS_1 =  0;
   % Satellite common name
   XS_SPVEC_SATNAME_8  =  1;
   
   XS_SPVEC_SIZE       = 512;
   
   % SPVEC's text data fields - new convention (start index, string length)
   % Security classification
   XS_SPVEC_SECCLASS_0_1 =  0;
   % Satellite common name
   XS_SPVEC_SATNAME_1_8  =  1;
   
   XS_SPVEC_LENGTH     = 512;
   
   
   % Different input coordinate for SpVec
   % Use input coordinate specified in 4P-card
   SPVEC_INPCOORD_4P    =  0;
   % Input coordinate systems is coordinates of epoch
   SPVEC_INPCOORD_TMDAT =  1;
   % Input coordinate systems is coordinates of J2000
   SPVEC_INPCOORD_MMJ2K =  2;
   
   autoload("LoadSpVecDll",strcat(OctFilePath,"SpVec.oct"));
   autoload("FreeSpVecDll",strcat(OctFilePath,"SpVec.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes SpVec DLL for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
   autoload("SpVecInit",strcat(OctFilePath,"SpVec.oct"));
   
   %  Returns information about the current version of SpVec DLL. The information is placed in the string parameter you pass in
   %  The returned string provides information about the version number, build date, and the platform of the SpVec DLL. 
   autoload("SpVecGetInfo",strcat(OctFilePath,"SpVec.oct"));
   
   %  Loads a text file containing SpVec's
   %  The users can use this function repeatedly to load B1P records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
   %  
   %  B1P records can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]".
   %  
   %  This function only reads B1P records from the main input file or B1P records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
   autoload("SpVecLoadFile",strcat(OctFilePath,"SpVec.oct"));
   
   %  Saves the currently loaded SpVecs's to a file
   %  If the users call this routine immediately after SpVecLoadFile. The SPVECs contents in the two file should be the same (minus duplicated SPVECs or bad SPVECs).
   %  
   %  The purpose of this function is to save the current state of the loaded SPVECs, usually used in GUI applications, for future use.
   autoload("SpVecSaveFile",strcat(OctFilePath,"SpVec.oct"));
   
   %  Removes an SpVec represented by the satKey from memory
   %  If the users enter an invalid satKey, a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   autoload("SpVecRemoveSat",strcat(OctFilePath,"SpVec.oct"));
   
   %  Removes all SpVec's from memory
   autoload("SpVecRemoveAllSats",strcat(OctFilePath,"SpVec.oct"));
   
   %  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
   %  See SpVecGetLoaded for example.
   %  This function is useful for dynamically allocating memory for the array that is passed to the function SpVecGetLoaded().
   autoload("SpVecGetCount",strcat(OctFilePath,"SpVec.oct"));
   
   %  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
   %  It is recommended that SpVecGetCount() is used to count how many satellites are currently loaded in the SpVec DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
   %  
   %  If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   autoload("SpVecGetLoaded",strcat(OctFilePath,"SpVec.oct"));
   
   %  Adds an SpVec using its directly specified first and second lines
   %  If the satellite was previously added to the SpVec DLL's binary tree, the function also returns a negative value indicating an error. 
   %  
   %  The users can use this function repeatedly to add many satellites (one satellite at a time) to the SpVec DLL's binary tree. 
   autoload("SpVecAddSatFrLines",strcat(OctFilePath,"SpVec.oct"));
   
   %  Works like SpVecAddSatFrLines but designed for Matlab
   autoload("SpVecAddSatFrLinesML",strcat(OctFilePath,"SpVec.oct"));
   
   %  Adds an SpVec using its individually provided field values
   autoload("SpVecAddSatFrFields",strcat(OctFilePath,"SpVec.oct"));
   
   %  Works like SpVecAddSatFrFields but designed for Matlab 
   autoload("SpVecAddSatFrFieldsML",strcat(OctFilePath,"SpVec.oct"));
   
   %  Updates an SpVec satellite's data in memory using individually provided field values. Note: satNum, epoch string can't be updated.
   %  The satellite's unique key will not be changed in this function call. 
   autoload("SpVecUpdateSatFrFields",strcat(OctFilePath,"SpVec.oct"));
   
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
   autoload("SpVecGetField",strcat(OctFilePath,"SpVec.oct"));
   
   %  Updates the value of a field of an SpVec
   %  See SpVecGetField for a description of the xf_SpVec parameter.  satNum (9) and epoch date (11) cannot be altered.
   %  The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
   autoload("SpVecSetField",strcat(OctFilePath,"SpVec.oct"));
   
   %  Retrieves all of the data for an SpVec satellite in a single function call
   autoload("SpVecGetAllFields",strcat(OctFilePath,"SpVec.oct"));
   
   %  Retrieves all of the data for an SpVec satellite in a single function call
   autoload("SpVecParse",strcat(OctFilePath,"SpVec.oct"));
   
   %  Parses SPVEC data from the input first and second lines of an 1P/2P state vector and store that data back into the output parameters.
   %  This function only parses data from the input SPVEC but DOES NOT load/add the input SPVEC to memory.
   autoload("SpVecLinesToArray",strcat(OctFilePath,"SpVec.oct"));
   
   %  Returns the first and second lines of the 1P/2P representation of an SpVec
   autoload("SpVecGetLines",strcat(OctFilePath,"SpVec.oct"));
   
   %  Constructs 1P/2P cards from individually provided SpVec data fields
   %  Returned line1 and line2 are empty if the function fails to construct the lines as requested.
   autoload("SpVecFieldsToLines",strcat(OctFilePath,"SpVec.oct"));
   
   %  Constructs 1P/2P cards from SPVEC data stored in the input arrays.
   %  This function only parses data from the input data but DOES NOT load/add the SPVEC to memory.
   %  Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   autoload("SpVecArrayToLines",strcat(OctFilePath,"SpVec.oct"));
   
   %  Returns the first satKey from the currently loaded set of SpVec's that contains the specified satellite number
   %  This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   autoload("SpVecGetSatKey",strcat(OctFilePath,"SpVec.oct"));
   
   %  This function is similar to SpVecGetSatKey but designed to be used in Matlab. 
   %  This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   autoload("SpVecGetSatKeyML",strcat(OctFilePath,"SpVec.oct"));
   
   %  Computes a satKey from the input data
   %  This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
   autoload("SpVecFieldsToSatKey",strcat(OctFilePath,"SpVec.oct"));
   
   %  This function is similar to SpVecFieldsToSatKey but designed to be used in Matlab. 
   %  This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
   autoload("SpVecFieldsToSatKeyML",strcat(OctFilePath,"SpVec.oct"));
   
   %  Adds an SpVec using its individually provided field values
   autoload("SpVecAddSatFrArray",strcat(OctFilePath,"SpVec.oct"));
   
   %  Adds an SpVec using its individually provided field values
   autoload("SpVecAddSatFrArrayML",strcat(OctFilePath,"SpVec.oct"));
   
   %  Updates existing SPVEC data with the provided new data stored in the input parameters. Note: satNum, epoch string can't be updated.
   autoload("SpVecUpdateSatFrArray",strcat(OctFilePath,"SpVec.oct"));
   
   %  Retrieves SPVEC data and stored it in the passing parameters
   autoload("SpVecDataToArray",strcat(OctFilePath,"SpVec.oct"));
   LoadSpVecDll;
endfunction
% ========================= End of auto generated code ==========================
