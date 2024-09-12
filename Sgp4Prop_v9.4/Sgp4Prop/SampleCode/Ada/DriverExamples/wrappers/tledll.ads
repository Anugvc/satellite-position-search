-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package TleDll is
    
    -- TLE types (TLE ephemeris types) - They are different than ELTTYPE
    -- TLE SGP elset (Kozai mean motion)
    TLETYPE_SGP : constant := 0;
    -- TLE SGP4 elset (Brouwer mean motion)
    TLETYPE_SGP4 : constant := 2;
    -- TLE SGP4-XP elset (Brouwer mean motion)
    TLETYPE_XP : constant := 4;
    -- TLE SP elset (osculating elements)
    TLETYPE_SP : constant := 6;
    
    -- Indexes of TLE data fields
    -- Satellite number
    XF_TLE_SATNUM : constant := 1;
    -- Security classification U: unclass, C: confidential, S: Secret
    XF_TLE_CLASS : constant := 2;
    -- Satellite name A8
    XF_TLE_SATNAME : constant := 3;
    -- Satellite's epoch time "YYYYJJJ.jjjjjjjj"
    XF_TLE_EPOCH : constant := 4;
    -- GP B* drag term (1/er)  (not the same as XF_TLE_BTERM)
    XF_TLE_BSTAR : constant := 5;
    -- Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
    XF_TLE_EPHTYPE : constant := 6;
    -- Element set number
    XF_TLE_ELSETNUM : constant := 7;
    -- Orbit inclination (deg)
    XF_TLE_INCLI : constant := 8;
    -- Right ascension of asending node (deg)
    XF_TLE_NODE : constant := 9;
    -- Eccentricity
    XF_TLE_ECCEN : constant := 10;
    -- Argument of perigee (deg)
    XF_TLE_OMEGA : constant := 11;
    -- Mean anomaly (deg)
    XF_TLE_MNANOM : constant := 12;
    -- Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
    XF_TLE_MNMOTN : constant := 13;
    -- Revolution number at epoch
    XF_TLE_REVNUM : constant := 14;
    
    -- GP Mean motion derivative (rev/day /2)
    XF_TLE_NDOT : constant := 15;
    -- GP Mean motion second derivative (rev/day**2 /6)
    XF_TLE_NDOTDOT : constant := 16;
    -- Solar radiation pressure GP (m2/kg)
    XF_TLE_AGOMGP : constant := 16;
    
    -- SP Radiation Pressure Coefficient
    XF_TLE_SP_AGOM : constant := 5;
    -- SP ballistic coefficient (m2/kg)
    XF_TLE_SP_BTERM : constant := 15;
    -- SP outgassing parameter (km/s2)
    XF_TLE_SP_OGPARM : constant := 16;
    
    -- Original satellite number
    XF_TLE_ORGSATNUM : constant := 17;
    -- GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
    XF_TLE_BTERM : constant := 18;
    -- Time of last observation relative to epoch +/- fractional days
    XF_TLE_OBSTIME : constant := 19;
    -- Last calculated error growth rate (km/day)
    XF_TLE_EGR : constant := 20;
    -- Last calculated energy dissipation rate (w/kg)
    XF_TLE_EDR : constant := 21;
    -- Median Vismag
    XF_TLE_VISMAG : constant := 22;
    -- Median RCS - diameter in centimeters (cm)
    XF_TLE_RCS : constant := 23;
    -- Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
    XF_TLE_OBJTYPE : constant := 24;
    -- Satellite name A12 (upto 12 character long)
    XF_TLE_SATNAME_12 : constant := 25;
    
    
    -- Indexes of TLE numerical data in an array
    -- Line 1
    -- Satellite number
    XA_TLE_SATNUM : constant := 0;
    -- Satellite's epoch time in DS50UTC
    XA_TLE_EPOCH : constant := 1;
    -- GP Mean motion derivative (rev/day /2)
    XA_TLE_NDOT : constant := 2;
    -- GP Mean motion second derivative (rev/day**2 /6)
    XA_TLE_NDOTDOT : constant := 3;
    -- GP B* drag term (1/er)
    XA_TLE_BSTAR : constant := 4;
    -- Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
    XA_TLE_EPHTYPE : constant := 5;
    
    -- Line 2
    -- Orbit inclination (deg)
    XA_TLE_INCLI : constant := 20;
    -- Right ascension of asending node (deg)
    XA_TLE_NODE : constant := 21;
    -- Eccentricity
    XA_TLE_ECCEN : constant := 22;
    -- Argument of perigee (deg)
    XA_TLE_OMEGA : constant := 23;
    -- Mean anomaly (deg)
    XA_TLE_MNANOM : constant := 24;
    -- Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
    XA_TLE_MNMOTN : constant := 25;
    -- Revolution number at epoch
    XA_TLE_REVNUM : constant := 26;
    -- Element set number
    XA_TLE_ELSETNUM : constant := 30;
    
    -- CSV (or TLE-XP, ephemType=4) specific fields
    -- Original satellite number
    XA_TLE_ORGSATNUM : constant := 31;
    -- SP/SGP4-XP ballistic coefficient (m2/kg)
    XA_TLE_BTERM : constant := 32;
    -- Time of last observation relative to epoch +/- fractional days
    XA_TLE_OBSTIME : constant := 33;
    -- Last calculated error growth rate (km/day)
    XA_TLE_EGR : constant := 34;
    -- Last calculated energy dissipation rate (w/kg)
    XA_TLE_EDR : constant := 35;
    -- Median Vismag
    XA_TLE_VISMAG : constant := 36;
    -- Median RCS - diameter in centimeters (cm)
    XA_TLE_RCS : constant := 37;
    
    -- CSV (or TLE-XP, ephemType=4)
    -- Solar Radiation Pressure Coefficient GP (m2/kg)
    XA_TLE_AGOMGP : constant := 38;
    
    
    -- SP specific fields
    -- SP ballistic coefficient (m2/kg)
    XA_TLE_SP_BTERM : constant := 2;
    -- SP outgassing parameter (km/s2)
    XA_TLE_SP_OGPARM : constant := 3;
    -- SP Radiation Pressure Coefficient
    XA_TLE_SP_AGOM : constant := 4;
    
    XA_TLE_SIZE : constant := 64;
    
    -- Indexes of TLE text data in an array of chars
    -- Security classification of line 1 and line 2
    XS_TLE_SECCLASS_1 : constant := 0;
    -- Satellite name
    XS_TLE_SATNAME_12 : constant := 1;
    -- Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
    XS_TLE_OBJTYPE_11 : constant := 13;
    
    XS_TLE_SIZE : constant := 512;
    
    -- TLE's text data fields - new convention (start index, string length)
    -- Security classification of line 1 and line 2
    XS_TLE_SECCLASS_0_1 : constant := 0;
    -- Satellite name
    XS_TLE_SATNAME_1_12 : constant := 1;
    -- Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
    XS_TLE_OBJTYPE_13_1 : constant := 13;
    
    XS_TLE_LENGTH : constant := 512;
    
    -- Indexes of different TLE file's formats
    -- Original TLE format
    XF_TLEFORM_ORG : constant := 0;
    -- CSV format
    XF_TLEFORM_CSV : constant := 1;
    
    

    -- Notes: This function has been deprecated since v9.0.    
    -- Initializes Tle DLL for use in the program.
    -- If this function returns an error, it is recommended that you stop the program immediately.
    -- 
    -- An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
    function TleInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleInit";

    -- Returns the information about the Tle DLL.
    -- The returned string provides information about the version number, build date, and the platform of the Tle DLL. 
    procedure TleGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "TleGetInfo";
        --infoStr            : String    (1..128);

    -- Loads TLEs (satellites) contained in a text file into the TLE DLL's binary tree.
    -- You may use this function repeatedly to load TLEs from different input files. However, only unique satKeys are loaded. Duplicated TLEs won't be stored. 
    -- 
    -- TLEs can be included directly in the specified file, or they can be read from a separate file identified with "ELTFIL=[path\filename]" or "VECFIL=[path\filename]".
    -- 
    -- The input file is read in two passes. The function first looks for "ELTFIL=" and "VECFIL=" lines, then it looks for TLEs which were included directly. The result of this is that data entered using both methods will be processed, but the "ELTFIL=" and "VECFIL=" data will be processed first.
    function TleLoadFile
        (tleFile           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleLoadFile";
        --tleFile            : String    (1..512);

    -- Saves currently loaded TLEs to a file. 
    -- In append mode, if the specified file does not exist it will be created.
    -- If you call this routine immediately after TleLoadFile(), the TLE contents in the two files should be the same (minus duplicated TLE's or bad TLE's).
    -- 
    -- The purpose of this function is to save the current state of the loaded TLE's, usually used in GUI applications, for future use.
    function TleSaveFile
        (tleFile           : in      String;
        saveMode           :         Integer;
        xf_tleForm         :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleSaveFile";
        --tleFile            : String    (1..512);

    -- Removes a TLE represented by the satKey from memory. 
    -- If the users enter an invalid satKey (a non-existing satKey), the function will return a non-zero value indicating an error.
    function TleRemoveSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleRemoveSat";

    -- Removes all the TLEs from memory.
    function TleRemoveAllSats return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleRemoveAllSats";

    -- Returns the number of TLEs currently loaded. 
    -- See TleGetLoaded for an example.
    -- This function is useful for dynamically allocating memory for the array that is passed to the function TleGetLoaded().
    function TleGetCount return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleGetCount";

    -- Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the TLE's.
    -- It is recommended that TleGetCount() be  used to determine how many satellites are currently loaded. This value can then be used to dynamically allocate an array to hold the satKeys.
    -- 
    -- If you are going to pass a statically allocated array to this function, ensure it is large enough to hold all of the returned satKeys.
    procedure TleGetLoaded
        (order             :         Integer;
        satKeys            : out     Long1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "TleGetLoaded";

    -- Adds a TLE (satellite), using its directly specified first and second lines. 
    -- The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
    -- 
    -- This function can be called repeatedly to add many TLEs, one at a time.
    function TleAddSatFrLines
        (line1             : in      String;
        line2              : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrLines";
        --line1              : String    (1..512);
        --line2              : String    (1..512);

    -- This function is similar to TleAddSatFrLines but designed to be used in Matlab.
    -- Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrLines. This method is an alternative way to return the satKey output.
    procedure TleAddSatFrLinesML
        (line1             : in      String;
        line2              : in      String;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrLinesML";
        --line1              : String    (1..512);
        --line2              : String    (1..512);

    -- Adds a TLE (satellite), using its CSV string format. 
    function TleAddSatFrCsv
        (csvLine           : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrCsv";
        --csvLine            : String    (1..512);

    -- This function is similar to TleAddSatFrCsv but designed to be used in Matlab.
    procedure TleAddSatFrCsvML
        (csvLine           : in      String;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrCsvML";
        --csvLine            : String    (1..512);

    -- Adds a GP TLE using its individually provided field values. 
    -- The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
    -- 
    -- This function can be called repeatedly to add many satellites (one satellite at a time).
    -- 
    -- SGP satellites (ephType = 0) use Kozai mean motion. SGP4 satellites (ephType = 2) use Brouwer mean motion.
    function TleAddSatFrFieldsGP
        (satNum            :         Integer;
        secClass           :         Character;
        satName            : in      String;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        bstar              :         Long_Float;
        ephType            :         Integer;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrFieldsGP";
        --satName            : String    (1..8);

    -- This function is similar to TleAddSatFrFieldsGP but includes nDotO2 and n2DotO6. 
    -- nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
    function TleAddSatFrFieldsGP2
        (satNum            :         Integer;
        secClass           :         Character;
        satName            : in      String;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        bstar              :         Long_Float;
        ephType            :         Integer;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer;
        nDotO2             :         Long_Float;
        n2DotO6            :         Long_Float) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrFieldsGP2";
        --satName            : String    (1..8);

    -- This function is similar to TleAddSatFrFieldsGP2 but designed to be used in Matlab. 
    -- Matlab doesn't seem to correctly return the 19-digit satellite key using TleAddSatFrFieldsGP2. This method is an alternative way to return the satKey output.
    procedure TleAddSatFrFieldsGP2ML
        (satNum            :         Integer;
        secClass           :         Character;
        satName            : in      String;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        bstar              :         Long_Float;
        ephType            :         Integer;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer;
        nDotO2             :         Long_Float;
        n2DotO6            :         Long_Float;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrFieldsGP2ML";
        --satName            : String    (1..8);

    -- Updates a GP satellite's data in memory by providing its individual field values. Note: satNum, year, day, and ephtype can't be updated.
    -- The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded satellite, the function will indicate an error.
    -- 
    -- Remember to use the correct mean motion depending on the satellite's ephType.
    function TleUpdateSatFrFieldsGP
        (satKey            :         Long_Long_Integer;
        secClass           :         Character;
        satName            : in      String;
        bstar              :         Long_Float;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleUpdateSatFrFieldsGP";
        --satName            : String    (1..8);

    -- This function is similar to TleUpdateSatFrFieldsGP but includes nDotO2 and n2DotO6. Note: satNum, year, day, and ephtype can't be updated.
    -- nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
    function TleUpdateSatFrFieldsGP2
        (satKey            :         Long_Long_Integer;
        secClass           :         Character;
        satName            : in      String;
        bstar              :         Long_Float;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer;
        nDotO2             :         Long_Float;
        n2DotO6            :         Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleUpdateSatFrFieldsGP2";
        --satName            : String    (1..8);

    -- Adds an SP satellite using the individually provided field values.
    -- Only applies to SP propagator.
    function TleAddSatFrFieldsSP
        (satNum            :         Integer;
        secClass           :         Character;
        satName            : in      String;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        bTerm              :         Long_Float;
        ogParm             :         Long_Float;
        agom               :         Long_Float;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrFieldsSP";
        --satName            : String    (1..8);

    -- This function is similar to TleAddSatFrFieldsSP but designed to be used in Matlab.
    -- Only applies to SP propagator.
    -- Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrFieldsSP. This method is an alternative way to return the satKey output.
    procedure TleAddSatFrFieldsSPML
        (satNum            :         Integer;
        secClass           :         Character;
        satName            : in      String;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        bTerm              :         Long_Float;
        ogParm             :         Long_Float;
        agom               :         Long_Float;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrFieldsSPML";
        --satName            : String    (1..8);

    -- Updates an SP satellite's data in memory using its individually provided field values. Note: satNum, year, day, and ephtype can't be updated.
    -- Only applies to SP propagator.
    -- The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded TLE, the function will indicate an error. 
    function TleUpdateSatFrFieldsSP
        (satKey            :         Long_Long_Integer;
        secClass           :         Character;
        satName            : in      String;
        bterm              :         Long_Float;
        ogParm             :         Long_Float;
        agom               :         Long_Float;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleUpdateSatFrFieldsSP";
        --satName            : String    (1..8);

    -- Updates the value of a field of a TLE. This function can be used for both GP and SP satellites.
    -- 
    -- The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
    -- satNum (1), Epoch (4), and Ephemeris Type (5) cannot be altered.
    -- 
    -- table
    -- 
    -- 	index
    -- 	index Interpretation
    -- 
    -- 1Satellite number
    -- 2Security classification
    -- 3Satellite international designator
    -- 4Epoch
    -- 5Ephemeris type = 0,2: B* drag term (1/er) Ephemeris type = 6   : SP radiation pressure
    -- coefficient agom (m2/kg)
    -- 6Ephemeris type
    -- 7Element set number
    -- 8Orbit inclination (degrees)
    -- 9Right ascension of ascending node (degrees)
    -- 10Eccentricity
    -- 11Argument of perigee (degrees)
    -- 12Mean anomaly (degrees)
    -- 13Mean motion (rev/day)
    -- 14Revolution number at epoch
    -- 15Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or Ephemeris type = 6: SP
    -- ballistic coefficient (m2/kg)
    -- 16Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or Ephemeris type = 6:
    -- SP Outgassing parameter/Thrust Acceleration (km/s2)
    -- 
    function TleSetField
        (satKey            :         Long_Long_Integer;
        xf_Tle             :         Integer;
        valueStr           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleSetField";
        --valueStr           : String    (1..512);

    -- Retrieves the value of a specific field of a TLE. 
    -- 
    -- The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
    -- 
    -- table
    -- 
    -- 	index
    -- 	index Interpretation
    -- 
    -- 1Satellite number
    -- 2Security classification
    -- 3Satellite international designator
    -- 4Epoch
    -- 5Ephemeris type = 0,2: B* drag term (1/er) Ephemeris type = 6   : SP radiation pressure
    -- coefficient agom (m2/kg)
    -- 6Ephemeris type
    -- 7Element set number
    -- 8Orbit inclination (degrees)
    -- 9Right ascension of ascending node (degrees)
    -- 10Eccentricity
    -- 11Argument of perigee (degrees)
    -- 12Mean anomaly (degrees)
    -- 13Mean motion (rev/day)
    -- 14Revolution number at epoch
    -- 15Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or Ephemeris type = 6: SP
    -- ballistic coefficient (m2/kg)
    -- 16Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or Ephemeris type = 6:
    -- SP Outgassing parameter/Thrust Acceleration (km/s2)
    -- 
    function TleGetField
        (satKey            :         Long_Long_Integer;
        xf_Tle             :         Integer;
        valueStr           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleGetField";
        --valueStr           : String    (1..512);

    -- Retrieves all of the data for a GP satellite in a single function call. 
    -- This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
    function TleGetAllFieldsGP
        (satKey            :         Long_Long_Integer;
        satNum             : out     Integer;
        secClass           : out     Character;
        satName            : out     String;
        epochYr            : out     Integer;
        epochDays          : out     Long_Float;
        bstar              : out     Long_Float;
        ephType            : out     Integer;
        elsetNum           : out     Integer;
        incli              : out     Long_Float;
        node               : out     Long_Float;
        eccen              : out     Long_Float;
        omega              : out     Long_Float;
        mnAnomaly          : out     Long_Float;
        mnMotion           : out     Long_Float;
        revNum             : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleGetAllFieldsGP";
        --satName            : String    (1..8);

    -- Retrieves all of the data (including nDotO2 and n2DotO6) for a GP satellite in a single function call. 
    -- This function is similar to TleGetAllFieldsGP but also includes nDotO2 and n2DotO6. 
    -- This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
    function TleGetAllFieldsGP2
        (satKey            :         Long_Long_Integer;
        satNum             : out     Integer;
        secClass           : out     Character;
        satName            : out     String;
        epochYr            : out     Integer;
        epochDays          : out     Long_Float;
        bstar              : out     Long_Float;
        ephType            : out     Integer;
        elsetNum           : out     Integer;
        incli              : out     Long_Float;
        node               : out     Long_Float;
        eccen              : out     Long_Float;
        omega              : out     Long_Float;
        mnAnomaly          : out     Long_Float;
        mnMotion           : out     Long_Float;
        revNum             : out     Integer;
        nDotO2             : out     Long_Float;
        n2DotO6            : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleGetAllFieldsGP2";
        --satName            : String    (1..8);

    -- Retrieves all of the data for an SP satellite in a single function call.
    -- Only applies to SP propagator.
    -- This function only works for SP satellites. The field values are placed in the corresponding parameters of the function. 
    function TleGetAllFieldsSP
        (satKey            :         Long_Long_Integer;
        satNum             : out     Integer;
        secClass           : out     Character;
        satName            : out     String;
        epochYr            : out     Integer;
        epochDays          : out     Long_Float;
        bTerm              : out     Long_Float;
        ogParm             : out     Long_Float;
        agom               : out     Long_Float;
        elsetNum           : out     Integer;
        incli              : out     Long_Float;
        node               : out     Long_Float;
        eccen              : out     Long_Float;
        omega              : out     Long_Float;
        mnAnomaly          : out     Long_Float;
        mnMotion           : out     Long_Float;
        revNum             : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleGetAllFieldsSP";
        --satName            : String    (1..8);

    -- Parses GP data from the input first and second lines of a two line element set or a CSV Tle.
    -- This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
    function TleParseGP
        (line1             : in      String;
        line2              : in      String;
        satNum             : out     Integer;
        secClass           : out     Character;
        satName            : out     String;
        epochYr            : out     Integer;
        epochDays          : out     Long_Float;
        nDotO2             : out     Long_Float;
        n2DotO6            : out     Long_Float;
        bstar              : out     Long_Float;
        ephType            : out     Integer;
        elsetNum           : out     Integer;
        incli              : out     Long_Float;
        node               : out     Long_Float;
        eccen              : out     Long_Float;
        omega              : out     Long_Float;
        mnAnomaly          : out     Long_Float;
        mnMotion           : out     Long_Float;
        revNum             : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleParseGP";
        --line1              : String    (1..512);
        --line2              : String    (1..512);
        --satName            : String    (1..8);

    -- Parses GP data from the input first and second lines of a two line element set or a CSV tle and store that data back into the output parameters.
    -- This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
    function TleLinesToArray
        (line1             : in      String;
        line2              : in      String;
        xa_tle             : out     Double1D;
        xs_tle             : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleLinesToArray";
        --line1              : String    (1..512);
        --line2              : String    (1..512);
        --xa_tle             : Double1D  (1..64);
        --xs_tle             : String    (1..512);

    -- Parses SP data from the input first and second lines of a two line element set.
    -- Only applies to SP propagator.
    -- This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
    function TleParseSP
        (line1             : in      String;
        line2              : in      String;
        satNum             : out     Integer;
        secClass           : out     Character;
        satName            : out     String;
        epochYr            : out     Integer;
        epochDays          : out     Long_Float;
        bTerm              : out     Long_Float;
        ogParm             : out     Long_Float;
        agom               : out     Long_Float;
        elsetNum           : out     Integer;
        incli              : out     Long_Float;
        node               : out     Long_Float;
        eccen              : out     Long_Float;
        omega              : out     Long_Float;
        mnAnomaly          : out     Long_Float;
        mnMotion           : out     Long_Float;
        revNum             : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleParseSP";
        --line1              : String    (1..512);
        --line2              : String    (1..512);
        --satName            : String    (1..8);

    -- Returns the first and second lines representation of a TLE of a satellite. 
    function TleGetLines
        (satKey            :         Long_Long_Integer;
        line1              : out     String;
        line2              : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleGetLines";
        --line1              : String    (1..512);
        --line2              : String    (1..512);

    -- Returns the CSV string representation of a TLE of a satellite. 
    function TleGetCsv
        (satKey            :         Long_Long_Integer;
        csvLine            : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleGetCsv";
        --csvLine            : String    (1..512);

    -- Constructs a TLE from individually provided GP data fields.
    -- This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
    -- Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
    procedure TleGPFieldsToLines
        (satNum            :         Integer;
        secClass           :         Character;
        satName            : in      String;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        nDotO2             :         Long_Float;
        n2DotO6            :         Long_Float;
        bstar              :         Long_Float;
        ephType            :         Integer;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer;
        line1              : out     String;
        line2              : out     String)
    with Import => True,
        Convention => C,
        External_Name => "TleGPFieldsToLines";
        --satName            : String    (1..8);
        --line1              : String    (1..512);
        --line2              : String    (1..512);

    -- Constructs a TLE from individually provided GP data fields.
    -- This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
    -- Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
    procedure TleGPFieldsToCsv
        (satNum            :         Integer;
        secClass           :         Character;
        satName            : in      String;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        nDotO2             :         Long_Float;
        n2DotO6            :         Long_Float;
        bstar              :         Long_Float;
        ephType            :         Integer;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer;
        csvLine            : out     String)
    with Import => True,
        Convention => C,
        External_Name => "TleGPFieldsToCsv";
        --satName            : String    (1..8);
        --csvLine            : String    (1..512);

    -- Constructs a TLE from GP data stored in the input parameters.
    -- This function only parses data from the input data but DOES NOT load/add the TLE to memory.
    -- 
    -- Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
    procedure TleGPArrayToLines
        (xa_tle            : in      Double1D;
        xs_tle             : in      String;
        line1              : out     String;
        line2              : out     String)
    with Import => True,
        Convention => C,
        External_Name => "TleGPArrayToLines";
        --xa_tle             : Double1D  (1..64);
        --xs_tle             : String    (1..512);
        --line1              : String    (1..512);
        --line2              : String    (1..512);

    -- Constructs a TLE from GP data stored in the input parameters.
    -- This function only parses data from the input data but DOES NOT load/add the TLE to memory.
    -- Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
    procedure TleGPArrayToCsv
        (xa_tle            : in      Double1D;
        xs_tle             : in      String;
        csvline            : out     String)
    with Import => True,
        Convention => C,
        External_Name => "TleGPArrayToCsv";
        --xa_tle             : Double1D  (1..64);
        --xs_tle             : String    (1..512);
        --csvline            : String    (1..512);

    -- Constructs a TLE from individually provided SP data fields.
    -- Only applies to SP propagator.
    -- This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
    -- Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
    procedure TleSPFieldsToLines
        (satNum            :         Integer;
        secClass           :         Character;
        satName            : in      String;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        bTerm              :         Long_Float;
        ogParm             :         Long_Float;
        agom               :         Long_Float;
        elsetNum           :         Integer;
        incli              :         Long_Float;
        node               :         Long_Float;
        eccen              :         Long_Float;
        omega              :         Long_Float;
        mnAnomaly          :         Long_Float;
        mnMotion           :         Long_Float;
        revNum             :         Integer;
        line1              : out     String;
        line2              : out     String)
    with Import => True,
        Convention => C,
        External_Name => "TleSPFieldsToLines";
        --satName            : String    (1..8);
        --line1              : String    (1..512);
        --line2              : String    (1..512);

    -- Returns the first satKey from the currently loaded set of TLEs that contains the specified satellite number.
    -- This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
    -- A negative value will be returned if there is an error.
    function TleGetSatKey
        (satNum            :         Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "TleGetSatKey";

    -- This function is similar to TleGetSatKey but designed to be used in Matlab. 
    -- Matlab doesn't correctly return the 19-digit satellite key using TleGetSatKey. This method is an alternative way to return the satKey output.
    -- This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
    -- A negative value will be returned in satKey if there is an error.
    procedure TleGetSatKeyML
        (satNum            :         Integer;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "TleGetSatKeyML";

    -- Computes a satKey from the input data.
    -- There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
    -- 
    -- This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different. 
    -- A negative value will be returned if there is an error.
    function TleFieldsToSatKey
        (satNum            :         Integer;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        ephType            :         Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "TleFieldsToSatKey";

    -- This function is similar to TleFieldsToSatKey but designed to be used in Matlab. 
    -- Matlab doesn't correctly return the 19-digit satellite key using TleFieldsToSatKey. This method is an alternative way to return the satKey output.
    -- There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
    -- 
    -- This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different.
    -- A negative value will be returned in satKey if there is an error.
    procedure TleFieldsToSatKeyML
        (satNum            :         Integer;
        epochYr            :         Integer;
        epochDays          :         Long_Float;
        ephType            :         Integer;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "TleFieldsToSatKeyML";

    -- Adds a TLE (satellite), using its data stored in the input parameters.
    function TleAddSatFrArray
        (xa_tle            : in      Double1D;
        xs_tle             : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrArray";
        --xa_tle             : Double1D  (1..64);
        --xs_tle             : String    (1..512);

    -- This function is similar to TleAddSatFrArray but designed to be used in Matlab. 
    procedure TleAddSatFrArrayML
        (xa_tle            : in      Double1D;
        xs_tle             : in      String;
        satKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "TleAddSatFrArrayML";
        --xa_tle             : Double1D  (1..64);
        --xs_tle             : String    (1..512);

    -- Updates existing TLE data with the provided new data stored in the input parameters. Note: satNum, year, day, and ephtype can't be updated.
    -- nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
    function TleUpdateSatFrArray
        (satKey            :         Long_Long_Integer;
        xa_tle             : in      Double1D;
        xs_tle             : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleUpdateSatFrArray";
        --xa_tle             : Double1D  (1..64);
        --xs_tle             : String    (1..512);

    -- Retrieves TLE data and stored it in the passing parameters
    function TleDataToArray
        (satKey            :         Long_Long_Integer;
        xa_tle             : out     Double1D;
        xs_tle             : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleDataToArray";
        --xa_tle             : Double1D  (1..64);
        --xs_tle             : String    (1..512);

    -- Converts TLE two line format to CSV format
    function TleLinesToCsv
        (line1             : in      String;
        line2              : in      String;
        csvline            : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleLinesToCsv";
        --line1              : String    (1..512);
        --line2              : String    (1..512);
        --csvline            : String    (1..512);

    -- Converts TLE CSV format to two line format
    function TleCsvToLines
        (csvLine           : in      String;
        newSatno           :         Integer;
        line1              : out     String;
        line2              : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TleCsvToLines";
        --csvLine            : String    (1..512);
        --line1              : String    (1..512);
        --line2              : String    (1..512);

    -- Sets TLE key mode - This function was deprecated, please use DllMain/SetElsetKeyMode() instead
    function SetTleKeyMode
        (tle_keyMode       :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SetTleKeyMode";

    -- Gets current TLE key mode - This function was deprecated, please use DllMain/GetElsetKeyMode() instead
    function GetTleKeyMode return Integer
    with Import => True,
        Convention => C,
        External_Name => "GetTleKeyMode";

    -- Finds the check sums of TLE lines
    procedure GetCheckSums
        (line1             : in      String;
        line2              : in      String;
        chkSum1            : out     Integer;
        chkSum2            : out     Integer;
        errCode            : out     Integer)
    with Import => True,
        Convention => C,
        External_Name => "GetCheckSums";
        --line1              : String    (1..512);
        --line2              : String    (1..512);


end TleDll;

-- ========================= End of auto generated code ==========================
