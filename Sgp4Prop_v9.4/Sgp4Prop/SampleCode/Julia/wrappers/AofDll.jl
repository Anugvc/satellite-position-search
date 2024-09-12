# This wrapper file was generated automatically by the GenDllWrappers program.
module AofDll

if Sys.iswindows()
  libname="Aof"
else
  libname="libaof"
end

# Export Constant Variables
export XA_AOFCTRL_TIMEFLG
export XA_AOFCTRL_START
export XA_AOFCTRL_STOP
export XA_AOFCTRL_INTERVAL
export XA_AOFCTRL_PRTOPT
export XA_AOFCTRL_SRCHMET
export XA_AOFCTRL_SRTTYPE
export XA_AOFCTRL_SIZE
export AREATYPE_I_BOX
export AREATYPE_I_CIRCLE
export AREATYPE_I_POINT
export AREATYPE_I_POLYGON
export XA_AOFSEN_SATNUM
export XA_AOFSEN_TYPE
export XA_AOFSEN_MINEL
export XA_AOFSEN_MAXEL
export XA_AOFSEN_MINAZ1
export XA_AOFSEN_MAXAZ1
export XA_AOFSEN_MINAZ2
export XA_AOFSEN_MAXAZ2
export XA_AOFSEN_ELEM7
export XA_AOFSEN_ELEM8
export XA_AOFSEN_ELEM9
export XA_AOFSEN_ELEM10
export XA_AOFSEN_SIZE
export AOFSENTYPE_CIRCLE
export XA_AOFRUN_MAXPASSES
export XA_AOFRUN_START
export XA_AOFRUN_STOP
export XA_AOFRUN_INTERVAL
export XA_AOFRUN_SIZE
export AOF_AREATYPE_BOX
export AOF_AREATYPE_CIRCLE
export AOF_AREATYPE_POINT
export AOF_AREATYPE_POLYGON
export XA_AOFAREA_NUM
export XA_AOFAREA_TYPE
export XA_AOFAREA_ELEM1
export XA_AOFAREA_ELEM2
export XA_AOFAREA_ELEM3
export XA_AOFAREA_ELEM4
export XA_AOFAREA_SIZE
export DARKLEVEL_ALLLIT
export DARKLEVEL_ALLDARK
export DARKLEVEL_PARTLIT
export XA_AOFVIEW_AZIM
export XA_AOFVIEW_ELEV
export XA_AOFVIEW_HASLOS
export XA_AOFVIEW_SIZE
export MAX_LLHPOINTS

# Export Functions
export AofInit
export AofGetInfo
export AofLoadFile
export AofLoadFileAll
export AofLoadCard
export AofGetDataFrInputFiles
export AofReset
export AofBasic
export AofComplex
export AofGetLook
export AofGetView
export AofGetDarknessLevel

# AOF parameters
# input start/stop time type: 1=minutes since epoch (MSE), 0=date time (DTG)
const XA_AOFCTRL_TIMEFLG  =  0;

# start time of interest (either MSE or DTG)
const XA_AOFCTRL_START    =  1;

# stop time of interest (either MSE or DTG)
const XA_AOFCTRL_STOP     =  2;

# search interval (min)
const XA_AOFCTRL_INTERVAL =  3;

# print output control flag; 0=print penetrations only, 1=print penetrations and data description
const XA_AOFCTRL_PRTOPT   =  4;

# search method: 0=use brute force method, 1=use analytical method
const XA_AOFCTRL_SRCHMET  =  5;

# output sort type: S=sort each area by sat#, then time, T=sort each area by time, then sat#
const XA_AOFCTRL_SRTTYPE  =  6;


const    XA_AOFCTRL_SIZE     = 16;


# Defended area types
# area box type
const AREATYPE_I_BOX     =  1;

# area circle type
const AREATYPE_I_CIRCLE  =  2;

# area point type
const AREATYPE_I_POINT   =  3;

# area polygon type
const AREATYPE_I_POLYGON =  4;



# AOF satellite/mission (satellite/sensor) data
# satellite number of sensor-bearing satellite
const XA_AOFSEN_SATNUM   =  0;

# reserved for future use
const XA_AOFSEN_TYPE     =  1;

# off nadir minimum look angle (deg) (=0 for Cone)
const XA_AOFSEN_MINEL    =  2;

# off nadir maximum look angle (deg)
const XA_AOFSEN_MAXEL    =  3;

# minimum azimuth of first azimuth range (deg)
const XA_AOFSEN_MINAZ1   =  4;

# maximum azimuth of first azimuth range (deg)
const XA_AOFSEN_MAXAZ1   =  5;

# minimum azimuth of second azimuth range (deg)
const XA_AOFSEN_MINAZ2   =  6;

# maximum azimuth of second azimuth range (deg)
const XA_AOFSEN_MAXAZ2   =  7;

# reserved for future use
const XA_AOFSEN_ELEM7    =  8;

# reserved for future use
const XA_AOFSEN_ELEM8    =  9;

# reserved for future use
const XA_AOFSEN_ELEM9    = 10;

# reserved for future use
const XA_AOFSEN_ELEM10   = 11;


const    XA_AOFSEN_SIZE     = 16;


# AOF satellite/sensor types
# circle (specify only off-nadir maximum look angle)
const AOFSENTYPE_CIRCLE = 0;



# AOF run parameters
# Maximum number of passes that AOF returns in one start/stop time
const XA_AOFRUN_MAXPASSES= 0;

# AOF start time in days since 1950, UTC
const XA_AOFRUN_START    = 1;

# AOF stop time in days since 1950, UTC
const XA_AOFRUN_STOP     = 2;

# Search interval (min)
const XA_AOFRUN_INTERVAL = 3;


const    XA_AOFRUN_SIZE     = 8;      


# AOF defended area types
# Defended area is a box
const AOF_AREATYPE_BOX     = 1;

# Defended area is a circle
const AOF_AREATYPE_CIRCLE  = 2;

# Defended area is a point
const AOF_AREATYPE_POINT   = 3;

# Defended area is a polygon
const AOF_AREATYPE_POLYGON = 4;




# AOF defended area data
# Area number
const XA_AOFAREA_NUM   = 0;

# | 1 = BOX                       | 2 = CIRCLE              | 3 = POINT
const XA_AOFAREA_TYPE  = 1;

# | N lat (deg) upper left corner | N lat (deg) center point| N lat (deg) center point
const XA_AOFAREA_ELEM1 = 2;

# | E lon (deg) upper left corner | E lon (deg) center point| E lon (deg) center point
const XA_AOFAREA_ELEM2 = 3;

# | N lat (deg) lower right corner| circle radius (km)      | height (km, above reference geoid)
const XA_AOFAREA_ELEM3 = 4;

# | E lon (deg) lower right corner|                         |
const XA_AOFAREA_ELEM4 = 5;


const    XA_AOFAREA_SIZE  = 16;


# Penetration-level darkness status
# lit throughout penetration
const DARKLEVEL_ALLLIT  = 0;

# dark throughout penetration
const DARKLEVEL_ALLDARK = 1;

# partly-lit during penetration
const DARKLEVEL_PARTLIT = 2;


# View angle from overfly satellite to a llh point
# Azimuth (deg)
const XA_AOFVIEW_AZIM   = 0;

# Elevation (deg)
const XA_AOFVIEW_ELEV   = 1;

# Has line of sight to the point (1=Yes, 0=No-earth obstructs the view)
const XA_AOFVIEW_HASLOS = 2;


const    XA_AOFVIEW_SIZE   = 8;

# maximum of number of lat-lon-height points that can be used to describe a defended area
const MAX_LLHPOINTS = 120;






#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Aof dll for use in the program
function AofInit(apAddr)
   errCode = ccall( (:AofInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Aof.dll. The information is placed in the string parameter you pass in
function AofGetInfo()
   infoStr = " "^128
   ccall( (:AofGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads Aof-related parameters (1P/2P/3P cards, and Aof parameter free format) from an input text file
function AofLoadFile(aofInputFile)
   errCode = ccall( (:AofLoadFile,libname) 
     , Int32
     , (Cstring,)
     , aofInputFile)
   return errCode
end

#############################################################################
# Loads Aof-related parameters from an input text file
function AofLoadFileAll(aofInputFile)
   errCode = ccall( (:AofLoadFileAll,libname) 
     , Int32
     , (Cstring,)
     , aofInputFile)
   return errCode
end

#############################################################################
# Loads a single Aof-typed card
function AofLoadCard(card)
   errCode = ccall( (:AofLoadCard,libname) 
     , Int32
     , (Cstring,)
     , card)
   return errCode
end

#############################################################################
# This function retrieves various AOF input data being entered from input flat files (and/or various AOF input cards)
function AofGetDataFrInputFiles()
   xa_aofCtrl = zeros(Float64, 16)
   numOfInpSats = zeros(Int32, 1)
   aofInpSats = zeros(Int32, 100)
   numOfMissions = zeros(Int32, 1)
   xa_aofSen = zeros(Float64, 16, 100)
   numOfAreas = zeros(Int32, 1)
   xa_aofArea = zeros(Float64, 16, 100)
   ccall( (:AofGetDataFrInputFiles,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64})
     , xa_aofCtrl,numOfInpSats,aofInpSats,numOfMissions,xa_aofSen,numOfAreas,xa_aofArea)
   return xa_aofCtrl, Int64(numOfInpSats[1]), convert(Array{Int64,1}, aofInpSats), Int64(numOfMissions[1]), xa_aofSen, Int64(numOfAreas[1]), xa_aofArea
end

#############################################################################
# This function resets all Aof control parameters previously loaded from input text files
function AofReset()
   ccall( (:AofReset,libname) 
     , Nothing
     , ())
end

#############################################################################
# Computes entry/exit times of basic overflight satellite/sensor (cone) versus basic defended areas (box, circle, point)
# 
# Note:  for xa_aofArea type=4 (polygon), use the AofComplex method.
function AofBasic(xa_aofRun, satKey, xa_aofSen, xa_aofArea, size_xa_entExitTimes)
   numOfPasses = zeros(Int32, 1)
   xa_entExitTimes = zeros(Float64, size_xa_entExitTimes)
   errCode = ccall( (:AofBasic,libname) 
     , Int32
     , (Ref{Float64}
     , Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64})
     , xa_aofRun,satKey,xa_aofSen,xa_aofArea,numOfPasses,xa_entExitTimes)
   return errCode, Int64(numOfPasses[1]), xa_entExitTimes
end

#############################################################################
# Computes entry/exit times of overflight satellite/sensor having complex configurations (cone, donut, butterfly, leftButterly, rightButterfly)
# versus defended areas defined by multiple lat lon height points (polygon)
# For a description of the input parameter arrays xa_aofRun and xa_aofSen, see AofBasic.
# The input array llhArr is a zero-based array with latitude, longitude and altitude of each point in subsequent entries, e.g.:
# llhArr[0] = point 1 latitude, 
# llhArr[1] = point 1 longitude, 
# llhArr[2] = point 1 altitude, 
# llhArr[3] = point 2 latitude, etc.
function AofComplex(xa_aofRun, satKey, xa_aofSen, numOfLlhPts, llhArr, size_xa_entExitTimes)
   numOfPasses = zeros(Int32, 1)
   xa_entExitTimes = zeros(Float64, size_xa_entExitTimes)
   errCode = ccall( (:AofComplex,libname) 
     , Int32
     , (Ref{Float64}
     , Int64
     , Ref{Float64}
     , Int32
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64})
     , xa_aofRun,satKey,xa_aofSen,numOfLlhPts,llhArr,numOfPasses,xa_entExitTimes)
   return errCode, Int64(numOfPasses[1]), xa_entExitTimes
end

#############################################################################
# This function returns a look angle from the llh point to the overfly satellite at the specified time
function AofGetLook(ds50TAI, llh, satKey)
   xa_look = zeros(Float64, 8)
   errCode = ccall( (:AofGetLook,libname) 
     , Int32
     , (Float64
     , Ref{Float64}
     , Int64
     , Ref{Float64})
     , ds50TAI,llh,satKey,xa_look)
   return errCode, xa_look
end

#############################################################################
# This function returns a view angle from the overfly satellite to a llh point at the specified time
function AofGetView(ds50TAI, llh, satKey)
   xa_aofView = zeros(Float64, 8)
   errCode = ccall( (:AofGetView,libname) 
     , Int32
     , (Float64
     , Ref{Float64}
     , Int64
     , Ref{Float64})
     , ds50TAI,llh,satKey,xa_aofView)
   return errCode, xa_aofView
end

#############################################################################
# Determines darkness level of the "defended" area at the specified time
# For a description of the input parameter array xa_aofArea, see AofBasic.
function AofGetDarknessLevel(ds50TAI, xa_aofArea)
   darkness = ccall( (:AofGetDarknessLevel,libname) 
     , Int32
     , (Float64
     , Ref{Float64})
     , ds50TAI,xa_aofArea)
   return darkness
end

#############################################################################

end #of module AofDll
# ========================= End of auto generated code ==========================
