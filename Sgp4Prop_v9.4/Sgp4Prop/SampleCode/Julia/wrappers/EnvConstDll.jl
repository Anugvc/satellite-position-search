# This wrapper file was generated automatically by the GenDllWrappers program.
module EnvConstDll

if Sys.iswindows()
  libname="EnvConst"
else
  libname="libenvconst"
end

# Export Constant Variables
export XF_GEOCON_FF
export XF_GEOCON_J2
export XF_GEOCON_J3
export XF_GEOCON_J4
export XF_GEOCON_KE
export XF_GEOCON_KMPER
export XF_GEOCON_RPTIM
export XF_GEOCON_CK2
export XF_GEOCON_CK4
export XF_GEOCON_KS2EK
export XF_GEOCON_THDOT
export XF_GEOCON_J5
export XF_GEOCON_MU
export XF_FKCON_C1
export XF_FKCON_C1DOT
export XF_FKCON_THGR70
export XF_GEOMOD_JGM2
export XF_GEOMOD_GEM5
export XF_GEOMOD_EGM08
export XF_GEOMOD_GEM9
export XF_GEOMOD_STEM68
export XF_GEOMOD_WGS72
export XF_GEOMOD_WGS84
export XF_GEOMOD_EGM96
export XF_GEOMOD_UNKNOWN
export XF_FKMOD_4
export XF_FKMOD_5

# Export Functions
export EnvInit
export EnvGetInfo
export EnvLoadFile
export EnvSaveFile
export EnvGetFkIdx
export EnvSetFkIdx
export EnvGetGeoIdx
export EnvSetGeoIdx
export EnvGetGeoStr
export EnvSetGeoStr
export EnvGetGeoConst
export EnvGetFkConst
export EnvGetFkPtr
export EnvSetEarthShape
export EnvGetEarthShape

# Indexes of Earth Constant fields
# Earth flattening (reciprocal; unitless)
const XF_GEOCON_FF    = 1;

# J2 (unitless)
const XF_GEOCON_J2    = 2;

# J3 (unitless)
const XF_GEOCON_J3    = 3;

# J4 (unitless)
const XF_GEOCON_J4    = 4;

# Ke (er**1.5/min)
const XF_GEOCON_KE    = 5;

# Earth radius (km/er)
const XF_GEOCON_KMPER = 6;

# Earth rotation rate w.r.t. fixed equinox (rad/min)
const XF_GEOCON_RPTIM = 7;


# J2/2 (unitless)
const XF_GEOCON_CK2   = 8;

# -3/8 J4 (unitless)
const XF_GEOCON_CK4   = 9;

# Converts km/sec to er/kem
const XF_GEOCON_KS2EK = 10;

# Earth rotation rate w.r.t. fixed equinox (rad/kemin)
const XF_GEOCON_THDOT = 11;

# J5 (unitless)
const XF_GEOCON_J5    = 12;

# Gravitational parameter km^3/(solar s)^2
const XF_GEOCON_MU    = 13;



# Indexes of FK Constant fields
# Earth rotation rate w.r.t. moving equinox (rad/day)
const XF_FKCON_C1     = 1;

# Earth rotation acceleration(rad/day**2)
const XF_FKCON_C1DOT  = 2;

# Greenwich angle (1970; rad)
const XF_FKCON_THGR70 = 3;


# Indexes represent geopotential models GEO
# Earth constants - JGM2
const XF_GEOMOD_JGM2   =    2;

# Earth constants - GEM5
const XF_GEOMOD_GEM5   =    5;

# Earth constants - EGM-08
const XF_GEOMOD_EGM08  =    8;

# Earth constants - GEM9
const XF_GEOMOD_GEM9   =    9;

# Earth constants - STEM68
const XF_GEOMOD_STEM68 =   68;

# Earth constants - WGS-72
const XF_GEOMOD_WGS72  =   72;

# Earth constants - WGS-84
const XF_GEOMOD_WGS84  =   84;

# Earth constants - EGM-96
const XF_GEOMOD_EGM96  =   96;

# Invalid earth model
const XF_GEOMOD_UNKNOWN=  100;


#*******************************************************************************

# Indexes represent fundamental catalogue FK
# Fundamental Catalog - FK5
const XF_FKMOD_4 = 4;

# Fundamental Catalog - FK4
const XF_FKMOD_5 = 5;




#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes the EnvInit DLL for use in the program.
# If this function returns an error, it is recommended that you stop the program immediately.
# 
# An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
# 
# When the function is called, the GEO model is set to WGS-72 and the FK model is set to FK5.  If the user plans to use the SGP4 propagator, do NOT change this default setting. Otherwise, SGP4 won't work
function EnvInit(apAddr)
   errCode = ccall( (:EnvInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the EnvConst DLL.
# The returned string provides information about the version number, build date, and the platform of the EnvConst DLL.
function EnvGetInfo()
   infoStr = " "^128
   ccall( (:EnvGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Reads Earth constants (GEO) model and fundamental catalogue (FK) model settings from a file.
# The users can use NAME=VALUE pair to setup the GEO and FK models in the input file. 
# 
# For GEO model, the valid names are GEOCONST, BCONST and the valid values are WGS-72, WGS72,  72, WGS-84, WGS84, 84, EGM-96, EGM96, 96, EGM-08, EGM08, 08, JGM-2, JGM2, 2, SEM68R, 68, GEM5, 5, GEM9, and 9.
# 
# For FK model, the valid name is FKCONST and the valid values are: FK4, 4, FK5, 5.
# 
# All the string literals are case-insensitive.	
function EnvLoadFile(envFile)
   errCode = ccall( (:EnvLoadFile,libname) 
     , Int32
     , (Cstring,)
     , envFile)
   return errCode
end

#############################################################################
# Saves the current Earth constants (GEO) model and fundamental catalogue (FK) model settings to a file.
# Returns zero indicating the GEO and FK settings have been successfully saved to the file. Other values indicate an error.
function EnvSaveFile(envConstFile, saveMode, saveForm)
   errCode = ccall( (:EnvSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , envConstFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Returns the current fundamental catalogue (FK) setting. 
# The FK model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program. 
function EnvGetFkIdx()
   xf_FkMod = ccall( (:EnvGetFkIdx,libname) 
     , Int32
     , ())
   return xf_FkMod
end

#############################################################################
# Changes the fundamental catalogue (FK) setting to the specified value. 
# If the users enter an invalid value for the fkIdx, the program will continue to use the current setting. 
# 
# The FK model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
# The FK model must be set to FK5 to use the SGP4 propagator.
function EnvSetFkIdx(xf_FkMod)
   ccall( (:EnvSetFkIdx,libname) 
     , Nothing
     , (Int32,)
     , xf_FkMod)
end

#############################################################################
# Returns the current Earth constants (GEO) setting. 
# 
# The GEO model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program.
# 
# The following table lists possible values of the return value GEO setting:
# 
# table
# 
# Value
# Value interpretation
# 
# 84WGS-84
# 96EGM-96
# 08EGM-08
# 72WGS-72 (default)
# 2JGM2
# 68STEM68R, SEM68R
# 5GEM5
# 9GEM9
# 
function EnvGetGeoIdx()
   xf_GeoMod = ccall( (:EnvGetGeoIdx,libname) 
     , Int32
     , ())
   return xf_GeoMod
end

#############################################################################
# Changes the Earth constants (GEO) setting to the specified value.
# 
# If you specify an invalid value for xf_GeoMod, the program will continue to use the current setting. 
# 
# The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately
# 
# The following table lists possible values of the parameter value GEO setting:
# 
# table
# 
# Value
# Value interpretation
# 
# 84WGS-84
# 96EGM-96
# 08EGM-08
# 72WGS-72 (default)
# 2JGM2
# 68STEM68R, SEM68R
# 5GEM5
# 9GEM9
# 
# 
# The GEO model must be set to WGS-72 to use the SGP4 propagator.
function EnvSetGeoIdx(xf_GeoMod)
   ccall( (:EnvSetGeoIdx,libname) 
     , Nothing
     , (Int32,)
     , xf_GeoMod)
end

#############################################################################
# Returns the name of the current Earth constants (GEO) model. 
# 
# The geoStr parameter may contain one of the following values:
# 
# table
# WGS-84
# EGM-96
# EGM-08
# WGS-72
# JGM2
# SEM68R
# GEM5
# GEM9
# 
function EnvGetGeoStr()
   geoStr = " "^6
   ccall( (:EnvGetGeoStr,libname) 
     , Nothing
     , (Cstring,)
     , geoStr)
   return geoStr
end

#############################################################################
# Changes the Earth constants (GEO) setting to the model specified by a string literal. 
# 
# If you specify an invalid value for geoStr, the program will continue to use the current setting.
# 
# The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
# 
# The following table lists possible values of the parameter value GEO setting:
# 
# table
# 
# geoStr (any string in the row)
# Interpretation
# 
# 'WGS-84', 'WGS84', '84'WGS-84
# 'EGM-96', 'EGM96', '96'EGM-96
# 'EGM-08', 'EGM08', '8'EGM-08
# 'WGS-72', 'WGS72', '72'WGS-72 (default)
# 'JGM-2, 'JGM2', '2'JGM-2
# 'SEM68R', '68'STEM68R, SEM68R
# 'GEM5', '5'GEM5
# 'GEM9', '9'GEM9
#    
# 
# The GEO model must be set to WGS-72 to use the SGP4 propagator.
function EnvSetGeoStr(geoStr)
   ccall( (:EnvSetGeoStr,libname) 
     , Nothing
     , (Cstring,)
     , geoStr)
end

#############################################################################
# Retrieves the value of one of the constants from the current Earth constants (GEO) model. 
function EnvGetGeoConst(xf_GeoCon)
   retVal = ccall( (:EnvGetGeoConst,libname) 
     , Float64
     , (Int32,)
     , xf_GeoCon)
   return retVal
end

#############################################################################
# Retrieves the value of one of the constants from the current fundamental catalogue (FK) model.
function EnvGetFkConst(xf_FkCon)
   retVal = ccall( (:EnvGetFkConst,libname) 
     , Float64
     , (Int32,)
     , xf_FkCon)
   return retVal
end

#############################################################################
# Returns a handle that can be used to access the fundamental catalogue (FK) data structure. 
# 
# This function is needed when calling the ThetaGrnwch function from TimeFunc.dll.
# 
# The handle returned by this function is sometimes called a pointer for historical reasons. The name EnvGetFkPtr comes from the fact that the handle used to be called a pointer.
function EnvGetFkPtr()
   fkPtr = ccall( (:EnvGetFkPtr,libname) 
     , Int64
     , ())
   return fkPtr
end

#############################################################################
# Specifies the shape of the earth that will be used by the Astro Standards software, either spherical earth or oblate earth
function EnvSetEarthShape(earthShape)
   ccall( (:EnvSetEarthShape,libname) 
     , Nothing
     , (Int32,)
     , earthShape)
end

#############################################################################
# Returns the value representing the shape of the earth being used by the Astro Standards software, either spherical earth or oblate earth
function EnvGetEarthShape()
   earthShape = ccall( (:EnvGetEarthShape,libname) 
     , Int32
     , ())
   return earthShape
end

#############################################################################

end #of module EnvConstDll
# ========================= End of auto generated code ==========================
