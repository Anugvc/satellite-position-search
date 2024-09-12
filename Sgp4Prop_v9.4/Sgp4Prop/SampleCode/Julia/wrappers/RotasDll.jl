# This wrapper file was generated automatically by the GenDllWrappers program.
module RotasDll

if Sys.iswindows()
  libname="Rotas"
else
  libname="librotas"
end

# Export Constant Variables
export LTC_DONTAPPLY
export LTC_ANALYTIC
export LTC_EXACT
export RESCOMPMETH_DELTA427M
export RESCOMPMETH_SPADOC4
export XA_OBPV_POSX
export XA_OBPV_POSY
export XA_OBPV_POSZ
export XA_OBPV_VELX
export XA_OBPV_VELY
export XA_OBPV_VELZ
export XA_OBPV_TIME
export XA_OBPV_END
export XA_OBPV_SIZE
export XA_SATPV_POSX
export XA_SATPV_POSY
export XA_SATPV_POSZ
export XA_SATPV_VELX
export XA_SATPV_VELY
export XA_SATPV_VELZ
export XA_SATPV_END
export XA_SATPV_SIZE
export XA_OBSRES_AZ
export XA_OBSRES_EL
export XA_OBSRES_RANGE
export XA_OBSRES_HEIGHT
export XA_OBSRES_BETA
export XA_OBSRES_DELTAT
export XA_OBSRES_VMAG
export XA_OBSRES_AGE
export XA_OBSRES_SU
export XA_OBSRES_REVNUM
export XA_OBSRES_RNGRATE
export XA_OBSRES_ASTAT
export XA_OBSRES_OBSTYPE
export XA_OBSRES_SATANOM
export XA_OBSRES_SATELEV
export XA_OBSRES_SATCAT
export XA_OBSRES_OBSTIME
export XA_OBSRES_OBSAZ
export XA_OBSRES_OBSEL
export XA_OBSRES_VELANG
export XA_OBSRES_ANGMOM
export XA_OBSRES_RA
export XA_OBSRES_DEC
export XA_OBSRES_POSX
export XA_OBSRES_POSY
export XA_OBSRES_POSZ
export XA_OBSRES_VELX
export XA_OBSRES_VELY
export XA_OBSRES_VELZ
export XA_OBSRES_OBSRNG
export XA_OBSRES_OBSRA
export XA_OBSRES_OBSDEC
export XA_OBSRES_LON
export XA_OBSRES_POSU
export XA_OBSRES_POSV
export XA_OBSRES_POSW
export XA_OBSRES_CHI
export XA_OBSRES_ANGSEP
export XA_OBSRES_TDOA
export XA_OBSRES_FDOA
export XA_OBSRES_SIZE
export XF_RP_MODE
export XF_RP_GROSSBETA
export XF_RP_BETALIM
export XF_RP_DELTATLIM
export XF_RP_DELTAHLIM
export XF_RP_ASTAT2MULT
export XF_RP_PRTFLAG
export XF_RP_RETAGFLAG
export XF_RP_LTC
export XF_RP_NUMASSOC
export XF_RP_DIAGNOSTIC
export XF_RP_PRTCOV
export XF_RP_TRACKFLAG
export XF_RP_REMRETAG
export XF_RP_DEBIAS
export XF_RP_RESCOMPMETH
export XA_RT_PARMS_GROSSBETA
export XA_RT_PARMS_BETALIM
export XA_RT_PARMS_DELTATLIM
export XA_RT_PARMS_DELTAHLIM
export XA_RT_PARMS_ASTAT2MULT
export XA_RT_PARMS_LTC
export XA_RT_PARMS_DEBIAS
export XA_RT_PARMS_RESCOMPMETH
export XA_RT_PARMS_ANNUALAB
export XA_RT_PARMS_DIURNALAB
export XA_RT_PARMS_SIZE
export XA_ASSOCMULTP_BETA_SYN
export XA_ASSOCMULTP_DELTAT_SYN
export XA_ASSOCMULTP_DELTAH_SYN
export XA_ASSOCMULTP_BETA_DS
export XA_ASSOCMULTP_DELTAT_DS
export XA_ASSOCMULTP_DELTAH_DS
export XA_ASSOCMULTP_BETA_DCY
export XA_ASSOCMULTP_DELTAT_DCY
export XA_ASSOCMULTP_DELTAH_DCY
export XA_ASSOCMULTP_BETA_RTN
export XA_ASSOCMULTP_DELTAT_RTN
export XA_ASSOCMULTP_DELTAH_RTN
export XA_ASSOCMULTP_SIZE

# Export Functions
export RotasInit
export RotasGetInfo
export RotasLoadFile
export RotasLoadFileAll
export RotasLoadCard
export RotasSaveFile
export RotasGetPCard
export RotasGetPAll
export RotasSetPAll
export RotasGetPField
export RotasSetPField
export RotasGetAssocMultipliers
export RotasSetAssocMultipliers
export RotasResetAll
export RotasHasASTAT
export RotasHasASTAT_MT
export RotasHasASTATMultp_MT
export RotasComputeObsResiduals
export RotasComputeObsResiduals_MT
export RotasComputeObsResidualsMultp_MT
export RotasComputeTrackResiduals
export RotasComputeTrackResiduals_MT
export RotasCompObResDirect
export RotasGetRetagObsFile
export RotasSetRetagObsFile

# Different light-time correction (LTC) options
# Don't apply LTC
const LTC_DONTAPPLY  = 0;

# Apply LTC analytically
const LTC_ANALYTIC   = 1;

# Apply LTC exactly
const LTC_EXACT      = 2;


# Residual computation methods
# Delta/427M method
const RESCOMPMETH_DELTA427M = 1;

# Spadoc 4 method
const RESCOMPMETH_SPADOC4   = 2;


# PV Ob data
# ob ECI position X (km) in TEME of Date
const XA_OBPV_POSX     =  0;

# ob ECI position Y (km) in TEME of Date
const XA_OBPV_POSY     =  1;

# ob ECI position Z (km) in TEME of Date
const XA_OBPV_POSZ     =  2;

# ob ECI velocity X (km/sec) in TEME of Date
const XA_OBPV_VELX     =  3;

# ob ECI velocity Y (km/sec) in TEME of Date
const XA_OBPV_VELY     =  4;

# ob ECI velocity Z (km/sec) in TEME of Date
const XA_OBPV_VELZ     =  5;

# ob time in days since 1950, UTC
const XA_OBPV_TIME     =  6;


# the last available index
const XA_OBPV_END      = 15;

const    XA_OBPV_SIZE     = 16;

# Satellite state data
# satellite ECI position X (km) in TEME of Date
const XA_SATPV_POSX    =  0;

# satellite ECI position Y (km) in TEME of Date
const XA_SATPV_POSY    =  1;

# satellite ECI position Z (km) in TEME of Date
const XA_SATPV_POSZ    =  2;

# satellite ECI velocity X (km/sec) in TEME of Date
const XA_SATPV_VELX    =  3;

# satellite ECI velocity Y (km/sec) in TEME of Date
const XA_SATPV_VELY    =  4;

# satellite ECI velocity Z (km/sec) in TEME of Date
const XA_SATPV_VELZ    =  5;


# the last available index
const XA_SATPV_END     = 15;

const    XA_SATPV_SIZE    = 16;


# Obs residual data field indexes
# Azimuth residual (deg)
const XA_OBSRES_AZ     =  0;

# Elevation residual (deg)
const XA_OBSRES_EL     =  1;

# Range residual (km)
const XA_OBSRES_RANGE  =  2;

# Height residual (deg)
const XA_OBSRES_HEIGHT =  3;

# Beta residual (deg). asin(dot(priU, secW))
const XA_OBSRES_BETA   =  4;

# Delta T residual (min)
const XA_OBSRES_DELTAT =  5;

# Vector magnitude (km)
const XA_OBSRES_VMAG   =  6;

# Time since epoch (days)
const XA_OBSRES_AGE    =  7;

# True argument of latitude (deg)
const XA_OBSRES_SU     =  8;

# Revolution number
const XA_OBSRES_REVNUM =  9;

# Range rate residual (km/sec)
const XA_OBSRES_RNGRATE= 10;

# Observation ASTAT
const XA_OBSRES_ASTAT  = 11;

# Observation type
const XA_OBSRES_OBSTYPE= 12;

# Satellite true anomaly (deg)
const XA_OBSRES_SATANOM= 13;

# Satellite elevation (deg)
const XA_OBSRES_SATELEV= 14;

# Satellite maintenance category
const XA_OBSRES_SATCAT = 15;

# Obs time in ds50UTC
const XA_OBSRES_OBSTIME= 16;

# Obs azimuth (deg)
const XA_OBSRES_OBSAZ  = 17;

# Obs elevation (deg)
const XA_OBSRES_OBSEL  = 18;

# Velocity angle residual (deg)
const XA_OBSRES_VELANG = 19;

# Angular momentum residual (deg).  acos(dot(priW, secW))
const XA_OBSRES_ANGMOM = 20;

# Right ascension residual (deg) (for ob types 5, 9, 19)
const XA_OBSRES_RA     = 21;

# Declination residual (deg) (for ob types 5, 9, 19)
const XA_OBSRES_DEC    = 22;

# Delta X position (km)
const XA_OBSRES_POSX   = 23;

# Delta Y position (km)
const XA_OBSRES_POSY   = 24;

# Delta Z position (km)
const XA_OBSRES_POSZ   = 25;

# Delta X velocity (km/sec)
const XA_OBSRES_VELX   = 26;

# Delta Y velocity (km/sec)
const XA_OBSRES_VELY   = 27;

# Delta Z velocity (km/sec)
const XA_OBSRES_VELZ   = 28;

# Angle only - Obs computed range (km)
const XA_OBSRES_OBSRNG = 29;


# Obs right ascension (deg)
const XA_OBSRES_OBSRA  = 30;

# Obs declination (deg)
const XA_OBSRES_OBSDEC = 31;

# Delta east longitude (deg)
const XA_OBSRES_LON    = 32;


# Delta U position (km)
const XA_OBSRES_POSU   = 33;

# Delta V position (km)
const XA_OBSRES_POSV   = 34;

# Delta W position (km)
const XA_OBSRES_POSW   = 35;

# 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
const XA_OBSRES_CHI    = 36;


# Angular Separation between Obs and State (Deg)
const XA_OBSRES_ANGSEP = 38;

# TDOA Time Difference of Arrival residual (nano-second)
const XA_OBSRES_TDOA   = 39;

# FDOA Frequency Differecnce of Arrival (Hz)
const XA_OBSRES_FDOA   = 40;


const    XA_OBSRES_SIZE   =100;           

# Indexes of Rotas Control parameter fields (Rotas P-Card)
# Rotas processing mode
const XF_RP_MODE       =  1;

# Gross Beta limit (deg)
const XF_RP_GROSSBETA  =  2;

# ASTAT 0 Beta limit (deg)
const XF_RP_BETALIM    =  3;

# ASTAT 0 delta-t limit (min)
const XF_RP_DELTATLIM  =  4;

# ASTAT 0 delta-height limit (km)
const XF_RP_DELTAHLIM  =  5;

# ASTAT 2 multiplier
const XF_RP_ASTAT2MULT =  6;

# Residual print flag
const XF_RP_PRTFLAG    =  7;

# Retag ASTAT 1 ob flag
const XF_RP_RETAGFLAG  =  8;

# Light-time correction flag
const XF_RP_LTC        =  9;

# Maximum number of ALLEL assoc's to compute
const XF_RP_NUMASSOC   = 10;

# Diagnostic print flag
const XF_RP_DIAGNOSTIC = 11;

# Covariance print flag
const XF_RP_PRTCOV     = 12;

# Perform track processing
const XF_RP_TRACKFLAG  = 13;

# Retagged ob are removed from further association
const XF_RP_REMRETAG   = 14;

# Debias ob flag
const XF_RP_DEBIAS     = 15;

# Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
const XF_RP_RESCOMPMETH= 16;


# ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
# Gross Beta limit (deg)
const XA_RT_PARMS_GROSSBETA   =  1;

# ASTAT 0 Beta limit (deg)
const XA_RT_PARMS_BETALIM     =  2;

# ASTAT 0 delta-t limit (min)
const XA_RT_PARMS_DELTATLIM   =  3;

# ASTAT 0 delta-height limit (km)
const XA_RT_PARMS_DELTAHLIM   =  4;

# ASTAT 2 multiplier
const XA_RT_PARMS_ASTAT2MULT  =  5;

# Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
const XA_RT_PARMS_LTC         =  6;

# debias ob flag: 0= do not debias, 1= debias ob
const XA_RT_PARMS_DEBIAS      =  7;

# Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
const XA_RT_PARMS_RESCOMPMETH =  8;

# Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
const XA_RT_PARMS_ANNUALAB	   =  9;

# Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction
const XA_RT_PARMS_DIURNALAB   = 10;

const    XA_RT_PARMS_SIZE        = 16;

# ROTAS Association Multipliers
# ASTAT 1 Beta multiplier for Synchronous
const XA_ASSOCMULTP_BETA_SYN   =  0;

# ASTAT 1 Delta-t multiplier for Synchronous
const XA_ASSOCMULTP_DELTAT_SYN =  1;

# ASTAT 1 Delta-height multiplier for Synchronous
const XA_ASSOCMULTP_DELTAH_SYN =  2;

# ASTAT 1 Beta multiplier for Deep-space
const XA_ASSOCMULTP_BETA_DS    =  3;

# ASTAT 1 Delta-t multiplier for Deep-space
const XA_ASSOCMULTP_DELTAT_DS  =  4;

# ASTAT 1 Delta-height multiplier for Deep-space
const XA_ASSOCMULTP_DELTAH_DS  =  5;

# ASTAT 1 Beta multiplier for Decaying
const XA_ASSOCMULTP_BETA_DCY   =  6;

# ASTAT 1 Delta-t multiplier for Decaying
const XA_ASSOCMULTP_DELTAT_DCY =  7;

# ASTAT 1 Delta-height multiplier for Decaying
const XA_ASSOCMULTP_DELTAH_DCY =  8;

# ASTAT 1 Beta multiplier for Routine
const XA_ASSOCMULTP_BETA_RTN   =  9;

# ASTAT 1 Delta-t multiplier for Routine
const XA_ASSOCMULTP_DELTAT_RTN = 10;

# ASTAT 1 Delta-height multiplier for Routine
const XA_ASSOCMULTP_DELTAH_RTN = 11;


const    XA_ASSOCMULTP_SIZE       = 12;


#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Rotas DLL for use in the program
function RotasInit(apAddr)
   errCode = ccall( (:RotasInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Rotas DLL. 
# The information is placed in the string parameter passed in.
function RotasGetInfo()
   infoStr = " "^128
   ccall( (:RotasGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads Rotas-related parameters from an input text file
function RotasLoadFile(rotasInputFile)
   errCode = ccall( (:RotasLoadFile,libname) 
     , Int32
     , (Cstring,)
     , rotasInputFile)
   return errCode
end

#############################################################################
# Loads Rotas control parameters and all Rotas related data (environment, time, elsets, sensors, obs) from an input text file
function RotasLoadFileAll(rotasInputFile)
   errCode = ccall( (:RotasLoadFileAll,libname) 
     , Int32
     , (Cstring,)
     , rotasInputFile)
   return errCode
end

#############################################################################
# Loads a single Rotas-typed card
function RotasLoadCard(card)
   errCode = ccall( (:RotasLoadCard,libname) 
     , Int32
     , (Cstring,)
     , card)
   return errCode
end

#############################################################################
# Saves current Rotas settings to a file
function RotasSaveFile(rotasFile, saveMode, saveForm)
   errCode = ccall( (:RotasSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , rotasFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Builds and returns the Rotas P-Card from the current Rotas settings
function RotasGetPCard()
   rotasPCard = " "^512
   ccall( (:RotasGetPCard,libname) 
     , Nothing
     , (Cstring,)
     , rotasPCard)
   return rotasPCard
end

#############################################################################
# Retrieves all Rotas control parameters with a single function call
function RotasGetPAll()
   rotasMode = " "^5
   grossBeta = zeros(Float64, 1)
   betaLimit = zeros(Float64, 1)
   deltaTLimit = zeros(Float64, 1)
   deltaHLimit = zeros(Float64, 1)
   astat2Mult = zeros(Int32, 1)
   prtFlag = zeros(Int32, 1)
   retagFlag = zeros(Int32, 1)
   ltcFlag = zeros(Int32, 1)
   maxNumAssoc = zeros(Int32, 1)
   debiasFlag = zeros(Int32, 1)
   diagMode = zeros(Int32, 1)
   covPrtFlag = zeros(Int32, 1)
   isTrackMode = zeros(Int32, 1)
   remRetagObs = zeros(Int32, 1)
   extArr = zeros(Float64, 128)
   ccall( (:RotasGetPAll,libname) 
     , Nothing
     , (Cstring
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64})
     , rotasMode,grossBeta,betaLimit,deltaTLimit,deltaHLimit,astat2Mult,prtFlag,retagFlag,ltcFlag,
         maxNumAssoc,debiasFlag,diagMode,covPrtFlag,isTrackMode,remRetagObs,extArr)
   return rotasMode, grossBeta[1], betaLimit[1], deltaTLimit[1], deltaHLimit[1], Int64(astat2Mult[1]), Int64(prtFlag[1]), Int64(retagFlag[1]), Int64(ltcFlag[1]), 
         Int64(maxNumAssoc[1]), Int64(debiasFlag[1]), Int64(diagMode[1]), Int64(covPrtFlag[1]), Int64(isTrackMode[1]), Int64(remRetagObs[1]), extArr
end

#############################################################################
# Sets all Rotas control parameters with a single function call
function RotasSetPAll(rotasMode, grossBeta, betaLimit, deltaTLimit, deltaHLimit, astat2Mult, prtFlag, retagFlag, ltcFlag, maxNumAssoc, debiasFlag, diagMode, covPrtFlag, isTrackMode, remRetagObs, extArr)
   ccall( (:RotasSetPAll,libname) 
     , Nothing
     , (Cstring
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Ref{Float64})
     , rotasMode,grossBeta,betaLimit,deltaTLimit,deltaHLimit,astat2Mult,prtFlag,retagFlag,ltcFlag,
         maxNumAssoc,debiasFlag,diagMode,covPrtFlag,isTrackMode,remRetagObs,extArr)
end

#############################################################################
# Retrieves the value of a specified Rotas control parameter (P-card field)
# 
# The table below shows the values for the xf_RP parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
#  1  Rotas processing mode
#  2  Gross Beta limit (deg)
#  3  ASTAT 0 Beta limit (deg)
#  4  ASTAT 0 delta-t limit (min)
#  5  ASTAT 0 delta-height limit (km)
#  6  ASTAT 2 multiplier
#  7  Residual print flag
#  8  Retag ASTAT 1 ob flag
#  9  Light-time correction flag
# 10  Maximum number of ALLEL assoc's to compute
# 11  Diagnostic print flag
# 12  Covariance print flag
# 13  Perform track processing
# 14  Retagged ob are removed from further association
# 15  Debias ob flag
# 
function RotasGetPField(xf_RP)
   retVal = " "^512
   ccall( (:RotasGetPField,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_RP,retVal)
   return retVal
end

#############################################################################
#  Sets the value of a specified Rotas control parameter (P-card field)
# See RotasGetPField for values for the xf_RP parameter.
function RotasSetPField(xf_RP, valueStr)
   ccall( (:RotasSetPField,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_RP,valueStr)
end

#############################################################################
# Gets ASTAT 1 association multipliers
function RotasGetAssocMultipliers()
   xa_assocMultp = zeros(Int32, 12)
   ccall( (:RotasGetAssocMultipliers,libname) 
     , Nothing
     , (Ref{Int32},)
     , xa_assocMultp)
   return convert(Array{Int64,1}, xa_assocMultp)
end

#############################################################################
# Sets ASTAT 1 association multipliers
function RotasSetAssocMultipliers(xa_assocMultp)
   if typeof(xa_assocMultp) == Array{Int64,1}; xa_assocMultp=convert(Array{Int32,1},xa_assocMultp); end
   ccall( (:RotasSetAssocMultipliers,libname) 
     , Nothing
     , (Ref{Int32},)
     , xa_assocMultp)
end

#############################################################################
# Resets all Rotas control parameters back to their default values
function RotasResetAll()
   ccall( (:RotasResetAll,libname) 
     , Nothing
     , ())
end

#############################################################################
# Determines if the observation/satellite pair can possibly have an association
function RotasHasASTAT(obsKey, satKey)
   hasASTAT = ccall( (:RotasHasASTAT,libname) 
     , Int32
     , (Int64
     , Int64)
     , obsKey,satKey)
   return hasASTAT
end

#############################################################################
# Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using global Multipliers)
function RotasHasASTAT_MT(xa_rt_parms, obsKey, satKey)
   hasASTAT = ccall( (:RotasHasASTAT_MT,libname) 
     , Int32
     , (Ref{Float64}
     , Int64
     , Int64)
     , xa_rt_parms,obsKey,satKey)
   return hasASTAT
end

#############################################################################
# Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using provided Multipliers)
function RotasHasASTATMultp_MT(xa_assocMultp, xa_rt_parms, obsKey, satKey)
   if typeof(xa_assocMultp) == Array{Int64,1}; xa_assocMultp=convert(Array{Int32,1},xa_assocMultp); end
   hasASTAT = ccall( (:RotasHasASTATMultp_MT,libname) 
     , Int32
     , (Ref{Int32}
     , Ref{Float64}
     , Int64
     , Int64)
     , xa_assocMultp,xa_rt_parms,obsKey,satKey)
   return hasASTAT
end

#############################################################################
# Computes residuals for one observation against one satellite
# Obs type 0 (range rate only) cannot be used to compute residuals.
function RotasComputeObsResiduals(obsKey, satKey)
   xa_ObsRes = zeros(Float64, 100)
   satElts = zeros(Float64, 9)
   obElts = zeros(Float64, 9)
   errCode = ccall( (:RotasComputeObsResiduals,libname) 
     , Int32
     , (Int64
     , Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , obsKey,satKey,xa_ObsRes,satElts,obElts)
   return errCode, xa_ObsRes, satElts, obElts
end

#############################################################################
# Computes residuals for one observation against one satellite - suitable for multithread application (using global Multipliers)
# Obs type 0 (range rate only) cannot be used to compute residuals.
function RotasComputeObsResiduals_MT(xa_rt_parms, obsKey, satKey)
   xa_ObsRes = zeros(Float64, 100)
   satElts = zeros(Float64, 9)
   obElts = zeros(Float64, 9)
   errCode = ccall( (:RotasComputeObsResiduals_MT,libname) 
     , Int32
     , (Ref{Float64}
     , Int64
     , Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , xa_rt_parms,obsKey,satKey,xa_ObsRes,satElts,obElts)
   return errCode, xa_ObsRes, satElts, obElts
end

#############################################################################
# Computes residuals for one observation against one satellite - suitable for multithread application (using provided Multipliers)
# Obs type 0 (range rate only) cannot be used to compute residuals.
function RotasComputeObsResidualsMultp_MT(xa_assocMultp, xa_rt_parms, obsKey, satKey)
   if typeof(xa_assocMultp) == Array{Int64,1}; xa_assocMultp=convert(Array{Int32,1},xa_assocMultp); end
   xa_ObsRes = zeros(Float64, 100)
   satElts = zeros(Float64, 9)
   obElts = zeros(Float64, 9)
   errCode = ccall( (:RotasComputeObsResidualsMultp_MT,libname) 
     , Int32
     , (Ref{Int32}
     , Ref{Float64}
     , Int64
     , Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , xa_assocMultp,xa_rt_parms,obsKey,satKey,xa_ObsRes,satElts,obElts)
   return errCode, xa_ObsRes, satElts, obElts
end

#############################################################################
# Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using global parameters)
function RotasComputeTrackResiduals(obsKeys, trackStartIdx, trackLength, satKey)
   xa_ObsRes = zeros(Float64, 100)
   trackObsKeys = zeros(Int64, 3)
   b3ObsCard = " "^512
   satElts = zeros(Float64, 9)
   obElts = zeros(Float64, 9)
   errCode = ccall( (:RotasComputeTrackResiduals,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Int32
     , Int64
     , Ref{Float64}
     , Ref{Int64}
     , Cstring
     , Ref{Float64}
     , Ref{Float64})
     , obsKeys,trackStartIdx,trackLength,satKey,xa_ObsRes,trackObsKeys,b3ObsCard,satElts,obElts)
   return errCode, xa_ObsRes, trackObsKeys, b3ObsCard, satElts, obElts
end

#############################################################################
# Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using provided parameters)
function RotasComputeTrackResiduals_MT(xa_assocMultp, xa_rt_parms, obsKeys, trackStartIdx, trackLength, satKey)
   if typeof(xa_assocMultp) == Array{Int64,1}; xa_assocMultp=convert(Array{Int32,1},xa_assocMultp); end
   xa_ObsRes = zeros(Float64, 100)
   trackObsKeys = zeros(Int64, 3)
   b3ObsCard = " "^512
   satElts = zeros(Float64, 9)
   obElts = zeros(Float64, 9)
   errCode = ccall( (:RotasComputeTrackResiduals_MT,libname) 
     , Int32
     , (Ref{Int32}
     , Ref{Float64}
     , Ref{Int64}
     , Int32
     , Int32
     , Int64
     , Ref{Float64}
     , Ref{Int64}
     , Cstring
     , Ref{Float64}
     , Ref{Float64})
     , xa_assocMultp,xa_rt_parms,obsKeys,trackStartIdx,trackLength,satKey,xa_ObsRes,trackObsKeys,b3ObsCard,
         satElts,obElts)
   return errCode, xa_ObsRes, trackObsKeys, b3ObsCard, satElts, obElts
end

#############################################################################
# Computes residuals for one observation against one satellite directly (no need to load ob and propagate satellite)
function RotasCompObResDirect(obDataArr, satDataArr)
   xa_ObsRes = zeros(Float64, 100)
   errCode = ccall( (:RotasCompObResDirect,libname) 
     , Int32
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , obDataArr,satDataArr,xa_ObsRes)
   return errCode, xa_ObsRes
end

#############################################################################
# Returns the name of the retag obs file
function RotasGetRetagObsFile()
   retagObsFile = " "^512
   ccall( (:RotasGetRetagObsFile,libname) 
     , Nothing
     , (Cstring,)
     , retagObsFile)
   return retagObsFile
end

#############################################################################
# Sets the file name of the retag obs file
function RotasSetRetagObsFile(retagObsFile)
   ccall( (:RotasSetRetagObsFile,libname) 
     , Nothing
     , (Cstring,)
     , retagObsFile)
end

#############################################################################

end #of module RotasDll
# ========================= End of auto generated code ==========================
