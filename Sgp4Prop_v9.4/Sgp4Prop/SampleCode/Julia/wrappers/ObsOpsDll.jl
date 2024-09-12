# This wrapper file was generated automatically by the GenDllWrappers program.
module ObsOpsDll

if Sys.iswindows()
  libname="ObsOps"
else
  libname="libobsops"
end

# Export Constant Variables
export OBSSELMODE_AUTO
export OBSSELMODE_1ST3OBS
export XF_IP_PRINTIOHG
export XF_IP_USE1ST3OBS
export XF_IP_SATNUM
export XF_IP_SORTORDER
export XF_IP_SATNAME
export XF_IP_RUNDC
export XF_IP_RUNROTAS
export XA_TRI_USEDEFAULT
export XA_TRI_OBSTYPEOUT
export XA_TRI_APPLYBIAS
export XA_TRI_LTC
export XA_TRI_CREATEOBSSIZE
export XA_TRI_DEFANGLEORDER
export XA_TRI_DEFRANGEORDER
export XA_TRI_DEFEFGORDER
export XA_TRI_AUTOFITANGLE
export XA_TRI_AUTOFITRANGE
export XA_TRI_ANCHORRADEC
export XA_TRI_SEPSATNO
export XA_TRI_RARMSLIM
export XA_TRI_DECRMSLIM
export XA_TRI_RANGERMSLIM
export XA_TRI_TRKSEPARATION
export XA_TRI_MINSTEREOANGLE
export XA_TRI_SIZE
export XA_OVLP_SATNUM
export XA_OVLP_SENNUM1
export XA_OVLP_SENNUM2
export XA_OVLP_STARTTIME
export XA_OVLP_ENDTIME
export XA_OVLP_SIZE
export XA_FIT_SATNUM
export XA_FIT_SENNUM1
export XA_FIT_SENNUM2
export XA_FIT_RAORDER1
export XA_FIT_RAORDER2
export XA_FIT_RARMS1
export XA_FIT_RARMS2
export XA_FIT_DECORDER1
export XA_FIT_DECORDER2
export XA_FIT_DECMS1
export XA_FIT_DECRMS2
export XA_FIT_RANGEORDER1
export XA_FIT_RANGEORDER2
export XA_FIT_RANGERMS1
export XA_FIT_RANGERMS2
export XA_FIT_THETA1
export XA_FIT_THETA2
export XA_FIT_THETA3
export XA_FIT_SIZE

# Export Functions
export ObsOpsInit
export ObsOpsGetInfo
export IomodLoadFile
export IomodLoadFileAll
export IomodSaveFile
export IomodGetIpCard
export IomodGetIpAll
export IomodSetIpAll
export IomodGetIpField
export IomodSetIpField
export ManyObsToPosVel
export ThreeObsToPosVel
export Iomod_OS
export TwoObsToPosVel
export AnglesOnlyToPosVel
export FindTrack
export ATrackToPosVel
export TriGetDefParams
export TriComputeToFile
export TriCompute1
export TriCompute2
export TriCompute3
export GetWaterfallAlt
export AnglesOnlyToLLH
export LombLengthOut
export Lomb
export LombFalseProb
export LombFalseProbInv
export LombLengthCoef
export LombWaveFit
export LombCalcValueFromTime
export AngleBetweenObs

# Different obs selection options
# auto select 3 obs among the loaded/selected obs
const OBSSELMODE_AUTO   = 0;

# use the first 3 obs in list of loaded/selected obs
const OBSSELMODE_1ST3OBS= 1;



# Indexes for accessing Iomod control parameters
# control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
const XF_IP_PRINTIOHG  = 1;

# use first 3 obs flag
const XF_IP_USE1ST3OBS = 2;

# satelite number
const XF_IP_SATNUM     = 3;

# obs sorting order
const XF_IP_SORTORDER  = 4;

# international designator
const XF_IP_SATNAME    = 5;

# run DC flag: 1=yes, 0=no
const XF_IP_RUNDC      = 6;

# run ROTAS flag: 1=yes, 0=no
const XF_IP_RUNROTAS   = 7;


# Indexes of TRI configuration parameters
# I - Flag to specify whether or not to use triangulation's default parameters: =[1]: use them and ignore the rest; =0: not to use them
const XA_TRI_USEDEFAULT       =  0;

# I - Output obs type (valid values are 0, 2, 3, 4, 6, 8 and 9)
const XA_TRI_OBSTYPEOUT       =  1;

# I - Flag to specify whether or not to apply sensor bias: =[1]: apply bias, =0: not apply bias
const XA_TRI_APPLYBIAS        =  2;

# I - apply light time correction (applyLTC) flag: 0=do no apply LTC, [1]=apply LTC
const XA_TRI_LTC              =  3;

# I - number of obs created for each overlap track
const XA_TRI_CREATEOBSSIZE    =  4;

# I - default order of the Polyfit for angle RA/DEC
const XA_TRI_DEFANGLEORDER    =  5;

# I - default order of the Polyfit for range
const XA_TRI_DEFRANGEORDER    =  6;

# I - default order of the Polyfit for EFG components
const XA_TRI_DEFEFGORDER      =  7;

# I - whether or not to use auto mode for angle (increase order if needed when doing Polyfit)
const XA_TRI_AUTOFITANGLE     =  8;

# I - whether or not to use auto for range (increase order if needed when doing Polyfit)
const XA_TRI_AUTOFITRANGE     =  9;

# I - anchor order of RA/DEC
const XA_TRI_ANCHORRADEC      = 10;

# I - check to see satellite number is different
const XA_TRI_SEPSATNO         = 11;

# D - limit RMS for RA (arcsec)
const XA_TRI_RARMSLIM         = 12;

# D - limit RMS for Dec (arcsec)
const XA_TRI_DECRMSLIM        = 13;

# D - limit RMS for Range (km)
const XA_TRI_RANGERMSLIM      = 14;

# D - track separation criteria (minutes)
const XA_TRI_TRKSEPARATION    = 15;

# D - minimum stereoscopic angle (deg)
const XA_TRI_MINSTEREOANGLE   = 16;


const    XA_TRI_SIZE             = 32;   

# Indexes of overlap track data
# I - Satellite number
const XA_OVLP_SATNUM       =  0;

# I - Sensor number of track 1
const XA_OVLP_SENNUM1      =  1;

# I - Sensor number of track 2
const XA_OVLP_SENNUM2      =  2;

# D - Overlap track's start time (in DS50UTC)
const XA_OVLP_STARTTIME    =  3;

# D - Overlap track's end time (in DS50UTC)
const XA_OVLP_ENDTIME      =  4;


# 
const XA_OVLP_SIZE         =  8;


# Indexes of polyfitting track data
# I - Satellite number
const XA_FIT_SATNUM        =  0;

# I - Sensor number of track 1
const XA_FIT_SENNUM1       =  1;

# I - Sensor number of track 2
const XA_FIT_SENNUM2       =  2;


# I - Right ascension polyfit order of track 1
const XA_FIT_RAORDER1      =  3;

# I - Right ascension polyfit order of track 2
const XA_FIT_RAORDER2      =  4;

# D - Right ascension RMS of track 1
const XA_FIT_RARMS1        =  5;

# D - Right ascension RMS of track 2
const XA_FIT_RARMS2        =  6;


# I - Declination polyfit order of track 1
const XA_FIT_DECORDER1     =  7;

# I - Declination polyfit order of track 2
const XA_FIT_DECORDER2     =  8;

# D - Declination RMS of track 1
const XA_FIT_DECMS1        =  9;

# D - Declination RMS of track 2
const XA_FIT_DECRMS2       = 10;


# I - Declination polyfit order of track 1
const XA_FIT_RANGEORDER1   = 11;

# I - Declination polyfit order of track 2
const XA_FIT_RANGEORDER2   = 12;

# D - Declination RMS of track 1
const XA_FIT_RANGERMS1     = 13;

# D - Declination RMS of track 2
const XA_FIT_RANGERMS2     = 14;


# D - First stereoscopic angle (deg)
const XA_FIT_THETA1        = 15;

# D - Second stereoscopic angle (deg)
const XA_FIT_THETA2        = 16;

# D - Third stereoscopic angle (deg)
const XA_FIT_THETA3        = 17;


# 
const XA_FIT_SIZE          =  32;




#Interface for the functions

# Notes: This function has been deprecated since v9.0.    
# Initializes ObsOps DLL for use in the program
function ObsOpsInit(apAddr)
   errCode = ccall( (:ObsOpsInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of ObsOps DLL. 
# The information is placed in the string parameter passed in.
function ObsOpsGetInfo()
   infoStr = " "^128
   ccall( (:ObsOpsGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads Iomod parameters from an input text file
function IomodLoadFile(iomodInputFile)
   errCode = ccall( (:IomodLoadFile,libname) 
     , Int32
     , (Cstring,)
     , iomodInputFile)
   return errCode
end

#############################################################################
# Loads Iomod control parameters and all Iomod related data (environment, time, sensors, obs) from an input text file
function IomodLoadFileAll(iomodInputFile)
   errCode = ccall( (:IomodLoadFileAll,libname) 
     , Int32
     , (Cstring,)
     , iomodInputFile)
   return errCode
end

#############################################################################
# Saves any currently loaded IOMOD-related settings to a file
function IomodSaveFile(iomodFile, saveMode, saveForm)
   errCode = ccall( (:IomodSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , iomodFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Builds and returns the IOMOD-parameter card (IP-Card) from the current IOMOD settings
function IomodGetIpCard()
   iomodIPCard = " "^512
   ccall( (:IomodGetIpCard,libname) 
     , Nothing
     , (Cstring,)
     , iomodIPCard)
   return iomodIPCard
end

#############################################################################
# Retrieves all IOMOD parameters with a single function call
function IomodGetIpAll()
   printIOHG = zeros(Int32, 1)
   useFirst3Obs = zeros(Int32, 1)
   satNum = zeros(Int32, 1)
   sortOrder = zeros(Int32, 1)
   satName = " "^8
   runDC = zeros(Int32, 1)
   runRotas = zeros(Int32, 1)
   extArr = zeros(Float64, 128)
   ccall( (:IomodGetIpAll,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64})
     , printIOHG,useFirst3Obs,satNum,sortOrder,satName,runDC,runRotas,extArr)
   return Int64(printIOHG[1]), Int64(useFirst3Obs[1]), Int64(satNum[1]), Int64(sortOrder[1]), satName, Int64(runDC[1]), Int64(runRotas[1]), extArr
end

#############################################################################
# Sets all IOMOD parameters with a single function call
function IomodSetIpAll(printIOHG, useFirst3Obs, satNum, sortOrder, satName, runDC, runRotas, extArr)
   ccall( (:IomodSetIpAll,libname) 
     , Nothing
     , (Int32
     , Int32
     , Int32
     , Int32
     , Cstring
     , Int32
     , Int32
     , Ref{Float64})
     , printIOHG,useFirst3Obs,satNum,sortOrder,satName,runDC,runRotas,extArr)
end

#############################################################################
# Retrieves the value of a specified IOMOD parameter
# 
# The table below indicates which index values for the xf_IP parameter:
# 
# table
# 
# xf_IP named constants/values
# Interpretation
# 
# XF_IP_PRINTIOHG  = 1control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print
# IOHG
# XF_IP_USE1ST3OBS = 2use first 3 obs flag
# XF_IP_SATNUM     = 3satelite number
# XF_IP_SORTORDER  = 4obs sorting order
# XF_IP_SATNAME    = 5international designator 
# XF_IP_RUNDC      = 6run DC flag: 1=yes, 0=no [deprecated]
# XF_IP_RUNROTAS   = 7run ROTAS flag: 1=yes, 0=no [deprecated]
# 
function IomodGetIpField(xf_IP)
   retVal = " "^512
   ccall( (:IomodGetIpField,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_IP,retVal)
   return retVal
end

#############################################################################
# Sets the value of a specified IOMOD parameter
# See IomodGetIpField for a description of the xf_IP parameter.
function IomodSetIpField(xf_IP, valueStr)
   ccall( (:IomodSetIpField,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_IP,valueStr)
end

#############################################################################
# Computes initial orbit vector from many observations using Herrick-Gibbs method
function ManyObsToPosVel(obsKeyArr, arrSize)
   timeDs50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   arr3ObsKeys = zeros(Int64, 3)
   errCode = ccall( (:ManyObsToPosVel,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int64})
     , obsKeyArr,arrSize,timeDs50UTC,pos,vel,arr3ObsKeys)
   return errCode, timeDs50UTC[1], pos, vel, arr3ObsKeys
end

#############################################################################
# Computes initial orbit vector from three selected observations using Herrick-Gibbs method
function ThreeObsToPosVel(arr3ObsKeys)
   timeDs50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   errCode = ccall( (:ThreeObsToPosVel,libname) 
     , Int32
     , (Ref{Int64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , arr3ObsKeys,timeDs50UTC,pos,vel)
   return errCode, timeDs50UTC[1], pos, vel
end

#############################################################################
# Computes initial orbit vector directly from the input sensor/observation data - thread safe
function Iomod_OS(xa_senLoc, numObs, xa_obsArr)
   timeDs50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   errCode = ccall( (:Iomod_OS,libname) 
     , Int32
     , (Ref{Float64}
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , xa_senLoc,numObs,xa_obsArr,timeDs50UTC,pos,vel)
   return errCode, timeDs50UTC[1], pos, vel
end

#############################################################################
# Computes initial orbit vector from two selected observations using Two-Ob method
# Note: Two-Ob method only works with ob types: 2, 3, 4, P, and V
function TwoObsToPosVel(arr2ObsKeys)
   timeDs50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   errCode = ccall( (:TwoObsToPosVel,libname) 
     , Int32
     , (Ref{Int64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , arr2ObsKeys,timeDs50UTC,pos,vel)
   return errCode, timeDs50UTC[1], pos, vel
end

#############################################################################
# Computes the initial orbit vector from three selected angle-only observations using the Gooding Algorithm.
function AnglesOnlyToPosVel(arr3ObsKeys, range1, range3, nhrev, ind, maxIt, pdInc, criVal)
   timeDs50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   errCode = ccall( (:AnglesOnlyToPosVel,libname) 
     , Int32
     , (Ref{Int64}
     , Float64
     , Float64
     , Int32
     , Int32
     , Int32
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , arr3ObsKeys,range1,range3,nhrev,ind,maxIt,pdInc,criVal,timeDs50UTC,
         pos,vel)
   return errCode, timeDs50UTC[1], pos, vel
end

#############################################################################
# Computes the track length of a track whose first observation started at the input startIdx.
# This routine can be used in a loop to find all the tracks in the observation list.
# Remember to sort obs in the obsKeyArr in the ascending order of sensor, satno, obsType, time, elev 
# by calling ObsGetLoaded(-6, pObsKeys) before feeding the array to this routine
function FindTrack(obsKeyArr, arrSize, startIdx)
   trackLength = zeros(Int32, 1)
   errCode = ccall( (:FindTrack,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Int32
     , Ref{Int32})
     , obsKeyArr,arrSize,startIdx,trackLength)
   return errCode, Int64(trackLength[1])
end

#############################################################################
# Computes initial orbit vector from a track of obs. Also returns the three obs in the track that are used by IOMOD
function ATrackToPosVel(obsKeys, trackStartIdx, trackLength)
   timeDs50UTC = zeros(Float64, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   trackObsKeys = zeros(Int64, 3)
   errCode = ccall( (:ATrackToPosVel,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int64})
     , obsKeys,trackStartIdx,trackLength,timeDs50UTC,pos,vel,trackObsKeys)
   return errCode, timeDs50UTC[1], pos, vel, trackObsKeys
end

#############################################################################
# Returns the default values of the triangulation settings
function TriGetDefParams()
   xa_tri = zeros(Float64, 32)
   ccall( (:TriGetDefParams,libname) 
     , Nothing
     , (Ref{Float64},)
     , xa_tri)
   return xa_tri
end

#############################################################################
# Triangulates the input obs and write generated obs with range data to the specified output file
function TriComputeToFile(obsKeyArr, arrSize, xa_tri, toFile)
   errCode = ccall( (:TriComputeToFile,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Ref{Float64}
     , Cstring)
     , obsKeyArr,arrSize,xa_tri,toFile)
   return errCode
end

#############################################################################
# Triangulates the input obs and returns the overlap and polyfit information; creates and loads obs with range data into memory and returns their associated obsKeys
function TriCompute1(obsKeyArr, arrSize, xa_tri, size_xa_ovlp, size_xa_fit, maxGenObs, size_genObsKeys)
   numOvlps = zeros(Int32, 1)
   xa_ovlp = zeros(Float64, 8, size_xa_ovlp)
   numFits = zeros(Int32, 1)
   xa_fit = zeros(Float64, 32, size_xa_fit)
   nGenObs = zeros(Int32, 1)
   genObsKeys = zeros(Int64, size_genObsKeys)
   errCode = ccall( (:TriCompute1,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Int32
     , Ref{Int32}
     , Ref{Int64})
     , obsKeyArr,arrSize,xa_tri,numOvlps,xa_ovlp,numFits,xa_fit,maxGenObs,nGenObs,
         genObsKeys)
   return errCode, Int64(numOvlps[1]), xa_ovlp, Int64(numFits[1]), xa_fit, Int64(nGenObs[1]), genObsKeys
end

#############################################################################
# Triangulates the input obs and returns the overlap and polyfit information 
function TriCompute2(obsKeyArr, arrSize, xa_tri, size_xa_ovlp, size_xa_fit)
   numOvlps = zeros(Int32, 1)
   xa_ovlp = zeros(Float64, 8, size_xa_ovlp)
   numFits = zeros(Int32, 1)
   xa_fit = zeros(Float64, 32, size_xa_fit)
   errCode = ccall( (:TriCompute2,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64})
     , obsKeyArr,arrSize,xa_tri,numOvlps,xa_ovlp,numFits,xa_fit)
   return errCode, Int64(numOvlps[1]), xa_ovlp, Int64(numFits[1]), xa_fit
end

#############################################################################
# Triangulates the input obs; creates and loads obs with range data (by triangulation) into memory and returns their associated obsKeys
function TriCompute3(obsKeyArr, arrSize, xa_tri, maxGenObs, size_genObsKeys)
   nGenObs = zeros(Int32, 1)
   genObsKeys = zeros(Int64, size_genObsKeys)
   errCode = ccall( (:TriCompute3,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Ref{Float64}
     , Int32
     , Ref{Int32}
     , Ref{Int64})
     , obsKeyArr,arrSize,xa_tri,maxGenObs,nGenObs,genObsKeys)
   return errCode, Int64(nGenObs[1]), genObsKeys
end

#############################################################################
# Returns the default values of the waterfall altitude (km)
function GetWaterfallAlt()
   assumedAltitude = ccall( (:GetWaterfallAlt,libname) 
     , Float64
     , ())
   return assumedAltitude
end

#############################################################################
# Converts angle-only observation to lat/lon/height positions
function AnglesOnlyToLLH(obsKey, assumedAltitude)
   rho = zeros(Float64, 2)
   llhs = zeros(Float64, 3, 2)
   numSols = zeros(Int32, 1)
   errCode = ccall( (:AnglesOnlyToLLH,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , obsKey,assumedAltitude,rho,llhs,numSols)
   return errCode, rho, llhs, Int64(numSols[1])
end

#############################################################################
# Calculates length of output arrays for Lomb
# Used to allocated px, py, prob before call to Lomb
function LombLengthOut(ofac, hifac, nSample)
   nout = ccall( (:LombLengthOut,libname) 
     , Int32
     , (Float64
     , Float64
     , Int32)
     , ofac,hifac,nSample)
   return nout
end

#############################################################################
# Creates Lomb-Scargle periodogram.  Reference: Numerical Recipes   
# Used to find frequencies in unevenly sampled data, such as Visual Magnitude vs. Time
function Lomb(x, y, nSample, ofac, hifac, size_px, size_py, size_prob)
   px = zeros(Float64, size_px)
   py = zeros(Float64, size_py)
   prob = zeros(Float64, size_prob)
   pxmax = zeros(Float64, 1)
   pymax = zeros(Float64, 1)
   probMax = zeros(Float64, 1)
   ccall( (:Lomb,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Int32
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , x,y,nSample,ofac,hifac,px,py,prob,pxmax,
         pymax,probMax)
   return px, py, prob, pxmax[1], pymax[1], probMax[1]
end

#############################################################################
# Find False Alarm Probablility of given Power (lower is less likely to be a false alarm)
function LombFalseProb(py, nout, ofac)
   prob = ccall( (:LombFalseProb,libname) 
     , Float64
     , (Float64
     , Int32
     , Float64)
     , py,nout,ofac)
   return prob
end

#############################################################################
# Find Power of given False Alarm Probablility
function LombFalseProbInv(prob, nout, ofac)
   py = ccall( (:LombFalseProbInv,libname) 
     , Float64
     , (Float64
     , Int32
     , Float64)
     , prob,nout,ofac)
   return py
end

#############################################################################
# Calculate length of output for LombWaveFit
function LombLengthCoef(nFreq)
   nCoeffs = ccall( (:LombLengthCoef,libname) 
     , Int32
     , (Int32,)
     , nFreq)
   return nCoeffs
end

#############################################################################
# Fits user defined frequencies to data to find the magnitudes
# Solves the equation
# y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
# For coefficients A and B corresponding to each frequency
function LombWaveFit(x, y, nSamples, freq, nfreq, size_coeffs)
   coeffs = zeros(Float64, size_coeffs)
   ccall( (:LombWaveFit,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Int32
     , Ref{Float64}
     , Int32
     , Ref{Float64})
     , x,y,nSamples,freq,nfreq,coeffs)
   return coeffs
end

#############################################################################
# Calculate value of y given time, x, 
# and frequencies and magnitudes that were gotten from wavefit
# solves the equation
# y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
# for y
function LombCalcValueFromTime(x, mags, freq, nfreq)
   y = ccall( (:LombCalcValueFromTime,libname) 
     , Float64
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Int32)
     , x,mags,freq,nfreq)
   return y
end

#############################################################################
# Given two observations, calculate the angle between them
# Supports obsType 1,2,3,4,5,8,9,18,19
function AngleBetweenObs(obsKey1, obsKey2)
   angSep = zeros(Float64, 1)
   errCode = zeros(Int32, 1)
   ccall( (:AngleBetweenObs,libname) 
     , Nothing
     , (Int64
     , Int64
     , Ref{Float64}
     , Ref{Int32})
     , obsKey1,obsKey2,angSep,errCode)
   return angSep[1], Int64(errCode[1])
end

#############################################################################

end #of module ObsOpsDll
# ========================= End of auto generated code ==========================
