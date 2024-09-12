# This wrapper file was generated automatically by the GenDllWrappers program.
module SpVecDll

if Sys.iswindows()
  libname="SpVec"
else
  libname="libspvec"
end

# Export Constant Variables
export XF_SPVEC_POS1
export XF_SPVEC_POS2
export XF_SPVEC_POS3
export XF_SPVEC_VEL1
export XF_SPVEC_VEL2
export XF_SPVEC_VEL3
export XF_SPVEC_SECCLASS
export XF_SPVEC_SATNUM
export XF_SPVEC_SATNAME
export XF_SPVEC_EPOCH
export XF_SPVEC_REVNUM
export XF_SPVEC_ELSETNUM
export XF_SPVEC_BTERM
export XF_SPVEC_AGOM
export XF_SPVEC_OGPARM
export XF_SPVEC_INPCOORD
export XA_SPVEC_SATNUM
export XA_SPVEC_EPOCH
export XA_SPVEC_REVNUM
export XA_SPVEC_ELSETNUM
export XA_SPVEC_BTERM
export XA_SPVEC_AGOM
export XA_SPVEC_OGPARM
export XA_SPVEC_INPCOORD
export XA_SPVEC_POS1
export XA_SPVEC_POS2
export XA_SPVEC_POS3
export XA_SPVEC_VEL1
export XA_SPVEC_VEL2
export XA_SPVEC_VEL3
export XA_SPVEC_HASOWNCRL
export XA_SPVEC_GEOIDX
export XA_SPVEC_BULGEFLG
export XA_SPVEC_DRAGFLG
export XA_SPVEC_RADFLG
export XA_SPVEC_LUNSOLFLG
export XA_SPVEC_F10
export XA_SPVEC_F10AVG
export XA_SPVEC_AP
export XA_SPVEC_TRUNC
export XA_SPVEC_CONVERG
export XA_SPVEC_OGFLG
export XA_SPVEC_TIDESFLG
export XA_SPVEC_NTERMS
export XA_SPVEC_REEVAL
export XA_SPVEC_INTEGCTRL
export XA_SPVEC_VARSTEP
export XA_SPVEC_INITSTEP
export XA_SPVEC_RMS
export XA_SPVEC_COVELEMS
export XA_SPVEC_SIZE
export XS_SPVEC_SECCLASS_1
export XS_SPVEC_SATNAME_8
export XS_SPVEC_SIZE
export XS_SPVEC_SECCLASS_0_1
export XS_SPVEC_SATNAME_1_8
export XS_SPVEC_LENGTH
export SPVEC_INPCOORD_4P
export SPVEC_INPCOORD_TMDAT
export SPVEC_INPCOORD_MMJ2K

# Export Functions
export SpVecInit
export SpVecGetInfo
export SpVecLoadFile
export SpVecSaveFile
export SpVecRemoveSat
export SpVecRemoveAllSats
export SpVecGetCount
export SpVecGetLoaded
export SpVecAddSatFrLines
export SpVecAddSatFrLinesML
export SpVecAddSatFrFields
export SpVecAddSatFrFieldsML
export SpVecUpdateSatFrFields
export SpVecGetField
export SpVecSetField
export SpVecGetAllFields
export SpVecParse
export SpVecLinesToArray
export SpVecGetLines
export SpVecFieldsToLines
export SpVecArrayToLines
export SpVecGetSatKey
export SpVecGetSatKeyML
export SpVecFieldsToSatKey
export SpVecFieldsToSatKeyML
export SpVecAddSatFrArray
export SpVecAddSatFrArrayML
export SpVecUpdateSatFrArray
export SpVecDataToArray

# Indexes of SPVEC data fields
# X component of satellite's position (km)
const XF_SPVEC_POS1     =  1;

# Y component of satellite's position (km)
const XF_SPVEC_POS2     =  2;

# Z component of satellite's position (km)
const XF_SPVEC_POS3     =  3;

# X component of satellite's velocity (m/s)
const XF_SPVEC_VEL1     =  4;

# Y component of satellite's velocity (m/s)
const XF_SPVEC_VEL2     =  5;

# Z component of satellite's velocity (m/s)
const XF_SPVEC_VEL3     =  6;

# Security classification
const XF_SPVEC_SECCLASS =  7;

# Satellite number
const XF_SPVEC_SATNUM   =  9;

# Satellite common name
const XF_SPVEC_SATNAME  = 10;

# Epoch date
const XF_SPVEC_EPOCH    = 11;

# Epoch revolution number
const XF_SPVEC_REVNUM   = 12;

# Elset number
const XF_SPVEC_ELSETNUM = 13;

# Ballistic coefficient (m^2/kg)
const XF_SPVEC_BTERM    = 14;

# Radiation pressure coefficient (m^2/kg)
const XF_SPVEC_AGOM     = 15;

# Outgassing parameter (km/s^2)
const XF_SPVEC_OGPARM   = 16;

# Inpute coordinate system
const XF_SPVEC_INPCOORD = 17;



# Indexes of SPVEC numerical data in an array
# Satellite number
const XA_SPVEC_SATNUM   =   0;

# Epoch date in days since 1950 UTC
const XA_SPVEC_EPOCH    =   1;

# Epoch revolution number
const XA_SPVEC_REVNUM   =   2;

# Elset number
const XA_SPVEC_ELSETNUM =   3;

# Ballistic coefficient (m^2/kg)
const XA_SPVEC_BTERM    =   4;

# Radiation pressure coefficient (m^2/kg)
const XA_SPVEC_AGOM     =   5;

# Outgassing parameter (km/s^2)
const XA_SPVEC_OGPARM   =   6;

# Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options
const XA_SPVEC_INPCOORD =   7;


# X component of satellite's position (km)
const XA_SPVEC_POS1     =  20;

# Y component of satellite's position (km)
const XA_SPVEC_POS2     =  21;

# Z component of satellite's position (km)
const XA_SPVEC_POS3     =  22;

# X component of satellite's velocity (m/s)
const XA_SPVEC_VEL1     =  23;

# Y component of satellite's velocity (m/s)
const XA_SPVEC_VEL2     =  24;

# Z component of satellite's velocity (m/s)
const XA_SPVEC_VEL3     =  25;


# Flag to indicate SP vec has its own numerical integration control (vs global 4P settings)
const XA_SPVEC_HASOWNCRL=  70;

# Geopotential model to use
const XA_SPVEC_GEOIDX   =  71;

# Earth gravity pertubations flag
const XA_SPVEC_BULGEFLG =  72;

# Drag pertubations flag
const XA_SPVEC_DRAGFLG  =  73;

# Radiation pressure pertubations flag
const XA_SPVEC_RADFLG   =  74;

# Lunar/Solar pertubations flag
const XA_SPVEC_LUNSOLFLG=  75;

# F10 value
const XA_SPVEC_F10      =  76;

# F10 average value
const XA_SPVEC_F10AVG   =  77;

# Ap value
const XA_SPVEC_AP       =  78;

# Geopotential truncation order/degree/zonals
const XA_SPVEC_TRUNC    =  79;

# Corrector step convergence criterion; exponent of 1/10; default = 10
const XA_SPVEC_CONVERG  =  80;

# Outgassing pertubations flag
const XA_SPVEC_OGFLG    =  81;

# Solid earth and ocean tide pertubations flag
const XA_SPVEC_TIDESFLG =  82;

# Nutation terms
const XA_SPVEC_NTERMS   =  84;

# Recompute pertubations at each corrector step
const XA_SPVEC_REEVAL   =  85;

# Variable of intergration control
const XA_SPVEC_INTEGCTRL=  86;

# Variable step size control
const XA_SPVEC_VARSTEP  =  87;

# Initial step size
const XA_SPVEC_INITSTEP =  88;


# weighted RM of last DC on the satellite
const XA_SPVEC_RMS      =  99;

# the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx)
const XA_SPVEC_COVELEMS = 100;


const    XA_SPVEC_SIZE     = 512;


# Indexes of SPVEC text data in an array of chars
# Security classification
const XS_SPVEC_SECCLASS_1 =  0;

# Satellite common name
const XS_SPVEC_SATNAME_8  =  1;


const    XS_SPVEC_SIZE       = 512;

# SPVEC's text data fields - new convention (start index, string length)
# Security classification
const XS_SPVEC_SECCLASS_0_1 =  0;

# Satellite common name
const XS_SPVEC_SATNAME_1_8  =  1;


const    XS_SPVEC_LENGTH     = 512;


# Different input coordinate for SpVec
# Use input coordinate specified in 4P-card
const SPVEC_INPCOORD_4P    =  0;

# Input coordinate systems is coordinates of epoch
const SPVEC_INPCOORD_TMDAT =  1;

# Input coordinate systems is coordinates of J2000
const SPVEC_INPCOORD_MMJ2K =  2;



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes SpVec DLL for use in the program
# If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
function SpVecInit(apAddr)
   errCode = ccall( (:SpVecInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of SpVec DLL. The information is placed in the string parameter you pass in
# The returned string provides information about the version number, build date, and the platform of the SpVec DLL. 
function SpVecGetInfo()
   infoStr = " "^128
   ccall( (:SpVecGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads a text file containing SpVec's
# The users can use this function repeatedly to load B1P records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
# 
# B1P records can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]".
# 
# This function only reads B1P records from the main input file or B1P records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
function SpVecLoadFile(spVecFile)
   errCode = ccall( (:SpVecLoadFile,libname) 
     , Int32
     , (Cstring,)
     , spVecFile)
   return errCode
end

#############################################################################
# Saves the currently loaded SpVecs's to a file
# If the users call this routine immediately after SpVecLoadFile. The SPVECs contents in the two file should be the same (minus duplicated SPVECs or bad SPVECs).
# 
# The purpose of this function is to save the current state of the loaded SPVECs, usually used in GUI applications, for future use.
function SpVecSaveFile(spVecFile, saveMode, saveForm)
   errCode = ccall( (:SpVecSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , spVecFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Removes an SpVec represented by the satKey from memory
# If the users enter an invalid satKey, a non-existing satKey in memory, the function will return a non-zero value indicating an error.
function SpVecRemoveSat(satKey)
   errCode = ccall( (:SpVecRemoveSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removes all SpVec's from memory
function SpVecRemoveAllSats()
   errCode = ccall( (:SpVecRemoveAllSats,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
# See SpVecGetLoaded for example.
# This function is useful for dynamically allocating memory for the array that is passed to the function SpVecGetLoaded().
function SpVecGetCount()
   numSats = ccall( (:SpVecGetCount,libname) 
     , Int32
     , ())
   return numSats
end

#############################################################################
# Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
# It is recommended that SpVecGetCount() is used to count how many satellites are currently loaded in the SpVec DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
# 
# If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
function SpVecGetLoaded(order, size_satKeys)
   satKeys = zeros(Int64, size_satKeys)
   ccall( (:SpVecGetLoaded,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , order,satKeys)
   return satKeys
end

#############################################################################
# Adds an SpVec using its directly specified first and second lines
# If the satellite was previously added to the SpVec DLL's binary tree, the function also returns a negative value indicating an error. 
# 
# The users can use this function repeatedly to add many satellites (one satellite at a time) to the SpVec DLL's binary tree. 
function SpVecAddSatFrLines(line1, line2)
   satKey = ccall( (:SpVecAddSatFrLines,libname) 
     , Int64
     , (Cstring
     , Cstring)
     , line1,line2)
   return satKey
end

#############################################################################
# Works like SpVecAddSatFrLines but designed for Matlab
function SpVecAddSatFrLinesML(line1, line2)
   satKey = zeros(Int64, 1)
   ccall( (:SpVecAddSatFrLinesML,libname) 
     , Nothing
     , (Cstring
     , Cstring
     , Ref{Int64})
     , line1,line2,satKey)
   return satKey[1]
end

#############################################################################
# Adds an SpVec using its individually provided field values
function SpVecAddSatFrFields(pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys)
   satKey = ccall( (:SpVecAddSatFrFields,libname) 
     , Int64
     , (Ref{Float64}
     , Ref{Float64}
     , Cchar
     , Int32
     , Cstring
     , Cstring
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Cstring)
     , pos,vel,secClass[1],satNum,satName,epochDtg,revNum,elsetNum,bterm,
         agom,ogParm,coordSys)
   return satKey
end

#############################################################################
# Works like SpVecAddSatFrFields but designed for Matlab 
function SpVecAddSatFrFieldsML(pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys)
   satKey = zeros(Int64, 1)
   ccall( (:SpVecAddSatFrFieldsML,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Cchar
     , Int32
     , Cstring
     , Cstring
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Cstring
     , Ref{Int64})
     , pos,vel,secClass[1],satNum,satName,epochDtg,revNum,elsetNum,bterm,
         agom,ogParm,coordSys,satKey)
   return satKey[1]
end

#############################################################################
# Updates an SpVec satellite's data in memory using individually provided field values. Note: satNum, epoch string can't be updated.
# The satellite's unique key will not be changed in this function call. 
function SpVecUpdateSatFrFields(satKey, pos, vel, secClass, satName, revNum, elsetNum, bterm, agom, ogParm, coordSys)
   errCode = ccall( (:SpVecUpdateSatFrFields,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Float64}
     , Cchar
     , Cstring
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Cstring)
     , satKey,pos,vel,secClass[1],satName,revNum,elsetNum,bterm,agom,
         ogParm,coordSys)
   return errCode
end

#############################################################################
# Retrieves the value of a specific field of an SpVec
# 
# The table below shows the values for the xf_SpVec parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
#  1-3First 3 elements of 1P
#  4-6Second 3 elements of 1P
#  7Security classification
#  9Satellite number
# 10Satellite common name
# 11Epoch date
# 12Epoch revolution number
# 13Elset number
# 14Ballistic coefficient
# 15Radiation pressure coefficient
# 16Outgassing parameter
# 17Input coordinate system
# 
function SpVecGetField(satKey, xf_SpVec)
   valueStr = " "^512
   errCode = ccall( (:SpVecGetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_SpVec,valueStr)
   return errCode, valueStr
end

#############################################################################
# Updates the value of a field of an SpVec
# See SpVecGetField for a description of the xf_SpVec parameter.  satNum (9) and epoch date (11) cannot be altered.
# The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
function SpVecSetField(satKey, xf_SpVec, valueStr)
   errCode = ccall( (:SpVecSetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_SpVec,valueStr)
   return errCode
end

#############################################################################
# Retrieves all of the data for an SpVec satellite in a single function call
function SpVecGetAllFields(satKey)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   secClass = " "
   satNum = zeros(Int32, 1)
   satName = " "^8
   epochDtg = " "^17
   revNum = zeros(Int32, 1)
   elsetNum = zeros(Int32, 1)
   bterm = zeros(Float64, 1)
   agom = zeros(Float64, 1)
   ogParm = zeros(Float64, 1)
   coordSys = " "^5
   errCode = ccall( (:SpVecGetAllFields,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Float64}
     , Cstring
     , Ref{Int32}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Cstring)
     , satKey,pos,vel,secClass,satNum,satName,epochDtg,revNum,elsetNum,
         bterm,agom,ogParm,coordSys)
   return errCode, pos, vel, secClass, Int64(satNum[1]), satName, epochDtg, Int64(revNum[1]), Int64(elsetNum[1]), bterm[1], 
         agom[1], ogParm[1], coordSys
end

#############################################################################
# Retrieves all of the data for an SpVec satellite in a single function call
function SpVecParse(line1, line2)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   secClass = " "
   satNum = zeros(Int32, 1)
   satName = " "^8
   epochDtg = " "^17
   revNum = zeros(Int32, 1)
   elsetNum = zeros(Int32, 1)
   bterm = zeros(Float64, 1)
   agom = zeros(Float64, 1)
   ogParm = zeros(Float64, 1)
   coordSys = " "^5
   errCode = ccall( (:SpVecParse,libname) 
     , Int32
     , (Cstring
     , Cstring
     , Ref{Float64}
     , Ref{Float64}
     , Cstring
     , Ref{Int32}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Cstring)
     , line1,line2,pos,vel,secClass,satNum,satName,epochDtg,revNum,
         elsetNum,bterm,agom,ogParm,coordSys)
   return errCode, pos, vel, secClass, Int64(satNum[1]), satName, epochDtg, Int64(revNum[1]), Int64(elsetNum[1]), bterm[1], 
         agom[1], ogParm[1], coordSys
end

#############################################################################
# Parses SPVEC data from the input first and second lines of an 1P/2P state vector and store that data back into the output parameters.
# This function only parses data from the input SPVEC but DOES NOT load/add the input SPVEC to memory.
function SpVecLinesToArray(line1, line2)
   xa_spVec = zeros(Float64, 512)
   xs_spVec = " "^512
   errCode = ccall( (:SpVecLinesToArray,libname) 
     , Int32
     , (Cstring
     , Cstring
     , Ref{Float64}
     , Cstring)
     , line1,line2,xa_spVec,xs_spVec)
   return errCode, xa_spVec, xs_spVec
end

#############################################################################
# Returns the first and second lines of the 1P/2P representation of an SpVec
function SpVecGetLines(satKey)
   line1 = " "^512
   line2 = " "^512
   errCode = ccall( (:SpVecGetLines,libname) 
     , Int32
     , (Int64
     , Cstring
     , Cstring)
     , satKey,line1,line2)
   return errCode, line1, line2
end

#############################################################################
# Constructs 1P/2P cards from individually provided SpVec data fields
# Returned line1 and line2 are empty if the function fails to construct the lines as requested.
function SpVecFieldsToLines(pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys)
   line1 = " "^512
   line2 = " "^512
   ccall( (:SpVecFieldsToLines,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Cchar
     , Int32
     , Cstring
     , Cstring
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Cstring
     , Cstring
     , Cstring)
     , pos,vel,secClass[1],satNum,satName,epochDtg,revNum,elsetNum,bterm,
         agom,ogParm,coordSys,line1,line2)
   return line1, line2
end

#############################################################################
# Constructs 1P/2P cards from SPVEC data stored in the input arrays.
# This function only parses data from the input data but DOES NOT load/add the SPVEC to memory.
# Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
function SpVecArrayToLines(xa_spVec, xs_spVec)
   line1 = " "^512
   line2 = " "^512
   ccall( (:SpVecArrayToLines,libname) 
     , Nothing
     , (Ref{Float64}
     , Cstring
     , Cstring
     , Cstring)
     , xa_spVec,xs_spVec,line1,line2)
   return line1, line2
end

#############################################################################
# Returns the first satKey from the currently loaded set of SpVec's that contains the specified satellite number
# This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
function SpVecGetSatKey(satNum)
   satKey = ccall( (:SpVecGetSatKey,libname) 
     , Int64
     , (Int32,)
     , satNum)
   return satKey
end

#############################################################################
# This function is similar to SpVecGetSatKey but designed to be used in Matlab. 
# This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
function SpVecGetSatKeyML(satNum)
   satKey = zeros(Int64, 1)
   ccall( (:SpVecGetSatKeyML,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , satNum,satKey)
   return satKey[1]
end

#############################################################################
# Computes a satKey from the input data
# This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
function SpVecFieldsToSatKey(satNum, epochDtg)
   satKey = ccall( (:SpVecFieldsToSatKey,libname) 
     , Int64
     , (Int32
     , Cstring)
     , satNum,epochDtg)
   return satKey
end

#############################################################################
# This function is similar to SpVecFieldsToSatKey but designed to be used in Matlab. 
# This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
function SpVecFieldsToSatKeyML(satNum, epochDtg)
   satKey = zeros(Int64, 1)
   ccall( (:SpVecFieldsToSatKeyML,libname) 
     , Nothing
     , (Int32
     , Cstring
     , Ref{Int64})
     , satNum,epochDtg,satKey)
   return satKey[1]
end

#############################################################################
# Adds an SpVec using its individually provided field values
function SpVecAddSatFrArray(xa_spVec, xs_spVec)
   satKey = ccall( (:SpVecAddSatFrArray,libname) 
     , Int64
     , (Ref{Float64}
     , Cstring)
     , xa_spVec,xs_spVec)
   return satKey
end

#############################################################################
# Adds an SpVec using its individually provided field values
function SpVecAddSatFrArrayML(xa_spVec, xs_spVec)
   satKey = zeros(Int64, 1)
   ccall( (:SpVecAddSatFrArrayML,libname) 
     , Nothing
     , (Ref{Float64}
     , Cstring
     , Ref{Int64})
     , xa_spVec,xs_spVec,satKey)
   return satKey[1]
end

#############################################################################
# Updates existing SPVEC data with the provided new data stored in the input parameters. Note: satNum, epoch string can't be updated.
function SpVecUpdateSatFrArray(satKey, xa_spVec, xs_spVec)
   errCode = ccall( (:SpVecUpdateSatFrArray,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Cstring)
     , satKey,xa_spVec,xs_spVec)
   return errCode
end

#############################################################################
# Retrieves SPVEC data and stored it in the passing parameters
function SpVecDataToArray(satKey)
   xa_spVec = zeros(Float64, 512)
   xs_spVec = " "^512
   errCode = ccall( (:SpVecDataToArray,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Cstring)
     , satKey,xa_spVec,xs_spVec)
   return errCode, xa_spVec, xs_spVec
end

#############################################################################

end #of module SpVecDll
# ========================= End of auto generated code ==========================
