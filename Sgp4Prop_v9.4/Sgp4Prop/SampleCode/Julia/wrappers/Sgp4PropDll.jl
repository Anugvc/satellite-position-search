# This wrapper file was generated automatically by the GenDllWrappers program.
module Sgp4PropDll

if Sys.iswindows()
  libname="Sgp4Prop"
else
  libname="libsgp4prop"
end

# Export Constant Variables
export GP_ERR_NONE
export GP_ERR_BADFK
export GP_ERR_ANEGATIVE
export GP_ERR_ATOOLARGE
export GP_ERR_EHYPERPOLIC
export GP_ERR_ENEGATIVE
export GP_ERR_MATOOLARGE
export GP_ERR_E2TOOLARGE
export SGP4_TIMETYPE_MSE
export SGP4_TIMETYPE_DS50UTC
export XF_SGP4OUT_REVNUM
export XF_SGP4OUT_NODAL_AP_PER
export XF_SGP4OUT_MEAN_KEP
export XF_SGP4OUT_OSC_KEP
export XA_SGP4OUT_DS50UTC
export XA_SGP4OUT_MSE
export XA_SGP4OUT_POSX
export XA_SGP4OUT_POSY
export XA_SGP4OUT_POSZ
export XA_SGP4OUT_VELX
export XA_SGP4OUT_VELY
export XA_SGP4OUT_VELZ
export XA_SGP4OUT_LAT
export XA_SGP4OUT_LON
export XA_SGP4OUT_HEIGHT
export XA_SGP4OUT_REVNUM
export XA_SGP4OUT_NODALPER
export XA_SGP4OUT_APOGEE
export XA_SGP4OUT_PERIGEE
export XA_SGP4OUT_MN_A
export XA_SGP4OUT_MN_E
export XA_SGP4OUT_MN_INCLI
export XA_SGP4OUT_MN_MA
export XA_SGP4OUT_MN_NODE
export XA_SGP4OUT_MN_OMEGA
export XA_SGP4OUT_OSC_A
export XA_SGP4OUT_OSC_E
export XA_SGP4OUT_OSC_INCLI
export XA_SGP4OUT_OSC_MA
export XA_SGP4OUT_OSC_NODE
export XA_SGP4OUT_OSC_OMEGA
export XA_SGP4OUT_SIZE
export SGP4_EPHEM_ECI
export SGP4_EPHEM_J2K
export DYN_SS_BASIC

# Export Functions
export Sgp4Init
export Sgp4GetInfo
export Sgp4LoadFileAll
export Sgp4SaveFile
export Sgp4InitSat
export Sgp4RemoveSat
export Sgp4RemoveAllSats
export Sgp4GetCount
export Sgp4PropMse
export Sgp4PropDs50UTC
export Sgp4PropDs50UtcPosVel
export Sgp4PropDs50UtcLLH
export Sgp4PropDs50UtcPos
export Sgp4GetPropOut
export Sgp4PropAll
export Sgp4PosVelToKep
export Sgp4PosVelToTleArr
export Sgp4ReepochTLE
export Sgp4ReepochCsv
export Sgp4SetLicFilePath
export Sgp4GetLicFilePath
export Sgp4GenEphems
export Sgp4GenEphems_OS
export Sgp4PropAllSats
export XpGetNativeElts
export XpReepochGetNativeElts
# Different return values of errCode from Sgp4 propagation
# SGP4 propagates successfully
const GP_ERR_NONE        = 0;

# Bad FK model (FK5 must be selected)
const GP_ERR_BADFK       = 1;

# A is negative
const GP_ERR_ANEGATIVE   = 2;

# A is to large
const GP_ERR_ATOOLARGE   = 3;

# Eccentricity is hyperbolic
const GP_ERR_EHYPERPOLIC = 4;

# Eccentricity is negative
const GP_ERR_ENEGATIVE   = 5;

# Mean anomaly is too large
const GP_ERR_MATOOLARGE  = 6;

# e**2 is too large
const GP_ERR_E2TOOLARGE  = 7;


# Different time types for passing to Sgp4PropAll
# propagation time is in minutes since epoch
const SGP4_TIMETYPE_MSE      = 0;

# propagation time is in days since 1950, UTC
const SGP4_TIMETYPE_DS50UTC  = 1;


# Sgp4 propagated output fields
# Revolution number
const XF_SGP4OUT_REVNUM       = 1;

# Nodal period, apogee, perigee
const XF_SGP4OUT_NODAL_AP_PER = 2;

# Mean Keplerian
const XF_SGP4OUT_MEAN_KEP     = 3;

# Osculating Keplerian
const XF_SGP4OUT_OSC_KEP      = 4;


# Sgp4 propagated data
# Propagation time in days since 1950, UTC
const XA_SGP4OUT_DS50UTC      =  0;

# Propagation time in minutes since the satellite's epoch time
const XA_SGP4OUT_MSE          =  1;

# ECI X position (km) in True Equator and Mean Equinox of Epoch
const XA_SGP4OUT_POSX         =  2;

# ECI Y position (km) in True Equator and Mean Equinox of Epoch
const XA_SGP4OUT_POSY         =  3;

# ECI Z position (km) in True Equator and Mean Equinox of Epoch
const XA_SGP4OUT_POSZ         =  4;

# ECI X velocity (km/s) in True Equator and Mean Equinox of Epoch
const XA_SGP4OUT_VELX         =  5;

# ECI Y velocity (km/s) in True Equator and Mean Equinox of Epoch
const XA_SGP4OUT_VELY         =  6;

# ECI Z velocity (km/s) in True Equator and Mean Equinox of Epoch
const XA_SGP4OUT_VELZ         =  7;

# Geodetic latitude (deg)
const XA_SGP4OUT_LAT          =  8;

# Geodetic longitude (deg)
const XA_SGP4OUT_LON          =  9;

# Height above geoid (km)
const XA_SGP4OUT_HEIGHT       = 10;

# Revolution number
const XA_SGP4OUT_REVNUM       = 11;

# Nodal period (min)
const XA_SGP4OUT_NODALPER     = 12;

# Apogee (km)
const XA_SGP4OUT_APOGEE       = 13;

# Perigee (km)
const XA_SGP4OUT_PERIGEE      = 14;

# Mean semi-major axis (km)
const XA_SGP4OUT_MN_A         = 15;

# Mean eccentricity (unitless)
const XA_SGP4OUT_MN_E         = 16;

# Mean inclination (deg)
const XA_SGP4OUT_MN_INCLI     = 17;

# Mean mean anomaly (deg)
const XA_SGP4OUT_MN_MA        = 18;

# Mean right ascension of the asending node (deg)
const XA_SGP4OUT_MN_NODE      = 19;

# Mean argument of perigee (deg)
const XA_SGP4OUT_MN_OMEGA     = 20;

# Osculating semi-major axis (km)
const XA_SGP4OUT_OSC_A        = 21;

# Osculating eccentricity (unitless)
const XA_SGP4OUT_OSC_E        = 22;

# Osculating inclination (deg)
const XA_SGP4OUT_OSC_INCLI    = 23;

# Osculating mean anomaly (deg)
const XA_SGP4OUT_OSC_MA       = 24;

# Osculating right ascension of the asending node (deg)
const XA_SGP4OUT_OSC_NODE     = 25;

# Osculating argument of perigee (deg)
const XA_SGP4OUT_OSC_OMEGA    = 26;


const    XA_SGP4OUT_SIZE         = 64;

# Different options for generating ephemerides from SGP4
# ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
const SGP4_EPHEM_ECI   = 1;

# MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
const SGP4_EPHEM_J2K   = 2;



# Different dynamic step size options
# Use a simple algorithm to determine step size based on satellite's current position
const DYN_SS_BASIC  = -1   ;


#*******************************************************************************


#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes the Sgp4 DLL for use in the program.
# 
# If this function returns an error, it is recommended that you stop the program immediately.
# 
# An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
function Sgp4Init(apAddr)
   errCode = ccall( (:Sgp4Init,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Sgp4Prop.dll. The information is placed in the string parameter you pass in.
# The returned string provides information about the version number, build date, and platform.
function Sgp4GetInfo()
   infoStr = " "^128
   ccall( (:Sgp4GetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads SGP4-related parameters (prediction controls, JPL settings) and SGP4 elsets from a text file
function Sgp4LoadFileAll(sgp4InputFile)
   errCode = ccall( (:Sgp4LoadFileAll,libname) 
     , Int32
     , (Cstring,)
     , sgp4InputFile)
   return errCode
end

#############################################################################
# Saves currently loaded SGP4-related parameters (SGP4 application controls, prediction controls, integration controls) to a file
# The purpose of this function is to save the current SGP4-related settings, usually used in GUI applications, for future use.
function Sgp4SaveFile(sgp4File, saveMode, saveForm)
   errCode = ccall( (:Sgp4SaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , sgp4File,saveMode,saveForm)
   return errCode
end

#############################################################################
# Initializes an SGP4 satellite from an SGP or SGP4 TLE.
# Internally, when this function is called, Tle.dll's set of TLEs is searched for the provided satKey. If found, the associated TLE data will be used to create an SGP4 satellite which then will be added to Sgp4Prop.dll's set of satellites. Subsequent calls to propagate this satellite will use the data in this set to compute the satellite's new state.
# 
# This routine should be called once for each satellite you wish to propagate before propagation begins, or any time the associated data that is stored by Tle.dll is changed.
# 
# The call to this routine needs to be placed before any calls to the SGP4 propagator routines (Sgp4PropMse(), Sgp4PropDs50UTC(), etc.).
function Sgp4InitSat(satKey)
   errCode = ccall( (:Sgp4InitSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removing a satellite from the propagator's set of satellites does not affect the corresponding TLE data loaded by calls to routines in Tle.dll.
function Sgp4RemoveSat(satKey)
   errCode = ccall( (:Sgp4RemoveSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removes all currently loaded satellites from memory.
# Calling this function removes all satellites from the set maintained by Sgp4Prop.dll. However, the TLE data loaded by Tle.dll is unaffected by this function.
function Sgp4RemoveAllSats()
   errCode = ccall( (:Sgp4RemoveAllSats,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Returns the number of GP objects currently created. 
function Sgp4GetCount()
   numSats = ccall( (:Sgp4GetCount,libname) 
     , Int32
     , ())
   return numSats
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in minutes since the satellite's epoch time. 
# The resulting data about the satellite is placed in the various reference parameters.
# It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
# 
# This function can be called in random time requests.
# The following cases will result in an error:
# 
# Semi major axis A 1.0D6
# Eccentricity E >= 1.0 or E 
# Mean anomaly MA>=1.0D10
# Hyperbolic orbit E2>= 1.0
# satKey doesn't exist in the set of loaded satellites
# FK model not set to FK5
# 
function Sgp4PropMse(satKey, mse)
   ds50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   llh = zeros(Float64, 3)
   errCode = ccall( (:Sgp4PropMse,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,mse,ds50UTC,pos,vel,llh)
   return errCode, ds50UTC[1], pos, vel, llh
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
# The resulting data about the satellite is placed in the pos (position), vel (velocity), and llh (Lat/Lon/Height) parameters.
# It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
# The following cases will result in an error:
# 
# Semi major axis A 1.0D6
# Eccentricity E >= 1.0 or E 
# Mean anomaly MA>=1.0D10
# Hyperbolic orbit E2>= 1.0
# satKey doesn't exist in the set of loaded satellites
# GEO model not set to WGS-72 and/or FK model not set to FK5
# 
function Sgp4PropDs50UTC(satKey, ds50UTC)
   mse = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   llh = zeros(Float64, 3)
   errCode = ccall( (:Sgp4PropDs50UTC,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,ds50UTC,mse,pos,vel,llh)
   return errCode, mse[1], pos, vel, llh
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
# The resulting data about the satellite is placed in the pos (position), vel (velocity) parameters.
function Sgp4PropDs50UtcPosVel(satKey, ds50UTC)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   errCode = ccall( (:Sgp4PropDs50UtcPosVel,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , satKey,ds50UTC,pos,vel)
   return errCode, pos, vel
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
# Only the geodetic information is returned by this function.
# It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
# 
# This function is similar to Sgp4PropDs50UTC but returns only LLH.  This function is designed especially for applications which plot ground traces.
# The following cases will result in an error:
# 
# Semi major axis A 1.0D6
# Eccentricity E >= 1.0 or E 
# Mean anomaly MA>=1.0D10
# Hyperbolic orbit E2>= 1.0
# satKey doesn't exist in the set of loaded satellites
# GEO model not set to WGS-72 and/or FK model not set to FK5
# 
function Sgp4PropDs50UtcLLH(satKey, ds50UTC)
   llh = zeros(Float64, 3)
   errCode = ccall( (:Sgp4PropDs50UtcLLH,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64})
     , satKey,ds50UTC,llh)
   return errCode, llh
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
# Only the ECI position vector is returned by this function.
# It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
# 
# This function is similar to Sgp4PropDs50UTC but returns only ECI position vector.  This function is designed especially for applications which plot satellite position in 3D.
# The following cases will result in an error:
# 
# Semi major axis A 1.0D6
# Eccentricity E >= 1.0 or E 
# Mean anomaly MA>=1.0D10
# Hyperbolic orbit E2>= 1.0
# satKey doesn't exist in the set of loaded satellites
# GEO model not set to WGS-72 and/or FK model not set to FK5
# 
function Sgp4PropDs50UtcPos(satKey, ds50UTC)
   pos = zeros(Float64, 3)
   errCode = ccall( (:Sgp4PropDs50UtcPos,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64})
     , satKey,ds50UTC,pos)
   return errCode, pos
end

#############################################################################
# Retrieves propagator's precomputed results. This function can be used to obtain results from 
# a propagation which are not made available through calls to the propagation functions themselves.
# 
# See example in Sgp4PropMse or Sgp4PropDs50UTC.
# 
# This function should be called immediately after a successful call to Sgp4PropMse() or Sgp4PropDs50UTC() to retrieve the desired values.
# 
# It is the caller's responsibility to ensure that the array passed in the destArray parameter is large enough to hold the requested values. The required size can be found by looking at the destArray size column of the table below describing valid index values.
# 
# The destArray Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element. In other programming languages, the subscript of the first element is 1.
# 
# Note: This function is not thread safe, please use Sgp4PropAll() instead 
# 
# The table below shows the values for the xf_Sgp4Out parameter:
# 
# table
# 
# Index
# Index Interpretation
# DestArray size
# DestArray Arrangement
# 
# 1Revolution number1Revolution number (based on the Osculating Keplerian
# Elements)
# 2Nodal Apogee Perigee3nodal period (minutes)apogee
# (km)perigee (km)
# 3Mean Keplerian Elements6semi-major axis (km)eccentricity
# (unitless)inclination (degree)mean anomaly (degree)right ascension of the ascending node
# (degree)argument of perigee (degree)
# 4Osculating Keplerian Elements6Same as Mean Keplerian Elements
# 
function Sgp4GetPropOut(satKey, xf_Sgp4Out, size_destArr)
   destArr = zeros(Float64, size_destArr)
   errCode = ccall( (:Sgp4GetPropOut,libname) 
     , Int32
     , (Int64
     , Int32
     , Ref{Float64})
     , satKey,xf_Sgp4Out,destArr)
   return errCode, destArr
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
# All propagation data is returned by this function.
function Sgp4PropAll(satKey, timeType, timeIn)
   xa_Sgp4Out = zeros(Float64, 64)
   errCode = ccall( (:Sgp4PropAll,libname) 
     , Int32
     , (Int64
     , Int32
     , Float64
     , Ref{Float64})
     , satKey,timeType,timeIn,xa_Sgp4Out)
   return errCode, xa_Sgp4Out
end

#############################################################################
# Converts osculating position and velocity vectors to a set of mean Keplerian SGP4 elements.
# The new position and velocity vectors are the results of using SGP4 propagator to propagate the computed sgp4MeanKep to the time specified in year and day of epoch time. 
# They should be closely matched with the input osculating position and velocity vectors.
# 
# The mean Keplerian elements are SGP4's Brouwer mean motion not SGP's Kozai mean motion.
# Notes: Even if the function fails, the less acurate results may still be availalbe 
function Sgp4PosVelToKep(yr, day, pos, vel)
   posNew = zeros(Float64, 3)
   velNew = zeros(Float64, 3)
   xa_kep = zeros(Float64, 6)
   errCode = ccall( (:Sgp4PosVelToKep,libname) 
     , Int32
     , (Int32
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , yr,day,pos,vel,posNew,velNew,xa_kep)
   return errCode, posNew, velNew, xa_kep
end

#############################################################################
# Converts osculating position and velocity vectors to TLE array - allows bstar/bterm, drag values to be used in the conversion if desired
# The function is similar to Sgp4PosVelToKep but allows the user to specify agom (XP mode) and bstar/bterm values, if desired, to be used in solving for the new Keplerian elements.
# 
# The updated elements returned in the xa_tle array is of type SGP and the mean motion is Kozai mean motion.
# Notes: Even if the function fails, the less acurate results may still be availalbe 
function Sgp4PosVelToTleArr(pos, vel, xa_tle)
   errCode = ccall( (:Sgp4PosVelToTleArr,libname) 
     , Int32
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,xa_tle)
   return errCode, xa_tle
end

#############################################################################
# Reepochs a loaded TLE, represented by the satKey, to a new epoch.
function Sgp4ReepochTLE(satKey, reEpochDs50UTC)
   line1Out = " "^512
   line2Out = " "^512
   errCode = ccall( (:Sgp4ReepochTLE,libname) 
     , Int32
     , (Int64
     , Float64
     , Cstring
     , Cstring)
     , satKey,reEpochDs50UTC,line1Out,line2Out)
   return errCode, line1Out, line2Out
end

#############################################################################
# Reepochs a loaded TLE, represented by the satKey, to a new epoch in Csv format.
function Sgp4ReepochCsv(satKey, reEpochDs50UTC)
   csvLine = " "^512
   errCode = ccall( (:Sgp4ReepochCsv,libname) 
     , Int32
     , (Int64
     , Float64
     , Cstring)
     , satKey,reEpochDs50UTC,csvLine)
   return errCode, csvLine
end

#############################################################################
# This function has been deprecated since v8.2
# Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
function Sgp4SetLicFilePath(licFilePath)
   ccall( (:Sgp4SetLicFilePath,libname) 
     , Nothing
     , (Cstring,)
     , licFilePath)
end

#############################################################################
# This function has been deprecated since v8.2
# Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
function Sgp4GetLicFilePath()
   licFilePath = " "^512
   ccall( (:Sgp4GetLicFilePath,libname) 
     , Nothing
     , (Cstring,)
     , licFilePath)
   return licFilePath
end

#############################################################################
# Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
# Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
# that many points (arrSize) and the errCode is set to IDX_ERR_WARN
function Sgp4GenEphems(satKey, startTime, endTime, stepSize, sgp4_ephem, arrSize, size_ephemArr)
   ephemArr = zeros(Float64, 7, size_ephemArr)
   genEphemPts = zeros(Int32, 1)
   errCode = ccall( (:Sgp4GenEphems,libname) 
     , Int32
     , (Int64
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Int32})
     , satKey,startTime,endTime,stepSize,sgp4_ephem,arrSize,ephemArr,genEphemPts)
   return errCode, ephemArr, Int64(genEphemPts[1])
end

#############################################################################
# Generates ephemerides for the input TLE - in an array format - for the specified time span and step size (OS - in One Step)
# Notes: 
# - This function takes in TLE data directly and doesn't need to go through loading/geting satKey/initializing steps
# - if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
#   that many points (arrSize) and the errCode is set to IDX_ERR_WARN
function Sgp4GenEphems_OS(xa_tle, startTime, endTime, stepSize, sgp4_ephem, arrSize, size_ephemArr)
   ephemArr = zeros(Float64, 7, size_ephemArr)
   genEphemPts = zeros(Int32, 1)
   errCode = ccall( (:Sgp4GenEphems_OS,libname) 
     , Int32
     , (Ref{Float64}
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Int32})
     , xa_tle,startTime,endTime,stepSize,sgp4_ephem,arrSize,ephemArr,genEphemPts)
   return errCode, ephemArr, Int64(genEphemPts[1])
end

#############################################################################
# Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
function Sgp4PropAllSats(satKeys, numOfSats, ds50UTC, size_ephemArr)
   ephemArr = zeros(Float64, 6, size_ephemArr)
   errCode = ccall( (:Sgp4PropAllSats,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Float64
     , Ref{Float64})
     , satKeys,numOfSats,ds50UTC,ephemArr)
   return errCode, ephemArr
end

#############################################################################
# Provides the native XP equinoctial elements and rates at given time
function XpGetNativeElts(satKey, ds50UTC)
   xa_eqnx = zeros(Float64, 6)
   xa_eqnx_dot = zeros(Float64, 6)
   errCode = ccall( (:XpGetNativeElts,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , satKey,ds50UTC,xa_eqnx,xa_eqnx_dot)
   return errCode, xa_eqnx, xa_eqnx_dot
end

#############################################################################
# Reepochs to a csv and provides the native XP equinoctial elements and rates
function XpReepochGetNativeElts(satKey, reEpochDs50UTC)
   csvLine = " "^512
   xa_eqnx = zeros(Float64, 6)
   xa_eqnx_dot = zeros(Float64, 6)
   errCode = ccall( (:XpReepochGetNativeElts,libname) 
     , Int32
     , (Int64
     , Float64
     , Cstring
     , Ref{Float64}
     , Ref{Float64})
     , satKey,reEpochDs50UTC,csvLine,xa_eqnx,xa_eqnx_dot)
   return errCode, csvLine, xa_eqnx, xa_eqnx_dot
end

#############################################################################

end #of module Sgp4PropDll
# ========================= End of auto generated code ==========================
