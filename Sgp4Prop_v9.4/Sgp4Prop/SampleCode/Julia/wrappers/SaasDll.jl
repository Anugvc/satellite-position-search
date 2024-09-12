# This wrapper file was generated automatically by the GenDllWrappers program.
module SaasDll

if Sys.iswindows()
  libname="Saas"
else
  libname="libsaas"
end

# Export Constant Variables
export XA_MSL_MINHGT
export XA_MSL_MAXHGT
export XA_MSL_MAXSA
export XA_MSL_ANGMAX
export XA_MSL_REJFLG
export XA_MSL_TIMCOE1
export XA_MSL_TIMCOE2
export XA_MSL_TIMCOE3
export XA_MSL_RNGCOE1
export XA_MSL_RNGCOE2
export XA_MSL_RNGCOE3
export XA_MSL_SIZE
export XA_LS_LAT
export XA_LS_LON
export XA_LS_HEIGHT
export XA_LS_SIZE
export XA_SAASRUN_MAXPENS
export XA_SAASRUN_START
export XA_SAASRUN_STOP
export XA_SAASRUN_HALFCONE
export XA_SAASRUN_SIZE
export XA_SATPEN_IMPTIME
export XA_SATPEN_LAUTIME
export XA_SATPEN_AZ
export XA_SATPEN_EL
export XA_SATPEN_RANGE
export XA_SATPEN_RNGRATE
export XA_SATPEN_SOLANG
export XA_SATPEN_ATTCKANG
export XA_SATPEN_SATHGHT
export XA_SATPEN_EN0EX1
export XA_SATPEN_SIZE
export XA_SAASRET_NUMOFPENS
export XA_SAASRET_SATAHT
export XA_SAASRET_SATPHT
export XA_SAASRET_MINCONE
export XA_SAASRET_MAXCONE
export XA_SAASRET_SIZE
export ORBTYPE_LEO
export ORBTYPE_MEO
export ORBTYPE_GEO
export XA_LNCH_LAT
export XA_LNCH_LON
export XA_LNCH_INJAZ
export XA_LNCH_DS50UTC
export XA_LNCH_SIZE
export XA_PLNR_ORBTYPE
export XA_PLNR_LSLAT
export XA_PLNR_LSLON
export XA_PLNR_DS50UTC
export XA_PLNR_TOFFR
export XA_PLNR_TOFTO
export XA_PLNR_INCLI
export XA_PLNR_NODE
export XA_PLNR_SIZE
export XA_INTXN_DS50UTC
export XA_INTXN_INCLI
export XA_INTXN_LAT
export XA_INTXN_LON
export XA_INTXN_HEIGHT
export XA_INTXN_TOF
export XA_INTXN_COPLANG
export XA_INTXN_SIZE

# Export Functions
export SaasInit
export SaasGetInfo
export SaasGetResults
export SaasAutoConeSize
export SaasMissileFlightTime
export ComputeLnchOrbPlane
export FindPlanerIntersection

#*******************************************************************************

# Missile Profile
# missile profile's minimum height limit (km)
const XA_MSL_MINHGT  =  0;

# missile profile's maximum height limit (km)
const XA_MSL_MAXHGT  =  1;

# maximum allowed solar aspect angle (deg)
const XA_MSL_MAXSA   =  2;

# maximum allowed missile attack angle (deg)
const XA_MSL_ANGMAX  =  3;

# rejection flag (-1: reject negative, 0: reject neg and pos, 1: reject pos)
const XA_MSL_REJFLG  =  4;

# missile trajectory time coefficient for the *X**2 term [sec]
const XA_MSL_TIMCOE1 =  5;

# missile trajectory time coefficient for the *X term [sec]
const XA_MSL_TIMCOE2 =  6;

# missile trajectory time constant for the C term [sec]
const XA_MSL_TIMCOE3 =  7;

# missile trajectory range coefficient *X**2 term [km]
const XA_MSL_RNGCOE1 =  8;

# missile trajectory range coefficient *X term [km]
const XA_MSL_RNGCOE2 =  9;

# missile trajectory range constant for the C term [km]
const XA_MSL_RNGCOE3 = 10;


const    XA_MSL_SIZE    = 32;

#*******************************************************************************

# Launch site location
# launch site's latitude (deg)  (+N) (-S)
const XA_LS_LAT     = 0;

# launch site's longitude (deg) (+E) (-W)
const XA_LS_LON     = 1;

# launch site's height(m)
const XA_LS_HEIGHT  = 2;


const    XA_LS_SIZE    = 8;

#*******************************************************************************

# Saas run parameters
# Maximum number of penetration points that are allowed
const XA_SAASRUN_MAXPENS  = 0;

# SAAS start time in days since 1950, UTC
const XA_SAASRUN_START    = 1;

# SAAS stop time in days since 1950, UTC
const XA_SAASRUN_STOP     = 2;

# Half angle of attack cone (0=auto)
const XA_SAASRUN_HALFCONE = 3;


const    XA_SAASRUN_SIZE     = 8;      

#*******************************************************************************

# Satellite penetration data
# impact time in days since 1950, UTC
const XA_SATPEN_IMPTIME  =  0;

# msl launch time in days since 1950, UTC
const XA_SATPEN_LAUTIME  =  1;

# azimuth (deg)
const XA_SATPEN_AZ       =  2;

# elevation (deg)
const XA_SATPEN_EL       =  3;

# range (km)
const XA_SATPEN_RANGE    =  4;

# range rate (km/s)
const XA_SATPEN_RNGRATE  =  5;

# solar aspect angle (deg)
const XA_SATPEN_SOLANG   =  6;

# attack angle (deg)
const XA_SATPEN_ATTCKANG =  7;

# satellite's height (km)
const XA_SATPEN_SATHGHT  =  8;

# ring penetration entry or exit time (0=entry, 1=exit)
const XA_SATPEN_EN0EX1   =  9;


const    XA_SATPEN_SIZE     = 16;      

#*******************************************************************************

# SAAS ouput data
# number of actual satellite penetrations
const XA_SAASRET_NUMOFPENS =  0;

# satellite apogee height (km)
const XA_SAASRET_SATAHT    =  1;

# satellite perigee height (km)
const XA_SAASRET_SATPHT    =  2;

# autocone minimum cone half angle (deg)
const XA_SAASRET_MINCONE   =  3;

# autocone maximum cone half angle (deg)
const XA_SAASRET_MAXCONE   =  4;





const    XA_SAASRET_SIZE     = 16;      

#*******************************************************************************

# predefined values for different orbit types used in planer program
# orbit type LEO
const ORBTYPE_LEO = 1;

# orbit type MEO
const ORBTYPE_MEO = 2;

# orbit type GEO
const ORBTYPE_GEO = 3;


#*******************************************************************************

# indexes of fields specifying parameters for planer intersection program
# launch site latitude (deg)
const XA_LNCH_LAT     = 0;

# launch site longitude (deg)
const XA_LNCH_LON     = 1;

# injection azimuth (deg)
const XA_LNCH_INJAZ   = 2;

# launch time in days since 1950 UTC
const XA_LNCH_DS50UTC = 3;


const   XA_LNCH_SIZE    = 8;

#*******************************************************************************

# indexes of fields specifying parameters for planer intersection program
# orbital type (LEO = 1, MEO = 2, GEO = 3)
const XA_PLNR_ORBTYPE  = 0;

# launch site latitude (deg)
const XA_PLNR_LSLAT    = 1;

# launch site longitude (deg)
const XA_PLNR_LSLON    = 2;

# launch time in days since 1950 UTC
const XA_PLNR_DS50UTC  = 4;

# time of flight start (min)
const XA_PLNR_TOFFR    = 5;

# time of flight end (min)
const XA_PLNR_TOFTO    = 6;

# planer's inclination (deg)
const XA_PLNR_INCLI    = 7;

# planer's node (deg)
const XA_PLNR_NODE     = 8;


const   XA_PLNR_SIZE     = 16;

#*******************************************************************************

# indexes of output data returned by planer intersection program
# time of intersection in days since 1950 UTC
const XA_INTXN_DS50UTC = 0;

# satellite inclination (deg)
const XA_INTXN_INCLI   = 1;

# satellite latitude (deg) at the time of the intersection
const XA_INTXN_LAT     = 2;

# satellite longitude (deg) at the time of the intersection
const XA_INTXN_LON     = 3;

# satellite height (km) at the time of the intersection
const XA_INTXN_HEIGHT  = 4;

# time of flight (min) since launch time
const XA_INTXN_TOF     = 5;

# coplaner angle (deg)
const XA_INTXN_COPLANG = 6;


const    XA_INTXN_SIZE    = 16;                               

#*******************************************************************************


#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Saas dll for use in the program
function SaasInit(apAddr)
   errCode = ccall( (:SaasInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Saas.dll. The information is placed in the
# string parameter passed-in
function SaasGetInfo()
   infoStr = " "^128
   ccall( (:SaasGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
#   (Direct Ascent Anti-Satellite). 
# 
# 
# SAAS software description:
# 
#   SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
#   (Direct Ascent Anti-Satellite). Developed by HQ SpOC, SAAS assesses attack opportunities
#   for a direct ascent ASAT attack, similar to F-15 ASAT of the 1980's.  By its use of SGP4
#   propagation, SAAS is designed as a high-speed screening tool to identify potential target
#   objects in vulnerable orbits relative to the specified missile site/capability; however it
#   should not be considered a precision analysis model.
# 
# 
# SAAS algorithm:
# 
#   SAAS computes a ring of potential intercept points around a launch site.  The size of the
#   ring (also known as 'the kill ring') is based on the altitude limit and missile profile
#   specified for the direct ascent booster.  Each target altitude has a unique kill ring with
#   two intercept points, defined as 'pierce/entry' and exit.  The ring of potential intercept
#   points span over 360 degrees azimuth above the launch site.  The ring of intercept points
#   is circumscribed by a cone looking up from the launch site.  Target orbits are flown
#   (propagated by SGP4) over a specified period of interest and penetrations of the launch site
#   cone determine a viable intercept passes.  The time of the cone penetration, and/or cone
#   exit, are the 'intercept times'.  (Note that as the target altitude decreases, the intercept
#   point moves farther down-range from the launch site; then it moves up-range after the
#   specified missile max range is reached.) The azimuth from the launch site to the cone
#   penetration point is the launch azimuth.  Lastly, the launch time is determined as the cone
#   penetration time minus the missile time-of-flight to the target.
# 
# 
# INPUTS include:
# 
# 
#   table
#   (a) a set of target input SGP4 two-line element sets (TLEs)
#   (b) coefficient-based missile profile used for the direct ascent attack trajectory
#   (c) missile profile limits including min and max height, maximum sun angle, and maximum
#        attack angle
#   (d) ground missile location(s) including N. latitude, E. longitude, and height for one or
#        more test sites
#   (e) a specified evaluation period of interest for assessment
# 
# 
# 
# OUTPUTS include:
#   (a) attack launch time, launch azimuth, and intercept time, for each viable target pass over
#        a launch site within the specified period of interest
# 
# Order of elements in the input xa_msl array:
# 
# table
# 
# Index
# Index Interpretation
#    
#   0 missile profile minimum height limit [km]
#   1 missile profile maximum height limit [km]
#   2 maximum allowed solar aspect angle [deg], pass qualifies 
#   3 maximum allowed missile attack angle [deg], pass qualifies only 
#   4 rejection flag*: -1=reject negative; 0=reject neither negative nor positive; 1=reject positive. 
#   5 missile profile time coefficient for the X^2 term
#   6 missile profile time coefficient for the X term
#   7 missile profile time constant for the C term
#   8 missile profile range coefficient for the X^2 term
#   9 missile profile range coefficient for the X term
#  10 missile profile range constant for the C term
#  11-31 unused at this time
#    
#  (*) The missile rejection flag designation is used by SAAS to check for sign of the desired
#      attack angles in the results.  It evaluates the sign (+ or -) of the computed attack
#      angle vs. the maximum allowed attack angle.  For example if set to -1, only positive
#      attack angles less than the max attack angle will be returned.  If set to 0, either a
#      positive or negative computed attack angle is acceptable as long as long it is less
#      than the max allowed attack angle.  If set to 1, only negative attack angles less than
#      the maximum will be accepted and returned.
# 
# Order of elements in the input xa_ls array:   
# 
# table
# 
# Index
# Index Interpretation
#    
#  0 launch test site's latitude (+North, -South)
#  1 launch test site longitude (+East, -West)
#  2 launch test site local height above Earth average equatorial radius (meters). 
#  3-7 unused at this time
#    
# 
# Order of elements in the input xa_saasRun array:
# 
# table
# 
# Index
# Index Interpretation
#    
#  0 Maximum number of penetration points allowed. 
#  1 SAAS assessment period-of-interest (POI) start time in fractional days since 1950, UTC
#  2 SAAS assessment period-of-interest (POI) stop time in fractional days since 1950, UTC. 
# 								 Note: if a stop time is not specified, it is defaulted by SAAS to 1 day after the specified start
# 								 time
#  3 Specified half-angle of attack cone, where if set to 0, SAAS will automatically determine the attack cone half angle. 
#   								 Note:  if a input cone angle is > 90 degrees, it is defaulted by SAAS to 90
#   								 degrees
#  4-7 unused at this time
#    
# 
# Order of elements in the returned in the first dimension of xa_satPen array (second array
#  dimension allows similar same results Elements for other viable penetration solutions at
#  different times during the assessment period of interest):
# 
# table
# 
# Index
# Index Interpretation
#    
#  0 impact time in fractional days since 1950, UTC
#  1 missile launch time in fractional days since 1950, UTC
#  2 satellite penetration azimuth [deg]
#  3 satellite penetration elevation [deg]
#  4 satellite penetration range [km]
#  5 satellite penetration range rate [km/s]
#  6 satellite penetration solar aspect angle [deg]
#  7 satellite penetration attack angle [deg]
#  8 satellite height at penetration [km] 
#  9 ring penetration indicator:  0 = impact time is an 'entry' time; 1 = ring penetration is an 'exit'
# time
#  10-15 unused at this time
#    
# 
# Order of elements in the output xa_Ret array:
# 
# table
# 
# Index
# Index Interpretation
#    
#  0 number of potential viable attack penetrations (opportunities) identified vs. the target set within the
# POI
#  1-15 unused at this time
#    
# 
# xa_saasRet(16) - other saas output:
# 
# table
# 
# Index
# Index Interpretation
#    
#  0  number of actual satellite penetrations found
#  1  satellite apogee height (km)
#  2  satellite perigee height (km)
#  3  autocone minimum cone half angle (deg)
#  4  autocone maximum cone half angle (deg)
#  5-15  not used at this time
#    
function SaasGetResults(satKey, xa_saasrun, xa_msl, xa_ls, size_xa_satPen)
   xa_satPen = zeros(Float64, 16, size_xa_satPen)
   xa_saasRet = zeros(Float64, 16)
   errCode = ccall( (:SaasGetResults,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,xa_saasrun,xa_msl,xa_ls,xa_satPen,xa_saasRet)
   return errCode, xa_satPen, xa_saasRet
end

#############################################################################
# Computes auto cone size based on satellite height and missile profile      
function SaasAutoConeSize(satHeight, xa_msl)
   coneSize = ccall( (:SaasAutoConeSize,libname) 
     , Float64
     , (Float64
     , Ref{Float64})
     , satHeight,xa_msl)
   return coneSize
end

#############################################################################
# Computes missile time of flight based on satellite height and missile profile  
function SaasMissileFlightTime(satHeight, xa_msl)
   flightTime = ccall( (:SaasMissileFlightTime,libname) 
     , Float64
     , (Float64
     , Ref{Float64})
     , satHeight,xa_msl)
   return flightTime
end

#############################################################################
# Computes launch orbital plane (inclination and node) based on the launch data
function ComputeLnchOrbPlane(xa_lnch)
   incli = zeros(Float64, 1)
   node = zeros(Float64, 1)
   ccall( (:ComputeLnchOrbPlane,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , xa_lnch,incli,node)
   return incli[1], node[1]
end

#############################################################################
# Compares a satellite elset against a new launch to find planer intersection time and associated data
function FindPlanerIntersection(satKey, xa_plnr)
   xa_intxn = zeros(Float64, 16)
   errCode = ccall( (:FindPlanerIntersection,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Float64})
     , satKey,xa_plnr,xa_intxn)
   return errCode, xa_intxn
end

#############################################################################

end #of module SaasDll
# ========================= End of auto generated code ==========================
