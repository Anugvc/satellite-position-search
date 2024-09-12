-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package VcmDll is
    
    -- Maximum string length of a multi-line VCM concatenated into one big string
    VCMSTRLEN : constant := 4000;
    
    
    -- Maximum string length of a 1-line VCM string
    VCM1LINELEN : constant := 1500;
    
    
    -- Starting location of the VCM's text data fields
    -- satellite name A8
    XS_VCM_SATNAME : constant := 0;
    -- common satellite name A25
    XS_VCM_COMMNAME : constant := 8;
    -- geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
    XS_VCM_GEONAME : constant := 33;
    -- drag model A12
    XS_VCM_DRAGMOD : constant := 39;
    -- lunar solar pertubations A3 (ON, OFF)
    XS_VCM_LUNAR : constant := 51;
    -- radiation pressure pertubations A3 (ON, OFF)
    XS_VCM_RADPRESS : constant := 54;
    -- Earth + ocean tides pertubation A3 (ON, OFF)
    XS_VCM_EARTHTIDES : constant := 57;
    -- intrack thrust A3 (ON, OFF)
    XS_VCM_INTRACK : constant := 60;
    -- integration mode A6 (ASW, OSW, SPADOC, ...)
    XS_VCM_INTEGMODE : constant := 63;
    -- coordinate system A5
    XS_VCM_COORDSYS : constant := 69;
    -- type of partial derivatives A8
    XS_VCM_PARTIALS : constant := 74;
    -- step mode A4 (AUTO, TIME, S)
    XS_VCM_STEPMODE : constant := 82;
    -- fixed step size indicator A3 (ON, OFF)
    XS_VCM_FIXEDSTEP : constant := 86;
    -- initial step size selection A6 (AUTO, MANUAL)
    XS_VCM_STEPSEL : constant := 89;
    
    XS_VCM_SIZE : constant := 512;
    
    -- VCM's text data fields - new convention (start index, string length)
    -- satellite name A8
    XS_VCM_SATNAME_0_8 : constant := 0;
    -- common satellite name A25
    XS_VCM_COMMNAME_8_25 : constant := 8;
    -- geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
    XS_VCM_GEONAME_33_6 : constant := 33;
    -- drag model A12
    XS_VCM_DRAGMOD_39_12 : constant := 39;
    -- lunar solar pertubations A3 (ON, OFF)
    XS_VCM_LUNAR_51_3 : constant := 51;
    -- radiation pressure pertubations A3 (ON, OFF)
    XS_VCM_RADPRESS_54_3 : constant := 54;
    -- Earth + ocean tides pertubation A3 (ON, OFF)
    XS_VCM_EARTHTIDES_57_3 : constant := 57;
    -- intrack thrust A3 (ON, OFF)
    XS_VCM_INTRACK_60_3 : constant := 60;
    -- integration mode A6 (ASW, OSW, SPADOC, ...)
    XS_VCM_INTEGMODE_63_6 : constant := 63;
    -- coordinate system A5
    XS_VCM_COORDSYS_69_5 : constant := 69;
    -- type of partial derivatives A8
    XS_VCM_PARTIALS_74_8 : constant := 74;
    -- step mode A4 (AUTO, TIME, S)
    XS_VCM_STEPMODE_82_4 : constant := 82;
    -- fixed step size indicator A3 (ON, OFF)
    XS_VCM_FIXEDSTEP_86_3 : constant := 86;
    -- initial step size selection A6 (AUTO, MANUAL)
    XS_VCM_STEPSEL_89_6 : constant := 89;
    
    XS_VCM_LENGTH : constant := 512;
    
    -- Indexes to access data from an array containing VCM numerical data fields
    -- satellite number
    XA_VCM_SATNUM : constant := 0;
    -- satellite's epoch time
    XA_VCM_EPOCHDS50UTC : constant := 1;
    -- epoch revolution number
    XA_VCM_REVNUM : constant := 2;
    -- J2K position X (km)
    XA_VCM_J2KPOSX : constant := 3;
    -- J2K position Y (km)
    XA_VCM_J2KPOSY : constant := 4;
    -- J2K position Z (km)
    XA_VCM_J2KPOSZ : constant := 5;
    -- J2K velocity X (km/s)
    XA_VCM_J2KVELX : constant := 6;
    -- J2K velocity Y (km/s)
    XA_VCM_J2KVELY : constant := 7;
    -- J2K velocity Z (km/s)
    XA_VCM_J2KVELZ : constant := 8;
    -- ECI position X (km)
    XA_VCM_ECIPOSX : constant := 9;
    -- ECI position Y (km)
    XA_VCM_ECIPOSY : constant := 10;
    -- ECI position Z (km)
    XA_VCM_ECIPOSZ : constant := 11;
    -- ECI velocity X (km/s)
    XA_VCM_ECIVELX : constant := 12;
    -- ECI velocity Y (km/s)
    XA_VCM_ECIVELY : constant := 13;
    -- ECI velocity Z (km/s)
    XA_VCM_ECIVELZ : constant := 14;
    -- EFG position X (km)
    XA_VCM_EFGPOSX : constant := 15;
    -- EFG position Y (km)
    XA_VCM_EFGPOSY : constant := 16;
    -- EFG position Z (km)
    XA_VCM_EFGPOSZ : constant := 17;
    -- EFG velocity X (km/s)
    XA_VCM_EFGVELX : constant := 18;
    -- EFG velocity Y (km/s)
    XA_VCM_EFGVELY : constant := 19;
    -- EFG velocity Z (km/s)
    XA_VCM_EFGVELZ : constant := 20;
    -- geopotential zonals
    XA_VCM_GEOZON : constant := 21;
    -- geopotential tesserals
    XA_VCM_GEOTES : constant := 22;
    -- ballistic coefficient (m^2/kg)
    XA_VCM_BTERM : constant := 23;
    -- BDOT (m^2/kg-s)
    XA_VCM_BDOT : constant := 24;
    -- solar radiation pressure coefficient (m^2/kg)
    XA_VCM_AGOM : constant := 25;
    -- energy dissipation rate (w/kg)
    XA_VCM_EDR : constant := 26;
    -- outgassing parameter/thrust acceleration (m/s^2)
    XA_VCM_OGPARM : constant := 27;
    -- center of mass offset (m)
    XA_VCM_CMOFFSET : constant := 28;
    -- solar flux F10
    XA_VCM_F10 : constant := 29;
    -- average F10
    XA_VCM_F10AVG : constant := 30;
    -- average Ap
    XA_VCM_APAVG : constant := 31;
    -- TAI - UTC (s)
    XA_VCM_TAIMUTC : constant := 32;
    -- UT1 - UTC (s)
    XA_VCM_UT1MUTC : constant := 33;
    -- UT1 rate (ms/day)
    XA_VCM_UT1RATE : constant := 34;
    -- polar motion X (arcsec)
    XA_VCM_POLMOTX : constant := 35;
    -- polar motion Y (arcsec)
    XA_VCM_POLMOTY : constant := 36;
    -- nutation terms
    XA_VCM_NUTTERMS : constant := 37;
    -- leap second time in days since 1950 UTC
    XA_VCM_LEAPDS50UTC : constant := 38;
    -- initial step size
    XA_VCM_INITSTEP : constant := 39;
    -- integrator control error
    XA_VCM_ERRCTRL : constant := 40;
    -- position u sigma (km)
    XA_VCM_POSUSIG : constant := 41;
    -- position v sigma (km)
    XA_VCM_POSVSIG : constant := 42;
    -- position w sigma (km)
    XA_VCM_POSWSIG : constant := 43;
    -- velocity u sigma (km/s)
    XA_VCM_VELUSIG : constant := 44;
    -- velocity v sigma (km/s)
    XA_VCM_VELVSIG : constant := 45;
    -- velocity w sigma (km/s)
    XA_VCM_VELWSIG : constant := 46;
    -- covariance matrix size
    XA_VCM_COVMTXSIZE : constant := 47;
    -- weighted RM of last DC on the satellite
    XA_VCM_RMS : constant := 48;
    -- the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9 covmtx)
    XA_VCM_COVELEMS : constant := 100;
    
    XA_VCM_SIZE : constant := 512;
    
    -- Indexes of VCM data fields
    -- Satellite number I5
    XF_VCM_SATNUM : constant := 1;
    -- Satellite international designator A8
    XF_VCM_SATNAME : constant := 2;
    -- Epoch YYYYDDDHHMMSS.SSS A17
    XF_VCM_EPOCH : constant := 3;
    -- Revolution number I5
    XF_VCM_REVNUM : constant := 4;
    -- position X (km) F16.8
    XF_VCM_POSX : constant := 5;
    -- position Y (km) F16.8
    XF_VCM_POSY : constant := 6;
    -- position Z (km) F16.8
    XF_VCM_POSZ : constant := 7;
    -- velocity X (km/s) F16.12
    XF_VCM_VELX : constant := 8;
    -- velocity Y (km/s) F16.12
    XF_VCM_VELY : constant := 9;
    -- velocity Z (km/s) F16.12
    XF_VCM_VELZ : constant := 10;
    -- Geo Name A6
    XF_VCM_GEONAME : constant := 11;
    -- Geo zonals I2
    XF_VCM_GEOZONALS : constant := 12;
    -- Geo tesserals I2
    XF_VCM_GEOTESSER : constant := 13;
    -- Drag modelel A12 (NONE, JAC70/MSIS90)
    XF_VCM_DRAGMODE : constant := 14;
    -- Lunar solar A3 (ON/OFF)
    XF_VCM_LUNSOL : constant := 15;
    -- Radiation pressure pertubations A3 (ON/OFF)
    XF_VCM_RADPRESS : constant := 16;
    -- Earth + ocean tides pertubations A3 (ON/OFF)
    XF_VCM_ERTHTIDES : constant := 17;
    -- Intrack thrust A3 (ON/OFF)
    XF_VCM_INTRACK : constant := 18;
    -- Ballistic coefficient (m^2/kg)
    XF_VCM_BTERM : constant := 19;
    -- Radiation pressure coefficient  (m^2/kg)
    XF_VCM_AGOM : constant := 20;
    -- Outgassing parameter (m/s^2)
    XF_VCM_OGPARM : constant := 21;
    -- Center of mass offset (m)
    XF_VCM_CMOFFSET : constant := 22;
    -- Solar flux F10 I3
    XF_VCM_F10 : constant := 23;
    -- Solar flux F10 average I3
    XF_VCM_F10AVG : constant := 24;
    -- Ap average F5.1
    XF_VCM_APAVG : constant := 25;
    -- TAI minus UTC (s)I2
    XF_VCM_TAIMUTC : constant := 26;
    -- UT1 minus UTC (s) F7.5
    XF_VCM_UT1MUTC : constant := 27;
    -- UT1 rate (ms/day)  F5.3
    XF_VCM_UT1RATE : constant := 28;
    -- Polar motion X (arcsec) F6.4
    XF_VCM_POLARX : constant := 29;
    -- Polar motion Y (arcsec) F6.4
    XF_VCM_POLARY : constant := 30;
    -- Nutation terms I3
    XF_VCM_NTERMS : constant := 31;
    -- Leap second time YYYYDDDHHMMSS.SSS A17
    XF_VCM_LEAPYR : constant := 32;
    -- Integration mode A6 (ASW, OSW, SPADOC)
    XF_VCM_INTEGMODE : constant := 33;
    -- Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM)
    XF_VCM_PARTIALS : constant := 34;
    -- Integration step mode A4 (AUTO/TIME, S)
    XF_VCM_STEPMODE : constant := 35;
    -- Fixed step size indicator A3 (ON/OFF)
    XF_VCM_FIXEDSTEP : constant := 36;
    -- Initial step size selection A6 (AUTO/MANUAL)
    XF_VCM_STEPSLCTN : constant := 37;
    -- Initial integration step size F8.3
    XF_VCM_STEPSIZE : constant := 38;
    -- Integrator error control E9.3
    XF_VCM_ERRCTRL : constant := 39;
    -- Weighted rms of last DC E10.5
    XF_VCM_RMS : constant := 40;
    -- BDOT (M2/KG-S)
    XF_VCM_BDOT : constant := 41;
    -- EDR (W/KG)
    XF_VCM_EDR : constant := 42;
    
    
    --*******************************************************************************
    -- Different ingetration control/step mode
    STEPMODE_AUTO : constant := 0;
    STEPMODE_TIME : constant := 1;
    STEPMODE_S : constant := 2;
    
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes Vcm DLL for use in the program
    -- If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
    function VcmInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmInit";

    -- Returns information about the current version of Vcm DLL. The information is placed in the string parameter you pass in
    -- The returned string provides information about the version number, build date, and the platform of the Vcm DLL. 
    procedure VcmGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "VcmGetInfo";
        --infoStr            : String    (1..128);

    -- Loads a text file containing Vcm's
    -- The users can use this function repeatedly to load Vcm records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
    -- 
    -- State vectors can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]" or "SPVMSG=[path/filename]".
    -- 
    -- This function only reads Vcm records from the main input file or Vcm records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
    function VcmLoadFile
        (vcmFile           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmLoadFile";
        --vcmFile            : String    (1..512);

    -- Saves the currently loaded VCM's to a file
    -- If the users call this routine immediately after VcmLoadFile. The VCMs contents in the two file should be the same (minus duplicated VCMs or bad VCMs).
    -- 
    -- The purpose of this function is to save the current state of the loaded VCMs, usually used in GUI applications, for future use.
    function VcmSaveFile
        (vcmFile           : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmSaveFile";
        --vcmFile            : String    (1..512);

    -- Removes a VCM represented by the satKey from memory
    -- If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
    function VcmRemoveSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmRemoveSat";

    -- Removes all VCM's from memory
    -- The function returns zero if all the satellites are removed successfully from the Vcm DLL's binary tree.
    function VcmRemoveAllSats return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmRemoveAllSats";

    -- Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
    -- See VcmGetLoaded for an example.
    -- This function is useful for dynamically allocating memory for the array that is passed to the function VcmGetLoaded().
    function VcmGetCount return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmGetCount";

    -- Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
    -- It is recommended that VcmGetCount() is used to count how many satellites are currently loaded in the Vcm DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
    -- 
    -- If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
    procedure VcmGetLoaded
        (order             :         Integer;
        satKeys            : out     Long1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "VcmGetLoaded";

    -- Adds a VCM using its 1-line or concatenated string formats
    -- If the satellite was previously added to the Vcm DLL's binary tree, the function also returns a negative value indicating an error. 
    -- 
    -- The users can use this function repeatedly to add many satellites (one satellite at a time) to the Vcm DLL's binary tree. 
    function VcmAddSatFrLines
        (vcmString         : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmAddSatFrLines";
        --vcmString          : String    (1..4000);

    -- Works like VcmAddSatFrLines but designed for Matlab
    procedure VcmAddSatFrLinesML
        (vcmString         : in      String;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "VcmAddSatFrLinesML";
        --vcmString          : String    (1..4000);

    -- Adds a VCM using its individually provided field values
    -- 
    -- The table below indicates starting character position for each field in the xs_vcm parameter:
    -- 
    -- table
    -- 
    -- Starting Character Position
    -- Input Description
    -- 
    --  0satellite name, A8
    --  8common satellite name, A25
    -- 33geopotential name, A6 (WGS-72, WGS-84, EGM-96, ...)
    -- 39drag model, A12
    -- 51lunar solar pertubations, A3 (ON, OFF)
    -- 54radiation pressure pertubations, A3 (ON, OFF)
    -- 57Earth + ocean tides pertubation, A3 (ON, OFF)
    -- 60intrack thrust, A3 (ON, OFF)
    -- 63integration mode, A6 (ASW, OSW, SPADOC, ...)
    -- 69coordinate system, A5
    -- 74type of partial derivatives, A8
    -- 82step mode, A4 (AUTO, TIME, S)
    -- 86fixed step size indicator, A3 (ON, OFF)
    -- 89initial step size selection, A6 (AUTO, MANUAL)
    -- 
    --  
    -- The table below indicates the index for each field in the xa_vcm array:
    -- 
    -- table
    -- 
    -- Index (xa_vcm)
    -- index Interpretation
    -- 
    --   0satellite number
    --   1satellite's epoch time
    --   2epoch revolution number
    --   3J2K position X (km)
    --   4J2K position Y (km)
    --   5J2K position Z (km)
    --   6J2K velocity X (km/s)
    --   7J2K velocity Y (km/s)
    --   8J2K velocity Z (km/s)
    --   9ECI position X (km)
    --  10ECI position Y (km)
    --  11ECI position Z (km)
    --  12ECI velocity X (km/s)
    --  13ECI velocity Y (km/s)
    --  14ECI velocity Z (km/s)
    --  15EFG position X (km)
    --  16EFG position Y (km)
    --  17EFG position Z (km)
    --  18EFG velocity X (km/s)
    --  19EFG velocity Y (km/s)
    --  20EFG velocity Z (km/s)
    --  21geopotential zonals
    --  22geopotential tesserals
    --  23ballistic coefficient (m^2/kg)
    --  24BDOT (m^2/kg-s)
    --  25solar radiation pressure coefficient (m^2/kg)
    --  26energy dissipation rate (w/kg)
    --  27outgassing parameter/thrust acceleration (km/s^2)
    --  28center of mass offset (m)
    --  29solar flux F10
    --  30average F10
    --  31average Ap
    --  32TAI - UTC (s)
    --  33UT1 - UTC (s)
    --  34UT1 rate (ms/day)
    --  35polar motion X (arcsec)
    --  36polar motion Y (arcsec)
    --  37nutation terms
    --  38leap second time in days since 1950 UTC
    --  39initial step size
    --  40integrator control error
    --  41position u sigma (km)
    --  42position v sigma (km)
    --  43position w sigma (km)
    --  44velocity u sigma (km/s)
    --  45velocity v sigma (km/s)
    --  46velocity w sigma (km/s)
    --  47covariance matrix size
    --  48weighted RM of last DC on the satellite
    -- 100the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9
    -- covmtx)
    -- 
    -- 
    -- The order of the values in the lower half of the covariance matrix is described in the VCM Data Description section.  
    -- 
    -- For a 6x6 covariance matrix, the 21 values should be entered in the xa_vcm array using index values 100-120.  
    -- 
    -- For a 9x9 covariance matrix, the 45 values should be entered using the index values 100-144.
    function VcmAddSatFrFields
        (xs_vcm            : in      String;
        xa_vcm             : in      Double1D) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmAddSatFrFields";
        --xs_vcm             : String    (1..512);
        --xa_vcm             : Double1D  (1..512);

    -- Works like VcmAddSatFrFields but designed for Matlab
    -- 
    -- See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
    procedure VcmAddSatFrFieldsML
        (xs_vcm            : in      String;
        xa_vcm             : in      Double1D;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "VcmAddSatFrFieldsML";
        --xs_vcm             : String    (1..512);
        --xa_vcm             : Double1D  (1..512);

    -- Retrieves VCM data associated with the input satKey
    function VcmRetrieveAllData
        (satKey            :         Long_Long_Integer;
        xs_vcm             : out     String;
        xa_vcm             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmRetrieveAllData";
        --xs_vcm             : String    (1..512);
        --xa_vcm             : Double1D  (1..512);

    -- Updates a VCM using its individual field values. Note: satellite's number and epoch won't be updated
    -- 
    -- See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
    function VcmUpdateSatFrFields
        (satKey            :         Long_Long_Integer;
        xs_vcm             : in      String;
        xa_vcm             : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmUpdateSatFrFields";
        --xs_vcm             : String    (1..512);
        --xa_vcm             : Double1D  (1..512);

    -- Retrieves the value of a specific field of a VCM
    -- 
    -- The table below shows the values for the xf_Vcm parameter:
    -- 
    -- table
    -- 
    -- index
    -- index Interpretation
    -- 
    --  1  Satellite number I5
    --  2  Satellite international designator A8
    --  3  Epoch YYYYDDDHHMMSS.SSS A17
    --  4  Revolution number I5
    --  5  position X (km) F16.8 
    --  6  position Y (km) F16.8 
    --  7  position Z (km) F16.8   
    --  8  velocity X (km/s) F16.12
    --  9  velocity Y (km/s) F16.12
    -- 10  velocity Z (km/s) F16.12
    -- 11  Geo Name A6
    -- 12  Geo zonals I2
    -- 13  Geo tesserals I2
    -- 14  Drag modelel A12 (NONE, JAC70/MSIS90) 
    -- 15  Lunar solar A3 (ON/OFF)
    -- 16  Radiation pressure pertubations A3 (ON/OFF)
    -- 17  Earth + ocean tides pertubations A3 (ON/OFF)
    -- 18  Intrack thrust A3 (ON/OFF)
    -- 19  Ballistic coefficient (m^2/kg)
    -- 20  Radiation pressure coefficient  (m^2/kg)
    -- 21  Outgassing parameter (km/s^2)
    -- 22  Center of mass offset (m)
    -- 23  Solar flux F10 I3
    -- 24  Solar flux F10 average I3
    -- 25  Ap average F5.1
    -- 26  TAI minus UTC (s)I2
    -- 27  UT1 minus UTC (s) F7.5
    -- 28  UT1 rate (ms/day)  F5.3
    -- 29  Polar motion X (arcsec) F6.4
    -- 30  Polar motion Y (arcsec) F6.4
    -- 31  Nutation terms I3
    -- 32  Leap second time YYYYDDDHHMMSS.SSS A17
    -- 33  Integration mode A6 (ASW, OSW, SPADOC)
    -- 34  Type of partial derivatives A8 (ANALYTIC, FULL NUM, FAST NUM)
    -- 35  Integration step mode A4 (AUTO/TIME, S)
    -- 36  Fixed step size indicator A3 (ON/OFF)
    -- 37  Initial step size selection A6 (AUTO/MANUAL)
    -- 38  Initial integration step size F8.3
    -- 39  Integrator error control E9.3
    -- 40  Weighted RMS of last DC E10.5
    -- 41  BDOT (M2/KG-S)
    -- 42  EDR (W/KG)
    -- 
    function VcmGetField
        (satKey            :         Long_Long_Integer;
        xf_Vcm             :         Integer;
        valueStr           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmGetField";
        --valueStr           : String    (1..512);

    -- Updates the value of a specific field of a VCM
    -- See VcmGetField for a description of the xf_Vcm parameter.
    function VcmSetField
        (satKey            :         Long_Long_Integer;
        xf_Vcm             :         Integer;
        valueStr           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmSetField";
        --valueStr           : String    (1..512);

    -- Retrieves all of the data for a VCM in a single function call
    function VcmGetAllFields
        (satKey            :         Long_Long_Integer;
        satNum             : out     Integer;
        satName            : out     String;
        epochDtg           : out     String;
        revNum             : out     Integer;
        posECI             : out     Double1D;
        velECI             : out     Double1D;
        geoName            : out     String;
        geoZonals          : out     Integer;
        geoTesserals       : out     Integer;
        dragModel          : out     String;
        lunarSolar         : out     String;
        radPress           : out     String;
        earthTides         : out     String;
        intrackThrust      : out     String;
        bTerm              : out     Long_Float;
        agom               : out     Long_Float;
        ogParm             : out     Long_Float;
        cmOffset           : out     Long_Float;
        f10                : out     Integer;
        f10Avg             : out     Integer;
        apAvg              : out     Long_Float;
        tconRec            : out     Double1D;
        nTerms             : out     Integer;
        leapYrDtg          : out     String;
        integMode          : out     String;
        partials           : out     String;
        stepMode           : out     String;
        fixStep            : out     String;
        stepSelection      : out     String;
        initStepSize       : out     Long_Float;
        errCtrl            : out     Long_Float;
        rms                : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmGetAllFields";
        --satName            : String    (1..8);
        --epochDtg           : String    (1..17);
        --posECI             : Double1D  (1..3);
        --velECI             : Double1D  (1..3);
        --geoName            : String    (1..6);
        --dragModel          : String    (1..12);
        --lunarSolar         : String    (1..3);
        --radPress           : String    (1..3);
        --earthTides         : String    (1..3);
        --intrackThrust      : String    (1..3);
        --tconRec            : Double1D  (1..5);
        --leapYrDtg          : String    (1..17);
        --integMode          : String    (1..6);
        --partials           : String    (1..8);
        --stepMode           : String    (1..4);
        --fixStep            : String    (1..3);
        --stepSelection      : String    (1..6);

    -- Returns the concatenated string representation of a VCM by the satellite's satKey
    function VcmGetLines
        (satKey            :         Long_Long_Integer;
        vcmLines           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmGetLines";
        --vcmLines           : String    (1..4000);

    -- Converts VCM 1-line format to multi-line format (as a concatenated string)
    function Vcm1LineToMultiLine
        (vcm1Line          : in      String;
        vcmLines           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Vcm1LineToMultiLine";
        --vcm1Line           : String    (1..1500);
        --vcmLines           : String    (1..4000);

    -- Converts VCM multi-line format (as a concatenated string) to 1-line format 
    function VcmMultiLineTo1Line
        (vcmLines          : in      String;
        vcm1Line           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmMultiLineTo1Line";
        --vcmLines           : String    (1..4000);
        --vcm1Line           : String    (1..1500);

    -- Returns the first satKey from the currently loaded set of VCM's that contains the specified satellite number
    -- This function is useful when Vcm dll is used in applications that requires only one record (one Vcm entry) for one satellite and the applications refer to that Vcm by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
    function VcmGetSatKey
        (satNum            :         Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmGetSatKey";

    -- Works like VcmGetSatKey but designed for Matlab
    procedure VcmGetSatKeyML
        (satNum            :         Integer;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "VcmGetSatKeyML";

    -- Computes a satKey from the input data
    -- This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
    function VcmFieldsToSatKey
        (satNum            :         Integer;
        epochDtg           : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmFieldsToSatKey";
        --epochDtg           : String    (1..20);

    -- Works like VcmFieldsToSatKey but designed for Matlab
    procedure VcmFieldsToSatKeyML
        (satNum            :         Integer;
        epochDtg           : in      String;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "VcmFieldsToSatKeyML";
        --epochDtg           : String    (1..20);

    -- Constructs a multi-line VCM (as a concatenated string) from the VCM data stored in the input arrays.
    procedure VcmArrayToVcmLines
        (xa_vcm            : in      Double1D;
        xs_vcm             : in      String;
        vcmLines           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "VcmArrayToVcmLines";
        --xa_vcm             : Double1D  (1..512);
        --xs_vcm             : String    (1..512);
        --vcmLines           : String    (1..4000);

    -- Constructs a 1-line VCM from the VCM data stored in the input arrays.
    procedure VcmArrayToVcm1Line
        (xa_vcm            : in      Double1D;
        xs_vcm             : in      String;
        vcm1Line           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "VcmArrayToVcm1Line";
        --xa_vcm             : Double1D  (1..512);
        --xs_vcm             : String    (1..512);
        --vcm1Line           : String    (1..1500);

    -- Parses data either in 1-line or multi-line (as a concatenated string) VCM and stores that data into the output arrays
    -- This function only parses data from the input VCM but DOES NOT load/add the input VCM to memory.
    function VcmStringToArray
        (vcmString         : in      String;
        xa_vcm             : out     Double1D;
        xs_vcm             : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "VcmStringToArray";
        --vcmString          : String    (1..4000);
        --xa_vcm             : Double1D  (1..512);
        --xs_vcm             : String    (1..512);


end VcmDll;

-- ========================= End of auto generated code ==========================
