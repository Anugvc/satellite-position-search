# This wrapper file was generated automatically by the GenDllWrappers program.
module BamDll

if Sys.iswindows()
  libname="Bam"
else
  libname="libbam"
end

# Export Constant Variables
export BAM_SD_TIME
export BAM_SD_DIST
export BAM_SD_POSX
export BAM_SD_POSY
export BAM_SD_POSZ
export BAM_SD_VELX
export BAM_SD_VELY
export BAM_SD_VELZ
export BAM_SD_LAT
export BAM_SD_LON
export BAM_SD_HEIGHT
export BAM_MD_TIME
export BAM_MD_DIST
export BAM_MD_POSX
export BAM_MD_POSY
export BAM_MD_POSZ
export BAM_MD_VELX
export BAM_MD_VELY
export BAM_MD_VELZ
export BAM_MD_LAT
export BAM_MD_LON
export BAM_MD_HEIGHT
export BAM_MD_SIZE
export XF_BAM_MDTIME
export XF_BAM_RANGE
export XF_BAM_NADIR
export XF_BAM_POSX
export XF_BAM_POSY
export XF_BAM_POSZ
export XF_BAM_VELX
export XF_BAM_VELY
export XF_BAM_VELZ
export XF_BAM_LAT
export XF_BAM_LON
export XF_BAM_HEIGHT

# Export Functions
export BamInit
export BamGetInfo
export BamCompNumTSs
export BamCompute
export BamGetResults

# time at mininum average separate distances (ds50UTC)
const BAM_SD_TIME    =  0;

# minimum average separate distance (km)
const BAM_SD_DIST    =  1;

# average position X at minimum average separate distance (km)
const BAM_SD_POSX    =  2;

# average position Y at minimum average separate distance (km)
const BAM_SD_POSY    =  3;

# average position Z at minimum average separate distance (km)
const BAM_SD_POSZ    =  4;

# average velocity X at minimum average separate distance (km/s)
const BAM_SD_VELX    =  5;

# average velocity Y at minimum average separate distance (km/s)
const BAM_SD_VELY    =  6;

# average velocity Z at minimum average separate distance (km/s)
const BAM_SD_VELZ    =  7;

# average latitude at minimum average separate distance (deg)
const BAM_SD_LAT     =  8;

# average longitude at minimum average separate distance (deg)
const BAM_SD_LON     =  9;

# average height at minimum average separate distance (km)
const BAM_SD_HEIGHT  = 10;


# time at mininum average missed distances (ds50UTC)
const BAM_MD_TIME    = 20;

# minimum average missed distance (km)
const BAM_MD_DIST    = 21;

# average position X of satellites when they cross the pinch point plan (km)
const BAM_MD_POSX    = 22;

# average position Y of satellites when they cross the pinch point plan (km)
const BAM_MD_POSY    = 23;

# average position Z of satellites when they cross the pinch point plan (km)
const BAM_MD_POSZ    = 24;

# average velocity X of satellites when they cross the pinch point plan (km/s)
const BAM_MD_VELX    = 25;

# average velocity Y of satellites when they cross the pinch point plan (km/s)
const BAM_MD_VELY    = 26;

# average velocity Z of satellites when they cross the pinch point plan (km/s)
const BAM_MD_VELZ    = 27;

# average latitude of satellites when they cross the pinch point plan (deg)
const BAM_MD_LAT     = 28;

# average longitude of satellites when they cross the pinch point plan (deg)
const BAM_MD_LON     = 29;

# average height of satellites when they cross the pinch point plan (km)
const BAM_MD_HEIGHT  = 30;


const    BAM_MD_SIZE    = 64;    

# times when satellites cross the pinch point plan (ds50UTC)
const XF_BAM_MDTIME  =  0;

# missed distances from satellites to the pinch point (km)
const XF_BAM_RANGE   =  1;

# nadir angles of satellites when they cross the pinch point plan
const XF_BAM_NADIR   =  2;

# position Xs of satellites when they cross the pinch point plan (km)
const XF_BAM_POSX    =  3;

# position Ys of satellites when they cross the pinch point plan (km)
const XF_BAM_POSY    =  4;

# position Zs of satellites when they cross the pinch point plan (km)
const XF_BAM_POSZ    =  5;

# velocity Xs of satellites when they cross the pinch point plan (km/s)
const XF_BAM_VELX    =  6;

# velocity Ys of satellites when they cross the pinch point plan (km/s)
const XF_BAM_VELY    =  7;

# velocity Zs of satellites when they cross the pinch point plan (km/s)
const XF_BAM_VELZ    =  8;

# latitude of satellites when they cross the pinch point plan (deg)
const XF_BAM_LAT     =  9;

# longitude of satellites when they cross the pinch point plan (deg)
const XF_BAM_LON     = 10;

# height of satellites when they cross the pinch point plan (km)
const XF_BAM_HEIGHT  = 11;





#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Bam dll for use in the program
function BamInit(apAddr)
   errCode = ccall( (:BamInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Bam.dll. The information is placed in the string parameter you pass in
function BamGetInfo()
   infoStr = " "^128
   ccall( (:BamGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Computes the number of time steps using the input start/end times and the step size
function BamCompNumTSs(startDs50UTC, stopDs50UTC, stepSizeMin)
   numTSs = ccall( (:BamCompNumTSs,libname) 
     , Int32
     , (Float64
     , Float64
     , Float64)
     , startDs50UTC,stopDs50UTC,stepSizeMin)
   return numTSs
end

#############################################################################
# Computes and returns separate/missed distance data
# 
# The table below shows the indexes for the Separation Distance values contained in the extBamArr array:
# 
#     table
#     
#         Index
#         Index Interpretation
#     
#     0time at mininum average separate distances (ds50UTC)
#     1minimum average separate distance (km)
#     2average position X at minimum average separate distance (km)
#     3average position Y at minimum average separate distance (km)
#     4average position Z at minimum average separate distance (km)
#     5average velocity X at minimum average separate distance (km/s)
#     6average velocity Y at minimum average separate distance (km/s)
#     7average velocity Z at minimum average separate distance (km/s)
#     8average latitude at minimum average separate distance (deg)
#     9average longitude at minimum average separate distance (deg)
#     10average height at minimum average separate distance (km)
# 
# 
# The table below shows the indexes for the Miss Distance values contained in the extBamArr array:
# 
#     table
#     
#         Index
#         Index Interpretation
#     
#     20time at mininum average missed distances (ds50UTC)
#     21minimum average missed distance (km)
#     22average position X of satellites when they cross the pinch point plan (km)
#     23average position Y of satellites when they cross the pinch point plan (km)
#     24average position Z of satellites when they cross the pinch point plan (km)
#     25average velocity X of satellites when they cross the pinch point plan (km/s)
#     26average velocity Y of satellites when they cross the pinch point plan (km/s)
#     27average velocity Z of satellites when they cross the pinch point plan (km/s)
#     28average latitude of satellites when they cross the pinch point plan (deg)
#     29average longitude of satellites when they cross the pinch point plan (deg)
#     30average height of satellites when they cross the pinch point plan (km)
# 
function BamCompute(satKeys, numSats, startDs50UTC, stopDs50UTC, stepSizeMin, size_avgSDs, size_avgMDs)
   avgSDs = zeros(Float64, size_avgSDs)
   avgMDs = zeros(Float64, size_avgMDs)
   extBamArr = zeros(Float64, 64)
   errCode = zeros(Int32, 1)
   ccall( (:BamCompute,libname) 
     , Nothing
     , (Ref{Int64}
     , Int32
     , Float64
     , Float64
     , Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , satKeys,numSats,startDs50UTC,stopDs50UTC,stepSizeMin,avgSDs,avgMDs,extBamArr,errCode)
   return avgSDs, avgMDs, extBamArr, Int64(errCode[1])
end

#############################################################################
# Retrieves other BAM data
# 
# The table below shows the indexes for the values for the xf_bam parameter:
# 
#     table
#     
#         Index
#         Index Interpretation
#     
#     0times when satellites cross the pinch point plan (ds50UTC)
#     1missed distances from satellites to the pinch point (km)
#     2nadir angles of satellites when they cross the pinch point plan
#     3position Xs of satellites when they cross the pinch point plan (km)
#     4position Ys of satellites when they cross the pinch point plan (km)
#     5position Zs of satellites when they cross the pinch point plan (km)
#     6velocity Xs of satellites when they cross the pinch point plan (km/s)
#     7velocity Ys of satellites when they cross the pinch point plan (km/s)
#     8velocity Zs of satellites when they cross the pinch point plan (km/s)
#     9latitude of satellites when they cross the pinch point plan (deg)
#     10longitude of satellites when they cross the pinch point plan (deg)
#     11height of satellites when they cross the pinch point plan (km)
# 
function BamGetResults(xf_bam, size_bamArr)
   bamArr = zeros(Float64, size_bamArr)
   ccall( (:BamGetResults,libname) 
     , Nothing
     , (Int32
     , Ref{Float64})
     , xf_bam,bamArr)
   return bamArr
end

#############################################################################

end #of module BamDll
# ========================= End of auto generated code ==========================
