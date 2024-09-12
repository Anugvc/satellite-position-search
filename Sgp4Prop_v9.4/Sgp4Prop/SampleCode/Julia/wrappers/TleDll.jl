# This wrapper file was generated automatically by the GenDllWrappers program.
module TleDll

if Sys.iswindows()
  libname="Tle"
else
  libname="libtle"
end

# Export Constant Variables
export TLETYPE_SGP
export TLETYPE_SGP4
export TLETYPE_XP
export TLETYPE_SP
export XF_TLE_SATNUM
export XF_TLE_CLASS
export XF_TLE_SATNAME
export XF_TLE_EPOCH
export XF_TLE_BSTAR
export XF_TLE_EPHTYPE
export XF_TLE_ELSETNUM
export XF_TLE_INCLI
export XF_TLE_NODE
export XF_TLE_ECCEN
export XF_TLE_OMEGA
export XF_TLE_MNANOM
export XF_TLE_MNMOTN
export XF_TLE_REVNUM
export XF_TLE_NDOT
export XF_TLE_NDOTDOT
export XF_TLE_AGOMGP
export XF_TLE_SP_AGOM
export XF_TLE_SP_BTERM
export XF_TLE_SP_OGPARM
export XF_TLE_ORGSATNUM
export XF_TLE_BTERM
export XF_TLE_OBSTIME
export XF_TLE_EGR
export XF_TLE_EDR
export XF_TLE_VISMAG
export XF_TLE_RCS
export XF_TLE_OBJTYPE
export XF_TLE_SATNAME_12
export XA_TLE_SATNUM
export XA_TLE_EPOCH
export XA_TLE_NDOT
export XA_TLE_NDOTDOT
export XA_TLE_BSTAR
export XA_TLE_EPHTYPE
export XA_TLE_INCLI
export XA_TLE_NODE
export XA_TLE_ECCEN
export XA_TLE_OMEGA
export XA_TLE_MNANOM
export XA_TLE_MNMOTN
export XA_TLE_REVNUM
export XA_TLE_ELSETNUM
export XA_TLE_ORGSATNUM
export XA_TLE_BTERM
export XA_TLE_OBSTIME
export XA_TLE_EGR
export XA_TLE_EDR
export XA_TLE_VISMAG
export XA_TLE_RCS
export XA_TLE_AGOMGP
export XA_TLE_SP_BTERM
export XA_TLE_SP_OGPARM
export XA_TLE_SP_AGOM
export XA_TLE_SIZE
export XS_TLE_SECCLASS_1
export XS_TLE_SATNAME_12
export XS_TLE_OBJTYPE_11
export XS_TLE_SIZE
export XS_TLE_SECCLASS_0_1
export XS_TLE_SATNAME_1_12
export XS_TLE_OBJTYPE_13_1
export XS_TLE_LENGTH
export XF_TLEFORM_ORG
export XF_TLEFORM_CSV

# Export Functions
export TleInit
export TleGetInfo
export TleLoadFile
export TleSaveFile
export TleRemoveSat
export TleRemoveAllSats
export TleGetCount
export TleGetLoaded
export TleAddSatFrLines
export TleAddSatFrLinesML
export TleAddSatFrCsv
export TleAddSatFrCsvML
export TleAddSatFrFieldsGP
export TleAddSatFrFieldsGP2
export TleAddSatFrFieldsGP2ML
export TleUpdateSatFrFieldsGP
export TleUpdateSatFrFieldsGP2
export TleAddSatFrFieldsSP
export TleAddSatFrFieldsSPML
export TleUpdateSatFrFieldsSP
export TleSetField
export TleGetField
export TleGetAllFieldsGP
export TleGetAllFieldsGP2
export TleGetAllFieldsSP
export TleParseGP
export TleLinesToArray
export TleParseSP
export TleGetLines
export TleGetCsv
export TleGPFieldsToLines
export TleGPFieldsToCsv
export TleGPArrayToLines
export TleGPArrayToCsv
export TleSPFieldsToLines
export TleGetSatKey
export TleGetSatKeyML
export TleFieldsToSatKey
export TleFieldsToSatKeyML
export TleAddSatFrArray
export TleAddSatFrArrayML
export TleUpdateSatFrArray
export TleDataToArray
export TleLinesToCsv
export TleCsvToLines
export SetTleKeyMode
export GetTleKeyMode
export GetCheckSums

# TLE types (TLE ephemeris types) - They are different than ELTTYPE
# TLE SGP elset (Kozai mean motion)
const TLETYPE_SGP  = 0;

# TLE SGP4 elset (Brouwer mean motion)
const TLETYPE_SGP4 = 2;

# TLE SGP4-XP elset (Brouwer mean motion)
const TLETYPE_XP   = 4;

# TLE SP elset (osculating elements)
const TLETYPE_SP   = 6;


# Indexes of TLE data fields
# Satellite number
const XF_TLE_SATNUM     =  1;

# Security classification U: unclass, C: confidential, S: Secret
const XF_TLE_CLASS      =  2;

# Satellite name A8
const XF_TLE_SATNAME    =  3;

# Satellite's epoch time "YYYYJJJ.jjjjjjjj"
const XF_TLE_EPOCH      =  4;

# GP B* drag term (1/er)  (not the same as XF_TLE_BTERM)
const XF_TLE_BSTAR      =  5;

# Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
const XF_TLE_EPHTYPE    =  6;

# Element set number
const XF_TLE_ELSETNUM   =  7;

# Orbit inclination (deg)
const XF_TLE_INCLI      =  8;

# Right ascension of asending node (deg)
const XF_TLE_NODE       =  9;

# Eccentricity
const XF_TLE_ECCEN      = 10;

# Argument of perigee (deg)
const XF_TLE_OMEGA      = 11;

# Mean anomaly (deg)
const XF_TLE_MNANOM     = 12;

# Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
const XF_TLE_MNMOTN     = 13;

# Revolution number at epoch
const XF_TLE_REVNUM     = 14;


# GP Mean motion derivative (rev/day /2)
const XF_TLE_NDOT       = 15;

# GP Mean motion second derivative (rev/day**2 /6)
const XF_TLE_NDOTDOT    = 16;

# Solar radiation pressure GP (m2/kg)
const XF_TLE_AGOMGP     = 16;


# SP Radiation Pressure Coefficient
const XF_TLE_SP_AGOM    =  5;

# SP ballistic coefficient (m2/kg)
const XF_TLE_SP_BTERM   = 15;

# SP outgassing parameter (km/s2)
const XF_TLE_SP_OGPARM  = 16;


# Original satellite number
const XF_TLE_ORGSATNUM  = 17;

# GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
const XF_TLE_BTERM      = 18;

# Time of last observation relative to epoch +/- fractional days
const XF_TLE_OBSTIME    = 19;

# Last calculated error growth rate (km/day)
const XF_TLE_EGR        = 20;

# Last calculated energy dissipation rate (w/kg)
const XF_TLE_EDR        = 21;

# Median Vismag
const XF_TLE_VISMAG     = 22;

# Median RCS - diameter in centimeters (cm)
const XF_TLE_RCS        = 23;

# Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
const XF_TLE_OBJTYPE    = 24;

# Satellite name A12 (upto 12 character long)
const XF_TLE_SATNAME_12 = 25;



# Indexes of TLE numerical data in an array
# Line 1
# Satellite number
const XA_TLE_SATNUM        =  0;

# Satellite's epoch time in DS50UTC
const XA_TLE_EPOCH         =  1;

# GP Mean motion derivative (rev/day /2)
const XA_TLE_NDOT          =  2;

# GP Mean motion second derivative (rev/day**2 /6)
const XA_TLE_NDOTDOT       =  3;

# GP B* drag term (1/er)
const XA_TLE_BSTAR         =  4;

# Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
const XA_TLE_EPHTYPE       =  5;


# Line 2
# Orbit inclination (deg)
const XA_TLE_INCLI         = 20;

# Right ascension of asending node (deg)
const XA_TLE_NODE          = 21;

# Eccentricity
const XA_TLE_ECCEN         = 22;

# Argument of perigee (deg)
const XA_TLE_OMEGA         = 23;

# Mean anomaly (deg)
const XA_TLE_MNANOM        = 24;

# Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
const XA_TLE_MNMOTN        = 25;

# Revolution number at epoch
const XA_TLE_REVNUM        = 26;

# Element set number
const XA_TLE_ELSETNUM      = 30;


# CSV (or TLE-XP, ephemType=4) specific fields
# Original satellite number
const XA_TLE_ORGSATNUM     = 31;

# SP/SGP4-XP ballistic coefficient (m2/kg)
const XA_TLE_BTERM         = 32;

# Time of last observation relative to epoch +/- fractional days
const XA_TLE_OBSTIME       = 33;

# Last calculated error growth rate (km/day)
const XA_TLE_EGR           = 34;

# Last calculated energy dissipation rate (w/kg)
const XA_TLE_EDR           = 35;

# Median Vismag
const XA_TLE_VISMAG        = 36;

# Median RCS - diameter in centimeters (cm)
const XA_TLE_RCS           = 37;


# CSV (or TLE-XP, ephemType=4)
# Solar Radiation Pressure Coefficient GP (m2/kg)
const XA_TLE_AGOMGP        = 38;



# SP specific fields
# SP ballistic coefficient (m2/kg)
const XA_TLE_SP_BTERM      =  2;

# SP outgassing parameter (km/s2)
const XA_TLE_SP_OGPARM     =  3;

# SP Radiation Pressure Coefficient
const XA_TLE_SP_AGOM       =  4;


const    XA_TLE_SIZE          = 64;

# Indexes of TLE text data in an array of chars
# Security classification of line 1 and line 2
const XS_TLE_SECCLASS_1   =  0;

# Satellite name
const XS_TLE_SATNAME_12   =  1;

# Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
const XS_TLE_OBJTYPE_11   = 13;


const    XS_TLE_SIZE         = 512;      

# TLE's text data fields - new convention (start index, string length)
# Security classification of line 1 and line 2
const XS_TLE_SECCLASS_0_1  =  0;

# Satellite name
const XS_TLE_SATNAME_1_12  =  1;

# Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
const XS_TLE_OBJTYPE_13_1  = 13;


const    XS_TLE_LENGTH        = 512;      

# Indexes of different TLE file's formats
# Original TLE format
const XF_TLEFORM_ORG    =  0;

# CSV format
const XF_TLEFORM_CSV    =  1;




#Interface for the functions

# Notes: This function has been deprecated since v9.0.    
# Initializes Tle DLL for use in the program.
# If this function returns an error, it is recommended that you stop the program immediately.
# 
# An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
function TleInit(apAddr)
   errCode = ccall( (:TleInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns the information about the Tle DLL.
# The returned string provides information about the version number, build date, and the platform of the Tle DLL. 
function TleGetInfo()
   infoStr = " "^128
   ccall( (:TleGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads TLEs (satellites) contained in a text file into the TLE DLL's binary tree.
# You may use this function repeatedly to load TLEs from different input files. However, only unique satKeys are loaded. Duplicated TLEs won't be stored. 
# 
# TLEs can be included directly in the specified file, or they can be read from a separate file identified with "ELTFIL=[path\filename]" or "VECFIL=[path\filename]".
# 
# The input file is read in two passes. The function first looks for "ELTFIL=" and "VECFIL=" lines, then it looks for TLEs which were included directly. The result of this is that data entered using both methods will be processed, but the "ELTFIL=" and "VECFIL=" data will be processed first.
function TleLoadFile(tleFile)
   errCode = ccall( (:TleLoadFile,libname) 
     , Int32
     , (Cstring,)
     , tleFile)
   return errCode
end

#############################################################################
# Saves currently loaded TLEs to a file. 
# In append mode, if the specified file does not exist it will be created.
# If you call this routine immediately after TleLoadFile(), the TLE contents in the two files should be the same (minus duplicated TLE's or bad TLE's).
# 
# The purpose of this function is to save the current state of the loaded TLE's, usually used in GUI applications, for future use.
function TleSaveFile(tleFile, saveMode, xf_tleForm)
   errCode = ccall( (:TleSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , tleFile,saveMode,xf_tleForm)
   return errCode
end

#############################################################################
# Removes a TLE represented by the satKey from memory. 
# If the users enter an invalid satKey (a non-existing satKey), the function will return a non-zero value indicating an error.
function TleRemoveSat(satKey)
   errCode = ccall( (:TleRemoveSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removes all the TLEs from memory.
function TleRemoveAllSats()
   errCode = ccall( (:TleRemoveAllSats,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Returns the number of TLEs currently loaded. 
# See TleGetLoaded for an example.
# This function is useful for dynamically allocating memory for the array that is passed to the function TleGetLoaded().
function TleGetCount()
   numSats = ccall( (:TleGetCount,libname) 
     , Int32
     , ())
   return numSats
end

#############################################################################
# Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the TLE's.
# It is recommended that TleGetCount() be  used to determine how many satellites are currently loaded. This value can then be used to dynamically allocate an array to hold the satKeys.
# 
# If you are going to pass a statically allocated array to this function, ensure it is large enough to hold all of the returned satKeys.
function TleGetLoaded(order, size_satKeys)
   satKeys = zeros(Int64, size_satKeys)
   ccall( (:TleGetLoaded,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , order,satKeys)
   return satKeys
end

#############################################################################
# Adds a TLE (satellite), using its directly specified first and second lines. 
# The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
# 
# This function can be called repeatedly to add many TLEs, one at a time.
function TleAddSatFrLines(line1, line2)
   satKey = ccall( (:TleAddSatFrLines,libname) 
     , Int64
     , (Cstring
     , Cstring)
     , line1,line2)
   return satKey
end

#############################################################################
# This function is similar to TleAddSatFrLines but designed to be used in Matlab.
# Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrLines. This method is an alternative way to return the satKey output.
function TleAddSatFrLinesML(line1, line2)
   satKey = zeros(Int64, 1)
   ccall( (:TleAddSatFrLinesML,libname) 
     , Nothing
     , (Cstring
     , Cstring
     , Ref{Int64})
     , line1,line2,satKey)
   return satKey[1]
end

#############################################################################
# Adds a TLE (satellite), using its CSV string format. 
function TleAddSatFrCsv(csvLine)
   satKey = ccall( (:TleAddSatFrCsv,libname) 
     , Int64
     , (Cstring,)
     , csvLine)
   return satKey
end

#############################################################################
# This function is similar to TleAddSatFrCsv but designed to be used in Matlab.
function TleAddSatFrCsvML(csvLine)
   satKey = zeros(Int64, 1)
   ccall( (:TleAddSatFrCsvML,libname) 
     , Nothing
     , (Cstring
     , Ref{Int64})
     , csvLine,satKey)
   return satKey[1]
end

#############################################################################
# Adds a GP TLE using its individually provided field values. 
# The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
# 
# This function can be called repeatedly to add many satellites (one satellite at a time).
# 
# SGP satellites (ephType = 0) use Kozai mean motion. SGP4 satellites (ephType = 2) use Brouwer mean motion.
function TleAddSatFrFieldsGP(satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
   satKey = ccall( (:TleAddSatFrFieldsGP,libname) 
     , Int64
     , (Int32
     , Cchar
     , Cstring
     , Int32
     , Float64
     , Float64
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32)
     , satNum,secClass[1],satName,epochYr,epochDays,bstar,ephType,elsetNum,incli,
         node,eccen,omega,mnAnomaly,mnMotion,revNum)
   return satKey
end

#############################################################################
# This function is similar to TleAddSatFrFieldsGP but includes nDotO2 and n2DotO6. 
# nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
function TleAddSatFrFieldsGP2(satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6)
   satKey = ccall( (:TleAddSatFrFieldsGP2,libname) 
     , Int64
     , (Int32
     , Cchar
     , Cstring
     , Int32
     , Float64
     , Float64
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Float64
     , Float64)
     , satNum,secClass[1],satName,epochYr,epochDays,bstar,ephType,elsetNum,incli,
         node,eccen,omega,mnAnomaly,mnMotion,revNum,nDotO2,n2DotO6)
   return satKey
end

#############################################################################
# This function is similar to TleAddSatFrFieldsGP2 but designed to be used in Matlab. 
# Matlab doesn't seem to correctly return the 19-digit satellite key using TleAddSatFrFieldsGP2. This method is an alternative way to return the satKey output.
function TleAddSatFrFieldsGP2ML(satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6)
   satKey = zeros(Int64, 1)
   ccall( (:TleAddSatFrFieldsGP2ML,libname) 
     , Nothing
     , (Int32
     , Cchar
     , Cstring
     , Int32
     , Float64
     , Float64
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Float64
     , Float64
     , Ref{Int64})
     , satNum,secClass[1],satName,epochYr,epochDays,bstar,ephType,elsetNum,incli,
         node,eccen,omega,mnAnomaly,mnMotion,revNum,nDotO2,n2DotO6,satKey)
   return satKey[1]
end

#############################################################################
# Updates a GP satellite's data in memory by providing its individual field values. Note: satNum, year, day, and ephtype can't be updated.
# The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded satellite, the function will indicate an error.
# 
# Remember to use the correct mean motion depending on the satellite's ephType.
function TleUpdateSatFrFieldsGP(satKey, secClass, satName, bstar, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
   errCode = ccall( (:TleUpdateSatFrFieldsGP,libname) 
     , Int32
     , (Int64
     , Cchar
     , Cstring
     , Float64
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32)
     , satKey,secClass[1],satName,bstar,elsetNum,incli,node,eccen,omega,
         mnAnomaly,mnMotion,revNum)
   return errCode
end

#############################################################################
# This function is similar to TleUpdateSatFrFieldsGP but includes nDotO2 and n2DotO6. Note: satNum, year, day, and ephtype can't be updated.
# nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
function TleUpdateSatFrFieldsGP2(satKey, secClass, satName, bstar, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6)
   errCode = ccall( (:TleUpdateSatFrFieldsGP2,libname) 
     , Int32
     , (Int64
     , Cchar
     , Cstring
     , Float64
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Float64
     , Float64)
     , satKey,secClass[1],satName,bstar,elsetNum,incli,node,eccen,omega,
         mnAnomaly,mnMotion,revNum,nDotO2,n2DotO6)
   return errCode
end

#############################################################################
# Adds an SP satellite using the individually provided field values.
# Only applies to SP propagator.
function TleAddSatFrFieldsSP(satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
   satKey = ccall( (:TleAddSatFrFieldsSP,libname) 
     , Int64
     , (Int32
     , Cchar
     , Cstring
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32)
     , satNum,secClass[1],satName,epochYr,epochDays,bTerm,ogParm,agom,elsetNum,
         incli,node,eccen,omega,mnAnomaly,mnMotion,revNum)
   return satKey
end

#############################################################################
# This function is similar to TleAddSatFrFieldsSP but designed to be used in Matlab.
# Only applies to SP propagator.
# Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrFieldsSP. This method is an alternative way to return the satKey output.
function TleAddSatFrFieldsSPML(satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
   satKey = zeros(Int64, 1)
   ccall( (:TleAddSatFrFieldsSPML,libname) 
     , Nothing
     , (Int32
     , Cchar
     , Cstring
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Ref{Int64})
     , satNum,secClass[1],satName,epochYr,epochDays,bTerm,ogParm,agom,elsetNum,
         incli,node,eccen,omega,mnAnomaly,mnMotion,revNum,satKey)
   return satKey[1]
end

#############################################################################
# Updates an SP satellite's data in memory using its individually provided field values. Note: satNum, year, day, and ephtype can't be updated.
# Only applies to SP propagator.
# The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded TLE, the function will indicate an error. 
function TleUpdateSatFrFieldsSP(satKey, secClass, satName, bterm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
   errCode = ccall( (:TleUpdateSatFrFieldsSP,libname) 
     , Int32
     , (Int64
     , Cchar
     , Cstring
     , Float64
     , Float64
     , Float64
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32)
     , satKey,secClass[1],satName,bterm,ogParm,agom,elsetNum,incli,node,
         eccen,omega,mnAnomaly,mnMotion,revNum)
   return errCode
end

#############################################################################
# Updates the value of a field of a TLE. This function can be used for both GP and SP satellites.
# 
# The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
# satNum (1), Epoch (4), and Ephemeris Type (5) cannot be altered.
# 
# table
# 
# 	index
# 	index Interpretation
# 
# 1Satellite number
# 2Security classification
# 3Satellite international designator
# 4Epoch
# 5Ephemeris type = 0,2: B* drag term (1/er) Ephemeris type = 6   : SP radiation pressure
# coefficient agom (m2/kg)
# 6Ephemeris type
# 7Element set number
# 8Orbit inclination (degrees)
# 9Right ascension of ascending node (degrees)
# 10Eccentricity
# 11Argument of perigee (degrees)
# 12Mean anomaly (degrees)
# 13Mean motion (rev/day)
# 14Revolution number at epoch
# 15Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or Ephemeris type = 6: SP
# ballistic coefficient (m2/kg)
# 16Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or Ephemeris type = 6:
# SP Outgassing parameter/Thrust Acceleration (km/s2)
# 
function TleSetField(satKey, xf_Tle, valueStr)
   errCode = ccall( (:TleSetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_Tle,valueStr)
   return errCode
end

#############################################################################
# Retrieves the value of a specific field of a TLE. 
# 
# The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
# 
# table
# 
# 	index
# 	index Interpretation
# 
# 1Satellite number
# 2Security classification
# 3Satellite international designator
# 4Epoch
# 5Ephemeris type = 0,2: B* drag term (1/er) Ephemeris type = 6   : SP radiation pressure
# coefficient agom (m2/kg)
# 6Ephemeris type
# 7Element set number
# 8Orbit inclination (degrees)
# 9Right ascension of ascending node (degrees)
# 10Eccentricity
# 11Argument of perigee (degrees)
# 12Mean anomaly (degrees)
# 13Mean motion (rev/day)
# 14Revolution number at epoch
# 15Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or Ephemeris type = 6: SP
# ballistic coefficient (m2/kg)
# 16Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or Ephemeris type = 6:
# SP Outgassing parameter/Thrust Acceleration (km/s2)
# 
function TleGetField(satKey, xf_Tle)
   valueStr = " "^512
   errCode = ccall( (:TleGetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_Tle,valueStr)
   return errCode, valueStr
end

#############################################################################
# Retrieves all of the data for a GP satellite in a single function call. 
# This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
function TleGetAllFieldsGP(satKey)
   satNum = zeros(Int32, 1)
   secClass = " "
   satName = " "^8
   epochYr = zeros(Int32, 1)
   epochDays = zeros(Float64, 1)
   bstar = zeros(Float64, 1)
   ephType = zeros(Int32, 1)
   elsetNum = zeros(Int32, 1)
   incli = zeros(Float64, 1)
   node = zeros(Float64, 1)
   eccen = zeros(Float64, 1)
   omega = zeros(Float64, 1)
   mnAnomaly = zeros(Float64, 1)
   mnMotion = zeros(Float64, 1)
   revNum = zeros(Int32, 1)
   errCode = ccall( (:TleGetAllFieldsGP,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , satKey,satNum,secClass,satName,epochYr,epochDays,bstar,ephType,elsetNum,
         incli,node,eccen,omega,mnAnomaly,mnMotion,revNum)
   return errCode, Int64(satNum[1]), secClass, satName, Int64(epochYr[1]), epochDays[1], bstar[1], Int64(ephType[1]), Int64(elsetNum[1]), incli[1], 
         node[1], eccen[1], omega[1], mnAnomaly[1], mnMotion[1], Int64(revNum[1])
end

#############################################################################
# Retrieves all of the data (including nDotO2 and n2DotO6) for a GP satellite in a single function call. 
# This function is similar to TleGetAllFieldsGP but also includes nDotO2 and n2DotO6. 
# This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
function TleGetAllFieldsGP2(satKey)
   satNum = zeros(Int32, 1)
   secClass = " "
   satName = " "^8
   epochYr = zeros(Int32, 1)
   epochDays = zeros(Float64, 1)
   bstar = zeros(Float64, 1)
   ephType = zeros(Int32, 1)
   elsetNum = zeros(Int32, 1)
   incli = zeros(Float64, 1)
   node = zeros(Float64, 1)
   eccen = zeros(Float64, 1)
   omega = zeros(Float64, 1)
   mnAnomaly = zeros(Float64, 1)
   mnMotion = zeros(Float64, 1)
   revNum = zeros(Int32, 1)
   nDotO2 = zeros(Float64, 1)
   n2DotO6 = zeros(Float64, 1)
   errCode = ccall( (:TleGetAllFieldsGP2,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,satNum,secClass,satName,epochYr,epochDays,bstar,ephType,elsetNum,
         incli,node,eccen,omega,mnAnomaly,mnMotion,revNum,nDotO2,n2DotO6)
   return errCode, Int64(satNum[1]), secClass, satName, Int64(epochYr[1]), epochDays[1], bstar[1], Int64(ephType[1]), Int64(elsetNum[1]), incli[1], 
         node[1], eccen[1], omega[1], mnAnomaly[1], mnMotion[1], Int64(revNum[1]), nDotO2[1], n2DotO6[1]
end

#############################################################################
# Retrieves all of the data for an SP satellite in a single function call.
# Only applies to SP propagator.
# This function only works for SP satellites. The field values are placed in the corresponding parameters of the function. 
function TleGetAllFieldsSP(satKey)
   satNum = zeros(Int32, 1)
   secClass = " "
   satName = " "^8
   epochYr = zeros(Int32, 1)
   epochDays = zeros(Float64, 1)
   bTerm = zeros(Float64, 1)
   ogParm = zeros(Float64, 1)
   agom = zeros(Float64, 1)
   elsetNum = zeros(Int32, 1)
   incli = zeros(Float64, 1)
   node = zeros(Float64, 1)
   eccen = zeros(Float64, 1)
   omega = zeros(Float64, 1)
   mnAnomaly = zeros(Float64, 1)
   mnMotion = zeros(Float64, 1)
   revNum = zeros(Int32, 1)
   errCode = ccall( (:TleGetAllFieldsSP,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , satKey,satNum,secClass,satName,epochYr,epochDays,bTerm,ogParm,agom,
         elsetNum,incli,node,eccen,omega,mnAnomaly,mnMotion,revNum)
   return errCode, Int64(satNum[1]), secClass, satName, Int64(epochYr[1]), epochDays[1], bTerm[1], ogParm[1], agom[1], Int64(elsetNum[1]), 
         incli[1], node[1], eccen[1], omega[1], mnAnomaly[1], mnMotion[1], Int64(revNum[1])
end

#############################################################################
# Parses GP data from the input first and second lines of a two line element set or a CSV Tle.
# This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
function TleParseGP(line1, line2)
   satNum = zeros(Int32, 1)
   secClass = " "
   satName = " "^8
   epochYr = zeros(Int32, 1)
   epochDays = zeros(Float64, 1)
   nDotO2 = zeros(Float64, 1)
   n2DotO6 = zeros(Float64, 1)
   bstar = zeros(Float64, 1)
   ephType = zeros(Int32, 1)
   elsetNum = zeros(Int32, 1)
   incli = zeros(Float64, 1)
   node = zeros(Float64, 1)
   eccen = zeros(Float64, 1)
   omega = zeros(Float64, 1)
   mnAnomaly = zeros(Float64, 1)
   mnMotion = zeros(Float64, 1)
   revNum = zeros(Int32, 1)
   errCode = ccall( (:TleParseGP,libname) 
     , Int32
     , (Cstring
     , Cstring
     , Ref{Int32}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , line1,line2,satNum,secClass,satName,epochYr,epochDays,nDotO2,n2DotO6,
         bstar,ephType,elsetNum,incli,node,eccen,omega,mnAnomaly,mnMotion,revNum)
   return errCode, Int64(satNum[1]), secClass, satName, Int64(epochYr[1]), epochDays[1], nDotO2[1], n2DotO6[1], bstar[1], Int64(ephType[1]), 
         Int64(elsetNum[1]), incli[1], node[1], eccen[1], omega[1], mnAnomaly[1], mnMotion[1], Int64(revNum[1])
end

#############################################################################
# Parses GP data from the input first and second lines of a two line element set or a CSV tle and store that data back into the output parameters.
# This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
function TleLinesToArray(line1, line2)
   xa_tle = zeros(Float64, 64)
   xs_tle = " "^512
   errCode = ccall( (:TleLinesToArray,libname) 
     , Int32
     , (Cstring
     , Cstring
     , Ref{Float64}
     , Cstring)
     , line1,line2,xa_tle,xs_tle)
   return errCode, xa_tle, xs_tle
end

#############################################################################
# Parses SP data from the input first and second lines of a two line element set.
# Only applies to SP propagator.
# This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
function TleParseSP(line1, line2)
   satNum = zeros(Int32, 1)
   secClass = " "
   satName = " "^8
   epochYr = zeros(Int32, 1)
   epochDays = zeros(Float64, 1)
   bTerm = zeros(Float64, 1)
   ogParm = zeros(Float64, 1)
   agom = zeros(Float64, 1)
   elsetNum = zeros(Int32, 1)
   incli = zeros(Float64, 1)
   node = zeros(Float64, 1)
   eccen = zeros(Float64, 1)
   omega = zeros(Float64, 1)
   mnAnomaly = zeros(Float64, 1)
   mnMotion = zeros(Float64, 1)
   revNum = zeros(Int32, 1)
   errCode = ccall( (:TleParseSP,libname) 
     , Int32
     , (Cstring
     , Cstring
     , Ref{Int32}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , line1,line2,satNum,secClass,satName,epochYr,epochDays,bTerm,ogParm,
         agom,elsetNum,incli,node,eccen,omega,mnAnomaly,mnMotion,revNum)
   return errCode, Int64(satNum[1]), secClass, satName, Int64(epochYr[1]), epochDays[1], bTerm[1], ogParm[1], agom[1], Int64(elsetNum[1]), 
         incli[1], node[1], eccen[1], omega[1], mnAnomaly[1], mnMotion[1], Int64(revNum[1])
end

#############################################################################
# Returns the first and second lines representation of a TLE of a satellite. 
function TleGetLines(satKey)
   line1 = " "^512
   line2 = " "^512
   errCode = ccall( (:TleGetLines,libname) 
     , Int32
     , (Int64
     , Cstring
     , Cstring)
     , satKey,line1,line2)
   return errCode, line1, line2
end

#############################################################################
# Returns the CSV string representation of a TLE of a satellite. 
function TleGetCsv(satKey)
   csvLine = " "^512
   errCode = ccall( (:TleGetCsv,libname) 
     , Int32
     , (Int64
     , Cstring)
     , satKey,csvLine)
   return errCode, csvLine
end

#############################################################################
# Constructs a TLE from individually provided GP data fields.
# This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
# Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
function TleGPFieldsToLines(satNum, secClass, satName, epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
   line1 = " "^512
   line2 = " "^512
   ccall( (:TleGPFieldsToLines,libname) 
     , Nothing
     , (Int32
     , Cchar
     , Cstring
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Cstring
     , Cstring)
     , satNum,secClass[1],satName,epochYr,epochDays,nDotO2,n2DotO6,bstar,ephType,
         elsetNum,incli,node,eccen,omega,mnAnomaly,mnMotion,revNum,line1,line2)
   return line1, line2
end

#############################################################################
# Constructs a TLE from individually provided GP data fields.
# This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
# Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
function TleGPFieldsToCsv(satNum, secClass, satName, epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
   csvLine = " "^512
   ccall( (:TleGPFieldsToCsv,libname) 
     , Nothing
     , (Int32
     , Cchar
     , Cstring
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Cstring)
     , satNum,secClass[1],satName,epochYr,epochDays,nDotO2,n2DotO6,bstar,ephType,
         elsetNum,incli,node,eccen,omega,mnAnomaly,mnMotion,revNum,csvLine)
   return csvLine
end

#############################################################################
# Constructs a TLE from GP data stored in the input parameters.
# This function only parses data from the input data but DOES NOT load/add the TLE to memory.
# 
# Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
function TleGPArrayToLines(xa_tle, xs_tle)
   line1 = " "^512
   line2 = " "^512
   ccall( (:TleGPArrayToLines,libname) 
     , Nothing
     , (Ref{Float64}
     , Cstring
     , Cstring
     , Cstring)
     , xa_tle,xs_tle,line1,line2)
   return line1, line2
end

#############################################################################
# Constructs a TLE from GP data stored in the input parameters.
# This function only parses data from the input data but DOES NOT load/add the TLE to memory.
# Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
function TleGPArrayToCsv(xa_tle, xs_tle)
   csvline = " "^512
   ccall( (:TleGPArrayToCsv,libname) 
     , Nothing
     , (Ref{Float64}
     , Cstring
     , Cstring)
     , xa_tle,xs_tle,csvline)
   return csvline
end

#############################################################################
# Constructs a TLE from individually provided SP data fields.
# Only applies to SP propagator.
# This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
# Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
function TleSPFieldsToLines(satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
   line1 = " "^512
   line2 = " "^512
   ccall( (:TleSPFieldsToLines,libname) 
     , Nothing
     , (Int32
     , Cchar
     , Cstring
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Cstring
     , Cstring)
     , satNum,secClass[1],satName,epochYr,epochDays,bTerm,ogParm,agom,elsetNum,
         incli,node,eccen,omega,mnAnomaly,mnMotion,revNum,line1,line2)
   return line1, line2
end

#############################################################################
# Returns the first satKey from the currently loaded set of TLEs that contains the specified satellite number.
# This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
# A negative value will be returned if there is an error.
function TleGetSatKey(satNum)
   satKey = ccall( (:TleGetSatKey,libname) 
     , Int64
     , (Int32,)
     , satNum)
   return satKey
end

#############################################################################
# This function is similar to TleGetSatKey but designed to be used in Matlab. 
# Matlab doesn't correctly return the 19-digit satellite key using TleGetSatKey. This method is an alternative way to return the satKey output.
# This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
# A negative value will be returned in satKey if there is an error.
function TleGetSatKeyML(satNum)
   satKey = zeros(Int64, 1)
   ccall( (:TleGetSatKeyML,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , satNum,satKey)
   return satKey[1]
end

#############################################################################
# Computes a satKey from the input data.
# There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
# 
# This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different. 
# A negative value will be returned if there is an error.
function TleFieldsToSatKey(satNum, epochYr, epochDays, ephType)
   satKey = ccall( (:TleFieldsToSatKey,libname) 
     , Int64
     , (Int32
     , Int32
     , Float64
     , Int32)
     , satNum,epochYr,epochDays,ephType)
   return satKey
end

#############################################################################
# This function is similar to TleFieldsToSatKey but designed to be used in Matlab. 
# Matlab doesn't correctly return the 19-digit satellite key using TleFieldsToSatKey. This method is an alternative way to return the satKey output.
# There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
# 
# This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different.
# A negative value will be returned in satKey if there is an error.
function TleFieldsToSatKeyML(satNum, epochYr, epochDays, ephType)
   satKey = zeros(Int64, 1)
   ccall( (:TleFieldsToSatKeyML,libname) 
     , Nothing
     , (Int32
     , Int32
     , Float64
     , Int32
     , Ref{Int64})
     , satNum,epochYr,epochDays,ephType,satKey)
   return satKey[1]
end

#############################################################################
# Adds a TLE (satellite), using its data stored in the input parameters.
function TleAddSatFrArray(xa_tle, xs_tle)
   satKey = ccall( (:TleAddSatFrArray,libname) 
     , Int64
     , (Ref{Float64}
     , Cstring)
     , xa_tle,xs_tle)
   return satKey
end

#############################################################################
# This function is similar to TleAddSatFrArray but designed to be used in Matlab. 
function TleAddSatFrArrayML(xa_tle, xs_tle)
   satKey = zeros(Int64, 1)
   ccall( (:TleAddSatFrArrayML,libname) 
     , Nothing
     , (Ref{Float64}
     , Cstring
     , Ref{Int64})
     , xa_tle,xs_tle,satKey)
   return satKey[1]
end

#############################################################################
# Updates existing TLE data with the provided new data stored in the input parameters. Note: satNum, year, day, and ephtype can't be updated.
# nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
function TleUpdateSatFrArray(satKey, xa_tle, xs_tle)
   errCode = ccall( (:TleUpdateSatFrArray,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Cstring)
     , satKey,xa_tle,xs_tle)
   return errCode
end

#############################################################################
# Retrieves TLE data and stored it in the passing parameters
function TleDataToArray(satKey)
   xa_tle = zeros(Float64, 64)
   xs_tle = " "^512
   errCode = ccall( (:TleDataToArray,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Cstring)
     , satKey,xa_tle,xs_tle)
   return errCode, xa_tle, xs_tle
end

#############################################################################
# Converts TLE two line format to CSV format
function TleLinesToCsv(line1, line2)
   csvline = " "^512
   errCode = ccall( (:TleLinesToCsv,libname) 
     , Int32
     , (Cstring
     , Cstring
     , Cstring)
     , line1,line2,csvline)
   return errCode, csvline
end

#############################################################################
# Converts TLE CSV format to two line format
function TleCsvToLines(csvLine, newSatno)
   line1 = " "^512
   line2 = " "^512
   errCode = ccall( (:TleCsvToLines,libname) 
     , Int32
     , (Cstring
     , Int32
     , Cstring
     , Cstring)
     , csvLine,newSatno,line1,line2)
   return errCode, line1, line2
end

#############################################################################
# Sets TLE key mode - This function was deprecated, please use DllMain/SetElsetKeyMode() instead
function SetTleKeyMode(tle_keyMode)
   errCode = ccall( (:SetTleKeyMode,libname) 
     , Int32
     , (Int32,)
     , tle_keyMode)
   return errCode
end

#############################################################################
# Gets current TLE key mode - This function was deprecated, please use DllMain/GetElsetKeyMode() instead
function GetTleKeyMode()
   tle_keyMode = ccall( (:GetTleKeyMode,libname) 
     , Int32
     , ())
   return tle_keyMode
end

#############################################################################
# Finds the check sums of TLE lines
function GetCheckSums(line1, line2)
   chkSum1 = zeros(Int32, 1)
   chkSum2 = zeros(Int32, 1)
   errCode = zeros(Int32, 1)
   ccall( (:GetCheckSums,libname) 
     , Nothing
     , (Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32})
     , line1,line2,chkSum1,chkSum2,errCode)
   return Int64(chkSum1[1]), Int64(chkSum2[1]), Int64(errCode[1])
end

#############################################################################

end #of module TleDll
# ========================= End of auto generated code ==========================
