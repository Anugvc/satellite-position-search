# This wrapper file was generated automatically by the GenDllWrappers program.
module VcmDll

if Sys.iswindows()
  libname="Vcm"
else
  libname="libvcm"
end

# Export Constant Variables
export VCMSTRLEN
export VCM1LINELEN
export XS_VCM_SATNAME
export XS_VCM_COMMNAME
export XS_VCM_GEONAME
export XS_VCM_DRAGMOD
export XS_VCM_LUNAR
export XS_VCM_RADPRESS
export XS_VCM_EARTHTIDES
export XS_VCM_INTRACK
export XS_VCM_INTEGMODE
export XS_VCM_COORDSYS
export XS_VCM_PARTIALS
export XS_VCM_STEPMODE
export XS_VCM_FIXEDSTEP
export XS_VCM_STEPSEL
export XS_VCM_SIZE
export XS_VCM_SATNAME_0_8
export XS_VCM_COMMNAME_8_25
export XS_VCM_GEONAME_33_6
export XS_VCM_DRAGMOD_39_12
export XS_VCM_LUNAR_51_3
export XS_VCM_RADPRESS_54_3
export XS_VCM_EARTHTIDES_57_3
export XS_VCM_INTRACK_60_3
export XS_VCM_INTEGMODE_63_6
export XS_VCM_COORDSYS_69_5
export XS_VCM_PARTIALS_74_8
export XS_VCM_STEPMODE_82_4
export XS_VCM_FIXEDSTEP_86_3
export XS_VCM_STEPSEL_89_6
export XS_VCM_LENGTH
export XA_VCM_SATNUM
export XA_VCM_EPOCHDS50UTC
export XA_VCM_REVNUM
export XA_VCM_J2KPOSX
export XA_VCM_J2KPOSY
export XA_VCM_J2KPOSZ
export XA_VCM_J2KVELX
export XA_VCM_J2KVELY
export XA_VCM_J2KVELZ
export XA_VCM_ECIPOSX
export XA_VCM_ECIPOSY
export XA_VCM_ECIPOSZ
export XA_VCM_ECIVELX
export XA_VCM_ECIVELY
export XA_VCM_ECIVELZ
export XA_VCM_EFGPOSX
export XA_VCM_EFGPOSY
export XA_VCM_EFGPOSZ
export XA_VCM_EFGVELX
export XA_VCM_EFGVELY
export XA_VCM_EFGVELZ
export XA_VCM_GEOZON
export XA_VCM_GEOTES
export XA_VCM_BTERM
export XA_VCM_BDOT
export XA_VCM_AGOM
export XA_VCM_EDR
export XA_VCM_OGPARM
export XA_VCM_CMOFFSET
export XA_VCM_F10
export XA_VCM_F10AVG
export XA_VCM_APAVG
export XA_VCM_TAIMUTC
export XA_VCM_UT1MUTC
export XA_VCM_UT1RATE
export XA_VCM_POLMOTX
export XA_VCM_POLMOTY
export XA_VCM_NUTTERMS
export XA_VCM_LEAPDS50UTC
export XA_VCM_INITSTEP
export XA_VCM_ERRCTRL
export XA_VCM_POSUSIG
export XA_VCM_POSVSIG
export XA_VCM_POSWSIG
export XA_VCM_VELUSIG
export XA_VCM_VELVSIG
export XA_VCM_VELWSIG
export XA_VCM_COVMTXSIZE
export XA_VCM_RMS
export XA_VCM_COVELEMS
export XA_VCM_SIZE
export XF_VCM_SATNUM
export XF_VCM_SATNAME
export XF_VCM_EPOCH
export XF_VCM_REVNUM
export XF_VCM_POSX
export XF_VCM_POSY
export XF_VCM_POSZ
export XF_VCM_VELX
export XF_VCM_VELY
export XF_VCM_VELZ
export XF_VCM_GEONAME
export XF_VCM_GEOZONALS
export XF_VCM_GEOTESSER
export XF_VCM_DRAGMODE
export XF_VCM_LUNSOL
export XF_VCM_RADPRESS
export XF_VCM_ERTHTIDES
export XF_VCM_INTRACK
export XF_VCM_BTERM
export XF_VCM_AGOM
export XF_VCM_OGPARM
export XF_VCM_CMOFFSET
export XF_VCM_F10
export XF_VCM_F10AVG
export XF_VCM_APAVG
export XF_VCM_TAIMUTC
export XF_VCM_UT1MUTC
export XF_VCM_UT1RATE
export XF_VCM_POLARX
export XF_VCM_POLARY
export XF_VCM_NTERMS
export XF_VCM_LEAPYR
export XF_VCM_INTEGMODE
export XF_VCM_PARTIALS
export XF_VCM_STEPMODE
export XF_VCM_FIXEDSTEP
export XF_VCM_STEPSLCTN
export XF_VCM_STEPSIZE
export XF_VCM_ERRCTRL
export XF_VCM_RMS
export XF_VCM_BDOT
export XF_VCM_EDR
export STEPMODE_AUTO
export STEPMODE_TIME
export STEPMODE_S

# Export Functions
export VcmInit
export VcmGetInfo
export VcmLoadFile
export VcmSaveFile
export VcmRemoveSat
export VcmRemoveAllSats
export VcmGetCount
export VcmGetLoaded
export VcmAddSatFrLines
export VcmAddSatFrLinesML
export VcmAddSatFrFields
export VcmAddSatFrFieldsML
export VcmRetrieveAllData
export VcmUpdateSatFrFields
export VcmGetField
export VcmSetField
export VcmGetAllFields
export VcmGetLines
export Vcm1LineToMultiLine
export VcmMultiLineTo1Line
export VcmGetSatKey
export VcmGetSatKeyML
export VcmFieldsToSatKey
export VcmFieldsToSatKeyML
export VcmArrayToVcmLines
export VcmArrayToVcm1Line
export VcmStringToArray

# Maximum string length of a multi-line VCM concatenated into one big string
const  VCMSTRLEN = 4000;


# Maximum string length of a 1-line VCM string
const  VCM1LINELEN = 1500;


# Starting location of the VCM's text data fields
# satellite name A8
const XS_VCM_SATNAME       =   0;

# common satellite name A25
const XS_VCM_COMMNAME      =   8;

# geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
const XS_VCM_GEONAME       =  33;

# drag model A12
const XS_VCM_DRAGMOD       =  39;

# lunar solar pertubations A3 (ON, OFF)
const XS_VCM_LUNAR         =  51;

# radiation pressure pertubations A3 (ON, OFF)
const XS_VCM_RADPRESS      =  54;

# Earth + ocean tides pertubation A3 (ON, OFF)
const XS_VCM_EARTHTIDES    =  57;

# intrack thrust A3 (ON, OFF)
const XS_VCM_INTRACK       =  60;

# integration mode A6 (ASW, OSW, SPADOC, ...)
const XS_VCM_INTEGMODE     =  63;

# coordinate system A5
const XS_VCM_COORDSYS      =  69;

# type of partial derivatives A8
const XS_VCM_PARTIALS      =  74;

# step mode A4 (AUTO, TIME, S)
const XS_VCM_STEPMODE      =  82;

# fixed step size indicator A3 (ON, OFF)
const XS_VCM_FIXEDSTEP     =  86;

# initial step size selection A6 (AUTO, MANUAL)
const XS_VCM_STEPSEL       =  89;


const    XS_VCM_SIZE          = 512;

# VCM's text data fields - new convention (start index, string length)
# satellite name A8
const XS_VCM_SATNAME_0_8      =   0;

# common satellite name A25
const XS_VCM_COMMNAME_8_25    =   8;

# geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
const XS_VCM_GEONAME_33_6     =  33;

# drag model A12
const XS_VCM_DRAGMOD_39_12    =  39;

# lunar solar pertubations A3 (ON, OFF)
const XS_VCM_LUNAR_51_3       =  51;

# radiation pressure pertubations A3 (ON, OFF)
const XS_VCM_RADPRESS_54_3    =  54;

# Earth + ocean tides pertubation A3 (ON, OFF)
const XS_VCM_EARTHTIDES_57_3  =  57;

# intrack thrust A3 (ON, OFF)
const XS_VCM_INTRACK_60_3     =  60;

# integration mode A6 (ASW, OSW, SPADOC, ...)
const XS_VCM_INTEGMODE_63_6   =  63;

# coordinate system A5
const XS_VCM_COORDSYS_69_5    =  69;

# type of partial derivatives A8
const XS_VCM_PARTIALS_74_8    =  74;

# step mode A4 (AUTO, TIME, S)
const XS_VCM_STEPMODE_82_4    =  82;

# fixed step size indicator A3 (ON, OFF)
const XS_VCM_FIXEDSTEP_86_3   =  86;

# initial step size selection A6 (AUTO, MANUAL)
const XS_VCM_STEPSEL_89_6     =  89;


const    XS_VCM_LENGTH           = 512;

# Indexes to access data from an array containing VCM numerical data fields
# satellite number
const XA_VCM_SATNUM        =   0;

# satellite's epoch time
const XA_VCM_EPOCHDS50UTC  =   1;

# epoch revolution number
const XA_VCM_REVNUM        =   2;

# J2K position X (km)
const XA_VCM_J2KPOSX       =   3;

# J2K position Y (km)
const XA_VCM_J2KPOSY       =   4;

# J2K position Z (km)
const XA_VCM_J2KPOSZ       =   5;

# J2K velocity X (km/s)
const XA_VCM_J2KVELX       =   6;

# J2K velocity Y (km/s)
const XA_VCM_J2KVELY       =   7;

# J2K velocity Z (km/s)
const XA_VCM_J2KVELZ       =   8;

# ECI position X (km)
const XA_VCM_ECIPOSX       =   9;

# ECI position Y (km)
const XA_VCM_ECIPOSY       =  10;

# ECI position Z (km)
const XA_VCM_ECIPOSZ       =  11;

# ECI velocity X (km/s)
const XA_VCM_ECIVELX       =  12;

# ECI velocity Y (km/s)
const XA_VCM_ECIVELY       =  13;

# ECI velocity Z (km/s)
const XA_VCM_ECIVELZ       =  14;

# EFG position X (km)
const XA_VCM_EFGPOSX       =  15;

# EFG position Y (km)
const XA_VCM_EFGPOSY       =  16;

# EFG position Z (km)
const XA_VCM_EFGPOSZ       =  17;

# EFG velocity X (km/s)
const XA_VCM_EFGVELX       =  18;

# EFG velocity Y (km/s)
const XA_VCM_EFGVELY       =  19;

# EFG velocity Z (km/s)
const XA_VCM_EFGVELZ       =  20;

# geopotential zonals
const XA_VCM_GEOZON        =  21;

# geopotential tesserals
const XA_VCM_GEOTES        =  22;

# ballistic coefficient (m^2/kg)
const XA_VCM_BTERM         =  23;

# BDOT (m^2/kg-s)
const XA_VCM_BDOT          =  24;

# solar radiation pressure coefficient (m^2/kg)
const XA_VCM_AGOM          =  25;

# energy dissipation rate (w/kg)
const XA_VCM_EDR           =  26;

# outgassing parameter/thrust acceleration (m/s^2)
const XA_VCM_OGPARM        =  27;

# center of mass offset (m)
const XA_VCM_CMOFFSET      =  28;

# solar flux F10
const XA_VCM_F10           =  29;

# average F10
const XA_VCM_F10AVG        =  30;

# average Ap
const XA_VCM_APAVG         =  31;

# TAI - UTC (s)
const XA_VCM_TAIMUTC       =  32;

# UT1 - UTC (s)
const XA_VCM_UT1MUTC       =  33;

# UT1 rate (ms/day)
const XA_VCM_UT1RATE       =  34;

# polar motion X (arcsec)
const XA_VCM_POLMOTX       =  35;

# polar motion Y (arcsec)
const XA_VCM_POLMOTY       =  36;

# nutation terms
const XA_VCM_NUTTERMS      =  37;

# leap second time in days since 1950 UTC
const XA_VCM_LEAPDS50UTC   =  38;

# initial step size
const XA_VCM_INITSTEP      =  39;

# integrator control error
const XA_VCM_ERRCTRL       =  40;

# position u sigma (km)
const XA_VCM_POSUSIG       =  41;

# position v sigma (km)
const XA_VCM_POSVSIG       =  42;

# position w sigma (km)
const XA_VCM_POSWSIG       =  43;

# velocity u sigma (km/s)
const XA_VCM_VELUSIG       =  44;

# velocity v sigma (km/s)
const XA_VCM_VELVSIG       =  45;

# velocity w sigma (km/s)
const XA_VCM_VELWSIG       =  46;

# covariance matrix size
const XA_VCM_COVMTXSIZE    =  47;

# weighted RM of last DC on the satellite
const XA_VCM_RMS           =  48;

# the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9 covmtx)
const XA_VCM_COVELEMS      = 100;


const    XA_VCM_SIZE          = 512;

# Indexes of VCM data fields
# Satellite number I5
const XF_VCM_SATNUM    =  1;

# Satellite international designator A8
const XF_VCM_SATNAME   =  2;

# Epoch YYYYDDDHHMMSS.SSS A17
const XF_VCM_EPOCH     =  3;

# Revolution number I5
const XF_VCM_REVNUM    =  4;

# position X (km) F16.8
const XF_VCM_POSX      =  5;

# position Y (km) F16.8
const XF_VCM_POSY      =  6;

# position Z (km) F16.8
const XF_VCM_POSZ      =  7;

# velocity X (km/s) F16.12
const XF_VCM_VELX      =  8;

# velocity Y (km/s) F16.12
const XF_VCM_VELY      =  9;

# velocity Z (km/s) F16.12
const XF_VCM_VELZ      = 10;

# Geo Name A6
const XF_VCM_GEONAME   = 11;

# Geo zonals I2
const XF_VCM_GEOZONALS = 12;

# Geo tesserals I2
const XF_VCM_GEOTESSER = 13;

# Drag modelel A12 (NONE, JAC70/MSIS90)
const XF_VCM_DRAGMODE  = 14;

# Lunar solar A3 (ON/OFF)
const XF_VCM_LUNSOL    = 15;

# Radiation pressure pertubations A3 (ON/OFF)
const XF_VCM_RADPRESS  = 16;

# Earth + ocean tides pertubations A3 (ON/OFF)
const XF_VCM_ERTHTIDES = 17;

# Intrack thrust A3 (ON/OFF)
const XF_VCM_INTRACK   = 18;

# Ballistic coefficient (m^2/kg)
const XF_VCM_BTERM     = 19;

# Radiation pressure coefficient  (m^2/kg)
const XF_VCM_AGOM      = 20;

# Outgassing parameter (m/s^2)
const XF_VCM_OGPARM    = 21;

# Center of mass offset (m)
const XF_VCM_CMOFFSET  = 22;

# Solar flux F10 I3
const XF_VCM_F10       = 23;

# Solar flux F10 average I3
const XF_VCM_F10AVG    = 24;

# Ap average F5.1
const XF_VCM_APAVG     = 25;

# TAI minus UTC (s)I2
const XF_VCM_TAIMUTC   = 26;

# UT1 minus UTC (s) F7.5
const XF_VCM_UT1MUTC   = 27;

# UT1 rate (ms/day)  F5.3
const XF_VCM_UT1RATE   = 28;

# Polar motion X (arcsec) F6.4
const XF_VCM_POLARX    = 29;

# Polar motion Y (arcsec) F6.4
const XF_VCM_POLARY    = 30;

# Nutation terms I3
const XF_VCM_NTERMS    = 31;

# Leap second time YYYYDDDHHMMSS.SSS A17
const XF_VCM_LEAPYR    = 32;

# Integration mode A6 (ASW, OSW, SPADOC)
const XF_VCM_INTEGMODE = 33;

# Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM)
const XF_VCM_PARTIALS  = 34;

# Integration step mode A4 (AUTO/TIME, S)
const XF_VCM_STEPMODE  = 35;

# Fixed step size indicator A3 (ON/OFF)
const XF_VCM_FIXEDSTEP = 36;

# Initial step size selection A6 (AUTO/MANUAL)
const XF_VCM_STEPSLCTN = 37;

# Initial integration step size F8.3
const XF_VCM_STEPSIZE  = 38;

# Integrator error control E9.3
const XF_VCM_ERRCTRL   = 39;

# Weighted rms of last DC E10.5
const XF_VCM_RMS       = 40;

# BDOT (M2/KG-S)
const XF_VCM_BDOT      = 41;

# EDR (W/KG)
const XF_VCM_EDR       = 42;



#*******************************************************************************
# Different ingetration control/step mode
const    STEPMODE_AUTO = 0, &
const    STEPMODE_TIME = 1, &
const    STEPMODE_S    = 2;



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Vcm DLL for use in the program
# If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
function VcmInit(apAddr)
   errCode = ccall( (:VcmInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Vcm DLL. The information is placed in the string parameter you pass in
# The returned string provides information about the version number, build date, and the platform of the Vcm DLL. 
function VcmGetInfo()
   infoStr = " "^128
   ccall( (:VcmGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads a text file containing Vcm's
# The users can use this function repeatedly to load Vcm records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
# 
# State vectors can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]" or "SPVMSG=[path/filename]".
# 
# This function only reads Vcm records from the main input file or Vcm records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
function VcmLoadFile(vcmFile)
   errCode = ccall( (:VcmLoadFile,libname) 
     , Int32
     , (Cstring,)
     , vcmFile)
   return errCode
end

#############################################################################
# Saves the currently loaded VCM's to a file
# If the users call this routine immediately after VcmLoadFile. The VCMs contents in the two file should be the same (minus duplicated VCMs or bad VCMs).
# 
# The purpose of this function is to save the current state of the loaded VCMs, usually used in GUI applications, for future use.
function VcmSaveFile(vcmFile, saveMode, saveForm)
   errCode = ccall( (:VcmSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , vcmFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Removes a VCM represented by the satKey from memory
# If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
function VcmRemoveSat(satKey)
   errCode = ccall( (:VcmRemoveSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removes all VCM's from memory
# The function returns zero if all the satellites are removed successfully from the Vcm DLL's binary tree.
function VcmRemoveAllSats()
   errCode = ccall( (:VcmRemoveAllSats,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
# See VcmGetLoaded for an example.
# This function is useful for dynamically allocating memory for the array that is passed to the function VcmGetLoaded().
function VcmGetCount()
   numSats = ccall( (:VcmGetCount,libname) 
     , Int32
     , ())
   return numSats
end

#############################################################################
# Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
# It is recommended that VcmGetCount() is used to count how many satellites are currently loaded in the Vcm DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
# 
# If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
function VcmGetLoaded(order, size_satKeys)
   satKeys = zeros(Int64, size_satKeys)
   ccall( (:VcmGetLoaded,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , order,satKeys)
   return satKeys
end

#############################################################################
# Adds a VCM using its 1-line or concatenated string formats
# If the satellite was previously added to the Vcm DLL's binary tree, the function also returns a negative value indicating an error. 
# 
# The users can use this function repeatedly to add many satellites (one satellite at a time) to the Vcm DLL's binary tree. 
function VcmAddSatFrLines(vcmString)
   satKey = ccall( (:VcmAddSatFrLines,libname) 
     , Int64
     , (Cstring,)
     , vcmString)
   return satKey
end

#############################################################################
# Works like VcmAddSatFrLines but designed for Matlab
function VcmAddSatFrLinesML(vcmString)
   satKey = zeros(Int64, 1)
   ccall( (:VcmAddSatFrLinesML,libname) 
     , Nothing
     , (Cstring
     , Ref{Int64})
     , vcmString,satKey)
   return satKey[1]
end

#############################################################################
# Adds a VCM using its individually provided field values
# 
# The table below indicates starting character position for each field in the xs_vcm parameter:
# 
# table
# 
# Starting Character Position
# Input Description
# 
#  0satellite name, A8
#  8common satellite name, A25
# 33geopotential name, A6 (WGS-72, WGS-84, EGM-96, ...)
# 39drag model, A12
# 51lunar solar pertubations, A3 (ON, OFF)
# 54radiation pressure pertubations, A3 (ON, OFF)
# 57Earth + ocean tides pertubation, A3 (ON, OFF)
# 60intrack thrust, A3 (ON, OFF)
# 63integration mode, A6 (ASW, OSW, SPADOC, ...)
# 69coordinate system, A5
# 74type of partial derivatives, A8
# 82step mode, A4 (AUTO, TIME, S)
# 86fixed step size indicator, A3 (ON, OFF)
# 89initial step size selection, A6 (AUTO, MANUAL)
# 
#  
# The table below indicates the index for each field in the xa_vcm array:
# 
# table
# 
# Index (xa_vcm)
# index Interpretation
# 
#   0satellite number
#   1satellite's epoch time
#   2epoch revolution number
#   3J2K position X (km)
#   4J2K position Y (km)
#   5J2K position Z (km)
#   6J2K velocity X (km/s)
#   7J2K velocity Y (km/s)
#   8J2K velocity Z (km/s)
#   9ECI position X (km)
#  10ECI position Y (km)
#  11ECI position Z (km)
#  12ECI velocity X (km/s)
#  13ECI velocity Y (km/s)
#  14ECI velocity Z (km/s)
#  15EFG position X (km)
#  16EFG position Y (km)
#  17EFG position Z (km)
#  18EFG velocity X (km/s)
#  19EFG velocity Y (km/s)
#  20EFG velocity Z (km/s)
#  21geopotential zonals
#  22geopotential tesserals
#  23ballistic coefficient (m^2/kg)
#  24BDOT (m^2/kg-s)
#  25solar radiation pressure coefficient (m^2/kg)
#  26energy dissipation rate (w/kg)
#  27outgassing parameter/thrust acceleration (km/s^2)
#  28center of mass offset (m)
#  29solar flux F10
#  30average F10
#  31average Ap
#  32TAI - UTC (s)
#  33UT1 - UTC (s)
#  34UT1 rate (ms/day)
#  35polar motion X (arcsec)
#  36polar motion Y (arcsec)
#  37nutation terms
#  38leap second time in days since 1950 UTC
#  39initial step size
#  40integrator control error
#  41position u sigma (km)
#  42position v sigma (km)
#  43position w sigma (km)
#  44velocity u sigma (km/s)
#  45velocity v sigma (km/s)
#  46velocity w sigma (km/s)
#  47covariance matrix size
#  48weighted RM of last DC on the satellite
# 100the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9
# covmtx)
# 
# 
# The order of the values in the lower half of the covariance matrix is described in the VCM Data Description section.  
# 
# For a 6x6 covariance matrix, the 21 values should be entered in the xa_vcm array using index values 100-120.  
# 
# For a 9x9 covariance matrix, the 45 values should be entered using the index values 100-144.
function VcmAddSatFrFields(xs_vcm, xa_vcm)
   satKey = ccall( (:VcmAddSatFrFields,libname) 
     , Int64
     , (Cstring
     , Ref{Float64})
     , xs_vcm,xa_vcm)
   return satKey
end

#############################################################################
# Works like VcmAddSatFrFields but designed for Matlab
# 
# See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
function VcmAddSatFrFieldsML(xs_vcm, xa_vcm)
   satKey = zeros(Int64, 1)
   ccall( (:VcmAddSatFrFieldsML,libname) 
     , Nothing
     , (Cstring
     , Ref{Float64}
     , Ref{Int64})
     , xs_vcm,xa_vcm,satKey)
   return satKey[1]
end

#############################################################################
# Retrieves VCM data associated with the input satKey
function VcmRetrieveAllData(satKey)
   xs_vcm = " "^512
   xa_vcm = zeros(Float64, 512)
   errCode = ccall( (:VcmRetrieveAllData,libname) 
     , Int32
     , (Int64
     , Cstring
     , Ref{Float64})
     , satKey,xs_vcm,xa_vcm)
   return errCode, xs_vcm, xa_vcm
end

#############################################################################
# Updates a VCM using its individual field values. Note: satellite's number and epoch won't be updated
# 
# See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
function VcmUpdateSatFrFields(satKey, xs_vcm, xa_vcm)
   errCode = ccall( (:VcmUpdateSatFrFields,libname) 
     , Int32
     , (Int64
     , Cstring
     , Ref{Float64})
     , satKey,xs_vcm,xa_vcm)
   return errCode
end

#############################################################################
# Retrieves the value of a specific field of a VCM
# 
# The table below shows the values for the xf_Vcm parameter:
# 
# table
# 
# index
# index Interpretation
# 
#  1  Satellite number I5
#  2  Satellite international designator A8
#  3  Epoch YYYYDDDHHMMSS.SSS A17
#  4  Revolution number I5
#  5  position X (km) F16.8 
#  6  position Y (km) F16.8 
#  7  position Z (km) F16.8   
#  8  velocity X (km/s) F16.12
#  9  velocity Y (km/s) F16.12
# 10  velocity Z (km/s) F16.12
# 11  Geo Name A6
# 12  Geo zonals I2
# 13  Geo tesserals I2
# 14  Drag modelel A12 (NONE, JAC70/MSIS90) 
# 15  Lunar solar A3 (ON/OFF)
# 16  Radiation pressure pertubations A3 (ON/OFF)
# 17  Earth + ocean tides pertubations A3 (ON/OFF)
# 18  Intrack thrust A3 (ON/OFF)
# 19  Ballistic coefficient (m^2/kg)
# 20  Radiation pressure coefficient  (m^2/kg)
# 21  Outgassing parameter (km/s^2)
# 22  Center of mass offset (m)
# 23  Solar flux F10 I3
# 24  Solar flux F10 average I3
# 25  Ap average F5.1
# 26  TAI minus UTC (s)I2
# 27  UT1 minus UTC (s) F7.5
# 28  UT1 rate (ms/day)  F5.3
# 29  Polar motion X (arcsec) F6.4
# 30  Polar motion Y (arcsec) F6.4
# 31  Nutation terms I3
# 32  Leap second time YYYYDDDHHMMSS.SSS A17
# 33  Integration mode A6 (ASW, OSW, SPADOC)
# 34  Type of partial derivatives A8 (ANALYTIC, FULL NUM, FAST NUM)
# 35  Integration step mode A4 (AUTO/TIME, S)
# 36  Fixed step size indicator A3 (ON/OFF)
# 37  Initial step size selection A6 (AUTO/MANUAL)
# 38  Initial integration step size F8.3
# 39  Integrator error control E9.3
# 40  Weighted RMS of last DC E10.5
# 41  BDOT (M2/KG-S)
# 42  EDR (W/KG)
# 
function VcmGetField(satKey, xf_Vcm)
   valueStr = " "^512
   errCode = ccall( (:VcmGetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_Vcm,valueStr)
   return errCode, valueStr
end

#############################################################################
# Updates the value of a specific field of a VCM
# See VcmGetField for a description of the xf_Vcm parameter.
function VcmSetField(satKey, xf_Vcm, valueStr)
   errCode = ccall( (:VcmSetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_Vcm,valueStr)
   return errCode
end

#############################################################################
# Retrieves all of the data for a VCM in a single function call
function VcmGetAllFields(satKey)
   satNum = zeros(Int32, 1)
   satName = " "^8
   epochDtg = " "^17
   revNum = zeros(Int32, 1)
   posECI = zeros(Float64, 3)
   velECI = zeros(Float64, 3)
   geoName = " "^6
   geoZonals = zeros(Int32, 1)
   geoTesserals = zeros(Int32, 1)
   dragModel = " "^12
   lunarSolar = " "^3
   radPress = " "^3
   earthTides = " "^3
   intrackThrust = " "^3
   bTerm = zeros(Float64, 1)
   agom = zeros(Float64, 1)
   ogParm = zeros(Float64, 1)
   cmOffset = zeros(Float64, 1)
   f10 = zeros(Int32, 1)
   f10Avg = zeros(Int32, 1)
   apAvg = zeros(Float64, 1)
   tconRec = zeros(Float64, 5)
   nTerms = zeros(Int32, 1)
   leapYrDtg = " "^17
   integMode = " "^6
   partials = " "^8
   stepMode = " "^4
   fixStep = " "^3
   stepSelection = " "^6
   initStepSize = zeros(Float64, 1)
   errCtrl = zeros(Float64, 1)
   rms = zeros(Float64, 1)
   errCode = ccall( (:VcmGetAllFields,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Cstring
     , Cstring
     , Cstring
     , Cstring
     , Cstring
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Cstring
     , Cstring
     , Cstring
     , Cstring
     , Cstring
     , Cstring
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,satNum,satName,epochDtg,revNum,posECI,velECI,geoName,geoZonals,
         geoTesserals,dragModel,lunarSolar,radPress,earthTides,intrackThrust,bTerm,agom,ogParm,cmOffset,
         f10,f10Avg,apAvg,tconRec,nTerms,leapYrDtg,integMode,partials,stepMode,fixStep,
         stepSelection,initStepSize,errCtrl,rms)
   return errCode, Int64(satNum[1]), satName, epochDtg, Int64(revNum[1]), posECI, velECI, geoName, Int64(geoZonals[1]), Int64(geoTesserals[1]), 
         dragModel, lunarSolar, radPress, earthTides, intrackThrust, bTerm[1], agom[1], ogParm[1], cmOffset[1], Int64(f10[1]), 
         Int64(f10Avg[1]), apAvg[1], tconRec, Int64(nTerms[1]), leapYrDtg, integMode, partials, stepMode, fixStep, stepSelection, 
         initStepSize[1], errCtrl[1], rms[1]
end

#############################################################################
# Returns the concatenated string representation of a VCM by the satellite's satKey
function VcmGetLines(satKey)
   vcmLines = " "^4000
   errCode = ccall( (:VcmGetLines,libname) 
     , Int32
     , (Int64
     , Cstring)
     , satKey,vcmLines)
   return errCode, vcmLines
end

#############################################################################
# Converts VCM 1-line format to multi-line format (as a concatenated string)
function Vcm1LineToMultiLine(vcm1Line)
   vcmLines = " "^4000
   errCode = ccall( (:Vcm1LineToMultiLine,libname) 
     , Int32
     , (Cstring
     , Cstring)
     , vcm1Line,vcmLines)
   return errCode, vcmLines
end

#############################################################################
# Converts VCM multi-line format (as a concatenated string) to 1-line format 
function VcmMultiLineTo1Line(vcmLines)
   vcm1Line = " "^1500
   errCode = ccall( (:VcmMultiLineTo1Line,libname) 
     , Int32
     , (Cstring
     , Cstring)
     , vcmLines,vcm1Line)
   return errCode, vcm1Line
end

#############################################################################
# Returns the first satKey from the currently loaded set of VCM's that contains the specified satellite number
# This function is useful when Vcm dll is used in applications that requires only one record (one Vcm entry) for one satellite and the applications refer to that Vcm by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
function VcmGetSatKey(satNum)
   satKey = ccall( (:VcmGetSatKey,libname) 
     , Int64
     , (Int32,)
     , satNum)
   return satKey
end

#############################################################################
# Works like VcmGetSatKey but designed for Matlab
function VcmGetSatKeyML(satNum)
   satKey = zeros(Int64, 1)
   ccall( (:VcmGetSatKeyML,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , satNum,satKey)
   return satKey[1]
end

#############################################################################
# Computes a satKey from the input data
# This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
function VcmFieldsToSatKey(satNum, epochDtg)
   satKey = ccall( (:VcmFieldsToSatKey,libname) 
     , Int64
     , (Int32
     , Cstring)
     , satNum,epochDtg)
   return satKey
end

#############################################################################
# Works like VcmFieldsToSatKey but designed for Matlab
function VcmFieldsToSatKeyML(satNum, epochDtg)
   satKey = zeros(Int64, 1)
   ccall( (:VcmFieldsToSatKeyML,libname) 
     , Nothing
     , (Int32
     , Cstring
     , Ref{Int64})
     , satNum,epochDtg,satKey)
   return satKey[1]
end

#############################################################################
# Constructs a multi-line VCM (as a concatenated string) from the VCM data stored in the input arrays.
function VcmArrayToVcmLines(xa_vcm, xs_vcm)
   vcmLines = " "^4000
   ccall( (:VcmArrayToVcmLines,libname) 
     , Nothing
     , (Ref{Float64}
     , Cstring
     , Cstring)
     , xa_vcm,xs_vcm,vcmLines)
   return vcmLines
end

#############################################################################
# Constructs a 1-line VCM from the VCM data stored in the input arrays.
function VcmArrayToVcm1Line(xa_vcm, xs_vcm)
   vcm1Line = " "^1500
   ccall( (:VcmArrayToVcm1Line,libname) 
     , Nothing
     , (Ref{Float64}
     , Cstring
     , Cstring)
     , xa_vcm,xs_vcm,vcm1Line)
   return vcm1Line
end

#############################################################################
# Parses data either in 1-line or multi-line (as a concatenated string) VCM and stores that data into the output arrays
# This function only parses data from the input VCM but DOES NOT load/add the input VCM to memory.
function VcmStringToArray(vcmString)
   xa_vcm = zeros(Float64, 512)
   xs_vcm = " "^512
   errCode = ccall( (:VcmStringToArray,libname) 
     , Int32
     , (Cstring
     , Ref{Float64}
     , Cstring)
     , vcmString,xa_vcm,xs_vcm)
   return errCode, xa_vcm, xs_vcm
end

#############################################################################

end #of module VcmDll
# ========================= End of auto generated code ==========================
