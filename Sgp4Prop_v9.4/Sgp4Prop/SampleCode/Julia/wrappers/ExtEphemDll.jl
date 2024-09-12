# This wrapper file was generated automatically by the GenDllWrappers program.
module ExtEphemDll

if Sys.iswindows()
  libname="ExtEphem"
else
  libname="libextephem"
end

# Export Constant Variables
export COORD_ECI
export COORD_J2K
export COORD_EFG
export COORD_ECR
export COORD_LLH
export COORD_SEN
export COORD_ECIFP
export COORD_J2KFP
export COORD_EFGFP
export COORD_ECRFP
export COORD_LLHOV
export COORD_SENOV
export COORD_HCSRL
export COORD_WPTRL
export COORD_HCSGC
export COORD_WPTGC
export COORD_INVALID
export COVMTX_UVW_DATE
export COVMTX_XYZ_DATE
export COVMTX_EQNX_DATE
export COVMTX_UVW_J2K
export COVMTX_XYZ_J2K
export COVMTX_EQNX_J2K
export XF_GETEPH_MSE
export XF_GETEPH_UTC
export XF_GETEPH_IDX
export XF_EXTEPH_SATNUM
export XF_EXTEPH_EPOCH
export XF_EXTEPH_AE
export XF_EXTEPH_KE
export XF_EXTEPH_POSX
export XF_EXTEPH_POSY
export XF_EXTEPH_POSZ
export XF_EXTEPH_VELX
export XF_EXTEPH_VELY
export XF_EXTEPH_VELZ
export XF_EXTEPH_COORD
export XF_EXTEPH_NUMOFPTS
export XF_EXTEPH_FILEPATH
export XF_EXTEPH_SATNAME
export XF_EXTEPH_RECNAME

# Export Functions
export ExtEphInit
export ExtEphGetInfo
export ExtEphLoadFile
export ExtEphSaveFile
export ExtEphRemoveSat
export ExtEphRemoveAllSats
export ExtEphGetCount
export ExtEphGetLoaded
export ExtEphAddSat
export ExtEphAddSatEphem
export ExtEphAddSatEphemCovMtx
export ExtEphAddSatEphemExt
export ExtEphAddSatFrFile
export ExtEphGetAllFields
export ExtEphGetField
export ExtEphSetField
export ExtEphStartEndTime
export ExtEphGetEphemeris
export ExtEphGetCovMtx
export ExtEphMse
export ExtEphMseCovMtx
export ExtEphDs50UTC
export ExtEphDs50UTCCovMtx
export ExtEphXten
export ExtEphGetLine
export ExtEphGetSatKey
export ExtEphFieldsToSatKey

# Indexes of coordinate systems
# ECI TEME of DATE
const COORD_ECI   = 1;

# MEME of J2K
const COORD_J2K   = 2;

# Earth Fixed Greenwich (EFG)
const COORD_EFG   = 3;

# Earch Centered Rotation (ECR)
const COORD_ECR   = 4;

# Lat Lon Height and a vector offset (range, azimuth, elevation)
const COORD_LLH   = 5;

# Sensor site (ECR) and a vector offset (range, azimuth, elevation)
const COORD_SEN   = 6;


# ECI TEME of DATE, fixed point
const COORD_ECIFP = 11;

# MEME of J2K, fixed point
const COORD_J2KFP = 12;

# Earth Fixed Greenwich (EFG), fixed point
const COORD_EFGFP = 13;

# Earch Centered Rotation (ECR), fixed point
const COORD_ECRFP = 14;

# Lat Lon Height and an offset vector (range, azimuth, elevation)
const COORD_LLHOV = 15;

# Sensor site (ECR) and an offset vector (range, azimuth, elevation)
const COORD_SENOV = 16;

# Current position (LLH), heading (azimuth), and constant speed of an mobile object that travels in a rhumb line course
const COORD_HCSRL = 17;

# List of waypoints (LLH) that describes the movement of an object that travels in a rhumb line course
const COORD_WPTRL = 18;

# Current position (LLH), initial heading (azimuth), and constant speed of an mobile object that travels in a great circle course
const COORD_HCSGC = 19;

# List of waypoints (LLH) that describes the movement of an object that travels in a great circle course
const COORD_WPTGC = 20;



# Invalid coordinate system
const COORD_INVALID = 100;


# UVW convariance matrix - TEME of DATE
const COVMTX_UVW_DATE  =  0;

# Cartesian covariance matrix - TEME of DATE
const COVMTX_XYZ_DATE  = 10;

# Equinoctial covariance matrix - TEME of DATE
const COVMTX_EQNX_DATE = 20;

# UVW convariance matrix - MEME of J2K
const COVMTX_UVW_J2K   = 30;

# Cartesian covariance matrix - MEME of J2K
const COVMTX_XYZ_J2K   = 40;

# Equinoctial covariance matrix - MEME of J2K
const COVMTX_EQNX_J2K  = 50;



# Get ephemeris data using time in minutes since epoch
const XF_GETEPH_MSE = 1;

# Get ephemeris data using time in days since 1950 UTC
const XF_GETEPH_UTC = 2;

# Get ephemeris data using index of the element in the array
const XF_GETEPH_IDX = 3;


# Indexes of EXTEPH data fields
# Satellite number I5
const XF_EXTEPH_SATNUM    =  1;

# Epoch YYDDDHHMMSS.SSS
const XF_EXTEPH_EPOCH     =  2;

# Earth radius (km)
const XF_EXTEPH_AE        =  3;

# Ke
const XF_EXTEPH_KE        =  4;

# position X (km) F16.8
const XF_EXTEPH_POSX      =  5;

# position Y (km) F16.8
const XF_EXTEPH_POSY      =  6;

# position Z (km) F16.8
const XF_EXTEPH_POSZ      =  7;

# velocity X (km/s) F16.12
const XF_EXTEPH_VELX      =  8;

# velocity Y (km/s) F16.12
const XF_EXTEPH_VELY      =  9;

# velocity Z (km/s) F16.12
const XF_EXTEPH_VELZ      = 10;

# Input coordinate systems
const XF_EXTEPH_COORD     = 11;

# Num of ephemeris points
const XF_EXTEPH_NUMOFPTS  = 12;

# Ephemeris file path
const XF_EXTEPH_FILEPATH  = 13;

# International Designator
const XF_EXTEPH_SATNAME   = 14;

# Record name
const XF_EXTEPH_RECNAME   = 15;



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes ExtEphem DLL for use in the program
# If this function returns an error, it is recommended that the users stop the program immediately. 
# The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed 
# in the DLL Prerequisite section, before using this DLL.
function ExtEphInit(apAddr)
   errCode = ccall( (:ExtEphInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of ExtEphem DLL. 
# The information is placed in the string parameter passed in.
# The returned string provides information about the version number, build date, and the platform of the ExtEphem DLL. 
function ExtEphGetInfo()
   infoStr = " "^128
   ccall( (:ExtEphGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads a file containing EXTEPHEM's
# The users can use this function repeatedly to load EXTEPHEMs from different input files. 
# However, only unique satKeys are stored in the binary tree. Duplicated EXTEPHEMs 
# (determined by same file name, satellite number + epoch) won't be stored.
# 
# EXTEPHEMs can be included directly in the main input file or they can be read from a 
# separate file identified with "EPHFIL =[pathname\filename]".
# 
# This function only reads EXTEPHEMs from the main input file or EXTEPHEMs from the file 
# identified with EPHFIL in the input file. It won't read anything else.
function ExtEphLoadFile(extEphFile)
   errCode = ccall( (:ExtEphLoadFile,libname) 
     , Int32
     , (Cstring,)
     , extEphFile)
   return errCode
end

#############################################################################
# Saves the currently loaded EXTEPHEM's to a file (EPHFIL=input file name)
function ExtEphSaveFile(extEphFile, saveMode, saveForm)
   errCode = ccall( (:ExtEphSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , extEphFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Removes an EXTEPHEM represented by the satKey from memory
# If the users enter an invalid satKey (the satKey does not exist in memory), the function will return a non-zero value indicating an error.
function ExtEphRemoveSat(satKey)
   errCode = ccall( (:ExtEphRemoveSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removes all EXTEPHEMS from memory
function ExtEphRemoveAllSats()
   errCode = ccall( (:ExtEphRemoveAllSats,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Returns the number of EXTEPHEM's currently loaded
# See ExtEphGetLoaded for example.
# This function is useful for dynamically allocating memory for the array that is passed to the function ExtEphGetLoaded().
function ExtEphGetCount()
   numSats = ccall( (:ExtEphGetCount,libname) 
     , Int32
     , ())
   return numSats
end

#############################################################################
# Retrieves all of the currently loaded satKeys. These satKeys can be used to access the external ephemeris data for the EXTEPHEM's
# It is recommended that ExtEphGetCount() is used to count how many satellites are currently loaded in the ExtEphem DLL's binary tree. 
# The users then use this number to dynamically allocate the satKeys array and pass it to this function.
# 
# If the users prefer to pass a static array to the function, ensure that it is big enough to store all the satKeys in memory.
function ExtEphGetLoaded(order, size_satKeys)
   satKeys = zeros(Int64, size_satKeys)
   ccall( (:ExtEphGetLoaded,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , order,satKeys)
   return satKeys
end

#############################################################################
# Allows for an EXTEPHEM to be added to memory without using an input file. The function creates a place holder for an EXTEPHEM
# If the same satellite (same satNum and epochDs50UTC) was previously added to the ExtEphem DLL's binary tree, 
# the function will generate a new unique satKey. This is very useful when the users want to compare ephemerides 
# of the same satellite number and same epoch time from different sources. 
function ExtEphAddSat(satNum, epochDs50UTC, ae, ke, coordSys)
   satKey = ccall( (:ExtEphAddSat,libname) 
     , Int64
     , (Int32
     , Float64
     , Float64
     , Float64
     , Int32)
     , satNum,epochDs50UTC,ae,ke,coordSys)
   return satKey
end

#############################################################################
# Adds an ephemeris point to the end of an EXTEPHEM's set of ephemeris points
# The new ephemeris point will only be added to the array if its time is greater than the times of all points already in the array. 
# Therefore, the array is always in sorted order (t1 < t2 <... < tn).
function ExtEphAddSatEphem(satKey, ds50UTC, pos, vel, revNum)
   errCode = ccall( (:ExtEphAddSatEphem,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Int32)
     , satKey,ds50UTC,pos,vel,revNum)
   return errCode
end

#############################################################################
# Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
function ExtEphAddSatEphemCovMtx(satKey, ds50UTC, pos, vel, revNum, covUVW)
   errCode = ccall( (:ExtEphAddSatEphemCovMtx,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Int32
     , Ref{Float64})
     , satKey,ds50UTC,pos,vel,revNum,covUVW)
   return errCode
end

#############################################################################
# Adds an ephemeris point (including covariance matrix) to the end of an EXTEPHEM's set of ephemeris points
function ExtEphAddSatEphemExt(satKey, ds50UTC, pos, vel, revNum, extArr)
   errCode = ccall( (:ExtEphAddSatEphemExt,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Int32
     , Ref{Float64})
     , satKey,ds50UTC,pos,vel,revNum,extArr)
   return errCode
end

#############################################################################
# Loads satellite data from an external ephemeris file (any valid external ephemeris file formats) and returns a satKey on success
function ExtEphAddSatFrFile(extEphFile)
   satKey = ccall( (:ExtEphAddSatFrFile,libname) 
     , Int64
     , (Cstring,)
     , extEphFile)
   return satKey
end

#############################################################################
# Retrieves all data for an EXTEPHEM with a single function call
function ExtEphGetAllFields(satKey)
   satNum = zeros(Int32, 1)
   satName = " "^8
   recName = " "^128
   epochDs50UTC = zeros(Float64, 1)
   ae = zeros(Float64, 1)
   ke = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   coordSys = zeros(Int32, 1)
   numOfPts = zeros(Int32, 1)
   fileLoc = " "^512
   errCode = ccall( (:ExtEphGetAllFields,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Cstring
     , Cstring
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Cstring)
     , satKey,satNum,satName,recName,epochDs50UTC,ae,ke,pos,vel,
         coordSys,numOfPts,fileLoc)
   return errCode, Int64(satNum[1]), satName, recName, epochDs50UTC[1], ae[1], ke[1], pos, vel, Int64(coordSys[1]), 
         Int64(numOfPts[1]), fileLoc
end

#############################################################################
# Retrieves the value of a specific field of an EXTEPHEM
# 
# When using xf_ExtEph = 11, the input coordinate system is returned as an integer value.  The table below shows the coordinate system values:
# 
# table
# 
# Value
# Coordinate System
# 
# 1  ECI TEME of DATE
# 2  MEME of J2K
# 3  Earth Fixed Greenwich (EFG)
# 4  Earch Centered Rotation (ECR)
# 100Invalid
#    
function ExtEphGetField(satKey, xf_ExtEph)
   valueStr = " "^512
   errCode = ccall( (:ExtEphGetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_ExtEph,valueStr)
   return errCode, valueStr
end

#############################################################################
# Updates the value of a specific field of an EXTEPHEM
function ExtEphSetField(satKey, xf_ExtEph, valueStr)
   errCode = ccall( (:ExtEphSetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_ExtEph,valueStr)
   return errCode
end

#############################################################################
# Retrieves the times (in days since 1950 UTC) of the start and end ephemeris points of the EXTEPHEM  
function ExtEphStartEndTime(satKey)
   startDs50UTC = zeros(Float64, 1)
   endDs50UTC = zeros(Float64, 1)
   errCode = ccall( (:ExtEphStartEndTime,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Float64})
     , satKey,startDs50UTC,endDs50UTC)
   return errCode, startDs50UTC[1], endDs50UTC[1]
end

#############################################################################
# Retrieves the data for a specific point within an EXTEPHEM
# It is important to know that the array subscript starts at one (not zero).
function ExtEphGetEphemeris(satKey, index)
   ds50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   revNum = zeros(Int32, 1)
   errCode = ccall( (:ExtEphGetEphemeris,libname) 
     , Int32
     , (Int64
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , satKey,index,ds50UTC,pos,vel,revNum)
   return errCode, ds50UTC[1], pos, vel, Int64(revNum[1])
end

#############################################################################
# Retrieves the data (including the covariance matrix) for a specific point within an EXTEPHEM
function ExtEphGetCovMtx(satKey, index)
   ds50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   revNum = zeros(Int32, 1)
   covMtx = zeros(Float64, 6, 6)
   errCode = ccall( (:ExtEphGetCovMtx,libname) 
     , Int32
     , (Int64
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64})
     , satKey,index,ds50UTC,pos,vel,revNum,covMtx)
   return errCode, ds50UTC[1], pos, vel, Int64(revNum[1]), covMtx
end

#############################################################################
# Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
# The coordinate system of the output position and velocity is the same as the input ephemerides.
function ExtEphMse(satKey, mse)
   ds50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   revNum = zeros(Int32, 1)
   errCode = ccall( (:ExtEphMse,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , satKey,mse,ds50UTC,pos,vel,revNum)
   return errCode, ds50UTC[1], pos, vel, Int64(revNum[1])
end

#############################################################################
# Interpolates the external ephemeris data to the requested time in minutes since the satellite's epoch time
function ExtEphMseCovMtx(satKey, mse)
   ds50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   revNum = zeros(Int32, 1)
   covMtx = zeros(Float64, 6, 6)
   errCode = ccall( (:ExtEphMseCovMtx,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64})
     , satKey,mse,ds50UTC,pos,vel,revNum,covMtx)
   return errCode, ds50UTC[1], pos, vel, Int64(revNum[1]), covMtx
end

#############################################################################
# Interpolates the external ephemeris data to the requested time in days since 1950, UTC
# The coordinate system of the output position and velocity is the same as the input ephemerides.
function ExtEphDs50UTC(satKey, ds50UTC)
   mse = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   revNum = zeros(Int32, 1)
   errCode = ccall( (:ExtEphDs50UTC,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , satKey,ds50UTC,mse,pos,vel,revNum)
   return errCode, mse[1], pos, vel, Int64(revNum[1])
end

#############################################################################
# Interpolates the external ephemeris data to the requested time in days since 1950, UTC
function ExtEphDs50UTCCovMtx(satKey, ds50UTC)
   mse = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   revNum = zeros(Int32, 1)
   covMtx = zeros(Float64, 6, 6)
   errCode = ccall( (:ExtEphDs50UTCCovMtx,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64})
     , satKey,ds50UTC,mse,pos,vel,revNum,covMtx)
   return errCode, mse[1], pos, vel, Int64(revNum[1]), covMtx
end

#############################################################################
# Extensible routine which retrieves/interpolates external ephemeris data based on user's request
function ExtEphXten(satKey, xf_getEph, inVal)
   extArr = zeros(Float64, 128)
   errCode = ccall( (:ExtEphXten,libname) 
     , Int32
     , (Int64
     , Int32
     , Float64
     , Ref{Float64})
     , satKey,xf_getEph,inVal,extArr)
   return errCode, extArr
end

#############################################################################
# This function returns a string that represents the EXTFIL= directive used to read a particular EXTEPHEM
function ExtEphGetLine(satKey)
   line = " "^512
   errCode = ccall( (:ExtEphGetLine,libname) 
     , Int32
     , (Int64
     , Cstring)
     , satKey,line)
   return errCode, line
end

#############################################################################
# Returns the first satKey that matches the satNum in the EXTEPHEM binary tree
# This function is useful when ExtEphem DLL is used in applications that requires only one record (one EXTEPHEM entry) 
# for one satellite and the applications refer to that EXTEPHEM by its satellite number. 
# However, the Astrodynamic Standard Shared library only uses satKeys; this function helps to return the associated satKey of that satellite.
function ExtEphGetSatKey(satNum)
   satKey = ccall( (:ExtEphGetSatKey,libname) 
     , Int64
     , (Int32,)
     , satNum)
   return satKey
end

#############################################################################
# Creates satKey from EXTEPHEM's satelite number and date time group string
# This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
function ExtEphFieldsToSatKey(satNum, epochDtg)
   satKey = ccall( (:ExtEphFieldsToSatKey,libname) 
     , Int64
     , (Int32
     , Cstring)
     , satNum,epochDtg)
   return satKey
end

#############################################################################

end #of module ExtEphemDll
# ========================= End of auto generated code ==========================
