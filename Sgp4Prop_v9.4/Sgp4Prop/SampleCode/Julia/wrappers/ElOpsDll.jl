# This wrapper file was generated automatically by the GenDllWrappers program.
module ElOpsDll

if Sys.iswindows()
  libname="ElOps"
else
  libname="libelops"
end

# Export Constant Variables
export SATCAT_SYNCHRONOUS
export SATCAT_DEEPSPACE
export SATCAT_DECAYING
export SATCAT_ROUTINE
export XF_ELFIELD_EPOCHUTC
export XF_ELFIELD_MNANOM
export XF_ELFIELD_NODE
export XF_ELFIELD_OMEGA
export XF_ELFIELD_PERIOD
export XF_ELFIELD_ECCEN
export XF_ELFIELD_INCLI
export XF_ELFIELD_MNMOTION
export XF_ELFIELD_BFIELD
export XF_ELFIELD_PERIGEEHT
export XF_ELFIELD_APOGEEHT
export XF_ELFIELD_PERIGEE
export XF_ELFIELD_APOGEE
export XF_ELFIELD_A
export XF_ELFIELD_SATCAT
export XF_ELFIELD_HTM3
export XF_ELFIELD_CMOFFSET
export XF_ELFIELD_N2DOT
export XA_SATPARM_EPOCHUTC
export XA_SATPARM_MNANOM
export XA_SATPARM_NODE
export XA_SATPARM_OMEGA
export XA_SATPARM_PERIOD
export XA_SATPARM_ECCEN
export XA_SATPARM_INCLI
export XA_SATPARM_MNMOTION
export XA_SATPARM_BFIELD
export XA_SATPARM_PERIGEEHT
export XA_SATPARM_APOGEEHT
export XA_SATPARM_PERIGEE
export XA_SATPARM_APOGEE
export XA_SATPARM_A
export XA_SATPARM_SATCAT
export XA_SATPARM_CMOFFSET
export XA_SATPARM_LONE
export XA_SATPARM_DRIFT
export XA_SATPARM_OMEGADOT
export XA_SATPARM_RADOT
export XA_SATPARM_NODALPRD
export XA_SATPARM_NODALX
export XA_SATPARM_ISGEO
export XA_SATPARM_RELENERGY
export XA_SATPARM_SATNUM
export XA_SATPARM_ELTTYPE
export XA_SATPARM_OET
export XA_SATPARM_PROPTYPE
export XA_SATPARM_ELSETNUM
export XA_SATPARM_WX
export XA_SATPARM_WY
export XA_SATPARM_WZ
export XA_SATPARM_TROUGH
export XA_SATPARM_SIZE
export VP_TIME_DS50UTC
export VP_TIME_MSE
export XA_VP_TIMETYPE
export XA_VP_TIMEVAL
export XA_VP_IMPULSE_U
export XA_VP_IMPULSE_V
export XA_VP_IMPULSE_W
export XA_VP_REPETITIONS
export XA_VP_INTERVAL
export XA_VP_SIZE

# Export Functions
export ElOpsInit
export ElOpsGetInfo
export IsGeoOrbit
export CompLonEastSubPt
export FindSatDecayTime
export GetSatParameters
export SatNumOf
export AddManeuverVPStr
export AddManeuverVPArr

# Satellite maintenance category
# Synchronous
const SATCAT_SYNCHRONOUS = 1;

# Deep space (not synchronous)
const SATCAT_DEEPSPACE   = 2;

# Decaying (perigee height below 575 km)
const SATCAT_DECAYING    = 3;

# Routine (everything else)
const SATCAT_ROUTINE     = 4;


# Indexes of available satellite data fields
# epoch in days since 1950, UTC
const XF_ELFIELD_EPOCHUTC =  1;

# mean anomaly (deg)
const XF_ELFIELD_MNANOM   =  2;

# right ascension of the asending node (deg)
const XF_ELFIELD_NODE     =  3;

# argument of perigee (deg)
const XF_ELFIELD_OMEGA    =  4;

# period (min)
const XF_ELFIELD_PERIOD   =  5;

# eccentricity (unitless)
const XF_ELFIELD_ECCEN    =  6;

# inclination (deg)
const XF_ELFIELD_INCLI    =  7;

# mean motion (revs/day)
const XF_ELFIELD_MNMOTION =  8;

# either SGP4 bStar (1/er) or SP bTerm (m2/kg)
const XF_ELFIELD_BFIELD   =  9;

# perigee height (km)
const XF_ELFIELD_PERIGEEHT= 10;

# apogee height (km)
const XF_ELFIELD_APOGEEHT = 11;

# perigee (km)
const XF_ELFIELD_PERIGEE  = 12;

# apogee (km)
const XF_ELFIELD_APOGEE   = 13;

# semi major axis (km)
const XF_ELFIELD_A        = 14;

# Satellite category (Synchronous, Deep space, Decaying, Routine)
const XF_ELFIELD_SATCAT   = 15;

# Astat 3 Height multiplier
const XF_ELFIELD_HTM3     = 16;

# Center of mass offset (m)
const XF_ELFIELD_CMOFFSET = 17;

# n-double-dot/6  (for SGP, eph-type = 0)
const XF_ELFIELD_N2DOT    = 18;



# Indexes of available satellite parameters
# satellite's epoch in days since 1950, UTC
const XA_SATPARM_EPOCHUTC =  0;

# satellite's mean anomaly (deg)
const XA_SATPARM_MNANOM   =  1;

# satellite's right ascension of the asending node (deg)
const XA_SATPARM_NODE     =  2;

# satellite's argument of perigee (deg)
const XA_SATPARM_OMEGA    =  3;

# satellite's period (min)
const XA_SATPARM_PERIOD   =  4;

# satellite's eccentricity (unitless)
const XA_SATPARM_ECCEN    =  5;

# satellite's inclination (deg)
const XA_SATPARM_INCLI    =  6;

# satellite's mean motion (revs/day)
const XA_SATPARM_MNMOTION =  7;

# satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg)
const XA_SATPARM_BFIELD   =  8;

# satellite's perigee height (km)
const XA_SATPARM_PERIGEEHT=  9;

# satellite's apogee height (km)
const XA_SATPARM_APOGEEHT = 10;

# satellite's perigee (km)
const XA_SATPARM_PERIGEE  = 11;

# satellite's apogee (km)
const XA_SATPARM_APOGEE   = 12;

# satellite's semi major axis (km)
const XA_SATPARM_A        = 13;

# satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine)
const XA_SATPARM_SATCAT   = 14;

# satellite's center of mass offset (m)
const XA_SATPARM_CMOFFSET = 15;

# satellite's east longitude east subpoint (deg) - only for synchronous orbits
const XA_SATPARM_LONE     = 16;

# satellite's longitude drift rate (deg East/day) - only for synchronous orbits
const XA_SATPARM_DRIFT    = 17;

# satellite's omega rate of change (deg/day)
const XA_SATPARM_OMEGADOT = 18;

# satellite's nodal precession rate (deg/day)
const XA_SATPARM_RADOT    = 19;

# satellite's nodal period (min)
const XA_SATPARM_NODALPRD = 20;

# satellite's nodal crossing time prior to its epoch (ds50UTC)
const XA_SATPARM_NODALX   = 21;

# satellite is GEO: 0=no, 1=yes
const XA_SATPARM_ISGEO    = 22;

# satellite's relative energy - only for GOBS
const XA_SATPARM_RELENERGY= 23;

# satellite's number
const XA_SATPARM_SATNUM   = 24;

# satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET)
const XA_SATPARM_ELTTYPE  = 25;

# obsolete - should use new name XA_SATPARM_ELTTYPE intead
const XA_SATPARM_OET      = 25;

# satellite's propagation type - see PROPTYPE_? for list of available values
const XA_SATPARM_PROPTYPE = 26;

# satellite's element number
const XA_SATPARM_ELSETNUM = 27;

# sin(incl)*sin(r.a. node)
const XA_SATPARM_WX       = 28;

# -sin(incl)*cos(r.a. node)
const XA_SATPARM_WY       = 29;

# cos(incl)
const XA_SATPARM_WZ       = 30;

# Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
const XA_SATPARM_TROUGH   = 31;


const    XA_SATPARM_SIZE     = 32;

# Different input time options of VP card
# VP's input time is in days since 1950 UTC
const VP_TIME_DS50UTC = 0;

# VP's input time is in minutes since epoch
const VP_TIME_MSE     = 1;


# VP record arrangement in array format
# VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
const XA_VP_TIMETYPE    = 0;

# VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
const XA_VP_TIMEVAL     = 1;

# impulse U-component of delta-velocity (km/sec)
const XA_VP_IMPULSE_U   = 2;

# impulse V-component of delta-velocity (km/sec)
const XA_VP_IMPULSE_V   = 3;

# impulse W-component of delta-velocity (km/sec)
const XA_VP_IMPULSE_W   = 4;

# apply above delta-v this number of times at the interval specified below
const XA_VP_REPETITIONS = 5;

# time interval in minutes between repetitions specified above
const XA_VP_INTERVAL    = 6;


const    XA_VP_SIZE        = 16; 



#*******************************************************************************


#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes ElOps dll for use in the program
function ElOpsInit(apAddr)
   errCode = ccall( (:ElOpsInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of ElOps.dll. The information is placed in the string parameter you pass in
function ElOpsGetInfo()
   infoStr = " "^128
   ccall( (:ElOpsGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Checks to see if satellite has geo orbit
function IsGeoOrbit(incli, period)
   isGeo = ccall( (:IsGeoOrbit,libname) 
     , Int32
     , (Float64
     , Float64)
     , incli,period)
   return isGeo
end

#############################################################################
# Estimates the approx long east subpt
function CompLonEastSubPt(ds50UTC, node, omega, mnAnomaly)
   lonE = ccall( (:CompLonEastSubPt,libname) 
     , Float64
     , (Float64
     , Float64
     , Float64
     , Float64)
     , ds50UTC,node,omega,mnAnomaly)
   return lonE
end

#############################################################################
# Computes the decay time of the input satellite
function FindSatDecayTime(satKey, f10Avg)
   decayDs50UTC = zeros(Float64, 1)
   errCode = ccall( (:FindSatDecayTime,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64})
     , satKey,f10Avg,decayDs50UTC)
   return errCode, decayDs50UTC[1]
end

#############################################################################
# Returs parameters of a satellite via its satKey
function GetSatParameters(satKey)
   xa_satparm = zeros(Float64, 32)
   errCode = ccall( (:GetSatParameters,libname) 
     , Int32
     , (Int64
     , Ref{Float64})
     , satKey,xa_satparm)
   return errCode, xa_satparm
end

#############################################################################
# Returs the satellite number associated with the input satKey
function SatNumOf(satKey)
   satNum = ccall( (:SatNumOf,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return satNum
end

#############################################################################
# Adds an impulsive maneuver (using VP-card string format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
# Note: All maneuvers have to be entered before the satellite's initialization step
function AddManeuverVPStr(satKey, vpString)
   errCode = ccall( (:AddManeuverVPStr,libname) 
     , Int32
     , (Int64
     , Cstring)
     , satKey,vpString)
   return errCode
end

#############################################################################
# Adds an impulsive maneuver (using VP-card array format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
# Note: All maneuvers have to be entered before the satellite's initialization step
function AddManeuverVPArr(satKey, xa_vp)
   errCode = ccall( (:AddManeuverVPArr,libname) 
     , Int32
     , (Int64
     , Ref{Float64})
     , satKey,xa_vp)
   return errCode
end

#############################################################################

end #of module ElOpsDll
# ========================= End of auto generated code ==========================
