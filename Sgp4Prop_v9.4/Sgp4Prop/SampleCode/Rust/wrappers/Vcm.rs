// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes Vcm DLL for use in the program
   //  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
   pub fn VcmInit(apAddr: i64) -> i32;
   //  Returns information about the current version of Vcm DLL. The information is placed in the string parameter you pass in
   //  The returned string provides information about the version number, build date, and the platform of the Vcm DLL. 
   pub fn VcmGetInfo(infoStr: *const c_char);
   //  Loads a text file containing Vcm's
   //  The users can use this function repeatedly to load Vcm records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
   //  
   //  State vectors can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]" or "SPVMSG=[path/filename]".
   //  
   //  This function only reads Vcm records from the main input file or Vcm records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
   pub fn VcmLoadFile(vcmFile: *const c_char) -> i32;
   //  Saves the currently loaded VCM's to a file
   //  If the users call this routine immediately after VcmLoadFile. The VCMs contents in the two file should be the same (minus duplicated VCMs or bad VCMs).
   //  
   //  The purpose of this function is to save the current state of the loaded VCMs, usually used in GUI applications, for future use.
   pub fn VcmSaveFile(vcmFile: *const c_char, saveMode: i32, saveForm: i32) -> i32;
   //  Removes a VCM represented by the satKey from memory
   //  If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   pub fn VcmRemoveSat(satKey: i64) -> i32;
   //  Removes all VCM's from memory
   //  The function returns zero if all the satellites are removed successfully from the Vcm DLL's binary tree.
   pub fn VcmRemoveAllSats() -> i32;
   //  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
   //  See VcmGetLoaded for an example.
   //  This function is useful for dynamically allocating memory for the array that is passed to the function VcmGetLoaded().
   pub fn VcmGetCount() -> i32;
   //  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
   //  It is recommended that VcmGetCount() is used to count how many satellites are currently loaded in the Vcm DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
   //  
   //  If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   pub fn VcmGetLoaded(order: i32, satKeys: *mut i64);
   //  Adds a VCM using its 1-line or concatenated string formats
   //  If the satellite was previously added to the Vcm DLL's binary tree, the function also returns a negative value indicating an error. 
   //  
   //  The users can use this function repeatedly to add many satellites (one satellite at a time) to the Vcm DLL's binary tree. 
   pub fn VcmAddSatFrLines(vcmString: *const c_char) -> i64;
   //  Works like VcmAddSatFrLines but designed for Matlab
   pub fn VcmAddSatFrLinesML(vcmString: *const c_char, satKey: *mut i64);
   //  Adds a VCM using its individually provided field values
   //  <br>
   //  The table below indicates starting character position for each field in the xs_vcm parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td>Starting Character Position</td>
   //  <td>Input Description</td>
   //  </tr>
   //  <tr><td> 0</td><td>satellite name, A8</td></tr>
   //  <tr><td> 8</td><td>common satellite name, A25</td></tr>
   //  <tr><td>33</td><td>geopotential name, A6 (WGS-72, WGS-84, EGM-96, ...)</td></tr>
   //  <tr><td>39</td><td>drag model, A12</td></tr>
   //  <tr><td>51</td><td>lunar solar pertubations, A3 (ON, OFF)</td></tr>
   //  <tr><td>54</td><td>radiation pressure pertubations, A3 (ON, OFF)</td></tr>
   //  <tr><td>57</td><td>Earth + ocean tides pertubation, A3 (ON, OFF)</td></tr>
   //  <tr><td>60</td><td>intrack thrust, A3 (ON, OFF)</td></tr>
   //  <tr><td>63</td><td>integration mode, A6 (ASW, OSW, SPADOC, ...)</td></tr>
   //  <tr><td>69</td><td>coordinate system, A5</td></tr>
   //  <tr><td>74</td><td>type of partial derivatives, A8</td></tr>
   //  <tr><td>82</td><td>step mode, A4 (AUTO, TIME, S)</td></tr>
   //  <tr><td>86</td><td>fixed step size indicator, A3 (ON, OFF)</td></tr>
   //  <tr><td>89</td><td>initial step size selection, A6 (AUTO, MANUAL)</td></tr>
   //  </table>
   //  <br> 
   //  The table below indicates the index for each field in the xa_vcm array:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td>Index (xa_vcm)</td>
   //  <td>index Interpretation</td>
   //  </tr>
   //  <tr><td>  0</td><td>satellite number</td></tr>
   //  <tr><td>  1</td><td>satellite's epoch time</td></tr>
   //  <tr><td>  2</td><td>epoch revolution number</td></tr>
   //  <tr><td>  3</td><td>J2K position X (km)</td></tr>
   //  <tr><td>  4</td><td>J2K position Y (km)</td></tr>
   //  <tr><td>  5</td><td>J2K position Z (km)</td></tr>
   //  <tr><td>  6</td><td>J2K velocity X (km/s)</td></tr>
   //  <tr><td>  7</td><td>J2K velocity Y (km/s)</td></tr>
   //  <tr><td>  8</td><td>J2K velocity Z (km/s)</td></tr>
   //  <tr><td>  9</td><td>ECI position X (km)</td></tr>
   //  <tr><td> 10</td><td>ECI position Y (km)</td></tr>
   //  <tr><td> 11</td><td>ECI position Z (km)</td></tr>
   //  <tr><td> 12</td><td>ECI velocity X (km/s)</td></tr>
   //  <tr><td> 13</td><td>ECI velocity Y (km/s)</td></tr>
   //  <tr><td> 14</td><td>ECI velocity Z (km/s)</td></tr>
   //  <tr><td> 15</td><td>EFG position X (km)</td></tr>
   //  <tr><td> 16</td><td>EFG position Y (km)</td></tr>
   //  <tr><td> 17</td><td>EFG position Z (km)</td></tr>
   //  <tr><td> 18</td><td>EFG velocity X (km/s)</td></tr>
   //  <tr><td> 19</td><td>EFG velocity Y (km/s)</td></tr>
   //  <tr><td> 20</td><td>EFG velocity Z (km/s)</td></tr>
   //  <tr><td> 21</td><td>geopotential zonals</td></tr>
   //  <tr><td> 22</td><td>geopotential tesserals</td></tr>
   //  <tr><td> 23</td><td>ballistic coefficient (m^2/kg)</td></tr>
   //  <tr><td> 24</td><td>BDOT (m^2/kg-s)</td></tr>
   //  <tr><td> 25</td><td>solar radiation pressure coefficient (m^2/kg)</td></tr>
   //  <tr><td> 26</td><td>energy dissipation rate (w/kg)</td></tr>
   //  <tr><td> 27</td><td>outgassing parameter/thrust acceleration (km/s^2)</td></tr>
   //  <tr><td> 28</td><td>center of mass offset (m)</td></tr>
   //  <tr><td> 29</td><td>solar flux F10</td></tr>
   //  <tr><td> 30</td><td>average F10</td></tr>
   //  <tr><td> 31</td><td>average Ap</td></tr>
   //  <tr><td> 32</td><td>TAI - UTC (s)</td></tr>
   //  <tr><td> 33</td><td>UT1 - UTC (s)</td></tr>
   //  <tr><td> 34</td><td>UT1 rate (ms/day)</td></tr>
   //  <tr><td> 35</td><td>polar motion X (arcsec)</td></tr>
   //  <tr><td> 36</td><td>polar motion Y (arcsec)</td></tr>
   //  <tr><td> 37</td><td>nutation terms</td></tr>
   //  <tr><td> 38</td><td>leap second time in days since 1950 UTC</td></tr>
   //  <tr><td> 39</td><td>initial step size</td></tr>
   //  <tr><td> 40</td><td>integrator control error</td></tr>
   //  <tr><td> 41</td><td>position u sigma (km)</td></tr>
   //  <tr><td> 42</td><td>position v sigma (km)</td></tr>
   //  <tr><td> 43</td><td>position w sigma (km)</td></tr>
   //  <tr><td> 44</td><td>velocity u sigma (km/s)</td></tr>
   //  <tr><td> 45</td><td>velocity v sigma (km/s)</td></tr>
   //  <tr><td> 46</td><td>velocity w sigma (km/s)</td></tr>
   //  <tr><td> 47</td><td>covariance matrix size</td></tr>
   //  <tr><td> 48</td><td>weighted RM of last DC on the satellite</td></tr>
   //  <tr><td>100</td><td>the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9
   //  covmtx)</td></tr>
   //  </table>
   //  <br>
   //  The order of the values in the lower half of the covariance matrix is described in the VCM Data Description section.  
   //  <br>
   //  For a 6x6 covariance matrix, the 21 values should be entered in the xa_vcm array using index values 100-120.  
   //  <br>
   //  For a 9x9 covariance matrix, the 45 values should be entered using the index values 100-144.
   pub fn VcmAddSatFrFields(xs_vcm: *const c_char, xa_vcm: *const [f64; 512]) -> i64;
   //  Works like VcmAddSatFrFields but designed for Matlab
   //  <br>
   //  See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
   pub fn VcmAddSatFrFieldsML(xs_vcm: *const c_char, xa_vcm: *const [f64; 512], satKey: *mut i64);
   //  Retrieves VCM data associated with the input satKey
   pub fn VcmRetrieveAllData(satKey: i64, xs_vcm: *const c_char, xa_vcm: *mut [f64; 512]) -> i32;
   //  Updates a VCM using its individual field values. Note: satellite's number and epoch won't be updated
   //  <br>
   //  See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
   pub fn VcmUpdateSatFrFields(satKey: i64, xs_vcm: *const c_char, xa_vcm: *const [f64; 512]) -> i32;
   //  Retrieves the value of a specific field of a VCM
   //  <br>
   //  The table below shows the values for the xf_Vcm parameter:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td>index</td>
   //  <td>index Interpretation</td>
   //  </tr>
   //  <tr><td> 1 </td><td> Satellite number I5</td></tr>
   //  <tr><td> 2 </td><td> Satellite international designator A8</td></tr>
   //  <tr><td> 3 </td><td> Epoch YYYYDDDHHMMSS.SSS A17</td></tr>
   //  <tr><td> 4 </td><td> Revolution number I5</td></tr>
   //  <tr><td> 5 </td><td> position X (km) F16.8 </td></tr>
   //  <tr><td> 6 </td><td> position Y (km) F16.8 </td></tr>
   //  <tr><td> 7 </td><td> position Z (km) F16.8   </td></tr>
   //  <tr><td> 8 </td><td> velocity X (km/s) F16.12</td></tr>
   //  <tr><td> 9 </td><td> velocity Y (km/s) F16.12</td></tr>
   //  <tr><td>10 </td><td> velocity Z (km/s) F16.12</td></tr>
   //  <tr><td>11 </td><td> Geo Name A6</td></tr>
   //  <tr><td>12 </td><td> Geo zonals I2</td></tr>
   //  <tr><td>13 </td><td> Geo tesserals I2</td></tr>
   //  <tr><td>14 </td><td> Drag modelel A12 (NONE, JAC70/MSIS90) </td></tr>
   //  <tr><td>15 </td><td> Lunar solar A3 (ON/OFF)</td></tr>
   //  <tr><td>16 </td><td> Radiation pressure pertubations A3 (ON/OFF)</td></tr>
   //  <tr><td>17 </td><td> Earth + ocean tides pertubations A3 (ON/OFF)</td></tr>
   //  <tr><td>18 </td><td> Intrack thrust A3 (ON/OFF)</td></tr>
   //  <tr><td>19 </td><td> Ballistic coefficient (m^2/kg)</td></tr>
   //  <tr><td>20 </td><td> Radiation pressure coefficient  (m^2/kg)</td></tr>
   //  <tr><td>21 </td><td> Outgassing parameter (km/s^2)</td></tr>
   //  <tr><td>22 </td><td> Center of mass offset (m)</td></tr>
   //  <tr><td>23 </td><td> Solar flux F10 I3</td></tr>
   //  <tr><td>24 </td><td> Solar flux F10 average I3</td></tr>
   //  <tr><td>25 </td><td> Ap average F5.1</td></tr>
   //  <tr><td>26 </td><td> TAI minus UTC (s)I2</td></tr>
   //  <tr><td>27 </td><td> UT1 minus UTC (s) F7.5</td></tr>
   //  <tr><td>28 </td><td> UT1 rate (ms/day)  F5.3</td></tr>
   //  <tr><td>29 </td><td> Polar motion X (arcsec) F6.4</td></tr>
   //  <tr><td>30 </td><td> Polar motion Y (arcsec) F6.4</td></tr>
   //  <tr><td>31 </td><td> Nutation terms I3</td></tr>
   //  <tr><td>32 </td><td> Leap second time YYYYDDDHHMMSS.SSS A17</td></tr>
   //  <tr><td>33 </td><td> Integration mode A6 (ASW, OSW, SPADOC)</td></tr>
   //  <tr><td>34 </td><td> Type of partial derivatives A8 (ANALYTIC, FULL NUM, FAST NUM)</td></tr>
   //  <tr><td>35 </td><td> Integration step mode A4 (AUTO/TIME, S)</td></tr>
   //  <tr><td>36 </td><td> Fixed step size indicator A3 (ON/OFF)</td></tr>
   //  <tr><td>37 </td><td> Initial step size selection A6 (AUTO/MANUAL)</td></tr>
   //  <tr><td>38 </td><td> Initial integration step size F8.3</td></tr>
   //  <tr><td>39 </td><td> Integrator error control E9.3</td></tr>
   //  <tr><td>40 </td><td> Weighted RMS of last DC E10.5</td></tr>
   //  <tr><td>41 </td><td> BDOT (M2/KG-S)</td></tr>
   //  <tr><td>42 </td><td> EDR (W/KG)</td></tr>
   //  </table>
   pub fn VcmGetField(satKey: i64, xf_Vcm: i32, valueStr: *const c_char) -> i32;
   //  Updates the value of a specific field of a VCM
   //  See VcmGetField for a description of the xf_Vcm parameter.
   pub fn VcmSetField(satKey: i64, xf_Vcm: i32, valueStr: *const c_char) -> i32;
   //  Retrieves all of the data for a VCM in a single function call
   pub fn VcmGetAllFields(satKey: i64, satNum: *mut i32, satName: *const c_char, epochDtg: *const c_char, revNum: *mut i32, posECI: *mut [f64; 3], velECI: *mut [f64; 3], geoName: *const c_char, geoZonals: *mut i32, geoTesserals: *mut i32, dragModel: *const c_char, lunarSolar: *const c_char, radPress: *const c_char, earthTides: *const c_char, intrackThrust: *const c_char, bTerm: *mut f64, agom: *mut f64, ogParm: *mut f64, cmOffset: *mut f64, f10: *mut i32, f10Avg: *mut i32, apAvg: *mut f64, tconRec: *mut [f64; 5], nTerms: *mut i32, leapYrDtg: *const c_char, integMode: *const c_char, partials: *const c_char, stepMode: *const c_char, fixStep: *const c_char, stepSelection: *const c_char, initStepSize: *mut f64, errCtrl: *mut f64, rms: *mut f64) -> i32;
   //  Returns the concatenated string representation of a VCM by the satellite's satKey
   pub fn VcmGetLines(satKey: i64, vcmLines: *const c_char) -> i32;
   //  Converts VCM 1-line format to multi-line format (as a concatenated string)
   pub fn Vcm1LineToMultiLine(vcm1Line: *const c_char, vcmLines: *const c_char) -> i32;
   //  Converts VCM multi-line format (as a concatenated string) to 1-line format 
   pub fn VcmMultiLineTo1Line(vcmLines: *const c_char, vcm1Line: *const c_char) -> i32;
   //  Returns the first satKey from the currently loaded set of VCM's that contains the specified satellite number
   //  This function is useful when Vcm dll is used in applications that requires only one record (one Vcm entry) for one satellite and the applications refer to that Vcm by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   pub fn VcmGetSatKey(satNum: i32) -> i64;
   //  Works like VcmGetSatKey but designed for Matlab
   pub fn VcmGetSatKeyML(satNum: i32, satKey: *mut i64);
   //  Computes a satKey from the input data
   //  This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
   pub fn VcmFieldsToSatKey(satNum: i32, epochDtg: *const c_char) -> i64;
   //  Works like VcmFieldsToSatKey but designed for Matlab
   pub fn VcmFieldsToSatKeyML(satNum: i32, epochDtg: *const c_char, satKey: *mut i64);
   //  Constructs a multi-line VCM (as a concatenated string) from the VCM data stored in the input arrays.
   pub fn VcmArrayToVcmLines(xa_vcm: *const [f64; 512], xs_vcm: *const c_char, vcmLines: *const c_char);
   //  Constructs a 1-line VCM from the VCM data stored in the input arrays.
   pub fn VcmArrayToVcm1Line(xa_vcm: *const [f64; 512], xs_vcm: *const c_char, vcm1Line: *const c_char);
   //  Parses data either in 1-line or multi-line (as a concatenated string) VCM and stores that data into the output arrays
   //  This function only parses data from the input VCM but DOES NOT load/add the input VCM to memory.
   pub fn VcmStringToArray(vcmString: *const c_char, xa_vcm: *mut [f64; 512], xs_vcm: *const c_char) -> i32;
}
   
   // Maximum string length of a multi-line VCM concatenated into one big string
   pub static VCMSTRLEN: i32 = 4000;
   
   
   // Maximum string length of a 1-line VCM string
   pub static VCM1LINELEN: i32 = 1500;
   
   
   // Starting location of the VCM's text data fields
   // satellite name A8
   pub static XS_VCM_SATNAME: i32 =   0;
   // common satellite name A25
   pub static XS_VCM_COMMNAME: i32 =   8;
   // geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
   pub static XS_VCM_GEONAME: i32 =  33;
   // drag model A12
   pub static XS_VCM_DRAGMOD: i32 =  39;
   // lunar solar pertubations A3 (ON, OFF)
   pub static XS_VCM_LUNAR: i32 =  51;
   // radiation pressure pertubations A3 (ON, OFF)
   pub static XS_VCM_RADPRESS: i32 =  54;
   // Earth + ocean tides pertubation A3 (ON, OFF)
   pub static XS_VCM_EARTHTIDES: i32 =  57;
   // intrack thrust A3 (ON, OFF)
   pub static XS_VCM_INTRACK: i32 =  60;
   // integration mode A6 (ASW, OSW, SPADOC, ...)
   pub static XS_VCM_INTEGMODE: i32 =  63;
   // coordinate system A5
   pub static XS_VCM_COORDSYS: i32 =  69;
   // type of partial derivatives A8
   pub static XS_VCM_PARTIALS: i32 =  74;
   // step mode A4 (AUTO, TIME, S)
   pub static XS_VCM_STEPMODE: i32 =  82;
   // fixed step size indicator A3 (ON, OFF)
   pub static XS_VCM_FIXEDSTEP: i32 =  86;
   // initial step size selection A6 (AUTO, MANUAL)
   pub static XS_VCM_STEPSEL: i32 =  89;
   
   pub static XS_VCM_SIZE: i32 = 512;
   
   // VCM's text data fields - new convention (start index, string length)
   // satellite name A8
   pub static XS_VCM_SATNAME_0_8: i32 =   0;
   // common satellite name A25
   pub static XS_VCM_COMMNAME_8_25: i32 =   8;
   // geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
   pub static XS_VCM_GEONAME_33_6: i32 =  33;
   // drag model A12
   pub static XS_VCM_DRAGMOD_39_12: i32 =  39;
   // lunar solar pertubations A3 (ON, OFF)
   pub static XS_VCM_LUNAR_51_3: i32 =  51;
   // radiation pressure pertubations A3 (ON, OFF)
   pub static XS_VCM_RADPRESS_54_3: i32 =  54;
   // Earth + ocean tides pertubation A3 (ON, OFF)
   pub static XS_VCM_EARTHTIDES_57_3: i32 =  57;
   // intrack thrust A3 (ON, OFF)
   pub static XS_VCM_INTRACK_60_3: i32 =  60;
   // integration mode A6 (ASW, OSW, SPADOC, ...)
   pub static XS_VCM_INTEGMODE_63_6: i32 =  63;
   // coordinate system A5
   pub static XS_VCM_COORDSYS_69_5: i32 =  69;
   // type of partial derivatives A8
   pub static XS_VCM_PARTIALS_74_8: i32 =  74;
   // step mode A4 (AUTO, TIME, S)
   pub static XS_VCM_STEPMODE_82_4: i32 =  82;
   // fixed step size indicator A3 (ON, OFF)
   pub static XS_VCM_FIXEDSTEP_86_3: i32 =  86;
   // initial step size selection A6 (AUTO, MANUAL)
   pub static XS_VCM_STEPSEL_89_6: i32 =  89;
   
   pub static XS_VCM_LENGTH: i32 = 512;
   
   // Indexes to access data from an array containing VCM numerical data fields
   // satellite number
   pub static XA_VCM_SATNUM: i32 =   0;
   // satellite's epoch time
   pub static XA_VCM_EPOCHDS50UTC: i32 =   1;
   // epoch revolution number
   pub static XA_VCM_REVNUM: i32 =   2;
   // J2K position X (km)
   pub static XA_VCM_J2KPOSX: i32 =   3;
   // J2K position Y (km)
   pub static XA_VCM_J2KPOSY: i32 =   4;
   // J2K position Z (km)
   pub static XA_VCM_J2KPOSZ: i32 =   5;
   // J2K velocity X (km/s)
   pub static XA_VCM_J2KVELX: i32 =   6;
   // J2K velocity Y (km/s)
   pub static XA_VCM_J2KVELY: i32 =   7;
   // J2K velocity Z (km/s)
   pub static XA_VCM_J2KVELZ: i32 =   8;
   // ECI position X (km)
   pub static XA_VCM_ECIPOSX: i32 =   9;
   // ECI position Y (km)
   pub static XA_VCM_ECIPOSY: i32 =  10;
   // ECI position Z (km)
   pub static XA_VCM_ECIPOSZ: i32 =  11;
   // ECI velocity X (km/s)
   pub static XA_VCM_ECIVELX: i32 =  12;
   // ECI velocity Y (km/s)
   pub static XA_VCM_ECIVELY: i32 =  13;
   // ECI velocity Z (km/s)
   pub static XA_VCM_ECIVELZ: i32 =  14;
   // EFG position X (km)
   pub static XA_VCM_EFGPOSX: i32 =  15;
   // EFG position Y (km)
   pub static XA_VCM_EFGPOSY: i32 =  16;
   // EFG position Z (km)
   pub static XA_VCM_EFGPOSZ: i32 =  17;
   // EFG velocity X (km/s)
   pub static XA_VCM_EFGVELX: i32 =  18;
   // EFG velocity Y (km/s)
   pub static XA_VCM_EFGVELY: i32 =  19;
   // EFG velocity Z (km/s)
   pub static XA_VCM_EFGVELZ: i32 =  20;
   // geopotential zonals
   pub static XA_VCM_GEOZON: i32 =  21;
   // geopotential tesserals
   pub static XA_VCM_GEOTES: i32 =  22;
   // ballistic coefficient (m^2/kg)
   pub static XA_VCM_BTERM: i32 =  23;
   // BDOT (m^2/kg-s)
   pub static XA_VCM_BDOT: i32 =  24;
   // solar radiation pressure coefficient (m^2/kg)
   pub static XA_VCM_AGOM: i32 =  25;
   // energy dissipation rate (w/kg)
   pub static XA_VCM_EDR: i32 =  26;
   // outgassing parameter/thrust acceleration (m/s^2)
   pub static XA_VCM_OGPARM: i32 =  27;
   // center of mass offset (m)
   pub static XA_VCM_CMOFFSET: i32 =  28;
   // solar flux F10
   pub static XA_VCM_F10: i32 =  29;
   // average F10
   pub static XA_VCM_F10AVG: i32 =  30;
   // average Ap
   pub static XA_VCM_APAVG: i32 =  31;
   // TAI - UTC (s)
   pub static XA_VCM_TAIMUTC: i32 =  32;
   // UT1 - UTC (s)
   pub static XA_VCM_UT1MUTC: i32 =  33;
   // UT1 rate (ms/day)
   pub static XA_VCM_UT1RATE: i32 =  34;
   // polar motion X (arcsec)
   pub static XA_VCM_POLMOTX: i32 =  35;
   // polar motion Y (arcsec)
   pub static XA_VCM_POLMOTY: i32 =  36;
   // nutation terms
   pub static XA_VCM_NUTTERMS: i32 =  37;
   // leap second time in days since 1950 UTC
   pub static XA_VCM_LEAPDS50UTC: i32 =  38;
   // initial step size
   pub static XA_VCM_INITSTEP: i32 =  39;
   // integrator control error
   pub static XA_VCM_ERRCTRL: i32 =  40;
   // position u sigma (km)
   pub static XA_VCM_POSUSIG: i32 =  41;
   // position v sigma (km)
   pub static XA_VCM_POSVSIG: i32 =  42;
   // position w sigma (km)
   pub static XA_VCM_POSWSIG: i32 =  43;
   // velocity u sigma (km/s)
   pub static XA_VCM_VELUSIG: i32 =  44;
   // velocity v sigma (km/s)
   pub static XA_VCM_VELVSIG: i32 =  45;
   // velocity w sigma (km/s)
   pub static XA_VCM_VELWSIG: i32 =  46;
   // covariance matrix size
   pub static XA_VCM_COVMTXSIZE: i32 =  47;
   // weighted RM of last DC on the satellite
   pub static XA_VCM_RMS: i32 =  48;
   // the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9 covmtx)
   pub static XA_VCM_COVELEMS: i32 = 100;
   
   pub static XA_VCM_SIZE: i32 = 512;
   
   // Indexes of VCM data fields
   // Satellite number I5
   pub static XF_VCM_SATNUM: i32 =  1;
   // Satellite international designator A8
   pub static XF_VCM_SATNAME: i32 =  2;
   // Epoch YYYYDDDHHMMSS.SSS A17
   pub static XF_VCM_EPOCH: i32 =  3;
   // Revolution number I5
   pub static XF_VCM_REVNUM: i32 =  4;
   // position X (km) F16.8
   pub static XF_VCM_POSX: i32 =  5;
   // position Y (km) F16.8
   pub static XF_VCM_POSY: i32 =  6;
   // position Z (km) F16.8
   pub static XF_VCM_POSZ: i32 =  7;
   // velocity X (km/s) F16.12
   pub static XF_VCM_VELX: i32 =  8;
   // velocity Y (km/s) F16.12
   pub static XF_VCM_VELY: i32 =  9;
   // velocity Z (km/s) F16.12
   pub static XF_VCM_VELZ: i32 = 10;
   // Geo Name A6
   pub static XF_VCM_GEONAME: i32 = 11;
   // Geo zonals I2
   pub static XF_VCM_GEOZONALS: i32 = 12;
   // Geo tesserals I2
   pub static XF_VCM_GEOTESSER: i32 = 13;
   // Drag modelel A12 (NONE, JAC70/MSIS90)
   pub static XF_VCM_DRAGMODE: i32 = 14;
   // Lunar solar A3 (ON/OFF)
   pub static XF_VCM_LUNSOL: i32 = 15;
   // Radiation pressure pertubations A3 (ON/OFF)
   pub static XF_VCM_RADPRESS: i32 = 16;
   // Earth + ocean tides pertubations A3 (ON/OFF)
   pub static XF_VCM_ERTHTIDES: i32 = 17;
   // Intrack thrust A3 (ON/OFF)
   pub static XF_VCM_INTRACK: i32 = 18;
   // Ballistic coefficient (m^2/kg)
   pub static XF_VCM_BTERM: i32 = 19;
   // Radiation pressure coefficient  (m^2/kg)
   pub static XF_VCM_AGOM: i32 = 20;
   // Outgassing parameter (m/s^2)
   pub static XF_VCM_OGPARM: i32 = 21;
   // Center of mass offset (m)
   pub static XF_VCM_CMOFFSET: i32 = 22;
   // Solar flux F10 I3
   pub static XF_VCM_F10: i32 = 23;
   // Solar flux F10 average I3
   pub static XF_VCM_F10AVG: i32 = 24;
   // Ap average F5.1
   pub static XF_VCM_APAVG: i32 = 25;
   // TAI minus UTC (s)I2
   pub static XF_VCM_TAIMUTC: i32 = 26;
   // UT1 minus UTC (s) F7.5
   pub static XF_VCM_UT1MUTC: i32 = 27;
   // UT1 rate (ms/day)  F5.3
   pub static XF_VCM_UT1RATE: i32 = 28;
   // Polar motion X (arcsec) F6.4
   pub static XF_VCM_POLARX: i32 = 29;
   // Polar motion Y (arcsec) F6.4
   pub static XF_VCM_POLARY: i32 = 30;
   // Nutation terms I3
   pub static XF_VCM_NTERMS: i32 = 31;
   // Leap second time YYYYDDDHHMMSS.SSS A17
   pub static XF_VCM_LEAPYR: i32 = 32;
   // Integration mode A6 (ASW, OSW, SPADOC)
   pub static XF_VCM_INTEGMODE: i32 = 33;
   // Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM)
   pub static XF_VCM_PARTIALS: i32 = 34;
   // Integration step mode A4 (AUTO/TIME, S)
   pub static XF_VCM_STEPMODE: i32 = 35;
   // Fixed step size indicator A3 (ON/OFF)
   pub static XF_VCM_FIXEDSTEP: i32 = 36;
   // Initial step size selection A6 (AUTO/MANUAL)
   pub static XF_VCM_STEPSLCTN: i32 = 37;
   // Initial integration step size F8.3
   pub static XF_VCM_STEPSIZE: i32 = 38;
   // Integrator error control E9.3
   pub static XF_VCM_ERRCTRL: i32 = 39;
   // Weighted rms of last DC E10.5
   pub static XF_VCM_RMS: i32 = 40;
   // BDOT (M2/KG-S)
   pub static XF_VCM_BDOT: i32 = 41;
   // EDR (W/KG)
   pub static XF_VCM_EDR: i32 = 42;
   
   
   //*******************************************************************************
   // Different ingetration control/step mode
   pub static STEPMODE_AUTO: i32 = 0;
   pub static STEPMODE_TIME: i32 = 1;
   pub static STEPMODE_S: i32 = 2;
   
   
// ========================= End of auto generated code ==========================
