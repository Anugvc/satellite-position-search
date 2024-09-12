# This wrapper file was generated automatically by the GenDllWrappers program.
module FovDll

if Sys.iswindows()
  libname="Fov"
else
  libname="libfov"
end

# Export Constant Variables
export XA_FOVRUN_MAXPASSES
export XA_FOVRUN_START
export XA_FOVRUN_STOP
export XA_FOVRUN_HALFCONE
export XA_FOVRUN_INTERVAL
export XA_FOVRUN_SIZE
export FOV_SRCTYPE_SEN
export FOV_SRCTYPE_LLH
export FOV_SRCTYPE_EFG
export FOV_SRCTYPE_XYZ
export FOV_TGTTYPE_ELSET
export FOV_TGTTYPE_AZEL
export FOV_TGTTYPE_RADEC
export XA_FOVSRC_TYPE
export XA_FOVSRC_ID
export XA_FOVSRC_ELEM1
export XA_FOVSRC_ELEM2
export XA_FOVSRC_ELEM3
export XA_FOVSRC_ELEM4
export XA_FOVSRC_SIZE
export XA_FOVTGT_TYPE
export XA_FOVTGT_ID
export XA_FOVTGT_ELEM1
export XA_FOVTGT_ELEM2
export XA_FOVTGT_ELEM3
export XA_FOVTGT_SIZE
export XA_EMEDAT_ENTRY
export XA_EMEDAT_MIN
export XA_EMEDAT_EXIT
export XA_EMEDAT_SIZE
export XA_FOVCTRL_HALFCONE
export XA_FOVCTRL_INTERVAL
export XA_FOVCTRL_PRTOPT
export XA_FOVCTRL_SIZE
export FOVMAXNUM

# Export Functions
export FovInit
export FovGetInfo
export FovLoadFile
export FovLoadFileAll
export FovLoadCard
export FovSaveFile
export FovGetDataFrInputFiles
export FovFindTargetPasses
export FovTargetElset
export FovTargetElsetLook
export FovTargetVec
export FovTargetVecLook
export FovReset

# Fov run parameters
# Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
const XA_FOVRUN_MAXPASSES= 0;

# FOV start time in days since 1950, UTC
const XA_FOVRUN_START    = 1;

# FOV stop time in days since 1950, UTC
const XA_FOVRUN_STOP     = 2;

# Cone half angle (deg) (0=auto) (0-45)
const XA_FOVRUN_HALFCONE = 3;

# Search interval (min)
const XA_FOVRUN_INTERVAL = 4;


const    XA_FOVRUN_SIZE     = 8;      

# FOV source types
# Source is sensor
const FOV_SRCTYPE_SEN = 1;

# Source is lat lon height
const FOV_SRCTYPE_LLH = 2;

# Source is EFG
const FOV_SRCTYPE_EFG = 3;

# Source is XYZ
const FOV_SRCTYPE_XYZ = 4;


# FOV source types
# Target is elset
const FOV_TGTTYPE_ELSET = 1;

# Target is constant Az/El
const FOV_TGTTYPE_AZEL  = 2;

# Target is RA/Dec (STAR)
const FOV_TGTTYPE_RADEC = 3;


# FOV source specification
# 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
const XA_FOVSRC_TYPE  = 0;

# Sensor# | Source ID   | Source ID  | Source ID
const XA_FOVSRC_ID    = 1;

# | N lat (deg) | EFG: E (m) | X (m)
const XA_FOVSRC_ELEM1 = 2;

# | E lon (deg) | EFG: F (m) | Y (m)
const XA_FOVSRC_ELEM2 = 3;

# | height (m)  | EFG: G (m) | Z (m)
const XA_FOVSRC_ELEM3 = 4;

# |             |            | time of position in Ds50UTC
const XA_FOVSRC_ELEM4 = 5;


const    XA_FOVSRC_SIZE  = 8;


# FOV target specification
# 1=ELSET | 2=AZEL    | 3=RADEC
const XA_FOVTGT_TYPE  = 0;

# Elset#  | Target ID | Target ID
const XA_FOVTGT_ID    = 1;

# | az (deg)  | RA (deg)
const XA_FOVTGT_ELEM1 = 2;

# | el (deg)  | Dec (deg)
const XA_FOVTGT_ELEM2 = 3;

# |           | equinox indicator
const XA_FOVTGT_ELEM3 = 4;


const    XA_FOVTGT_SIZE  = 8;

# entry/minimum/exit time data
# entry time (ds50UTC)
const XA_EMEDAT_ENTRY = 0;

# minimum time (ds50UTC)
const XA_EMEDAT_MIN   = 1;

# exit time (ds50UTC)
const XA_EMEDAT_EXIT  = 2;


const    XA_EMEDAT_SIZE  = 3;

# FOV parameters
# Cone half angle (deg) (0=auto) (0-45)
const XA_FOVCTRL_HALFCONE = 0;

# Search interval (min)
const XA_FOVCTRL_INTERVAL = 1;

# Print option
const XA_FOVCTRL_PRTOPT   = 2;


const    XA_FOVCTRL_SIZE     = 8;     


# maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
const FOVMAXNUM = 128;



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Fov dll for use in the program
function FovInit(apAddr)
   errCode = ccall( (:FovInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Fov.dll. The information is placed in the string parameter you pass in
function FovGetInfo()
   infoStr = " "^128
   ccall( (:FovGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
function FovLoadFile(fovInputFile)
   errCode = ccall( (:FovLoadFile,libname) 
     , Int32
     , (Cstring,)
     , fovInputFile)
   return errCode
end

#############################################################################
# Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
function FovLoadFileAll(fovInputFile)
   errCode = ccall( (:FovLoadFileAll,libname) 
     , Int32
     , (Cstring,)
     , fovInputFile)
   return errCode
end

#############################################################################
# Loads a single Fov-typed card
function FovLoadCard(card)
   errCode = ccall( (:FovLoadCard,libname) 
     , Int32
     , (Cstring,)
     , card)
   return errCode
end

#############################################################################
# Saves any currently loaded Fov-related settings to a file
function FovSaveFile(fovFile, saveMode, saveForm)
   errCode = ccall( (:FovSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , fovFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# This function retrieves various FOV input data being entered from input flat files (various FOV cards)
function FovGetDataFrInputFiles()
   xa_fovCtrl = zeros(Float64, 8)
   numOfWindows = zeros(Int32, 1)
   startStopTimes = zeros(Float64, 256)
   numOfSources = zeros(Int32, 1)
   xa_fovSrc_Arr = zeros(Float64, 8, 128)
   numOfTargets = zeros(Int32, 1)
   xa_fovTgt_Arr = zeros(Float64, 8, 128)
   numVicSats = zeros(Int32, 1)
   vicSatNums = zeros(Int32, 128)
   ccall( (:FovGetDataFrInputFiles,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32})
     , xa_fovCtrl,numOfWindows,startStopTimes,numOfSources,xa_fovSrc_Arr,numOfTargets,xa_fovTgt_Arr,numVicSats,vicSatNums)
   return xa_fovCtrl, Int64(numOfWindows[1]), startStopTimes, Int64(numOfSources[1]), xa_fovSrc_Arr, Int64(numOfTargets[1]), xa_fovTgt_Arr, Int64(numVicSats[1]), convert(Array{Int64,1}, vicSatNums)
end

#############################################################################
# This function screens the specified start/end time window and returns passes when the target satellite can be seen (passed all limit checks) by the source 
function FovFindTargetPasses(startTimeDs50UTC, stopTimeDs50UTC, srcSenKey, tgtSatKey, size_tgtPassesArr)
   tgtPassesArr = zeros(Float64, 2, size_tgtPassesArr)
   numOfPasses = zeros(Int32, 1)
   errCode = ccall( (:FovFindTargetPasses,libname) 
     , Int32
     , (Float64
     , Float64
     , Int64
     , Int64
     , Ref{Float64}
     , Ref{Int32})
     , startTimeDs50UTC,stopTimeDs50UTC,srcSenKey,tgtSatKey,tgtPassesArr,numOfPasses)
   return errCode, tgtPassesArr, Int64(numOfPasses[1])
end

#############################################################################
# This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is an elset).
# 
# The xa_emeDat array size is [numObs, 3].  The penetration time indexes are:
# 
# table
# 
# Name
# Index
# Index Interpretation
# 
#  0 entry time (ds50UTC)
#  1 minimum time (ds50UTC)
#  2 exit time (ds50UTC)
# 
# 
# See FovGetDataFrInputFiles for a description of the XA_FOVSRC parameter values.
function FovTargetElset(xa_fovRun, xa_fovSrc, tgtSatKey, vicSatKey, size_xa_emeDat)
   xa_emeDat = zeros(Float64, 3, size_xa_emeDat)
   numOfPasses = zeros(Int32, 1)
   errCode = ccall( (:FovTargetElset,libname) 
     , Int32
     , (Ref{Float64}
     , Ref{Float64}
     , Int64
     , Int64
     , Ref{Float64}
     , Ref{Int32})
     , xa_fovRun,xa_fovSrc,tgtSatKey,vicSatKey,xa_emeDat,numOfPasses)
   return errCode, xa_emeDat, Int64(numOfPasses[1])
end

#############################################################################
# This function returns a look angle from the source to the potential victim satellite at the specified time (target is an elset)
# 
# If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid.
function FovTargetElsetLook(currDs50TAI, xa_fovSrc, vicSatKey)
   xa_look = zeros(Float64, 8)
   errCode = ccall( (:FovTargetElsetLook,libname) 
     , Int32
     , (Float64
     , Ref{Float64}
     , Int64
     , Ref{Float64})
     , currDs50TAI,xa_fovSrc,vicSatKey,xa_look)
   return errCode, xa_look
end

#############################################################################
# This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is a vector: AZ/EL or RA/DEC).
# See FovTargetElset for a description of the xa_emeDat array.
# If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid 
function FovTargetVec(xa_fovRun, xa_fovSrc, xa_fovTgt, vicSatKey, size_xa_emeDat)
   xa_emeDat = zeros(Float64, 3, size_xa_emeDat)
   numOfPasses = zeros(Int32, 1)
   errCode = ccall( (:FovTargetVec,libname) 
     , Int32
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Int64
     , Ref{Float64}
     , Ref{Int32})
     , xa_fovRun,xa_fovSrc,xa_fovTgt,vicSatKey,xa_emeDat,numOfPasses)
   return errCode, xa_emeDat, Int64(numOfPasses[1])
end

#############################################################################
# This function returns a look angle from the source to the potential victim satellite at the specified time (target is a vector: AZ/EL or RA/DEC).
# See FovGetDataFrInputFiles for a description of the XA_FOVSRC and XA_FOVTGT parameter values.
# See FovTargetElsetLook for a description of the XA_LOOK parameter values.
function FovTargetVecLook(currDs50TAI, xa_fovSrc, xa_fovTgt, vicSatKey)
   xa_look = zeros(Float64, 8)
   errCode = ccall( (:FovTargetVecLook,libname) 
     , Int32
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Int64
     , Ref{Float64})
     , currDs50TAI,xa_fovSrc,xa_fovTgt,vicSatKey,xa_look)
   return errCode, xa_look
end

#############################################################################
# Resets all FOV control parameters back to their default values
function FovReset()
   ccall( (:FovReset,libname) 
     , Nothing
     , ())
end

#############################################################################

end #of module FovDll
# ========================= End of auto generated code ==========================
