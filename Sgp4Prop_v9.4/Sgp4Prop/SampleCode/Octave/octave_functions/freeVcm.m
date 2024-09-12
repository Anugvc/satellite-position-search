% This wrapper file was generated automatically by the GenDllWrappers program.
function freeVcm()   
   % Maximum string length of a multi-line VCM concatenated into one big string
   global VCMSTRLEN;
   
   
   % Maximum string length of a 1-line VCM string
   global VCM1LINELEN;
   
   
   % Starting location of the VCM's text data fields
   % satellite name A8
   global XS_VCM_SATNAME;
   % common satellite name A25
   global XS_VCM_COMMNAME;
   % geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
   global XS_VCM_GEONAME;
   % drag model A12
   global XS_VCM_DRAGMOD;
   % lunar solar pertubations A3 (ON, OFF)
   global XS_VCM_LUNAR;
   % radiation pressure pertubations A3 (ON, OFF)
   global XS_VCM_RADPRESS;
   % Earth + ocean tides pertubation A3 (ON, OFF)
   global XS_VCM_EARTHTIDES;
   % intrack thrust A3 (ON, OFF)
   global XS_VCM_INTRACK;
   % integration mode A6 (ASW, OSW, SPADOC, ...)
   global XS_VCM_INTEGMODE;
   % coordinate system A5
   global XS_VCM_COORDSYS;
   % type of partial derivatives A8
   global XS_VCM_PARTIALS;
   % step mode A4 (AUTO, TIME, S)
   global XS_VCM_STEPMODE;
   % fixed step size indicator A3 (ON, OFF)
   global XS_VCM_FIXEDSTEP;
   % initial step size selection A6 (AUTO, MANUAL)
   global XS_VCM_STEPSEL;
   
   global XS_VCM_SIZE;
   
   % VCM's text data fields - new convention (start index, string length)
   % satellite name A8
   global XS_VCM_SATNAME_0_8;
   % common satellite name A25
   global XS_VCM_COMMNAME_8_25;
   % geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
   global XS_VCM_GEONAME_33_6;
   % drag model A12
   global XS_VCM_DRAGMOD_39_12;
   % lunar solar pertubations A3 (ON, OFF)
   global XS_VCM_LUNAR_51_3;
   % radiation pressure pertubations A3 (ON, OFF)
   global XS_VCM_RADPRESS_54_3;
   % Earth + ocean tides pertubation A3 (ON, OFF)
   global XS_VCM_EARTHTIDES_57_3;
   % intrack thrust A3 (ON, OFF)
   global XS_VCM_INTRACK_60_3;
   % integration mode A6 (ASW, OSW, SPADOC, ...)
   global XS_VCM_INTEGMODE_63_6;
   % coordinate system A5
   global XS_VCM_COORDSYS_69_5;
   % type of partial derivatives A8
   global XS_VCM_PARTIALS_74_8;
   % step mode A4 (AUTO, TIME, S)
   global XS_VCM_STEPMODE_82_4;
   % fixed step size indicator A3 (ON, OFF)
   global XS_VCM_FIXEDSTEP_86_3;
   % initial step size selection A6 (AUTO, MANUAL)
   global XS_VCM_STEPSEL_89_6;
   
   global XS_VCM_LENGTH;
   
   % Indexes to access data from an array containing VCM numerical data fields
   % satellite number
   global XA_VCM_SATNUM;
   % satellite's epoch time
   global XA_VCM_EPOCHDS50UTC;
   % epoch revolution number
   global XA_VCM_REVNUM;
   % J2K position X (km)
   global XA_VCM_J2KPOSX;
   % J2K position Y (km)
   global XA_VCM_J2KPOSY;
   % J2K position Z (km)
   global XA_VCM_J2KPOSZ;
   % J2K velocity X (km/s)
   global XA_VCM_J2KVELX;
   % J2K velocity Y (km/s)
   global XA_VCM_J2KVELY;
   % J2K velocity Z (km/s)
   global XA_VCM_J2KVELZ;
   % ECI position X (km)
   global XA_VCM_ECIPOSX;
   % ECI position Y (km)
   global XA_VCM_ECIPOSY;
   % ECI position Z (km)
   global XA_VCM_ECIPOSZ;
   % ECI velocity X (km/s)
   global XA_VCM_ECIVELX;
   % ECI velocity Y (km/s)
   global XA_VCM_ECIVELY;
   % ECI velocity Z (km/s)
   global XA_VCM_ECIVELZ;
   % EFG position X (km)
   global XA_VCM_EFGPOSX;
   % EFG position Y (km)
   global XA_VCM_EFGPOSY;
   % EFG position Z (km)
   global XA_VCM_EFGPOSZ;
   % EFG velocity X (km/s)
   global XA_VCM_EFGVELX;
   % EFG velocity Y (km/s)
   global XA_VCM_EFGVELY;
   % EFG velocity Z (km/s)
   global XA_VCM_EFGVELZ;
   % geopotential zonals
   global XA_VCM_GEOZON;
   % geopotential tesserals
   global XA_VCM_GEOTES;
   % ballistic coefficient (m^2/kg)
   global XA_VCM_BTERM;
   % BDOT (m^2/kg-s)
   global XA_VCM_BDOT;
   % solar radiation pressure coefficient (m^2/kg)
   global XA_VCM_AGOM;
   % energy dissipation rate (w/kg)
   global XA_VCM_EDR;
   % outgassing parameter/thrust acceleration (m/s^2)
   global XA_VCM_OGPARM;
   % center of mass offset (m)
   global XA_VCM_CMOFFSET;
   % solar flux F10
   global XA_VCM_F10;
   % average F10
   global XA_VCM_F10AVG;
   % average Ap
   global XA_VCM_APAVG;
   % TAI - UTC (s)
   global XA_VCM_TAIMUTC;
   % UT1 - UTC (s)
   global XA_VCM_UT1MUTC;
   % UT1 rate (ms/day)
   global XA_VCM_UT1RATE;
   % polar motion X (arcsec)
   global XA_VCM_POLMOTX;
   % polar motion Y (arcsec)
   global XA_VCM_POLMOTY;
   % nutation terms
   global XA_VCM_NUTTERMS;
   % leap second time in days since 1950 UTC
   global XA_VCM_LEAPDS50UTC;
   % initial step size
   global XA_VCM_INITSTEP;
   % integrator control error
   global XA_VCM_ERRCTRL;
   % position u sigma (km)
   global XA_VCM_POSUSIG;
   % position v sigma (km)
   global XA_VCM_POSVSIG;
   % position w sigma (km)
   global XA_VCM_POSWSIG;
   % velocity u sigma (km/s)
   global XA_VCM_VELUSIG;
   % velocity v sigma (km/s)
   global XA_VCM_VELVSIG;
   % velocity w sigma (km/s)
   global XA_VCM_VELWSIG;
   % covariance matrix size
   global XA_VCM_COVMTXSIZE;
   % weighted RM of last DC on the satellite
   global XA_VCM_RMS;
   % the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9 covmtx)
   global XA_VCM_COVELEMS;
   
   global XA_VCM_SIZE;
   
   % Indexes of VCM data fields
   % Satellite number I5
   global XF_VCM_SATNUM;
   % Satellite international designator A8
   global XF_VCM_SATNAME;
   % Epoch YYYYDDDHHMMSS.SSS A17
   global XF_VCM_EPOCH;
   % Revolution number I5
   global XF_VCM_REVNUM;
   % position X (km) F16.8
   global XF_VCM_POSX;
   % position Y (km) F16.8
   global XF_VCM_POSY;
   % position Z (km) F16.8
   global XF_VCM_POSZ;
   % velocity X (km/s) F16.12
   global XF_VCM_VELX;
   % velocity Y (km/s) F16.12
   global XF_VCM_VELY;
   % velocity Z (km/s) F16.12
   global XF_VCM_VELZ;
   % Geo Name A6
   global XF_VCM_GEONAME;
   % Geo zonals I2
   global XF_VCM_GEOZONALS;
   % Geo tesserals I2
   global XF_VCM_GEOTESSER;
   % Drag modelel A12 (NONE, JAC70/MSIS90)
   global XF_VCM_DRAGMODE;
   % Lunar solar A3 (ON/OFF)
   global XF_VCM_LUNSOL;
   % Radiation pressure pertubations A3 (ON/OFF)
   global XF_VCM_RADPRESS;
   % Earth + ocean tides pertubations A3 (ON/OFF)
   global XF_VCM_ERTHTIDES;
   % Intrack thrust A3 (ON/OFF)
   global XF_VCM_INTRACK;
   % Ballistic coefficient (m^2/kg)
   global XF_VCM_BTERM;
   % Radiation pressure coefficient  (m^2/kg)
   global XF_VCM_AGOM;
   % Outgassing parameter (m/s^2)
   global XF_VCM_OGPARM;
   % Center of mass offset (m)
   global XF_VCM_CMOFFSET;
   % Solar flux F10 I3
   global XF_VCM_F10;
   % Solar flux F10 average I3
   global XF_VCM_F10AVG;
   % Ap average F5.1
   global XF_VCM_APAVG;
   % TAI minus UTC (s)I2
   global XF_VCM_TAIMUTC;
   % UT1 minus UTC (s) F7.5
   global XF_VCM_UT1MUTC;
   % UT1 rate (ms/day)  F5.3
   global XF_VCM_UT1RATE;
   % Polar motion X (arcsec) F6.4
   global XF_VCM_POLARX;
   % Polar motion Y (arcsec) F6.4
   global XF_VCM_POLARY;
   % Nutation terms I3
   global XF_VCM_NTERMS;
   % Leap second time YYYYDDDHHMMSS.SSS A17
   global XF_VCM_LEAPYR;
   % Integration mode A6 (ASW, OSW, SPADOC)
   global XF_VCM_INTEGMODE;
   % Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM)
   global XF_VCM_PARTIALS;
   % Integration step mode A4 (AUTO/TIME, S)
   global XF_VCM_STEPMODE;
   % Fixed step size indicator A3 (ON/OFF)
   global XF_VCM_FIXEDSTEP;
   % Initial step size selection A6 (AUTO/MANUAL)
   global XF_VCM_STEPSLCTN;
   % Initial integration step size F8.3
   global XF_VCM_STEPSIZE;
   % Integrator error control E9.3
   global XF_VCM_ERRCTRL;
   % Weighted rms of last DC E10.5
   global XF_VCM_RMS;
   % BDOT (M2/KG-S)
   global XF_VCM_BDOT;
   % EDR (W/KG)
   global XF_VCM_EDR;
   
   
   %*******************************************************************************
   % Different ingetration control/step mode
   global STEPMODE_AUTO;
   global STEPMODE_TIME;
   global STEPMODE_S;
   
   
   
   % Maximum string length of a multi-line VCM concatenated into one big string
   clear VCMSTRLEN;
   
   
   % Maximum string length of a 1-line VCM string
   clear VCM1LINELEN;
   
   
   % Starting location of the VCM's text data fields
   % satellite name A8
   clear XS_VCM_SATNAME;
   % common satellite name A25
   clear XS_VCM_COMMNAME;
   % geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
   clear XS_VCM_GEONAME;
   % drag model A12
   clear XS_VCM_DRAGMOD;
   % lunar solar pertubations A3 (ON, OFF)
   clear XS_VCM_LUNAR;
   % radiation pressure pertubations A3 (ON, OFF)
   clear XS_VCM_RADPRESS;
   % Earth + ocean tides pertubation A3 (ON, OFF)
   clear XS_VCM_EARTHTIDES;
   % intrack thrust A3 (ON, OFF)
   clear XS_VCM_INTRACK;
   % integration mode A6 (ASW, OSW, SPADOC, ...)
   clear XS_VCM_INTEGMODE;
   % coordinate system A5
   clear XS_VCM_COORDSYS;
   % type of partial derivatives A8
   clear XS_VCM_PARTIALS;
   % step mode A4 (AUTO, TIME, S)
   clear XS_VCM_STEPMODE;
   % fixed step size indicator A3 (ON, OFF)
   clear XS_VCM_FIXEDSTEP;
   % initial step size selection A6 (AUTO, MANUAL)
   clear XS_VCM_STEPSEL;
   
   clear XS_VCM_SIZE;
   
   % VCM's text data fields - new convention (start index, string length)
   % satellite name A8
   clear XS_VCM_SATNAME_0_8;
   % common satellite name A25
   clear XS_VCM_COMMNAME_8_25;
   % geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
   clear XS_VCM_GEONAME_33_6;
   % drag model A12
   clear XS_VCM_DRAGMOD_39_12;
   % lunar solar pertubations A3 (ON, OFF)
   clear XS_VCM_LUNAR_51_3;
   % radiation pressure pertubations A3 (ON, OFF)
   clear XS_VCM_RADPRESS_54_3;
   % Earth + ocean tides pertubation A3 (ON, OFF)
   clear XS_VCM_EARTHTIDES_57_3;
   % intrack thrust A3 (ON, OFF)
   clear XS_VCM_INTRACK_60_3;
   % integration mode A6 (ASW, OSW, SPADOC, ...)
   clear XS_VCM_INTEGMODE_63_6;
   % coordinate system A5
   clear XS_VCM_COORDSYS_69_5;
   % type of partial derivatives A8
   clear XS_VCM_PARTIALS_74_8;
   % step mode A4 (AUTO, TIME, S)
   clear XS_VCM_STEPMODE_82_4;
   % fixed step size indicator A3 (ON, OFF)
   clear XS_VCM_FIXEDSTEP_86_3;
   % initial step size selection A6 (AUTO, MANUAL)
   clear XS_VCM_STEPSEL_89_6;
   
   clear XS_VCM_LENGTH;
   
   % Indexes to access data from an array containing VCM numerical data fields
   % satellite number
   clear XA_VCM_SATNUM;
   % satellite's epoch time
   clear XA_VCM_EPOCHDS50UTC;
   % epoch revolution number
   clear XA_VCM_REVNUM;
   % J2K position X (km)
   clear XA_VCM_J2KPOSX;
   % J2K position Y (km)
   clear XA_VCM_J2KPOSY;
   % J2K position Z (km)
   clear XA_VCM_J2KPOSZ;
   % J2K velocity X (km/s)
   clear XA_VCM_J2KVELX;
   % J2K velocity Y (km/s)
   clear XA_VCM_J2KVELY;
   % J2K velocity Z (km/s)
   clear XA_VCM_J2KVELZ;
   % ECI position X (km)
   clear XA_VCM_ECIPOSX;
   % ECI position Y (km)
   clear XA_VCM_ECIPOSY;
   % ECI position Z (km)
   clear XA_VCM_ECIPOSZ;
   % ECI velocity X (km/s)
   clear XA_VCM_ECIVELX;
   % ECI velocity Y (km/s)
   clear XA_VCM_ECIVELY;
   % ECI velocity Z (km/s)
   clear XA_VCM_ECIVELZ;
   % EFG position X (km)
   clear XA_VCM_EFGPOSX;
   % EFG position Y (km)
   clear XA_VCM_EFGPOSY;
   % EFG position Z (km)
   clear XA_VCM_EFGPOSZ;
   % EFG velocity X (km/s)
   clear XA_VCM_EFGVELX;
   % EFG velocity Y (km/s)
   clear XA_VCM_EFGVELY;
   % EFG velocity Z (km/s)
   clear XA_VCM_EFGVELZ;
   % geopotential zonals
   clear XA_VCM_GEOZON;
   % geopotential tesserals
   clear XA_VCM_GEOTES;
   % ballistic coefficient (m^2/kg)
   clear XA_VCM_BTERM;
   % BDOT (m^2/kg-s)
   clear XA_VCM_BDOT;
   % solar radiation pressure coefficient (m^2/kg)
   clear XA_VCM_AGOM;
   % energy dissipation rate (w/kg)
   clear XA_VCM_EDR;
   % outgassing parameter/thrust acceleration (m/s^2)
   clear XA_VCM_OGPARM;
   % center of mass offset (m)
   clear XA_VCM_CMOFFSET;
   % solar flux F10
   clear XA_VCM_F10;
   % average F10
   clear XA_VCM_F10AVG;
   % average Ap
   clear XA_VCM_APAVG;
   % TAI - UTC (s)
   clear XA_VCM_TAIMUTC;
   % UT1 - UTC (s)
   clear XA_VCM_UT1MUTC;
   % UT1 rate (ms/day)
   clear XA_VCM_UT1RATE;
   % polar motion X (arcsec)
   clear XA_VCM_POLMOTX;
   % polar motion Y (arcsec)
   clear XA_VCM_POLMOTY;
   % nutation terms
   clear XA_VCM_NUTTERMS;
   % leap second time in days since 1950 UTC
   clear XA_VCM_LEAPDS50UTC;
   % initial step size
   clear XA_VCM_INITSTEP;
   % integrator control error
   clear XA_VCM_ERRCTRL;
   % position u sigma (km)
   clear XA_VCM_POSUSIG;
   % position v sigma (km)
   clear XA_VCM_POSVSIG;
   % position w sigma (km)
   clear XA_VCM_POSWSIG;
   % velocity u sigma (km/s)
   clear XA_VCM_VELUSIG;
   % velocity v sigma (km/s)
   clear XA_VCM_VELVSIG;
   % velocity w sigma (km/s)
   clear XA_VCM_VELWSIG;
   % covariance matrix size
   clear XA_VCM_COVMTXSIZE;
   % weighted RM of last DC on the satellite
   clear XA_VCM_RMS;
   % the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9 covmtx)
   clear XA_VCM_COVELEMS;
   
   clear XA_VCM_SIZE;
   
   % Indexes of VCM data fields
   % Satellite number I5
   clear XF_VCM_SATNUM;
   % Satellite international designator A8
   clear XF_VCM_SATNAME;
   % Epoch YYYYDDDHHMMSS.SSS A17
   clear XF_VCM_EPOCH;
   % Revolution number I5
   clear XF_VCM_REVNUM;
   % position X (km) F16.8
   clear XF_VCM_POSX;
   % position Y (km) F16.8
   clear XF_VCM_POSY;
   % position Z (km) F16.8
   clear XF_VCM_POSZ;
   % velocity X (km/s) F16.12
   clear XF_VCM_VELX;
   % velocity Y (km/s) F16.12
   clear XF_VCM_VELY;
   % velocity Z (km/s) F16.12
   clear XF_VCM_VELZ;
   % Geo Name A6
   clear XF_VCM_GEONAME;
   % Geo zonals I2
   clear XF_VCM_GEOZONALS;
   % Geo tesserals I2
   clear XF_VCM_GEOTESSER;
   % Drag modelel A12 (NONE, JAC70/MSIS90)
   clear XF_VCM_DRAGMODE;
   % Lunar solar A3 (ON/OFF)
   clear XF_VCM_LUNSOL;
   % Radiation pressure pertubations A3 (ON/OFF)
   clear XF_VCM_RADPRESS;
   % Earth + ocean tides pertubations A3 (ON/OFF)
   clear XF_VCM_ERTHTIDES;
   % Intrack thrust A3 (ON/OFF)
   clear XF_VCM_INTRACK;
   % Ballistic coefficient (m^2/kg)
   clear XF_VCM_BTERM;
   % Radiation pressure coefficient  (m^2/kg)
   clear XF_VCM_AGOM;
   % Outgassing parameter (m/s^2)
   clear XF_VCM_OGPARM;
   % Center of mass offset (m)
   clear XF_VCM_CMOFFSET;
   % Solar flux F10 I3
   clear XF_VCM_F10;
   % Solar flux F10 average I3
   clear XF_VCM_F10AVG;
   % Ap average F5.1
   clear XF_VCM_APAVG;
   % TAI minus UTC (s)I2
   clear XF_VCM_TAIMUTC;
   % UT1 minus UTC (s) F7.5
   clear XF_VCM_UT1MUTC;
   % UT1 rate (ms/day)  F5.3
   clear XF_VCM_UT1RATE;
   % Polar motion X (arcsec) F6.4
   clear XF_VCM_POLARX;
   % Polar motion Y (arcsec) F6.4
   clear XF_VCM_POLARY;
   % Nutation terms I3
   clear XF_VCM_NTERMS;
   % Leap second time YYYYDDDHHMMSS.SSS A17
   clear XF_VCM_LEAPYR;
   % Integration mode A6 (ASW, OSW, SPADOC)
   clear XF_VCM_INTEGMODE;
   % Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM)
   clear XF_VCM_PARTIALS;
   % Integration step mode A4 (AUTO/TIME, S)
   clear XF_VCM_STEPMODE;
   % Fixed step size indicator A3 (ON/OFF)
   clear XF_VCM_FIXEDSTEP;
   % Initial step size selection A6 (AUTO/MANUAL)
   clear XF_VCM_STEPSLCTN;
   % Initial integration step size F8.3
   clear XF_VCM_STEPSIZE;
   % Integrator error control E9.3
   clear XF_VCM_ERRCTRL;
   % Weighted rms of last DC E10.5
   clear XF_VCM_RMS;
   % BDOT (M2/KG-S)
   clear XF_VCM_BDOT;
   % EDR (W/KG)
   clear XF_VCM_EDR;
   
   
   %*******************************************************************************
   % Different ingetration control/step mode
   clear STEPMODE_AUTO;
   clear STEPMODE_TIME;
   clear STEPMODE_S;
   
   
   FreeVcmDll;
   clear LoadVcmDll;
   clear FreeVcmDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Vcm DLL for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
   clear VcmInit
   
   %  Returns information about the current version of Vcm DLL. The information is placed in the string parameter you pass in
   %  The returned string provides information about the version number, build date, and the platform of the Vcm DLL. 
   clear VcmGetInfo
   
   %  Loads a text file containing Vcm's
   %  The users can use this function repeatedly to load Vcm records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
   %  
   %  State vectors can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]" or "SPVMSG=[path/filename]".
   %  
   %  This function only reads Vcm records from the main input file or Vcm records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
   clear VcmLoadFile
   
   %  Saves the currently loaded VCM's to a file
   %  If the users call this routine immediately after VcmLoadFile. The VCMs contents in the two file should be the same (minus duplicated VCMs or bad VCMs).
   %  
   %  The purpose of this function is to save the current state of the loaded VCMs, usually used in GUI applications, for future use.
   clear VcmSaveFile
   
   %  Removes a VCM represented by the satKey from memory
   %  If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   clear VcmRemoveSat
   
   %  Removes all VCM's from memory
   %  The function returns zero if all the satellites are removed successfully from the Vcm DLL's binary tree.
   clear VcmRemoveAllSats
   
   %  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
   %  See VcmGetLoaded for an example.
   %  This function is useful for dynamically allocating memory for the array that is passed to the function VcmGetLoaded().
   clear VcmGetCount
   
   %  Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
   %  It is recommended that VcmGetCount() is used to count how many satellites are currently loaded in the Vcm DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
   %  
   %  If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   clear VcmGetLoaded
   
   %  Adds a VCM using its 1-line or concatenated string formats
   %  If the satellite was previously added to the Vcm DLL's binary tree, the function also returns a negative value indicating an error. 
   %  
   %  The users can use this function repeatedly to add many satellites (one satellite at a time) to the Vcm DLL's binary tree. 
   clear VcmAddSatFrLines
   
   %  Works like VcmAddSatFrLines but designed for Matlab
   clear VcmAddSatFrLinesML
   
   %  Adds a VCM using its individually provided field values
   %  <br>
   %  The table below indicates starting character position for each field in the xs_vcm parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td>Starting Character Position</td>
   %  <td>Input Description</td>
   %  </tr>
   %  <tr><td> 0</td><td>satellite name, A8</td></tr>
   %  <tr><td> 8</td><td>common satellite name, A25</td></tr>
   %  <tr><td>33</td><td>geopotential name, A6 (WGS-72, WGS-84, EGM-96, ...)</td></tr>
   %  <tr><td>39</td><td>drag model, A12</td></tr>
   %  <tr><td>51</td><td>lunar solar pertubations, A3 (ON, OFF)</td></tr>
   %  <tr><td>54</td><td>radiation pressure pertubations, A3 (ON, OFF)</td></tr>
   %  <tr><td>57</td><td>Earth + ocean tides pertubation, A3 (ON, OFF)</td></tr>
   %  <tr><td>60</td><td>intrack thrust, A3 (ON, OFF)</td></tr>
   %  <tr><td>63</td><td>integration mode, A6 (ASW, OSW, SPADOC, ...)</td></tr>
   %  <tr><td>69</td><td>coordinate system, A5</td></tr>
   %  <tr><td>74</td><td>type of partial derivatives, A8</td></tr>
   %  <tr><td>82</td><td>step mode, A4 (AUTO, TIME, S)</td></tr>
   %  <tr><td>86</td><td>fixed step size indicator, A3 (ON, OFF)</td></tr>
   %  <tr><td>89</td><td>initial step size selection, A6 (AUTO, MANUAL)</td></tr>
   %  </table>
   %  <br> 
   %  The table below indicates the index for each field in the xa_vcm array:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td>Index (xa_vcm)</td>
   %  <td>index Interpretation</td>
   %  </tr>
   %  <tr><td>  0</td><td>satellite number</td></tr>
   %  <tr><td>  1</td><td>satellite's epoch time</td></tr>
   %  <tr><td>  2</td><td>epoch revolution number</td></tr>
   %  <tr><td>  3</td><td>J2K position X (km)</td></tr>
   %  <tr><td>  4</td><td>J2K position Y (km)</td></tr>
   %  <tr><td>  5</td><td>J2K position Z (km)</td></tr>
   %  <tr><td>  6</td><td>J2K velocity X (km/s)</td></tr>
   %  <tr><td>  7</td><td>J2K velocity Y (km/s)</td></tr>
   %  <tr><td>  8</td><td>J2K velocity Z (km/s)</td></tr>
   %  <tr><td>  9</td><td>ECI position X (km)</td></tr>
   %  <tr><td> 10</td><td>ECI position Y (km)</td></tr>
   %  <tr><td> 11</td><td>ECI position Z (km)</td></tr>
   %  <tr><td> 12</td><td>ECI velocity X (km/s)</td></tr>
   %  <tr><td> 13</td><td>ECI velocity Y (km/s)</td></tr>
   %  <tr><td> 14</td><td>ECI velocity Z (km/s)</td></tr>
   %  <tr><td> 15</td><td>EFG position X (km)</td></tr>
   %  <tr><td> 16</td><td>EFG position Y (km)</td></tr>
   %  <tr><td> 17</td><td>EFG position Z (km)</td></tr>
   %  <tr><td> 18</td><td>EFG velocity X (km/s)</td></tr>
   %  <tr><td> 19</td><td>EFG velocity Y (km/s)</td></tr>
   %  <tr><td> 20</td><td>EFG velocity Z (km/s)</td></tr>
   %  <tr><td> 21</td><td>geopotential zonals</td></tr>
   %  <tr><td> 22</td><td>geopotential tesserals</td></tr>
   %  <tr><td> 23</td><td>ballistic coefficient (m^2/kg)</td></tr>
   %  <tr><td> 24</td><td>BDOT (m^2/kg-s)</td></tr>
   %  <tr><td> 25</td><td>solar radiation pressure coefficient (m^2/kg)</td></tr>
   %  <tr><td> 26</td><td>energy dissipation rate (w/kg)</td></tr>
   %  <tr><td> 27</td><td>outgassing parameter/thrust acceleration (km/s^2)</td></tr>
   %  <tr><td> 28</td><td>center of mass offset (m)</td></tr>
   %  <tr><td> 29</td><td>solar flux F10</td></tr>
   %  <tr><td> 30</td><td>average F10</td></tr>
   %  <tr><td> 31</td><td>average Ap</td></tr>
   %  <tr><td> 32</td><td>TAI - UTC (s)</td></tr>
   %  <tr><td> 33</td><td>UT1 - UTC (s)</td></tr>
   %  <tr><td> 34</td><td>UT1 rate (ms/day)</td></tr>
   %  <tr><td> 35</td><td>polar motion X (arcsec)</td></tr>
   %  <tr><td> 36</td><td>polar motion Y (arcsec)</td></tr>
   %  <tr><td> 37</td><td>nutation terms</td></tr>
   %  <tr><td> 38</td><td>leap second time in days since 1950 UTC</td></tr>
   %  <tr><td> 39</td><td>initial step size</td></tr>
   %  <tr><td> 40</td><td>integrator control error</td></tr>
   %  <tr><td> 41</td><td>position u sigma (km)</td></tr>
   %  <tr><td> 42</td><td>position v sigma (km)</td></tr>
   %  <tr><td> 43</td><td>position w sigma (km)</td></tr>
   %  <tr><td> 44</td><td>velocity u sigma (km/s)</td></tr>
   %  <tr><td> 45</td><td>velocity v sigma (km/s)</td></tr>
   %  <tr><td> 46</td><td>velocity w sigma (km/s)</td></tr>
   %  <tr><td> 47</td><td>covariance matrix size</td></tr>
   %  <tr><td> 48</td><td>weighted RM of last DC on the satellite</td></tr>
   %  <tr><td>100</td><td>the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9
   %  covmtx)</td></tr>
   %  </table>
   %  <br>
   %  The order of the values in the lower half of the covariance matrix is described in the VCM Data Description section.  
   %  <br>
   %  For a 6x6 covariance matrix, the 21 values should be entered in the xa_vcm array using index values 100-120.  
   %  <br>
   %  For a 9x9 covariance matrix, the 45 values should be entered using the index values 100-144.
   clear VcmAddSatFrFields
   
   %  Works like VcmAddSatFrFields but designed for Matlab
   %  <br>
   %  See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
   clear VcmAddSatFrFieldsML
   
   %  Retrieves VCM data associated with the input satKey
   clear VcmRetrieveAllData
   
   %  Updates a VCM using its individual field values. Note: satellite's number and epoch won't be updated
   %  <br>
   %  See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
   clear VcmUpdateSatFrFields
   
   %  Retrieves the value of a specific field of a VCM
   %  <br>
   %  The table below shows the values for the xf_Vcm parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td>index</td>
   %  <td>index Interpretation</td>
   %  </tr>
   %  <tr><td> 1 </td><td> Satellite number I5</td></tr>
   %  <tr><td> 2 </td><td> Satellite international designator A8</td></tr>
   %  <tr><td> 3 </td><td> Epoch YYYYDDDHHMMSS.SSS A17</td></tr>
   %  <tr><td> 4 </td><td> Revolution number I5</td></tr>
   %  <tr><td> 5 </td><td> position X (km) F16.8 </td></tr>
   %  <tr><td> 6 </td><td> position Y (km) F16.8 </td></tr>
   %  <tr><td> 7 </td><td> position Z (km) F16.8   </td></tr>
   %  <tr><td> 8 </td><td> velocity X (km/s) F16.12</td></tr>
   %  <tr><td> 9 </td><td> velocity Y (km/s) F16.12</td></tr>
   %  <tr><td>10 </td><td> velocity Z (km/s) F16.12</td></tr>
   %  <tr><td>11 </td><td> Geo Name A6</td></tr>
   %  <tr><td>12 </td><td> Geo zonals I2</td></tr>
   %  <tr><td>13 </td><td> Geo tesserals I2</td></tr>
   %  <tr><td>14 </td><td> Drag modelel A12 (NONE, JAC70/MSIS90) </td></tr>
   %  <tr><td>15 </td><td> Lunar solar A3 (ON/OFF)</td></tr>
   %  <tr><td>16 </td><td> Radiation pressure pertubations A3 (ON/OFF)</td></tr>
   %  <tr><td>17 </td><td> Earth + ocean tides pertubations A3 (ON/OFF)</td></tr>
   %  <tr><td>18 </td><td> Intrack thrust A3 (ON/OFF)</td></tr>
   %  <tr><td>19 </td><td> Ballistic coefficient (m^2/kg)</td></tr>
   %  <tr><td>20 </td><td> Radiation pressure coefficient  (m^2/kg)</td></tr>
   %  <tr><td>21 </td><td> Outgassing parameter (km/s^2)</td></tr>
   %  <tr><td>22 </td><td> Center of mass offset (m)</td></tr>
   %  <tr><td>23 </td><td> Solar flux F10 I3</td></tr>
   %  <tr><td>24 </td><td> Solar flux F10 average I3</td></tr>
   %  <tr><td>25 </td><td> Ap average F5.1</td></tr>
   %  <tr><td>26 </td><td> TAI minus UTC (s)I2</td></tr>
   %  <tr><td>27 </td><td> UT1 minus UTC (s) F7.5</td></tr>
   %  <tr><td>28 </td><td> UT1 rate (ms/day)  F5.3</td></tr>
   %  <tr><td>29 </td><td> Polar motion X (arcsec) F6.4</td></tr>
   %  <tr><td>30 </td><td> Polar motion Y (arcsec) F6.4</td></tr>
   %  <tr><td>31 </td><td> Nutation terms I3</td></tr>
   %  <tr><td>32 </td><td> Leap second time YYYYDDDHHMMSS.SSS A17</td></tr>
   %  <tr><td>33 </td><td> Integration mode A6 (ASW, OSW, SPADOC)</td></tr>
   %  <tr><td>34 </td><td> Type of partial derivatives A8 (ANALYTIC, FULL NUM, FAST NUM)</td></tr>
   %  <tr><td>35 </td><td> Integration step mode A4 (AUTO/TIME, S)</td></tr>
   %  <tr><td>36 </td><td> Fixed step size indicator A3 (ON/OFF)</td></tr>
   %  <tr><td>37 </td><td> Initial step size selection A6 (AUTO/MANUAL)</td></tr>
   %  <tr><td>38 </td><td> Initial integration step size F8.3</td></tr>
   %  <tr><td>39 </td><td> Integrator error control E9.3</td></tr>
   %  <tr><td>40 </td><td> Weighted RMS of last DC E10.5</td></tr>
   %  <tr><td>41 </td><td> BDOT (M2/KG-S)</td></tr>
   %  <tr><td>42 </td><td> EDR (W/KG)</td></tr>
   %  </table>
   clear VcmGetField
   
   %  Updates the value of a specific field of a VCM
   %  See VcmGetField for a description of the xf_Vcm parameter.
   clear VcmSetField
   
   %  Retrieves all of the data for a VCM in a single function call
   clear VcmGetAllFields
   
   %  Returns the concatenated string representation of a VCM by the satellite's satKey
   clear VcmGetLines
   
   %  Converts VCM 1-line format to multi-line format (as a concatenated string)
   clear Vcm1LineToMultiLine
   
   %  Converts VCM multi-line format (as a concatenated string) to 1-line format 
   clear VcmMultiLineTo1Line
   
   %  Returns the first satKey from the currently loaded set of VCM's that contains the specified satellite number
   %  This function is useful when Vcm dll is used in applications that requires only one record (one Vcm entry) for one satellite and the applications refer to that Vcm by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   clear VcmGetSatKey
   
   %  Works like VcmGetSatKey but designed for Matlab
   clear VcmGetSatKeyML
   
   %  Computes a satKey from the input data
   %  This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
   clear VcmFieldsToSatKey
   
   %  Works like VcmFieldsToSatKey but designed for Matlab
   clear VcmFieldsToSatKeyML
   
   %  Constructs a multi-line VCM (as a concatenated string) from the VCM data stored in the input arrays.
   clear VcmArrayToVcmLines
   
   %  Constructs a 1-line VCM from the VCM data stored in the input arrays.
   clear VcmArrayToVcm1Line
   
   %  Parses data either in 1-line or multi-line (as a concatenated string) VCM and stores that data into the output arrays
   %  This function only parses data from the input VCM but DOES NOT load/add the input VCM to memory.
   clear VcmStringToArray
endfunction
% ========================= End of auto generated code ==========================
