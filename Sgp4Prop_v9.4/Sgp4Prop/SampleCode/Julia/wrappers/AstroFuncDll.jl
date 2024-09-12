# This wrapper file was generated automatically by the GenDllWrappers program.
module AstroFuncDll

if Sys.iswindows()
  libname="AstroFunc"
else
  libname="libastrofunc"
end

# Export Constant Variables
export XA_KEP_A
export XA_KEP_E
export XA_KEP_INCLI
export XA_KEP_MA
export XA_KEP_NODE
export XA_KEP_OMEGA
export XA_KEP_SIZE
export XA_CLS_N
export XA_CLS_E
export XA_CLS_INCLI
export XA_CLS_MA
export XA_CLS_NODE
export XA_CLS_OMEGA
export XA_CLS_SIZE
export XA_EQNX_AF
export XA_EQNX_AG
export XA_EQNX_CHI
export XA_EQNX_PSI
export XA_EQNX_L
export XA_EQNX_N
export XA_EQNX_SIZE
export XF_CONV_SGP42SGP
export XA_TOPO_RA
export XA_TOPO_DEC
export XA_TOPO_AZ
export XA_TOPO_EL
export XA_TOPO_RANGE
export XA_TOPO_RADOT
export XA_TOPO_DECDOT
export XA_TOPO_AZDOT
export XA_TOPO_ELDOT
export XA_TOPO_RANGEDOT
export XA_TOPO_SIZE
export XA_RAE_RANGE
export XA_RAE_AZ
export XA_RAE_EL
export XA_RAE_RANGEDOT
export XA_RAE_AZDOT
export XA_RAE_ELDOT
export XA_RAE_SIZE
export YROFEQNX_OBTIME
export YROFEQNX_CURR
export YROFEQNX_2000
export YROFEQNX_1950

# Export Functions
export AstroFuncInit
export AstroFuncGetInfo
export KepToEqnx
export KepToPosVel
export KepToUVW
export ClassToEqnx
export EqnxToClass
export EqnxToKep
export EqnxToPosVel
export PosVelToEqnx
export PosVelMuToEqnx
export PosVelToKep
export PosVelMuToKep
export PosVelToUUVW
export PosVelToPTW
export SolveKepEqtn
export CompTrueAnomaly
export NToA
export AToN
export KozaiToBrouwer
export BrouwerToKozai
export KepOscToMean
export XYZToLLH
export XYZToLLHTime
export LLHToXYZ
export LLHToXYZTime
export EFGToECI
export EFGToECITime
export ECIToEFG
export ECIToEFGTime
export ECRToEFG
export ECRToEFGTime
export EFGToECR
export EFGToECRTime
export EFGPosToLLH
export LLHToEFGPos
export RotJ2KToDate
export RotDateToJ2K
export CompSunMoonPos
export CompSunPos
export CompMoonPos
export AstroConvFrTo
export RADecToLAD
export AzElToLAD
export ECIToTopoComps
export RaDecToAzEl
export RaDecToAzElTime
export AzElToRaDec
export AzElToRaDecTime
export RAEToECI
export GetInitialDrag
export CovMtxPTWToUVW
export CovMtxUVWToPTW
export EarthObstructionAngles
export IsPointSunlit
export RotRADecl
export RotRADec_DateToEqnx
export RotRADec_EqnxToDate
export CovMtxEqnxToUVW
export CovMtxUVWToEqnx
export CovMtxECIToUVW
export CovMtxUVWToECI
export CovMtxECIToEFG
export CovMtxEFGToECI
export Mtx6x6ToLTA21
export LTA21ToMtx6x6
export Mtx9x9ToLTA45
export LTA45ToMtx9x9
export PropCovFrState
export CovMtxECIToEqnx
export CovMtxEqnxToECI9x9
export CovMtxEqnxToUVW9x9
export CovMtxUpdate
export AberrationAnnual
export AberrationDiurnal
export JplSetParameters
export JplGetParameters
export JplReset
export JplCompSunMoonVec
export JplCompSunMoonPos
export RemoveJpl
export TemeEpochToDate

# Index of Keplerian elements
# semi-major axis (km)
const XA_KEP_A     =   0;

# eccentricity (unitless)
const XA_KEP_E     =   1;

# inclination (deg)
const XA_KEP_INCLI =   2;

# mean anomaly (deg)
const XA_KEP_MA    =   3;

# right ascension of the asending node (deg)
const XA_KEP_NODE  =   4;

# argument of perigee (deg)
const XA_KEP_OMEGA =   5;

const    XA_KEP_SIZE  =  6;   

# Index of classical elements
# N mean motion (revs/day)
const XA_CLS_N     =   0;

# eccentricity (unitless)
const XA_CLS_E     =   1;

# inclination (deg)
const XA_CLS_INCLI =   2;

# mean anomaly (deg)
const XA_CLS_MA    =   3;

# right ascension of the asending node (deg)
const XA_CLS_NODE  =   4;

# argument of perigee (deg)
const XA_CLS_OMEGA =   5;

const    XA_CLS_SIZE  =   6;

# Index of equinoctial elements
# Af (unitless)
const XA_EQNX_AF   =   0;

# Ag (unitless)
const XA_EQNX_AG   =   1;

# chi (unitless)
const XA_EQNX_CHI  =   2;

# psi (unitless)
const XA_EQNX_PSI  =   3;

# L mean longitude (deg)
const XA_EQNX_L    =   4;

# N mean motion (revs/day)
const XA_EQNX_N    =   5;

const    XA_EQNX_SIZE =   6;

# Indexes of AstroConvFrTo
# SGP4 (A, E, Incli, BStar) to SGP (nDot, n2Dot)
const XF_CONV_SGP42SGP = 101;



# Indexes for topocentric components
# Right ascension (deg)
const XA_TOPO_RA    = 0;

# Declination (deg)
const XA_TOPO_DEC   = 1;

# Azimuth (deg)
const XA_TOPO_AZ    = 2;

# Elevation (deg)
const XA_TOPO_EL    = 3;

# Range (km)
const XA_TOPO_RANGE = 4;

# Right ascension dot (deg/s)
const XA_TOPO_RADOT = 5;

# Declincation dot (deg/s)
const XA_TOPO_DECDOT= 6;

# Azimuth dot (deg/s)
const XA_TOPO_AZDOT = 7;

# Elevation dot (deg/s)
const XA_TOPO_ELDOT = 8;

# Range dot (km/s)
const XA_TOPO_RANGEDOT = 9;

const    XA_TOPO_SIZE  = 10;   


# Indexes for RAE components
# Range (km)
const XA_RAE_RANGE   = 0;

# Azimuth (deg)
const XA_RAE_AZ      = 1;

# Elevation (deg)
const XA_RAE_EL      = 2;

# Range dot (km/s)
const XA_RAE_RANGEDOT= 3;

# Azimuth dot (deg/s)
const XA_RAE_AZDOT   = 4;

# Elevation dot (deg/s)
const XA_RAE_ELDOT   = 5;

const    XA_RAE_SIZE    = 6;


# Year of Equinox indicator
# Date of observation
const YROFEQNX_OBTIME = 0;

# 0 Jan of Date
const YROFEQNX_CURR   = 1;

# J2000
const YROFEQNX_2000   = 2;

# B1950
const YROFEQNX_1950   = 3;



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes AstroFunc DLL for use in the program.
# If this function returns an error, it is recommended that you stop the program immediately.
# 
# An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
function AstroFuncInit(apAddr)
   errCode = ccall( (:AstroFuncInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Retrieves information about the current version of AstroFunc.dll. The information is placed in the string parameter you pass in.
# The returned string provides information about the version number, build date, and platform.
function AstroFuncGetInfo()
   infoStr = " "^128
   ccall( (:AstroFuncGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Converts a set of Keplerian elements to a set of equinoctial elements. 
function KepToEqnx(xa_kep)
   xa_eqnx = zeros(Float64, 6)
   ccall( (:KepToEqnx,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , xa_kep,xa_eqnx)
   return xa_eqnx
end

#############################################################################
# Converts a set of osculating Keplerian elements to osculating position and velocity vectors.
function KepToPosVel(xa_kep)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   ccall( (:KepToPosVel,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , xa_kep,pos,vel)
   return pos, vel
end

#############################################################################
# Converts a set of Keplerian elements to Ubar, Vbar, and Wbar vectors.
function KepToUVW(xa_kep)
   uBar = zeros(Float64, 3)
   vBar = zeros(Float64, 3)
   wBar = zeros(Float64, 3)
   ccall( (:KepToUVW,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , xa_kep,uBar,vBar,wBar)
   return uBar, vBar, wBar
end

#############################################################################
# Converts a set of classical elements to a set of equinoctial elements. 
function ClassToEqnx(xa_cls)
   xa_eqnx = zeros(Float64, 6)
   ccall( (:ClassToEqnx,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , xa_cls,xa_eqnx)
   return xa_eqnx
end

#############################################################################
# Converts a set of equinoctial elements to a set of classical elements.
function EqnxToClass(xa_eqnx)
   xa_cls = zeros(Float64, 6)
   ccall( (:EqnxToClass,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , xa_eqnx,xa_cls)
   return xa_cls
end

#############################################################################
# Converts a set of equinoctial elements to a set of Keplerian elements. 
function EqnxToKep(xa_eqnx)
   xa_kep = zeros(Float64, 6)
   ccall( (:EqnxToKep,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , xa_eqnx,xa_kep)
   return xa_kep
end

#############################################################################
# Converts a set of equinoctial elements to position and velocity vectors.
function EqnxToPosVel(xa_eqnx)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   ccall( (:EqnxToPosVel,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , xa_eqnx,pos,vel)
   return pos, vel
end

#############################################################################
# Converts position and velocity vectors to a set of equinoctial elements.
function PosVelToEqnx(pos, vel)
   xa_eqnx = zeros(Float64, 6)
   ccall( (:PosVelToEqnx,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,xa_eqnx)
   return xa_eqnx
end

#############################################################################
# Converts position and velocity vectors to a set of equinoctial elements with the given mu value. 
# This function is used when working with the SP propagator to get a more accurate set of equinoctial elements.
function PosVelMuToEqnx(pos, vel, mu)
   xa_eqnx = zeros(Float64, 6)
   ccall( (:PosVelMuToEqnx,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Float64
     , Ref{Float64})
     , pos,vel,mu,xa_eqnx)
   return xa_eqnx
end

#############################################################################
# Converts osculating position and velocity vectors to a set of osculating Keplerian elements.
function PosVelToKep(pos, vel)
   xa_kep = zeros(Float64, 6)
   ccall( (:PosVelToKep,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,xa_kep)
   return xa_kep
end

#############################################################################
# Converts osculating position and velocity vectors to a set of osculating Keplerian elements with the given value of mu.
# This function is used when working with the SP propagator to get a more accurate set of Keplerian elements.
function PosVelMuToKep(pos, vel, mu)
   xa_kep = zeros(Float64, 6)
   ccall( (:PosVelMuToKep,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Float64
     , Ref{Float64})
     , pos,vel,mu,xa_kep)
   return xa_kep
end

#############################################################################
# Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
# The resulting vectors have the following meanings.
# U vector: along radial direction
# V vector: W x U
# W vector: pos x vel
function PosVelToUUVW(pos, vel)
   uvec = zeros(Float64, 3)
   vVec = zeros(Float64, 3)
   wVec = zeros(Float64, 3)
   ccall( (:PosVelToUUVW,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,uvec,vVec,wVec)
   return uvec, vVec, wVec
end

#############################################################################
# Converts position and velocity vectors to U, V, W vectors. See the remarks section for details.
# The resulting vectors have the following meanings.
# U vector: V x W
# V vector: along velocity direction
# W vector: pos x vel
function PosVelToPTW(pos, vel)
   uvec = zeros(Float64, 3)
   vVec = zeros(Float64, 3)
   wVec = zeros(Float64, 3)
   ccall( (:PosVelToPTW,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,uvec,vVec,wVec)
   return uvec, vVec, wVec
end

#############################################################################
# Solves Kepler's equation (M = E - e sin(E)) for the eccentric anomaly, E, by iteration.
function SolveKepEqtn(xa_kep)
   eccAnomaly = ccall( (:SolveKepEqtn,libname) 
     , Float64
     , (Ref{Float64},)
     , xa_kep)
   return eccAnomaly
end

#############################################################################
# Computes true anomaly from a set of Keplerian elements.
function CompTrueAnomaly(xa_kep)
   trueAnomaly = ccall( (:CompTrueAnomaly,libname) 
     , Float64
     , (Ref{Float64},)
     , xa_kep)
   return trueAnomaly
end

#############################################################################
# Converts mean motion N to semi-major axis A.
function NToA(n)
   a = ccall( (:NToA,libname) 
     , Float64
     , (Float64,)
     , n)
   return a
end

#############################################################################
# Converts semi-major axis A to mean motion N.
function AToN(a)
   n = ccall( (:AToN,libname) 
     , Float64
     , (Float64,)
     , a)
   return n
end

#############################################################################
# Converts Kozai mean motion to Brouwer mean motion.
# SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
function KozaiToBrouwer(eccen, incli, nKozai)
   nBrouwer = ccall( (:KozaiToBrouwer,libname) 
     , Float64
     , (Float64
     , Float64
     , Float64)
     , eccen,incli,nKozai)
   return nBrouwer
end

#############################################################################
# Converts Brouwer mean motion to Kozai mean motion.
# SGP TLE's use Kozai mean motion while SGP4/SGP4-XP TLE's use Brouwer mean motion.
function BrouwerToKozai(eccen, incli, nBrouwer)
   nKozai = ccall( (:BrouwerToKozai,libname) 
     , Float64
     , (Float64
     , Float64
     , Float64)
     , eccen,incli,nBrouwer)
   return nKozai
end

#############################################################################
# Converts a set of osculating Keplerian elements to a set of mean Keplerian elements using method 9 algorithm.
function KepOscToMean(xa_OscKep)
   xa_MeanKep = zeros(Float64, 6)
   ccall( (:KepOscToMean,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , xa_OscKep,xa_MeanKep)
   return xa_MeanKep
end

#############################################################################
# Converts an ECI position vector XYZ to geodetic latitude, longitude, and height.
function XYZToLLH(thetaG, metricPos)
   metricLLH = zeros(Float64, 3)
   ccall( (:XYZToLLH,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64})
     , thetaG,metricPos,metricLLH)
   return metricLLH
end

#############################################################################
# Converts an ECI position vector XYZ to geodetic latitude, longitude, and height at the specified time.
function XYZToLLHTime(ds50UTC, metricPos)
   metricLLH = zeros(Float64, 3)
   ccall( (:XYZToLLHTime,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,metricPos,metricLLH)
   return metricLLH
end

#############################################################################
# Converts geodetic latitude, longitude, and height to an ECI position vector XYZ.
function LLHToXYZ(thetaG, metricLLH)
   metricXYZ = zeros(Float64, 3)
   ccall( (:LLHToXYZ,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64})
     , thetaG,metricLLH,metricXYZ)
   return metricXYZ
end

#############################################################################
# Converts geodetic latitude, longitude, and height to an ECI position vector XYZ at the specified time.
function LLHToXYZTime(ds50UTC, metricLLH)
   metricXYZ = zeros(Float64, 3)
   ccall( (:LLHToXYZTime,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,metricLLH,metricXYZ)
   return metricXYZ
end

#############################################################################
# Converts EFG position and velocity vectors to ECI position and velocity vectors.
function EFGToECI(thetaG, posEFG, velEFG)
   posECI = zeros(Float64, 3)
   velECI = zeros(Float64, 3)
   ccall( (:EFGToECI,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , thetaG,posEFG,velEFG,posECI,velECI)
   return posECI, velECI
end

#############################################################################
# Converts EFG position and velocity vectors to ECI position and velocity vectors at the specified time.
function EFGToECITime(ds50UTC, posEFG, velEFG)
   posECI = zeros(Float64, 3)
   velECI = zeros(Float64, 3)
   ccall( (:EFGToECITime,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,posEFG,velEFG,posECI,velECI)
   return posECI, velECI
end

#############################################################################
# Converts ECI position and velocity vectors to EFG position and velocity vectors.
function ECIToEFG(thetaG, posECI, velECI)
   posEFG = zeros(Float64, 3)
   velEFG = zeros(Float64, 3)
   ccall( (:ECIToEFG,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , thetaG,posECI,velECI,posEFG,velEFG)
   return posEFG, velEFG
end

#############################################################################
# Converts ECI position and velocity vectors to EFG position and velocity vectors at the specified time.
function ECIToEFGTime(ds50UTC, posECI, velECI)
   posEFG = zeros(Float64, 3)
   velEFG = zeros(Float64, 3)
   ccall( (:ECIToEFGTime,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,posECI,velECI,posEFG,velEFG)
   return posEFG, velEFG
end

#############################################################################
# Converts ECR position and velocity vectors to EFG position and velocity vectors.
function ECRToEFG(polarX, polarY, posECR, velECR)
   posEFG = zeros(Float64, 3)
   velEFG = zeros(Float64, 3)
   ccall( (:ECRToEFG,libname) 
     , Nothing
     , (Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , polarX,polarY,posECR,velECR,posEFG,velEFG)
   return posEFG, velEFG
end

#############################################################################
# Converts ECR position and velocity vectors to EFG position and velocity vectors at the specified time.
function ECRToEFGTime(ds50UTC, posECR, velECR)
   posEFG = zeros(Float64, 3)
   velEFG = zeros(Float64, 3)
   ccall( (:ECRToEFGTime,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,posECR,velECR,posEFG,velEFG)
   return posEFG, velEFG
end

#############################################################################
# Converts EFG position and velocity vectors to ECR position and velocity vectors.
function EFGToECR(polarX, polarY, posEFG, velEFG)
   posECR = zeros(Float64, 3)
   velECR = zeros(Float64, 3)
   ccall( (:EFGToECR,libname) 
     , Nothing
     , (Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , polarX,polarY,posEFG,velEFG,posECR,velECR)
   return posECR, velECR
end

#############################################################################
# Converts EFG position and velocity vectors to ECR position and velocity vectors at the specified time.
function EFGToECRTime(ds50UTC, posEFG, velEFG)
   posECR = zeros(Float64, 3)
   velECR = zeros(Float64, 3)
   ccall( (:EFGToECRTime,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,posEFG,velEFG,posECR,velECR)
   return posECR, velECR
end

#############################################################################
# Converts an EFG position vector to geodetic latitude, longitude, and height.
function EFGPosToLLH(posEFG)
   metricLLH = zeros(Float64, 3)
   ccall( (:EFGPosToLLH,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , posEFG,metricLLH)
   return metricLLH
end

#############################################################################
# Converts geodetic latitude, longitude, and height to an EFG position vector.
function LLHToEFGPos(metricLLH)
   posEFG = zeros(Float64, 3)
   ccall( (:LLHToEFGPos,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , metricLLH,posEFG)
   return posEFG
end

#############################################################################
# Rotates position and velocity vectors from J2000 to coordinates of the specified date, expressed in ds50TAI.
function RotJ2KToDate(spectr, nutationTerms, ds50TAI, posJ2K, velJ2K)
   posDate = zeros(Float64, 3)
   velDate = zeros(Float64, 3)
   ccall( (:RotJ2KToDate,libname) 
     , Nothing
     , (Int32
     , Int32
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , spectr,nutationTerms,ds50TAI,posJ2K,velJ2K,posDate,velDate)
   return posDate, velDate
end

#############################################################################
# Rotates position and velocity vectors from coordinates of date to J2000.
function RotDateToJ2K(spectr, nutationTerms, ds50TAI, posDate, velDate)
   posJ2K = zeros(Float64, 3)
   velJ2K = zeros(Float64, 3)
   ccall( (:RotDateToJ2K,libname) 
     , Nothing
     , (Int32
     , Int32
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , spectr,nutationTerms,ds50TAI,posDate,velDate,posJ2K,velJ2K)
   return posJ2K, velJ2K
end

#############################################################################
# Computes the Sun and Moon position at the specified time.
function CompSunMoonPos(ds50ET)
   uvecSun = zeros(Float64, 3)
   sunVecMag = zeros(Float64, 1)
   uvecMoon = zeros(Float64, 3)
   moonVecMag = zeros(Float64, 1)
   ccall( (:CompSunMoonPos,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ds50ET,uvecSun,sunVecMag,uvecMoon,moonVecMag)
   return uvecSun, sunVecMag[1], uvecMoon, moonVecMag[1]
end

#############################################################################
# Computes the Sun position at the specified time.
function CompSunPos(ds50ET)
   uvecSun = zeros(Float64, 3)
   sunVecMag = zeros(Float64, 1)
   ccall( (:CompSunPos,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64})
     , ds50ET,uvecSun,sunVecMag)
   return uvecSun, sunVecMag[1]
end

#############################################################################
# Computes the Moon position at the specified time.
function CompMoonPos(ds50ET)
   uvecMoon = zeros(Float64, 3)
   moonVecMag = zeros(Float64, 1)
   ccall( (:CompMoonPos,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64})
     , ds50ET,uvecMoon,moonVecMag)
   return uvecMoon, moonVecMag[1]
end

#############################################################################
# This function is intended for future use.  No information is currently available.
# This function is intended for future use.  No information is currently available.
function AstroConvFrTo(xf_Conv, frArr)
   toArr = zeros(Float64, 128)
   ccall( (:AstroConvFrTo,libname) 
     , Nothing
     , (Int32
     , Ref{Float64}
     , Ref{Float64})
     , xf_Conv,frArr,toArr)
   return toArr
end

#############################################################################
# Converts right ascension and declination to vector triad LAD in topocentric equatorial coordinate system.
function RADecToLAD(ra, dec)
   l = zeros(Float64, 3)
   a_tilde = zeros(Float64, 3)
   d_tilde = zeros(Float64, 3)
   ccall( (:RADecToLAD,libname) 
     , Nothing
     , (Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ra,dec,l,a_tilde,d_tilde)
   return l, a_tilde, d_tilde
end

#############################################################################
# Converts azimuth and elevation to vector triad LAD in topocentric horizontal coordinate system.
function AzElToLAD(az, el)
   lh = zeros(Float64, 3)
   ah = zeros(Float64, 3)
   dh = zeros(Float64, 3)
   ccall( (:AzElToLAD,libname) 
     , Nothing
     , (Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , az,el,lh,ah,dh)
   return lh, ah, dh
end

#############################################################################
# Converts satellite ECI position/velocity vectors and sensor location to topocentric components.
# The xa_topo array has the following structure:
# [0]: Resulting right ascension (RA) (deg)
# [1]: Declination (deg)
# [2]: Azimuth (deg)
# [3]: Elevation (deg)
# [4]: Range (km)
# [5]: RAdot (first derivative of right ascension) (deg/s)
# [6]: DecDot (first derivative of declination) (deg/s)
# [7]: AzDot (first derivative of azimuth) (deg/s)
# [8]: ElDot (first derivative of elevation) (deg/s)
# [9]: RangeDot (first derivative of range) (km/s)   
function ECIToTopoComps(theta, lat, senPos, satPos, satVel)
   xa_topo = zeros(Float64, 10)
   ccall( (:ECIToTopoComps,libname) 
     , Nothing
     , (Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , theta,lat,senPos,satPos,satVel,xa_topo)
   return xa_topo
end

#############################################################################
# Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
function RaDecToAzEl(thetaG, lat, lon, ra, dec)
   az = zeros(Float64, 1)
   el = zeros(Float64, 1)
   ccall( (:RaDecToAzEl,libname) 
     , Nothing
     , (Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , thetaG,lat,lon,ra,dec,az,el)
   return az[1], el[1]
end

#############################################################################
# Converts right ascension and declination in the topocentric reference frame to Azimuth/Elevation in the local horizon reference frame.
function RaDecToAzElTime(ds50UTC, lat, lon, ra, dec)
   az = zeros(Float64, 1)
   el = zeros(Float64, 1)
   ccall( (:RaDecToAzElTime,libname) 
     , Nothing
     , (Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,lat,lon,ra,dec,az,el)
   return az[1], el[1]
end

#############################################################################
# Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
function AzElToRaDec(thetaG, lat, lon, az, el)
   ra = zeros(Float64, 1)
   dec = zeros(Float64, 1)
   ccall( (:AzElToRaDec,libname) 
     , Nothing
     , (Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , thetaG,lat,lon,az,el,ra,dec)
   return ra[1], dec[1]
end

#############################################################################
# Converts Azimuth/Elevation in the local horizon reference frame to Right ascension/Declination in the topocentric reference frame
function AzElToRaDecTime(ds50UTC, lat, lon, az, el)
   ra = zeros(Float64, 1)
   dec = zeros(Float64, 1)
   ccall( (:AzElToRaDecTime,libname) 
     , Nothing
     , (Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,lat,lon,az,el,ra,dec)
   return ra[1], dec[1]
end

#############################################################################
# Converts full state RAE (range, az, el, and their rates) to full state ECI (position and velocity)
# The xa_rae array has the following structure:
# [0]: Range (km)
# [1]: Azimuth (deg)
# [2]: Elevation (deg)
# [3]: Range Dot (km/s)
# [4]: Azimuth Dot (deg/s)
# [5]: Elevation Dot (deg/s)
function RAEToECI(theta, astroLat, xa_rae, senPos)
   satPos = zeros(Float64, 3)
   satVel = zeros(Float64, 3)
   ccall( (:RAEToECI,libname) 
     , Nothing
     , (Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , theta,astroLat,xa_rae,senPos,satPos,satVel)
   return satPos, satVel
end

#############################################################################
# Computes initial values for the SGP drag term nDot and the SGP4 drag term BSTAR based upon eccentricity and semi-major axis.
function GetInitialDrag(semiMajorAxis, eccen)
   nDot = zeros(Float64, 1)
   bstar = zeros(Float64, 1)
   ccall( (:GetInitialDrag,libname) 
     , Nothing
     , (Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , semiMajorAxis,eccen,nDot,bstar)
   return nDot[1], bstar[1]
end

#############################################################################
# Converts covariance matrix PTW to UVW.
# PTW = P: TxW, T: along velocity direction, W: pos x vel.
# UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
function CovMtxPTWToUVW(pos, vel, ptwCovMtx)
   uvwCovMtx = zeros(Float64, 6, 6)
   ccall( (:CovMtxPTWToUVW,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,ptwCovMtx,uvwCovMtx)
   return uvwCovMtx
end

#############################################################################
# Converts covariance matrix UVW to PTW.
# PTW = P: TxW, T: along velocity direction, W: pos x vel.
# UVW = U: radial direction, V: in plane, perpendicular to U, W: pos x vel.
function CovMtxUVWToPTW(pos, vel, uvwCovMtx)
   ptwCovMtx = zeros(Float64, 6, 6)
   ccall( (:CovMtxUVWToPTW,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,uvwCovMtx,ptwCovMtx)
   return ptwCovMtx
end

#############################################################################
# Computes Earth/Sensor/Earth Limb and Earth/Sensor/Satellite angles.
function EarthObstructionAngles(earthLimb, satECI, senECI)
   earthSenLimb = zeros(Float64, 1)
   earthSenSat = zeros(Float64, 1)
   satEarthSen = zeros(Float64, 1)
   ccall( (:EarthObstructionAngles,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , earthLimb,satECI,senECI,earthSenLimb,earthSenSat,satEarthSen)
   return earthSenLimb[1], earthSenSat[1], satEarthSen[1]
end

#############################################################################
# Determines if a point in space is sunlit at the input time ds50ET
function IsPointSunlit(ds50ET, ptEci)
   yesNo = ccall( (:IsPointSunlit,libname) 
     , Int32
     , (Float64
     , Ref{Float64})
     , ds50ET,ptEci)
   return yesNo
end

#############################################################################
# Rotates Right Ascension and Declination to specified epoch
function RotRADecl(nutationTerms, dir, ds50UTCIn, raIn, declIn, ds50UTCOut)
   raOut = zeros(Float64, 1)
   declOut = zeros(Float64, 1)
   ccall( (:RotRADecl,libname) 
     , Nothing
     , (Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , nutationTerms,dir,ds50UTCIn,raIn,declIn,ds50UTCOut,raOut,declOut)
   return raOut[1], declOut[1]
end

#############################################################################
# Rotates Right Ascension and Declination from TEME of Date to MEME of the specified year of equinox
function RotRADec_DateToEqnx(nutationTerms, yrOfEqnx, ds50UTCIn, raIn, declIn)
   raOut = zeros(Float64, 1)
   declOut = zeros(Float64, 1)
   errCode = ccall( (:RotRADec_DateToEqnx,libname) 
     , Int32
     , (Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , nutationTerms,yrOfEqnx,ds50UTCIn,raIn,declIn,raOut,declOut)
   return errCode, raOut[1], declOut[1]
end

#############################################################################
# Rotates Right Ascension and Declination from MEME of the specified year of equinox to TEME of Date
function RotRADec_EqnxToDate(nutationTerms, yrOfEqnx, ds50UTCIn, raIn, declIn)
   raOut = zeros(Float64, 1)
   declOut = zeros(Float64, 1)
   errCode = ccall( (:RotRADec_EqnxToDate,libname) 
     , Int32
     , (Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , nutationTerms,yrOfEqnx,ds50UTCIn,raIn,declIn,raOut,declOut)
   return errCode, raOut[1], declOut[1]
end

#############################################################################
# Rotates the Equinoctial covariance to UVW
# Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
# The n terms must be normalized by n
# The input position, velocity and covariance must all have the same reference equator and equinox.
function CovMtxEqnxToUVW(pos, vel, covMtxEqnx)
   covMtxUVW = zeros(Float64, 6, 6)
   ccall( (:CovMtxEqnxToUVW,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,covMtxEqnx,covMtxUVW)
   return covMtxUVW
end

#############################################################################
# Rotates the UVW covariance to Equinoctial
# Note: This method uses the global Earth constants so make sure that you select the right Earth model by calling the EnvConst/EnvSetGeoIdx method
# The n terms are normalized by n
# The input position, velocity reference equator and equinox determine the output covariance reference frame.
function CovMtxUVWToEqnx(pos, vel, covMtxUVW)
   covMtxEqnx = zeros(Float64, 6, 6)
   ccall( (:CovMtxUVWToEqnx,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,covMtxUVW,covMtxEqnx)
   return covMtxEqnx
end

#############################################################################
# Rotates the ECI covariance to UVW
# Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
function CovMtxECIToUVW(pos, vel, covMtxECI)
   covMtxUVW = zeros(Float64, 6, 6)
   ccall( (:CovMtxECIToUVW,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,covMtxECI,covMtxUVW)
   return covMtxUVW
end

#############################################################################
# Rotates the UVW covariance to ECI
# Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
function CovMtxUVWToECI(pos, vel, covMtxUVW)
   covMtxECI = zeros(Float64, 6, 6)
   ccall( (:CovMtxUVWToECI,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,covMtxUVW,covMtxECI)
   return covMtxECI
end

#############################################################################
# Converts covariance matrix ECI to EFG.
# EFG = Earth Fixed Greenwich
# ECI = Earth Centered Inertial - need to determine TEME or J2K
function CovMtxECIToEFG(thetaG, covECI)
   covEFG = zeros(Float64, 6, 6)
   ccall( (:CovMtxECIToEFG,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64})
     , thetaG,covECI,covEFG)
   return covEFG
end

#############################################################################
# Converts covariance matrix EFG to ECI.
# EFG = Earth Fixed Greenwich
# ECI = Earth Centered Inertial - need to determine TEME or J2K
function CovMtxEFGToECI(thetaG, covEFG)
   covECI = zeros(Float64, 6, 6)
   ccall( (:CovMtxEFGToECI,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64})
     , thetaG,covEFG,covECI)
   return covECI
end

#############################################################################
# Converts 6x6 symmetric Matrix/2D array to 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix)
function Mtx6x6ToLTA21(symMtx6x6)
   lta21 = zeros(Float64, 21)
   ccall( (:Mtx6x6ToLTA21,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , symMtx6x6,lta21)
   return lta21
end

#############################################################################
# Converts 1D array of 21 elements (lower triangular of a 6x6 symmetric matrix) to a 6x6 symmetric matrix
function LTA21ToMtx6x6(lta21)
   symMtx6x6 = zeros(Float64, 6, 6)
   ccall( (:LTA21ToMtx6x6,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , lta21,symMtx6x6)
   return symMtx6x6
end

#############################################################################
# Converts 9x9 symmetric Matrix/2D array to 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix)
function Mtx9x9ToLTA45(symMtx9x9)
   lta45 = zeros(Float64, 45)
   ccall( (:Mtx9x9ToLTA45,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , symMtx9x9,lta45)
   return lta45
end

#############################################################################
# Converts 1D array of 45 elements (lower triangular of a 9x9 symmetric matrix) to a 9x9 symmetric matrix
function LTA45ToMtx9x9(lta45)
   symMtx9x9 = zeros(Float64, 9, 9)
   ccall( (:LTA45ToMtx9x9,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , lta45,symMtx9x9)
   return symMtx9x9
end

#############################################################################
# Propagate xyzDate covariance forward to the propagation time
function PropCovFrState(rms, consider, stateArray, cov)
   propCov = zeros(Float64, 6, 6)
   ccall( (:PropCovFrState,libname) 
     , Nothing
     , (Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , rms,consider,stateArray,cov,propCov)
   return propCov
end

#############################################################################
# Rotates the ECI covariance to UVW
# Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
function CovMtxECIToEqnx(pos, vel, covMtxECI)
   covMtxEqnx = zeros(Float64, 9, 9)
   ccall( (:CovMtxECIToEqnx,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,covMtxECI,covMtxEqnx)
   return covMtxEqnx
end

#############################################################################
# Rotates the UVW covariance to ECI
# Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
function CovMtxEqnxToECI9x9(pos, vel, covEqnx)
   covMtxECI = zeros(Float64, 9, 9)
   ccall( (:CovMtxEqnxToECI9x9,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,covEqnx,covMtxECI)
   return covMtxECI
end

#############################################################################
# Rotates the UVW covariance to ECI
# Note: This method uses the global Earth constants so make sure that you select the proper Earth model by calling the EnvConst/EnvSetGeoIdx method
function CovMtxEqnxToUVW9x9(pos, vel, covEqnx)
   covMtxUVW = zeros(Float64, 9, 9)
   ccall( (:CovMtxEqnxToUVW9x9,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , pos,vel,covEqnx,covMtxUVW)
   return covMtxUVW
end

#############################################################################
# Update (propagate) covariance to a future time with a supplied covariance, state transition matrix
# consider parameter and RMS. Consider parameter is applied to the drag term only.
# Full covariance matrix is multiplied by RMS squared.  State transition matrix can be obtained from 
# SpProp.SpGetStateMtx or supplying your own. State matrix, input and output covariance must be in 
# matching coordinate systems.
function CovMtxUpdate(rmsIn, consider, cov, stateArray)
   propCov = zeros(Float64, 6, 6)
   ccall( (:CovMtxUpdate,libname) 
     , Nothing
     , (Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , rmsIn,consider,cov,stateArray,propCov)
   return propCov
end

#############################################################################
# Annual Aberration calculated using equations from Astronomical Algorithms, Jean Meeus, 2nd Edition with Corrections as of June 15, 2005
function AberrationAnnual(ra, decl, dS50UTC)
   raDelta = zeros(Float64, 1)
   decDelta = zeros(Float64, 1)
   ccall( (:AberrationAnnual,libname) 
     , Nothing
     , (Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , ra,decl,dS50UTC,raDelta,decDelta)
   return raDelta[1], decDelta[1]
end

#############################################################################
# Diurnal Aberration is due to the rotation of the Earth about it's axis. This is only valid for ground based sensors.
# Diurnal Aberration calculated using equations from Explanatory Supplement to the Astronomical Almanac 3rd Edition, 2013
function AberrationDiurnal(ra, decl, dS50UTC, senPos)
   raDelta = zeros(Float64, 1)
   decDelta = zeros(Float64, 1)
   ccall( (:AberrationDiurnal,libname) 
     , Nothing
     , (Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ra,decl,dS50UTC,senPos,raDelta,decDelta)
   return raDelta[1], decDelta[1]
end

#############################################################################
# Sets JPL parameters
# Notes: Set JPL parameters will be used by SP, SPG4-XP, and anything that requires access to JPL data
function JplSetParameters(jplFile, ds50Start, ds50Stop)
   ccall( (:JplSetParameters,libname) 
     , Nothing
     , (Cstring
     , Float64
     , Float64)
     , jplFile,ds50Start,ds50Stop)
end

#############################################################################
# Gets JPL parameters
function JplGetParameters()
   jplFile = " "^512
   ds50Start = zeros(Float64, 1)
   ds50Stop = zeros(Float64, 1)
   ccall( (:JplGetParameters,libname) 
     , Nothing
     , (Cstring
     , Ref{Float64}
     , Ref{Float64})
     , jplFile,ds50Start,ds50Stop)
   return jplFile, ds50Start[1], ds50Stop[1]
end

#############################################################################
# Resets JPL parameters & removes JPL ephemeris data
function JplReset()
   ccall( (:JplReset,libname) 
     , Nothing
     , ())
end

#############################################################################
# Computes various Sun and Moon vectors base on loaded JPL data at the specified time.
# Note: if JPL data isn't loaded or available, all output parameters are set to zero
function JplCompSunMoonVec(ds50UTC)
   uvecSun = zeros(Float64, 3)
   sunVecMag = zeros(Float64, 1)
   uvecMoon = zeros(Float64, 3)
   moonVecMag = zeros(Float64, 1)
   ccall( (:JplCompSunMoonVec,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,uvecSun,sunVecMag,uvecMoon,moonVecMag)
   return uvecSun, sunVecMag[1], uvecMoon, moonVecMag[1]
end

#############################################################################
# Computes Sun and Moon position vectors base on loaded JPL data at the specified time.
# Note: if JPL data isn't loaded or available, all output parameters are set to zero
function JplCompSunMoonPos(ds50UTC)
   sunVec = zeros(Float64, 3)
   moonVec = zeros(Float64, 3)
   ccall( (:JplCompSunMoonPos,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,sunVec,moonVec)
   return sunVec, moonVec
end

#############################################################################
# Removes the JPL ephemeris from memory
function RemoveJpl()
   ccall( (:RemoveJpl,libname) 
     , Nothing
     , ())
end

#############################################################################
# Rotates position and velocity vectors from TEME of Epoch to TEME of Date
function TemeEpochToDate(nutationTerms, epochDs50TAI, dateDs50TAI, posEpoch, velEpoch)
   posDate = zeros(Float64, 3)
   velDate = zeros(Float64, 3)
   ccall( (:TemeEpochToDate,libname) 
     , Nothing
     , (Int32
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , nutationTerms,epochDs50TAI,dateDs50TAI,posEpoch,velEpoch,posDate,velDate)
   return posDate, velDate
end

#############################################################################

end #of module AstroFuncDll
# ========================= End of auto generated code ==========================
