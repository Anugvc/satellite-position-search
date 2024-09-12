# This wrapper file was generated automatically by the GenDllWrappers program.
module SatStateDll

if Sys.iswindows()
  libname="SatState"
else
  libname="libsatstate"
end

# Export Constant Variables
export XF_SATFIELD_EPOCHUTC
export XF_SATFIELD_MNANOM
export XF_SATFIELD_NODE
export XF_SATFIELD_OMEGA
export XF_SATFIELD_PERIOD
export XF_SATFIELD_ECCEN
export XF_SATFIELD_INCLI
export XF_SATFIELD_MNMOTION
export XF_SATFIELD_BFIELD
export XF_SATFIELD_PERIGEEHT
export XF_SATFIELD_APOGEEHT
export XF_SATFIELD_PERIGEE
export XF_SATFIELD_APOGEE
export XF_SATFIELD_A
export XF_SATFIELD_NDOT
export XF_SATFIELD_SATCAT
export XF_SATFIELD_HTM3
export XF_SATFIELD_CMOFFSET
export XF_SATFIELD_N2DOT
export XF_SATFIELD_NODEDOT
export XF_SATFIELD_ERRORTIME
export XF_SATFIELD_MU
export XA_DELTA_POS
export XA_DELTA_TIME
export XA_DELTA_PRADIAL
export XA_DELTA_PINTRCK
export XA_DELTA_PCRSSTRCK
export XA_DELTA_VEL
export XA_DELTA_VRADIAL
export XA_DELTA_VINTRCK
export XA_DELTA_VCRSSTRCK
export XA_DELTA_BETA
export XA_DELTA_HEIGHT
export XA_DELTA_ANGMOM
export XA_DELTA_MHLNBS_UVW
export XA_DELTA_MHLNBS_HTB
export XA_DELTA_SIZE
export XF_SAT_NUM
export XF_SAT_NAME
export XF_SAT_ELTTYPE
export XF_SAT_EPHTYPE
export XF_SAT_REVNUM
export XF_SAT_EPOCH
export XF_SAT_BFIELD
export XF_SAT_ELSETNUM
export XF_SAT_INCLI
export XF_SAT_NODE
export XF_SAT_ECCEN
export XF_SAT_OMEGA
export XF_SAT_MNANOM
export XF_SAT_MNMOTN
export XF_SAT_PERIOD
export XF_SAT_PERIGEEHT
export XF_SAT_APOGEEHT
export XF_SAT_PERIGEE
export XF_SAT_APOGEE
export XF_SAT_A
export XF_TASK_CTRLONLY
export XF_TASK_SATONLY
export XF_TASK_BOTH
export EPHFILETYPE_ITC
export EPHFILETYPE_ITC_WOCOV
export XA_GOBS_SATNUM
export XA_GOBS_LONE
export XA_GOBS_DRIFT
export XA_GOBS_RELENERGY
export XA_GOBS_WX
export XA_GOBS_WY
export XA_GOBS_WZ
export XA_GOBS_AF
export XA_GOBS_AG
export XA_GOBS_AGOM
export XA_GOBS_TROUGH
export XA_GOBS_SIZE
export XA_GOBS_LIM_TROUGH
export XA_GOBS_LIM_PCP
export XA_GOBS_LIM_PCS
export XA_GOBS_LIM_ACTIVEP
export XA_GOBS_LIM_ACTIVES
export XA_GOBS_LIM_LONGMIN
export XA_GOBS_LIM_LONGMAX
export XA_GOBS_LIM_AGOMMIN
export XA_GOBS_LIM_AGOMMAX
export XA_GOBS_LIM_SIZE
export XA_GOBS_DELTA_PRIMESAT
export XA_GOBS_DELTA_SECONDARYSAT
export XA_GOBS_DELTA_ASTAT
export XA_GOBS_DELTA_DOP
export XA_GOBS_DELTA_DSHAPE
export XA_GOBS_DELTA_DRELENERGY
export XA_GOBS_DELTA_LONGP
export XA_GOBS_DELTA_LONGMIN
export XA_GOBS_DELTA_LONGMAX
export XA_GOBS_DELTA_TROUGH
export XA_GOBS_DELTA_PLANE
export XA_GOBS_DELTA_SHAPE
export XA_GOBS_DELTA_ENERGY
export XA_GOBS_DELTA_LONG
export XA_GOBS_DELTA_AGOM
export XA_GOBS_DELTA_SIZE

# Export Functions
export SatStateInit
export SatStateGetInfo
export SatStateLoadFile
export SatStateSaveFile
export SatStateRemoveSat
export SatStateRemoveSatAll
export SatStateRemoveAllSats
export SatStateReset
export SatStateGetCount
export SatStateGetLoaded
export SatStateNumToKey
export SatStateGetSatDataAll
export SatStateGetSatDataField
export SatStateInitSat
export SatStateMse
export SatStateDs50UTC
export SatStateGetPropOut
export SatStateEphCom
export SatStateEphCom_OS
export SatStateHasCovMtx
export SatStateGetCovUVW
export SatStateGenEphFile
export GetNodalCrossingPriorToTime
export GetGobsParams
export GobsCom
export GobsComArr

# Indexes of available satellite data fields
# Satellite epoch time in days since 1950 UTC
const XF_SATFIELD_EPOCHUTC =  1;

# Mean anomaly (deg)
const XF_SATFIELD_MNANOM   =  2;

# Right ascension of asending node (deg)
const XF_SATFIELD_NODE     =  3;

# Argument of perigee (deg)
const XF_SATFIELD_OMEGA    =  4;

# Satellite's period (min)
const XF_SATFIELD_PERIOD   =  5;

# Eccentricity
const XF_SATFIELD_ECCEN    =  6;

# Orbit inclination (deg)
const XF_SATFIELD_INCLI    =  7;

# Mean motion (rev/day)
const XF_SATFIELD_MNMOTION =  8;

# GP B* drag term (1/er)  or SP Radiation Pressure Coefficient
const XF_SATFIELD_BFIELD   =  9;

# Perigee height above the geoid (km)
const XF_SATFIELD_PERIGEEHT= 10;

# Apogee height above the geoid (km)
const XF_SATFIELD_APOGEEHT = 11;

# Perigee height above the center of the earth (km)
const XF_SATFIELD_PERIGEE  = 12;

# Apogee height above the center of the earth (km)
const XF_SATFIELD_APOGEE   = 13;

# Semimajor axis (km)
const XF_SATFIELD_A        = 14;

# Mean motion derivative (rev/day /2)
const XF_SATFIELD_NDOT     = 15;

# Satellite category (Synchronous, Deep space, Decaying, Routine)
const XF_SATFIELD_SATCAT   = 16;

# Astat 3 Height multiplier
const XF_SATFIELD_HTM3     = 17;

# Center of mass offset (m)
const XF_SATFIELD_CMOFFSET = 18;

# Unused
const XF_SATFIELD_N2DOT    = 19;

# GP node dot (deg/s)
const XF_SATFIELD_NODEDOT  = 20;

# GP only - the last time when propagation has error
const XF_SATFIELD_ERRORTIME= 21;

# value of mu
const XF_SATFIELD_MU       = 22;



#*******************************************************************************

# Indexes of available deltas
# delta position (km)
const XA_DELTA_POS         =  0;

# delta time (sec)
const XA_DELTA_TIME        =  1;

# delta position in radial direction (km)
const XA_DELTA_PRADIAL     =  2;

# delta position in in-track direction (km)
const XA_DELTA_PINTRCK     =  3;

# delta position in cross-track direction (km)
const XA_DELTA_PCRSSTRCK   =  4;

# delta velocity (km/sec)
const XA_DELTA_VEL         =  5;

# delta velocity in radial direction (km/sec)
const XA_DELTA_VRADIAL     =  6;

# delta velocity in in-track direction (km/sec)
const XA_DELTA_VINTRCK     =  7;

# delta velocity in cross-track direction (km/sec)
const XA_DELTA_VCRSSTRCK   =  8;

# delta Beta (deg)
const XA_DELTA_BETA        =  9;

# delta height (km)
const XA_DELTA_HEIGHT      = 10;

# delta angular momentum (deg)
const XA_DELTA_ANGMOM      = 11;

# 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on)
const XA_DELTA_MHLNBS_UVW  = 12;

# 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on)
const XA_DELTA_MHLNBS_HTB  = 13;


const    XA_DELTA_SIZE        =100; 

# Indexes of Satellite data fields
# Satellite number I5
const XF_SAT_NUM      =  1;

# Satellite international designator A8
const XF_SAT_NAME     =  2;

# Element type I1 (old name XF_SAT_EPHTYPE)
const XF_SAT_ELTTYPE  =  3;

# Obsolete - should use new name XF_SAT_ELTTYPE instead
const XF_SAT_EPHTYPE  =  3;

# Epoch revolution number I6
const XF_SAT_REVNUM   =  4;

# Epoch time in days since 1950
const XF_SAT_EPOCH    =  5;

# BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg)
const XF_SAT_BFIELD   =  6;

# Element set number
const XF_SAT_ELSETNUM =  7;

# Inclination (deg)
const XF_SAT_INCLI    =  8;

# Right ascension of ascending node (deg)
const XF_SAT_NODE     =  9;

# Eccentricity
const XF_SAT_ECCEN    = 10;

# Argument of perigee (deg)
const XF_SAT_OMEGA    = 11;

# Mean anomaly (deg)
const XF_SAT_MNANOM   = 12;

# Mean motion (revs/day)
const XF_SAT_MNMOTN   = 13;

# Satellite period (min)
const XF_SAT_PERIOD   = 14;

# Perigee Height(km)
const XF_SAT_PERIGEEHT= 15;

# Apogee Height (km)
const XF_SAT_APOGEEHT = 16;

# Perigee(km)
const XF_SAT_PERIGEE  = 17;

# Apogee (km)
const XF_SAT_APOGEE   = 18;

# Semi-major axis (km)
const XF_SAT_A        = 19;



# Indexes of SatState's load/save file task mode
# Only load/save propagator control parameters
const XF_TASK_CTRLONLY = 1;

# Only load/save orbital elements/external ephemeris data
const XF_TASK_SATONLY  = 2;

# Load/Save both 1 and 2
const XF_TASK_BOTH     = 3;



# Different external ephemeris file types
# ITC file format
const EPHFILETYPE_ITC         =  1;

# ITC compact (without covariance matrix) file format
const EPHFILETYPE_ITC_WOCOV   =  2;



# Gobs records
# Satellite number
const XA_GOBS_SATNUM    =  0;

# East Longitude
const XA_GOBS_LONE      =  1;

# Longitude Drift Rate
const XA_GOBS_DRIFT     =  2;

# satellite's relative energy (deg^2/sec^2) - only for GOBS
const XA_GOBS_RELENERGY =  3;

# sin(incl)*sin(r.a. node)
const XA_GOBS_WX        =  4;

# -sin(incl)*cos(r.a. node)
const XA_GOBS_WY        =  5;

# cos(incl)
const XA_GOBS_WZ        =  6;

# af
const XA_GOBS_AF        =  7;

# ag
const XA_GOBS_AG        =  8;

# AGOM
const XA_GOBS_AGOM      =  9;

# Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
const XA_GOBS_TROUGH    = 10;


const    XA_GOBS_SIZE      = 32; 


# Indexes of GOBS limits
# 0 - ignore trough logic, 1 - implement trough logic
const XA_GOBS_LIM_TROUGH      =  0;

# Primary satellite is plane changer
const XA_GOBS_LIM_PCP         =  1;

# Secondary satellite is plane changer
const XA_GOBS_LIM_PCS         =  2;

# Primary satellite is plane changer
const XA_GOBS_LIM_ACTIVEP     =  3;

# Secondary satellite is plane changer
const XA_GOBS_LIM_ACTIVES     =  4;

# Min Longitude of sat
const XA_GOBS_LIM_LONGMIN     =  5;

# Max Longitude of sat
const XA_GOBS_LIM_LONGMAX     =  6;

# Min Agom of sat
const XA_GOBS_LIM_AGOMMIN     =  7;

# Max Agom of sat
const XA_GOBS_LIM_AGOMMAX     =  8;


const    XA_GOBS_LIM_SIZE        = 16; 


# Indexes of available deltas
# Primary satellite number
const XA_GOBS_DELTA_PRIMESAT     =  0;

# Secondary satellite number
const XA_GOBS_DELTA_SECONDARYSAT =  1;

# GOBS correlation score
const XA_GOBS_DELTA_ASTAT        =  2;

# delta orbital plane
const XA_GOBS_DELTA_DOP          =  3;

# delta shape
const XA_GOBS_DELTA_DSHAPE       =  4;

# delta Relative Energy (deg^2/day^2)
const XA_GOBS_DELTA_DRELENERGY   =  5;

# Longitude of Primary
const XA_GOBS_DELTA_LONGP        =  6;

# Minimum Longitude of Secondary
const XA_GOBS_DELTA_LONGMIN      =  7;

# Maximum Longitude of Secondary
const XA_GOBS_DELTA_LONGMAX      =  8;

# 0 - opposite throughs or drift rates, 1 - trough or drift rates match
const XA_GOBS_DELTA_TROUGH       =  9;

# 0|1    Plane Match Flag
const XA_GOBS_DELTA_PLANE        = 10;

# 0|1    Shape Match Flag
const XA_GOBS_DELTA_SHAPE        = 11;

# 0|1    Energy Match Flag
const XA_GOBS_DELTA_ENERGY       = 12;

# 0|1|2  Longitude Match Flag (2 is fuzzy match)
const XA_GOBS_DELTA_LONG         = 13;

# 0|1    Agom Match Flag
const XA_GOBS_DELTA_AGOM         = 14;


const    XA_GOBS_DELTA_SIZE         = 16; 


#*******************************************************************************


#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes SatState DLL for use in the program
# If this function returns an error, it is recommended that the users stop the program immediately. 
# The error occurs if the users forget to load and initialize all the prerequisite DLLs, 
# as listed in the DLL Prerequisite section, before using this DLL.
function SatStateInit(apAddr)
   errCode = ccall( (:SatStateInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of SatState DLL. 
# The information is placed in the string parameter passed in.
# The returned string provides information about the version number, build date, and the platform of the SatState DLL. 
function SatStateGetInfo()
   infoStr = " "^128
   ccall( (:SatStateGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads any orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls from an input text file
# Internally, if taskMode = 1, this function calls SpProp.SpLoadFile(); 
# and if taskMode = 2, this function calls Tle.TleLoadFile(), SpVec.SpVecLoadFile(), Vcm.VcmLoadFile(), ExtEphem.ExtEphLoadFile(); 
# if taskMode = 3, both tasks (1 and 2) are executed.
function SatStateLoadFile(inputFile, xf_Task)
   errCode = ccall( (:SatStateLoadFile,libname) 
     , Int32
     , (Cstring
     , Int32)
     , inputFile,xf_Task)
   return errCode
end

#############################################################################
# Saves currently loaded orbital element types (TLE's/SPVEC's/VCM's), EXTEPHEM's, and/or propagator controls to a file
# The purpose of this function is to save the current SatState-related settings, usually used in GUI applications, for future use.
# 
# Internally, if taskMode = 1, this function calls SpProp.SpSaveFile(); 
# and if taskMode = 2, this function calls Tle.TleSaveFile(), SpVec.SpVecSavedFile(), Vcm.VcmSaveFile(), ExtEphem.ExtEphSaveFile(); 
# if taskMode = 3, both tasks (1 and 2) are executed.
function SatStateSaveFile(outFile, saveMode, saveForm, xf_Task)
   errCode = ccall( (:SatStateSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32
     , Int32)
     , outFile,saveMode,saveForm,xf_Task)
   return errCode
end

#############################################################################
# Removes a satellite from the appropriate elset DLL's set of loaded satellites. 
# The function will automatically choose the proper set of elsets from which to remove the satellite. 
# The choices are: Tle.dll, SpVec.dll, Vcm.dll, or ExtEphem.dll   
# If the users enter an invalid satKey (a satKey that does not exist in memory), the function will return a non-zero value indicating an error.
function SatStateRemoveSat(satKey)
   errCode = ccall( (:SatStateRemoveSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removes a satellite from the appropriate sets of loaded satellites (elset dll and propagator dll). 
# The function will remove the satellite from the elset DLL's sets as in SatStateRemoveSat() and 
# from the appropriate propagator's set of initialized satellites if it exists there.
function SatStateRemoveSatAll(satKey)
   errCode = ccall( (:SatStateRemoveSatAll,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removes all satellites from all of the loaded data sets. 
# It will remove all satellites from the following sets: Tle, SpVec, Vcm, ExtEphem, Sgp4Prop, and SpProp
function SatStateRemoveAllSats()
   errCode = ccall( (:SatStateRemoveAllSats,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Resets propagator settings back to their default values
function SatStateReset()
   ccall( (:SatStateReset,libname) 
     , Nothing
     , ())
end

#############################################################################
# Returns the total number of satellites (TLE's, SPVEC's, VCM's, and EXTEPHEM's) currently loaded in memory
# See SatStateGetLoaded for example.
# This function is useful for dynamically allocating memory for the array that is passed to the function SatStateGetLoaded.
function SatStateGetCount()
   numSats = ccall( (:SatStateGetCount,libname) 
     , Int32
     , ())
   return numSats
end

#############################################################################
# Retrieves all of the currently loaded satKeys. 
# These satKeys can be used to access the internal data for the satellites.
# It is recommended that SatStateGetCount() is used to count how many satellites are currently loaded in memory. 
# The user can then use this number to dynamically allocate the satKeys array and pass it to this function.
# 
# If the user prefers to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
function SatStateGetLoaded(order, size_satKeys)
   satKeys = zeros(Int64, size_satKeys)
   ccall( (:SatStateGetLoaded,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , order,satKeys)
   return satKeys
end

#############################################################################
# Returns the first satKey that contains the specified satellite number in all sets of loaded satellites. 
# These sets will be searched: Tle, SpVec, Vcm, and ExtEphem.
# This function is useful when a satellite is used in applications that require only one record for one 
# satellite and the applications refer to that satellite by its satellite number. 
# However, the Astrodynamic Standard Shared library is only working with satKeys, this function helps to return the associated satKey of that satellite.
function SatStateNumToKey(satNum)
   satKey = ccall( (:SatStateNumToKey,libname) 
     , Int64
     , (Int32,)
     , satNum)
   return satKey
end

#############################################################################
# Retrieves the data which is common to all satellite types. 
# All common fields are retrieved with a single function call.
# The apogee height and perigee height are defined as the distance above an ellipsoid 
# created using the earth flattening factor from the selected geopotential model.
# Note:  When using SP elsets (TLE type 6, SPVEC, or VCM), calling SatStateGetSatDataAll 
# will implicitly call SpInit in order to extract the mu value from the GEO file the elset is tied to.  
# The elset must have a valid GEO directory available or an error will be returned.
function SatStateGetSatDataAll(satKey)
   satNum = zeros(Int32, 1)
   satName = " "^8
   eltType = zeros(Int32, 1)
   revNum = zeros(Int32, 1)
   epochDs50UTC = zeros(Float64, 1)
   bField = zeros(Float64, 1)
   elsetNum = zeros(Int32, 1)
   incli = zeros(Float64, 1)
   node = zeros(Float64, 1)
   eccen = zeros(Float64, 1)
   omega = zeros(Float64, 1)
   mnAnomaly = zeros(Float64, 1)
   mnMotion = zeros(Float64, 1)
   period = zeros(Float64, 1)
   perigeeHt = zeros(Float64, 1)
   apogeeHt = zeros(Float64, 1)
   perigee = zeros(Float64, 1)
   apogee = zeros(Float64, 1)
   a = zeros(Float64, 1)
   errCode = ccall( (:SatStateGetSatDataAll,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,satNum,satName,eltType,revNum,epochDs50UTC,bField,elsetNum,incli,
         node,eccen,omega,mnAnomaly,mnMotion,period,perigeeHt,apogeeHt,perigee,apogee,
         a)
   return errCode, Int64(satNum[1]), satName, Int64(eltType[1]), Int64(revNum[1]), epochDs50UTC[1], bField[1], Int64(elsetNum[1]), incli[1], node[1], 
         eccen[1], omega[1], mnAnomaly[1], mnMotion[1], period[1], perigeeHt[1], apogeeHt[1], perigee[1], apogee[1], a[1]
end

#############################################################################
# Retrieves an individual field of a satellite. 
function SatStateGetSatDataField(satKey, xf_Sat)
   retVal = " "^512
   errCode = ccall( (:SatStateGetSatDataField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_Sat,retVal)
   return errCode, retVal
end

#############################################################################
# Initializes a TLE, SPVEC, or VCM in preparation for propagation, or an EXTEPHEM in preparation for interpolation
function SatStateInitSat(satKey)
   errCode = ccall( (:SatStateInitSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
# The satellite is propagated/interpolated to the specified time calculated in minutes since the satellite's epoch time
function SatStateMse(satKey, mse)
   ds50UTC = zeros(Float64, 1)
   revNum = zeros(Int32, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   llh = zeros(Float64, 3)
   errCode = ccall( (:SatStateMse,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,mse,ds50UTC,revNum,pos,vel,llh)
   return errCode, ds50UTC[1], Int64(revNum[1]), pos, vel, llh
end

#############################################################################
# Propagates a TLE/SPVEC/VCM, or interpolates an EXTEPHEM. 
# The satellite is propagated/interpolated to the specified time calculated in days since 1950, UTC.
function SatStateDs50UTC(satKey, ds50UTC)
   mse = zeros(Float64, 1)
   revNum = zeros(Int32, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   llh = zeros(Float64, 3)
   errCode = ccall( (:SatStateDs50UTC,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,ds50UTC,mse,revNum,pos,vel,llh)
   return errCode, mse[1], Int64(revNum[1]), pos, vel, llh
end

#############################################################################
# Returns additional propagated/interpolated results (reserved for future implementation)
# Reserved for future implementation
# Use this function immediately after the call to SatStateMse or SatStateDs50UTC. 
function SatStateGetPropOut(satKey, index)
   destArr = zeros(Float64, 128)
   errCode = ccall( (:SatStateGetPropOut,libname) 
     , Int32
     , (Int64
     , Int32
     , Ref{Float64})
     , satKey,index,destArr)
   return errCode, destArr
end

#############################################################################
# Returns various ephemeris comparison results between two satellite states.
# 
# The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
# defined by the position vector (radial) and the angular momentum vector (cross-track).
function SatStateEphCom(primSatKey, secSatKey, ds50UTC, uvwFlag)
   xa_Delta = zeros(Float64, 100)
   errCode = ccall( (:SatStateEphCom,libname) 
     , Int32
     , (Int64
     , Int64
     , Float64
     , Int32
     , Ref{Float64})
     , primSatKey,secSatKey,ds50UTC,uvwFlag,xa_Delta)
   return errCode, xa_Delta
end

#############################################################################
# Returns various ephemeris comparison results between two satellite states (_OS one step) .
# 
# The "in-track" is NOT the velocity direction, but is defined as completing the right handed coordinate system 
# defined by the position vector (radial) and the angular momentum vector (cross-track).
function SatStateEphCom_OS(priPosVel, secPosVel, ds50UTC, uvwFlag)
   xa_Delta = zeros(Float64, 100)
   ccall( (:SatStateEphCom_OS,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Float64
     , Int32
     , Ref{Float64})
     , priPosVel,secPosVel,ds50UTC,uvwFlag,xa_Delta)
   return xa_Delta
end

#############################################################################
# Determines if a satellite contains covariance matrix. 
# 0=no, 1=yes
function SatStateHasCovMtx(satKey)
   satHasCovMtx = ccall( (:SatStateHasCovMtx,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return satHasCovMtx
end

#############################################################################
# Propagates/Interpolates UVW covariance matrix from VCM/External ephemeris to the time in days since 1950
function SatStateGetCovUVW(satKey, ds50UTC)
   covUVW = zeros(Float64, 6, 6)
   errCode = ccall( (:SatStateGetCovUVW,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64})
     , satKey,ds50UTC,covUVW)
   return errCode, covUVW
end

#############################################################################
# Generate external ephemeris file for the specified satellite (via its unique satKey) 
# Note: No need to initialize the satellite before this call. If it was intialized, it will be removed after this call
function SatStateGenEphFile(satKey, startDs50UTC, stopDs50UTC, stepSizeSecs, ephFileName, ephFileType)
   errCode = ccall( (:SatStateGenEphFile,libname) 
     , Int32
     , (Int64
     , Float64
     , Float64
     , Float64
     , Cstring
     , Int32)
     , satKey,startDs50UTC,stopDs50UTC,stepSizeSecs,ephFileName,ephFileType)
   return errCode
end

#############################################################################
# Finds the time of ascending nodal crossing of the specified satellite prior to an input time in days since 1950 TAI
function GetNodalCrossingPriorToTime(satKey, ds50TAI)
   nodalXDs50TAI = ccall( (:GetNodalCrossingPriorToTime,libname) 
     , Float64
     , (Int64
     , Float64)
     , satKey,ds50TAI)
   return nodalXDs50TAI
end

#############################################################################
# Get the Gobs parameters for a TLE
function GetGobsParams(satKey, ds50UTC)
   xa_gobs = zeros(Float64, 32)
   errCode = zeros(Int32, 1)
   ccall( (:GetGobsParams,libname) 
     , Nothing
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Int32})
     , satKey,ds50UTC,xa_gobs,errCode)
   return xa_gobs, Int64(errCode[1])
end

#############################################################################
# Does an XP GOBS comparison
function GobsCom(primSatKey, secSatKey, ds50UTC, xa_gobs_lim)
   xa_gobs_delta = zeros(Float64, 16)
   errCode = ccall( (:GobsCom,libname) 
     , Int32
     , (Int64
     , Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , primSatKey,secSatKey,ds50UTC,xa_gobs_lim,xa_gobs_delta)
   return errCode, xa_gobs_delta
end

#############################################################################
# Does an XP GOBS comparison using gobs arrays
function GobsComArr(xa_gobs_prim, xa_gobs_sec, xa_gobs_lim)
   xa_gobs_delta = zeros(Float64, 16)
   ccall( (:GobsComArr,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , xa_gobs_prim,xa_gobs_sec,xa_gobs_lim,xa_gobs_delta)
   return xa_gobs_delta
end

#############################################################################

end #of module SatStateDll
# ========================= End of auto generated code ==========================
