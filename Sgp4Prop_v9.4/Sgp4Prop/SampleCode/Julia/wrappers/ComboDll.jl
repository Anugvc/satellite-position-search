# This wrapper file was generated automatically by the GenDllWrappers program.
module ComboDll

if Sys.iswindows()
  libname="Combo"
else
  libname="libcombo"
end

# Export Constant Variables
export XA_CB_PARMS_TIMEFLG
export XA_CB_PARMS_STARTTIME
export XA_CB_PARMS_STOPTIME
export XA_CB_PARMS_MAXSEP
export XA_CB_PARMS_PROXLIM
export XA_CB_PARMS_SIZE
export FAILED_PRITOOFAR
export FAILED_SECTOOFAR
export FAILED_SAMESAT
export FAILED_ALTITUDE
export WARN_BRIEFSPAN
export WARN_SUSRELGEO
export XF_7P_TIMEFLAG
export XF_7P_BEGTIME
export XF_7P_ENDTIME
export XF_7P_RELMINFLG
export XF_7P_ABSMINFLG
export XF_7P_EETIMES
export XF_7P_RELEPHFLG
export XF_7P_POCSIGMA
export XF_7P_RELMINLIM
export XF_7P_ABSMINLIM
export XF_7P_RELEPHINT
export XF_7P_PRTOPT
export XF_7P_PRADIUS
export XF_7P_SRADIUS
export XF_COVTYPE_ECI
export XF_COVTYPE_UVW
export XA_CB_POC_NORMSQR
export XA_CB_POC_SQR
export XA_CB_POC_NORMCIR
export XA_CB_POC_CIR
export XA_CB_POC_SIZE

# Export Functions
export ComboInit
export ComboGetInfo
export ComboLoadFile
export ComboLoadFileAll
export ComboLoadCard
export ComboSaveFile
export ComboGetNumOfPriSecSats
export ComboGetPriSatNums
export ComboGetSecSatNums
export ComboGet7pCard
export ComboGet7pAll
export ComboSet7pAll
export ComboGet7pField
export ComboSet7pField
export ComboCompPriSec
export ComboCompPriSec_MT
export ComboPOC
export ComboCSMPOC

# Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
# input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
const XA_CB_PARMS_TIMEFLG     =  1;

# begin time
const XA_CB_PARMS_STARTTIME   =  2;

# end time
const XA_CB_PARMS_STOPTIME    =  3;

# maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
const XA_CB_PARMS_MAXSEP      =  4;

# close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value
const XA_CB_PARMS_PROXLIM     =  5;

const    XA_CB_PARMS_SIZE        = 16;

# Constants represent combo failed cases
# Primary satellite's epoch too far from time span
const FAILED_PRITOOFAR = 101;

# Secondary satellite's epoch too far from time span
const FAILED_SECTOOFAR = 102;

# Primary/secondary satellites are identical
const FAILED_SAMESAT   = 103;

# Secondary satellite failed perigee/apogee test
const FAILED_ALTITUDE  = 104;

# Secondary satellite is considered a brief span
const WARN_BRIEFSPAN   = 105;

# Secondary satellite is in sustained relative geometry
const WARN_SUSRELGEO   = 106;


# Indexes of LAMOD 7P-card fields
# Input time format : 0: Minutes since epoch, 1: UTC
const XF_7P_TIMEFLAG    = 1;

# Begin time
const XF_7P_BEGTIME     = 2;

# End time
const XF_7P_ENDTIME     = 3;

# Control flag for computing relative minima
const XF_7P_RELMINFLG   = 4;

# Control flag for computing absolute minimum
const XF_7P_ABSMINFLG   = 5;

# Control flag for computing periods of close proximity
const XF_7P_EETIMES     = 6;

# Control flag for computing relative ephemeris
const XF_7P_RELEPHFLG   = 7;

# Control flag for computing probability of collision
const XF_7P_POCSIGMA    = 8;

# Maximum separation for relative minima
const XF_7P_RELMINLIM   = 9;

# Close proximity limit
const XF_7P_ABSMINLIM   = 10;

# Relative ephemeris sampling interval
const XF_7P_RELEPHINT   = 11;

# Print options
const XF_7P_PRTOPT      = 12;

# Primary satellite effective radius (m)
const XF_7P_PRADIUS     = 13;

# Secondary satellite effective radius (m)
const XF_7P_SRADIUS     = 14;


# Different input of covariance matrix to compute POC
# ECI pos, vel, and ECI covariance
const XF_COVTYPE_ECI   = 1;

# EFG pos, vel, and UVW covariance
const XF_COVTYPE_UVW   = 2;


# Indexes of Combo's POC data
# Normalized distance (n-sigma) to circumscribing square
const XA_CB_POC_NORMSQR  = 0;

# POC of square
const XA_CB_POC_SQR      = 1;

# Normalized distance (n-sigma) to circle
const XA_CB_POC_NORMCIR  = 2;

# POC of circle
const XA_CB_POC_CIR      = 3;


const    XA_CB_POC_SIZE     = 4;



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Combo dll for use in the program
# If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
function ComboInit(apAddr)
   errCode = ccall( (:ComboInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Combo.dll. The information is placed in the string parameter you pass in
# The returned string provides information about the version number, build date, and the platform of the Combo DLL. 
function ComboGetInfo()
   infoStr = " "^128
   ccall( (:ComboGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads Combo-related parameters (7P/8P/9P cards, and Combo parameter free format) from a text file
function ComboLoadFile(comboInputFile)
   errCode = ccall( (:ComboLoadFile,libname) 
     , Int32
     , (Cstring,)
     , comboInputFile)
   return errCode
end

#############################################################################
# Loads Combo control parameters and all Combo related data (environment, time, elsets) from an input text file
function ComboLoadFileAll(comboInputFile)
   errCode = ccall( (:ComboLoadFileAll,libname) 
     , Int32
     , (Cstring,)
     , comboInputFile)
   return errCode
end

#############################################################################
# Loads a single Combo-typed card (7P, 8P, and 9P)
function ComboLoadCard(card)
   errCode = ccall( (:ComboLoadCard,libname) 
     , Int32
     , (Cstring,)
     , card)
   return errCode
end

#############################################################################
# Saves any currently loaded COMBO-related settings to a file
# The purpose of this function is to save the current Combo-related settings, usually used in GUI applications, for future use.
function ComboSaveFile(comboFile, saveMode, saveForm)
   errCode = ccall( (:ComboSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , comboFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Returns the number of primary and secondary satellites that were entered via 7P-card, 8P-card, 9P-card, or Combo parameter free format 
function ComboGetNumOfPriSecSats()
   numPriSats = zeros(Int32, 1)
   numSecSats = zeros(Int32, 1)
   ccall( (:ComboGetNumOfPriSecSats,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Int32})
     , numPriSats,numSecSats)
   return Int64(numPriSats[1]), Int64(numSecSats[1])
end

#############################################################################
# Returns an array of primary satellite numbers that were entered via 7P-card, 9P-card, or Combo parameter free format
function ComboGetPriSatNums(size_priSatNums)
   priSatNums = zeros(Int32, size_priSatNums)
   ccall( (:ComboGetPriSatNums,libname) 
     , Nothing
     , (Ref{Int32},)
     , priSatNums)
   return convert(Array{Int64,1}, priSatNums)
end

#############################################################################
# Returns an array of secondary satellite numbers that were entered via 7P-card, 8P-card, or Combo parameter free format
function ComboGetSecSatNums(size_secSatNums)
   secSatNums = zeros(Int32, size_secSatNums)
   ccall( (:ComboGetSecSatNums,libname) 
     , Nothing
     , (Ref{Int32},)
     , secSatNums)
   return convert(Array{Int64,1}, secSatNums)
end

#############################################################################
# Constructs Combo 7P-Card from COMBO control parameters
function ComboGet7pCard()
   combo7pCard = " "^512
   ccall( (:ComboGet7pCard,libname) 
     , Nothing
     , (Cstring,)
     , combo7pCard)
   return combo7pCard
end

#############################################################################
# Retrieves all Combo control parameters with a single function call
function ComboGet7pAll()
   timeFlg = zeros(Int32, 1)
   startTime = zeros(Float64, 1)
   stopTime = zeros(Float64, 1)
   relMinFlg = zeros(Int32, 1)
   absMinFlg = zeros(Int32, 1)
   closeProxFlg = zeros(Int32, 1)
   relEphFlg = zeros(Int32, 1)
   pocSigma = zeros(Float64, 1)
   relMinLim = zeros(Float64, 1)
   closeProxLim = zeros(Float64, 1)
   relEphInterval = zeros(Float64, 1)
   prtOpt = zeros(Int32, 1)
   ccall( (:ComboGet7pAll,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , timeFlg,startTime,stopTime,relMinFlg,absMinFlg,closeProxFlg,relEphFlg,pocSigma,relMinLim,
         closeProxLim,relEphInterval,prtOpt)
   return Int64(timeFlg[1]), startTime[1], stopTime[1], Int64(relMinFlg[1]), Int64(absMinFlg[1]), Int64(closeProxFlg[1]), Int64(relEphFlg[1]), pocSigma[1], relMinLim[1], 
         closeProxLim[1], relEphInterval[1], Int64(prtOpt[1])
end

#############################################################################
# Sets all Combo control parameters with a single function call
function ComboSet7pAll(timeFlg, startTime, stopTime, relMinFlg, absMinFlg, closeProxFlg, relEphFlg, pocSigma, relMinLim, closeProxLim, relEphInterval, prtOpt)
   ccall( (:ComboSet7pAll,libname) 
     , Nothing
     , (Int32
     , Float64
     , Float64
     , Int32
     , Int32
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32)
     , timeFlg,startTime,stopTime,relMinFlg,absMinFlg,closeProxFlg,relEphFlg,pocSigma,relMinLim,
         closeProxLim,relEphInterval,prtOpt)
end

#############################################################################
# Retrieves the value of a single Combo control parameter (7P-card)
function ComboGet7pField(xf_7P)
   retVal = " "^512
   ccall( (:ComboGet7pField,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_7P,retVal)
   return retVal
end

#############################################################################
# Sets the value of a single Combo control parameter (7P-card)
# See ComboGet7pField for a list of index values for the parameter xf_7P.
function ComboSet7pField(xf_7P, valueStr)
   ccall( (:ComboSet7pField,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_7P,valueStr)
end

#############################################################################
# Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
# 
# If absMinDs50UTC = 0 or absMinDist = 1.0E20, this means no absolute minimum found. Otherwise, the absMinDs50UTC and absMinDist are returned whether or not absMinDist is greater than the specified "Close proximity limit".
# 
# Returns zero indicating the COMBO data was computed successfully. Other values indicate an error. Here is the list of possible error/warning code it returns:
# 
#     table
# 
# Value
# Value Interpretation
# 
# 101 Primary satellite's epoch too far from the time span
# 102 Secondary satellite's epoch too far from the time span
# 103 Primary/secondary satellites are identical
# 104 Secondary satellite failed perigee/apogee test
# 105 Secondary satellite is considered a brief span
# 106 Secondary satellite is in sustained relative geometry
# 
# 
# When the function's returned value is 108 (secondary satellite is in sustained relative geometry), the entry/exit times should be ignored.
function ComboCompPriSec(priSatKey, secSatKey)
   absMinDs50UTC = zeros(Float64, 1)
   absMinDist = zeros(Float64, 1)
   relMinDs50UTCs = zeros(Float64, 1000)
   numOfRelMins = zeros(Int32, 1)
   entryDs50UTCs = zeros(Float64, 1000)
   exitDs50UTCs = zeros(Float64, 1000)
   numOfEntryExits = zeros(Int32, 1)
   errCode = ccall( (:ComboCompPriSec,libname) 
     , Int32
     , (Int64
     , Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , priSatKey,secSatKey,absMinDs50UTC,absMinDist,relMinDs50UTCs,numOfRelMins,entryDs50UTCs,exitDs50UTCs,numOfEntryExits)
   return errCode, absMinDs50UTC[1], absMinDist[1], relMinDs50UTCs, Int64(numOfRelMins[1]), entryDs50UTCs, exitDs50UTCs, Int64(numOfEntryExits[1])
end

#############################################################################
# Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
# This function is similar to ComboCompPriSec but allows the user to enter separate COMBO parameters for each call which is suitable for multithread application
function ComboCompPriSec_MT(xa_cb_parms, priSatKey, secSatKey)
   absMinDs50UTC = zeros(Float64, 1)
   absMinDist = zeros(Float64, 1)
   relMinDs50UTCs = zeros(Float64, 1000)
   numOfRelMins = zeros(Int32, 1)
   entryDs50UTCs = zeros(Float64, 1000)
   exitDs50UTCs = zeros(Float64, 1000)
   numOfEntryExits = zeros(Int32, 1)
   errCode = ccall( (:ComboCompPriSec_MT,libname) 
     , Int32
     , (Ref{Float64}
     , Int64
     , Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , xa_cb_parms,priSatKey,secSatKey,absMinDs50UTC,absMinDist,relMinDs50UTCs,numOfRelMins,entryDs50UTCs,exitDs50UTCs,
         numOfEntryExits)
   return errCode, absMinDs50UTC[1], absMinDist[1], relMinDs50UTCs, Int64(numOfRelMins[1]), entryDs50UTCs, exitDs50UTCs, Int64(numOfEntryExits[1])
end

#############################################################################
# Computes probability of collision between a primary and secondary satellite
function ComboPOC(priSatPos, priSatVel, priSatCov, priSatRad, secSatPos, secSatVel, secSatCov, secSatRad, xf_CovType)
   xa_cb_poc = zeros(Float64, 4)
   errCode = ccall( (:ComboPOC,libname) 
     , Int32
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Float64
     , Int32
     , Ref{Float64})
     , priSatPos,priSatVel,priSatCov,priSatRad,secSatPos,secSatVel,secSatCov,secSatRad,xf_CovType,
         xa_cb_poc)
   return errCode, xa_cb_poc
end

#############################################################################
# Computes probability of collision using data from a CSM/OCM file
function ComboCSMPOC(csmFile, sumR)
   xa_cb_poc = zeros(Float64, 4)
   errCode = ccall( (:ComboCSMPOC,libname) 
     , Int32
     , (Cstring
     , Float64
     , Ref{Float64})
     , csmFile,sumR,xa_cb_poc)
   return errCode, xa_cb_poc
end

#############################################################################

end #of module ComboDll
# ========================= End of auto generated code ==========================
