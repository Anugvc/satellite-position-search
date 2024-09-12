# This wrapper file was generated automatically by the GenDllWrappers program.
module ElCompDll

if Sys.iswindows()
  libname="ElComp"
else
  libname="libelcomp"
end

# Export Constant Variables
export XA_ELCOM_INCLI
export XA_ELCOM_NODE
export XA_ELCOM_E
export XA_ELCOM_OMEGA
export XA_ELCOM_MNANOM
export XA_ELCOM_MNMOTION
export XA_ELCOM_EPOCH
export XA_ELCOM_PHT
export XA_ELCOM_PERIOD
export XA_ELCOM_TNODE
export XA_ELCOM_LONGE
export XA_ELCOM_SIZE
export XA_ECDIFF_INCMAX1
export XA_ECDIFF_INCMAX2
export XA_ECDIFF_INCMAX3
export XA_ECDIFF_RAMAX1
export XA_ECDIFF_RAMAX2
export XA_ECDIFF_RAMAX3
export XA_ECDIFF_PHTMAX1
export XA_ECDIFF_PHTMAX2
export XA_ECDIFF_PHTMAX3
export XA_ECDIFF_ECCMAX1
export XA_ECDIFF_ECCMAX2
export XA_ECDIFF_ECCMAX3
export XA_ECDIFF_PERMAX1
export XA_ECDIFF_PERMAX2
export XA_ECDIFF_PERMAX3
export XA_ECDIFF_APMAX1
export XA_ECDIFF_APMAX2
export XA_ECDIFF_APMAX3
export XA_ECDIFF_SIZE
export ELCOM_ASTAT_FULL
export ELCOM_ASTAT_CLOSE
export ELCOM_ASTAT_MAYBE
export ELCOM_ASTAT_NONE
export XA_COCODIFF_INCMAX1
export XA_COCODIFF_INCMAX2
export XA_COCODIFF_INCMAX3
export XA_COCODIFF_RAMAX1
export XA_COCODIFF_RAMAX2
export XA_COCODIFF_RAMAX3
export XA_COCODIFF_PHTMAX1
export XA_COCODIFF_PHTMAX2
export XA_COCODIFF_PHTMAX3
export XA_COCODIFF_PERMAX1
export XA_COCODIFF_PERMAX2
export XA_COCODIFF_PERMAX3
export XA_COCODIFF_SIZE
export XA_SATDATA_INCLI
export XA_SATDATA_NODE
export XA_SATDATA_E
export XA_SATDATA_OMEGA
export XA_SATDATA_MNANOM
export XA_SATDATA_MNMOTION
export XA_SATDATA_EPOCH
export XA_SATDATA_PHT
export XA_SATDATA_PERIOD
export XA_SATDATA_SIZE
export XA_COCO_INCLI
export XA_COCO_NODE
export XA_COCO_PHT
export XA_COCO_PERIOD
export XA_COCO_WDOT
export XA_COCO_RADOT
export XA_COCO_TNODE
export XA_COCO_TZERO
export XA_COCO_SCAP
export XA_COCO_PCM
export XA_COCO_PNODALX
export XA_COCO_SNODALX
export XA_COCO_SIZE
export COCO_ASTAT_SAME
export COCO_ASTAT_CLOSE
export COCO_ASTAT_NEARBY
export COCO_ASTAT_NONE

# Export Functions
export ElCompInit
export ElCompGetInfo
export ElCompSetCriteria
export ElCompGetCriteria
export ElCompGetResults
export ElCompGetResults_MT
export ElCompFrElData
export ElCompFrElData_MT
export ElCompResetCriteria
export CocoSetCriteria
export CocoGetCriteria
export CocoGetResults
export CocoGetResults_MT
export CocoGetResultsWOA
export CocoFrElData
export CocoFrElData_MT
export CocoFrElDataWOA
export CocoResetCriteria

# indexes for ElComp reference sat data and deltas
# inclination (deg)
const XA_ELCOM_INCLI    =  0;

# right ascension of the asending node (deg)
const XA_ELCOM_NODE     =  1;

# eccentricity (unitless)
const XA_ELCOM_E        =  2;

# argument of perigee (deg)
const XA_ELCOM_OMEGA    =  3;

# mean anomaly (deg)
const XA_ELCOM_MNANOM   =  4;

# mean motion (revs/day)
const XA_ELCOM_MNMOTION =  5;

# epoch in days since 1950, UTC
const XA_ELCOM_EPOCH    =  6;


# perigee height (km)
const XA_ELCOM_PHT      =  7;

# period (min)
const XA_ELCOM_PERIOD   =  8;

# delta t between nodal crossing times (min)
const XA_ELCOM_TNODE    =  9;

# delta east longitude for geo satellites (deg)
const XA_ELCOM_LONGE    = 10;


const    XA_ELCOM_SIZE     = 16;

# indexes for setting criteria for full, close, maybe
# incli diff in deg - full
const XA_ECDIFF_INCMAX1  =  0;

# incli diff in deg - close
const XA_ECDIFF_INCMAX2  =  1;

# incli diff in deg - maybe
const XA_ECDIFF_INCMAX3  =  2;


# W vector dot product in deg - full
const XA_ECDIFF_RAMAX1   =  3;

# W vector dot product in deg - close
const XA_ECDIFF_RAMAX2   =  4;

# W vector dot product in deg - maybe
const XA_ECDIFF_RAMAX3   =  5;


# perigee height diff in km - full
const XA_ECDIFF_PHTMAX1  =  6;

# perigee height diff in km - close
const XA_ECDIFF_PHTMAX2  =  7;

# perigee height diff in km - maybe
const XA_ECDIFF_PHTMAX3  =  8;


# eccentricity diff - full
const XA_ECDIFF_ECCMAX1  =  9;

# eccentricity diff - close
const XA_ECDIFF_ECCMAX2  = 10;

# eccentricity diff - maybe
const XA_ECDIFF_ECCMAX3  = 11;


# period diff in min - full
const XA_ECDIFF_PERMAX1  = 12;

# period diff in min - close
const XA_ECDIFF_PERMAX2  = 13;

# period diff in min - maybe
const XA_ECDIFF_PERMAX3  = 14;


# argument of perigee diff in deg - full
const XA_ECDIFF_APMAX1   = 15;

# argument of perigee diff in deg - close
const XA_ECDIFF_APMAX2   = 16;

# argument of perigee diff in deg - maybe
const XA_ECDIFF_APMAX3   = 17;


const    XA_ECDIFF_SIZE     = 32;   

# indexes for association status from ElComp
# "FULL" association
const ELCOM_ASTAT_FULL  = 1;

# "CLOSE" association
const ELCOM_ASTAT_CLOSE = 2;

# "MAYBE" association
const ELCOM_ASTAT_MAYBE = 3;

# "NONE" association
const ELCOM_ASTAT_NONE  = 4;


# indexes for setting criteria for full, close, maybe
# incli diff in deg - same
const XA_COCODIFF_INCMAX1  =  0;

# incli diff in deg - close
const XA_COCODIFF_INCMAX2  =  1;

# incli diff in deg - near-by
const XA_COCODIFF_INCMAX3  =  2;


# W vector dot product in deg - same
const XA_COCODIFF_RAMAX1   =  3;

# W vector dot product in deg - close
const XA_COCODIFF_RAMAX2   =  4;

# W vector dot product in deg - near-by
const XA_COCODIFF_RAMAX3   =  5;


# perigee height diff in km - same
const XA_COCODIFF_PHTMAX1  =  6;

# perigee height diff in km - close
const XA_COCODIFF_PHTMAX2  =  7;

# perigee height diff in km - near-by
const XA_COCODIFF_PHTMAX3  =  8;


# period diff in min - same
const XA_COCODIFF_PERMAX1  =  9;

# period diff in min - close
const XA_COCODIFF_PERMAX2  = 10;

# period diff in min - near-by
const XA_COCODIFF_PERMAX3  = 11;


const    XA_COCODIFF_SIZE     = 32;   


# indexes for Coco sat data and coplanar deltas fields
# inclination (deg)
const XA_SATDATA_INCLI    =  0;

# right ascension of the asending node (deg)
const XA_SATDATA_NODE     =  1;

# eccentricity (unitless)
const XA_SATDATA_E        =  2;

# argument of perigee (deg)
const XA_SATDATA_OMEGA    =  3;

# mean anomaly (deg)
const XA_SATDATA_MNANOM   =  4;

# mean motion (revs/day)
const XA_SATDATA_MNMOTION =  5;

# epoch in days since 1950, UTC
const XA_SATDATA_EPOCH    =  6;


# perigee height (km)
const XA_SATDATA_PHT      =  7;

# period (min)
const XA_SATDATA_PERIOD   =  8;


const    XA_SATDATA_SIZE     = 16;


# indexes for Coco sat data and coplanar deltas fields
# inclination (deg)
const XA_COCO_INCLI    =  0;

# right ascension of the asending node (deg)
const XA_COCO_NODE     =  1;

# perigee height (km)
const XA_COCO_PHT      =  2;

# period (min)
const XA_COCO_PERIOD   =  3;

# coplanar angle (dot the w vectors) (deg)
const XA_COCO_WDOT     =  4;

# right ascension dot (deg/day)
const XA_COCO_RADOT    =  5;

# nodal crossing (min)
const XA_COCO_TNODE    =  6;

# time in days to approach 0.0 RA delta
const XA_COCO_TZERO    =  7;

# sustained close approach possible
const XA_COCO_SCAP     =  8;

# potential constellation member
const XA_COCO_PCM      =  9;

# time in ds50UTC when primary at nodal crossing (prior to its epoch)
const XA_COCO_PNODALX  = 10;

# time in ds50UTC when secondary at nodal crossing (after primary nodal crossing time)
const XA_COCO_SNODALX  = 11;


const    XA_COCO_SIZE     = 16;   


# indexes for association status from COCO
# "SAME" association
const COCO_ASTAT_SAME   = 1;

# "CLOSE" association
const COCO_ASTAT_CLOSE  = 2;

# "NEARBY" association
const COCO_ASTAT_NEARBY = 3;

# "NONE" association
const COCO_ASTAT_NONE   = 5;



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes ElComp dll for use in the program 
function ElCompInit(apAddr)
   errCode = ccall( (:ElCompInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of ElComp.dll. The information is placed in the
# string parameter passed-in
function ElCompGetInfo()
   infoStr = " "^128
   ccall( (:ElCompGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# ElCompSetCriteria for ElComp 'Manual' mode which replaces default association status criteria
# for "FULL", including primary vs. secondary element comparison difference thresholds in 
# inclination, coplanar angle (determined as the dot product of the primary and secondary 
# angular momentum vectors), perigee height, eccentricity, orbital period, and argument of perigee.
# See ElCompGetCriteria for a description of the xa_ecdiff array.
function ElCompSetCriteria(xa_ecdiff)
   ccall( (:ElCompSetCriteria,libname) 
     , Nothing
     , (Ref{Float64},)
     , xa_ecdiff)
end

#############################################################################
# Retrieves criteria settings for ElComp
# 
# ElCompGetCriteria establishes the difference thresholds the element comparison program uses
# to evaluate the association statuses between the primary and secondary element sets.  The
# following values are the default settings for ELCOMP:
# 
# 
#     FULL element comparison, if all of the following criteria are met:
#         
#             Inclination                         difference less than      0.10 degrees
#             Angular Momentum Vector             difference less than      0.15 degrees
#             Perigee Height                      difference less than        25 km
#             Period                              difference less than      0.15 minutes
#             Eccentricity                        difference less than     0.005
#             argument of perigee (when e>.005)   difference less than         5 degrees
#         
#     CLOSE element comparison, if all the following criteria are met:
#         
#             Inclination                         difference less than      0.15 degrees
#             Angular Momentum Vector             difference less than      0.30 degrees
#             Perigee Height                      difference less than        75 km
#             Period                              difference less than      0.50 minutes
#             Eccentricity                        difference less than     0.015 
#             argument of perigee (when e>.005)   difference less than        10 degrees
#         
#     MAYBE element comparison, if all of the following criteria are met:
#         
#             Inclination                         difference less than      0.25 degrees
#             Angular Momentum Vector             difference less than      0.50 degrees
#             Perigee Height                      difference less than       100 km
#             Period                              difference less than      10.0 minutes
#             Eccentricity                        difference less than     0.025
#             argument of perigee (when e>.005)   difference less than        20 degrees
#         
#     If none of the combined criteria are met as described above, then ElComp found NONE in
#          the satellite comparison. The user may define their own criteria or use the automatic/
#          default criteria summarized above.
# 
# 
# Order of elements in the input xa_ecdiff array:
# 
#     table
# 
# Index
# Index Interpretation
# 
#  0  inclination difference criteria for FULL evaluation, [degrees]
#  1  inclination difference criteria for CLOSE evaluation, [degrees]
#  2  inclination difference criteria for MAYBE evaluation, [degrees]
#  3  w Angular Momentum Vector dot product criteria for FULL evalutation, [degrees]
#  4  w Angular Momentum Vector dot product criteria for CLOSE evalutation, [degrees]
#  5  w Angular Momentum Vector dot product criteria for MAYBE evalutation, [degrees]
#  6  Perigee height difference criteria for FULL evaluation, [kilometers]
#  7  Perigee height difference criteria for CLOSE evaluation, [kilometers]
#  8  Perigee height difference criteria for MAYBE evaluation, [kilometers]
#  9  Eccentricity difference criteria for FULL evaluation
# 10  Eccentricity difference criteria for CLOSE evaluation
# 11  Eccentricity difference criteria for MAYBE evaluation
# 12  Period difference criteria for FULL evaluation
# 13  Period difference criteria for CLOSE evaluation
# 14  Period difference criteria for MAYBE evaluation
# 15  Argument of Perigee difference criteria for FULL evaluation
# 16  Argument of Perigee difference criteria for CLOSE evaluation
# 17  Argument of Perigee difference criteria for MAYBE evaluation
# 18-31  unused at this time  
#       
function ElCompGetCriteria()
   xa_ecdiff = zeros(Float64, 32)
   ccall( (:ElCompGetCriteria,libname) 
     , Nothing
     , (Ref{Float64},)
     , xa_ecdiff)
   return xa_ecdiff
end

#############################################################################
# ElCompGetResults executes ELCOMP, Element Comparison, to evaluate two element sets loaded
#   via their satKeys 
# 
# 
# ELCOMP software description:
# 
#   ElCompGetResults executes ELCOMP, Element Comparison, to evaluate two element sets loaded
#   via their satKeys 
# 
# 
# ELCOMP algorithm:
# 
#   ELCOMP uses inclination, right ascension of ascending node, perigee height, eccentricity,
#   period, argument of perigee, nodal crossing time, orbit plane alignment (via dot product
#   between the primary and secondary angular momentum vectors), and East Longitude (for
#   Geosynchronous orbits) to evaluate the degree of similarity between primary and secondary
#   element sets (orbit definitions) in terms of their relative size, shape, and orientation.
#   ELCOMP computes a correction, due to drag, to the nodal crossing time for each elset as part
#   of the nodal crossing time-difference evaluation. Because the epoch times of the primary and
#   secondary element sets are rarely the same, ELCOMP updates time-variant quantities to a
#   common time prior to element comparison.  Element sets with epochs that differ by more than
#   90 days are not evaluated.  Time-variant quantities updated to a common time include:
#   Right Ascension of Ascending Node, Argument of Perigee, and East Longitude (for Geosynchronous
#   oribts).  Time-variant quantities are updated to a common time by using the difference in
#   epoch times between the primary and secondary element sets and by determining the change
#   in argument of perigee with respect to time, the change in Right Ascension of Ascending
#   Node with respect to time, and for geosynchronous orbits, the East Longitude drift rate. 
#   ELCOMP also sets the nodal-crossing time criteria according to orbit type and epoch age,
#   allowing for longer nodal-crossing time differences for deep-space orbits versus near-Earth,
#   and longer time differences with greater differences in epoch, while also taking into account
#   perigee height for more circular orbits.  Argument of perigee is evaluated for eccentricities
#   greater than 0.005 only.  This is because for very-near circular orbits, the argement of perigee
#   becomes ill-defined such that perigee may vary widely due to epoch time difference, when in
#   fact the orbits are the same.  User-specified or default thresholds, along with orbital
#   element comparison differences are used by ELCOMP to produce an element comparison association
#   status for each primary-secondary pair.  Association statuses include FULL, CLOSE, MAYBE,
#   and NONE.  A typical application for ELCOMP is to automate determining if a new or external
#   element set is a duplicate or very similar element set to an existing internal element set
#   within a large catalog of element sets.
# 
# 
# INPUTS include:
# 
#   table
#   (a) Primary element set to compare
#   (b) Secondary element set to be compared against
#   
#       (c)
#        
#          Specified orbital element comparison threshold values for FULL, CLOSE, MAYBE, and NONE
#       association statuses.  Specified element comparison thresholds include:
#         
#         
#         inclination
#         plane
#         perigee height
#         eccentricity
#         period
#         argument of perigee 
#         
#       
#   
# 
# 
# 
# OUTPUTS include:
#   (a) Evaluation results of FULL, CLOSE, MAYBE, or NONE for each primary-secondary element
#       set pair
# 
# Order of the input xa_elcom_pri(16) array - primary TLE satellite data:
# 
# table
# 
# Index
# Index Interpretation
# 
# 0  inclination [degrees]
# 1  right ascension of ascending node [degrees]
# 2  eccentricity [unitless]
# 3  argument of perigee [degrees]
# 4  mean anomaly [degrees]
# 5  mean motion [revs/day]
# 6  epoch [fractional days since 1950]
# 7-15  not used at this time
#    
# Order of the input xa_elcomp_sec(16) array - secondary TLE sat data, is same order as primary
# 
# Order of the output xa_elcomp_deltas(16) array - delta quantities between primary and secondary
# 
# table
# 
# Index
# Index Interpretation
# 
# 0  delta Inclination [degrees]
# 1  delta Right Ascension of Ascending Node (RAAN) [degrees]
# 2  delta Perigeee Height [kilometers]
# 3  delta Orbital Period [minutes]
# 4  delta Coplanar angle (dot product of the w angular momentum vetors) [degrees]
# 5  delta Right Ascension dot (rate of change of the delta RAAN) [degrees/day]
# 6  delta Nodal crossing time [minutes]
# 7  number of fractional days to achieve 0.0 delta in RAAN, if 
# 8  Flag - sustained close approach possible, if non-zero
# 9  Flag - possible constellation member, if non-zero
#    
# 
#  elcom_astat possible return values:
# 
# table
# 
# Value
# Interpretation
# 
# 1  FULL
# 2  CLOSE
# 3  MAYBE
# 4  NONE
#    
function ElCompGetResults(priSatKey, secSatKey, checkDeltaTime)
   xa_elcom_pri = zeros(Float64, 16)
   xa_elcom_sec = zeros(Float64, 16)
   xa_elcom_deltas = zeros(Float64, 16)
   elcom_astat = zeros(Int32, 1)
   errCode = ccall( (:ElCompGetResults,libname) 
     , Int32
     , (Int64
     , Int64
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , priSatKey,secSatKey,checkDeltaTime,xa_elcom_pri,xa_elcom_sec,xa_elcom_deltas,elcom_astat)
   return errCode, xa_elcom_pri, xa_elcom_sec, xa_elcom_deltas, Int64(elcom_astat[1])
end

#############################################################################
# This is a thread-safe version of the ElCompGetResults
function ElCompGetResults_MT(xa_ecdiff, priSatKey, secSatKey, checkDeltaTime)
   xa_elcom_pri = zeros(Float64, 16)
   xa_elcom_sec = zeros(Float64, 16)
   xa_elcom_deltas = zeros(Float64, 16)
   elcom_astat = zeros(Int32, 1)
   errCode = ccall( (:ElCompGetResults_MT,libname) 
     , Int32
     , (Ref{Float64}
     , Int64
     , Int64
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , xa_ecdiff,priSatKey,secSatKey,checkDeltaTime,xa_elcom_pri,xa_elcom_sec,xa_elcom_deltas,elcom_astat)
   return errCode, xa_elcom_pri, xa_elcom_sec, xa_elcom_deltas, Int64(elcom_astat[1])
end

#############################################################################
# Returns comparison results between two elsets without loading the elsets into memory
# See ElCompGetResults for a description of the input and output values.
function ElCompFrElData(checkDeltaTime, xa_elcom_pri, xa_elcom_sec)
   xa_elcom_deltas = zeros(Float64, 16)
   elcom_astat = zeros(Int32, 1)
   ccall( (:ElCompFrElData,libname) 
     , Nothing
     , (Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , checkDeltaTime,xa_elcom_pri,xa_elcom_sec,xa_elcom_deltas,elcom_astat)
   return xa_elcom_deltas, Int64(elcom_astat[1])
end

#############################################################################
# This is a threa-safe version of ElCompFrElData
function ElCompFrElData_MT(xa_ecdiff, checkDeltaTime, xa_elcom_pri, xa_elcom_sec)
   xa_elcom_deltas = zeros(Float64, 16)
   elcom_astat = zeros(Int32, 1)
   ccall( (:ElCompFrElData_MT,libname) 
     , Nothing
     , (Ref{Float64}
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , xa_ecdiff,checkDeltaTime,xa_elcom_pri,xa_elcom_sec,xa_elcom_deltas,elcom_astat)
   return xa_elcom_deltas, Int64(elcom_astat[1])
end

#############################################################################
# Resets criteria to default values for ElComp 
function ElCompResetCriteria()
   ccall( (:ElCompResetCriteria,libname) 
     , Nothing
     , ())
end

#############################################################################
# Sets up criteria for Coco 
# See CocoGetCriteria for a description of the input and output values.
function CocoSetCriteria(xa_ecdiff)
   ccall( (:CocoSetCriteria,libname) 
     , Nothing
     , (Ref{Float64},)
     , xa_ecdiff)
end

#############################################################################
# Retrieves criteria settings for Coco
# 
# Order of elements in the input xa_ecdiff array:
# 
# table
# 
# Index
# Index Interpretation
# 
#  0  inclination difference criteria for SAME evaluation, [degrees]
#  1  inclination difference criteria for CLOSE evaluation, [degrees]
#  2  inclination difference criteria for NEARBY evaluation, [degrees]
#  3  w Angular Momentum Vector dot product criteria for SAME evalutation, [degrees]
#  4  w Angular Momentum Vector dot product criteria for CLOSE evalutation, [degrees]
#  5  w Angular Momentum Vector dot product criteria for NEARBY evalutation, [degrees]
#  6  Perigee height difference criteria for SAME evaluation, [kilometers]
#  7  Perigee height difference criteria for CLOSE evaluation, [kilometers]
#  8  Perigee height difference criteria for NEARBY evaluation, [kilometers]
#  9  Eccentricity difference criteria for SAME evaluation
# 10  Eccentricity difference criteria for CLOSE evaluation
# 11  Eccentricity difference criteria for NEARBY evaluation
# 12  Period difference criteria for SAME evaluation
# 13  Period difference criteria for CLOSE evaluation
# 14  Period difference criteria for NEARBY evaluation
# 15  Argument of Perigee difference criteria for SAME evaluation
# 16  Argument of Perigee difference criteria for CLOSE evaluation
# 17  Argument of Perigee difference criteria for NEARBY evaluation
# 18-31  unused at this time
#    
function CocoGetCriteria()
   xa_ecdiff = zeros(Float64, 32)
   ccall( (:CocoGetCriteria,libname) 
     , Nothing
     , (Ref{Float64},)
     , xa_ecdiff)
   return xa_ecdiff
end

#############################################################################
#   CocoGetResults executes COCO, Computation of coplanar Orbits, to evaluate two element sets
#   loaded via their satKeys.   
# COCO software description:
#   CocoGetResults executes COCO, Computation of coplanar Orbits, to evaluate two element sets
#   loaded via their satKeys.   
# COCO algortihm:
#   A primary element set is compared to a secondary element set using criteria summarized
#   above. The program uses data from standard two-line element sets (TLEs) as input.  The COCO
#   program was modified to allow for nodal crossing time comparison when the input element sets
#   are not at the node, and thereby addresses various inherent Keplerian orbital-element
#   comparison difficulties by accounting for nodal-crossing time differences between primary
#   and secondary element sets which are rarely epoched to the time of nodal crossing. COCO
#   uses inclination, right ascension of ascending node, perigee height, eccentricity, period,
#   argument of perigee, and nodal crossing time (via dot product between the primary and secondary
#   angular momentum vectors), to evaluate the degree of coplanarness between a primary and 
#   secondary element set in terms of their relative size, shape, and orientation.  COCO 
#   computes a correction, due to drag, to the nodal crossing time for each elset as part of 
#   the nodal cross time-difference evaluation.
# INPUTS include:
#   (a) Primary element set to compare
#   (b) Secondary element set to be compared against
#   (c) Specified orbital element threshold values for SAME, CLOSE, and NEARBY coplanar
#       definitions. Specified orbital element thresholds include:
#         inclination
#         plane
#         perigee height
#         eccentricity
#         period
#         argument of perigee 
# OUTPUTS include:
#   (a) Evaluation results of SAME, CLOSE, NEARBY, or NO MATCH for each primary-secondary element
#       set pair
#   (b) Special advisories for comparisons that evaluate to:
#         SUSTAINED CLOSE APPROACH POSSIBLE
#         POSSIBLE CONSTELLATION MEMBER
#         RIGHT ASCENSION OF ASCENDING NODE DIFFERENCE WILL BE 0.0 WITHIN 60 DAYS (along with the
#         estimated number of days to 0.0 degrees nodal nodal crossing difference)
function CocoGetResults(priSatKey, secSatKey)
   xa_satData_pri = zeros(Float64, 16)
   xa_satData_sec = zeros(Float64, 16)
   xa_coco = zeros(Float64, 16)
   coco_astat = zeros(Int32, 1)
   errCode = ccall( (:CocoGetResults,libname) 
     , Int32
     , (Int64
     , Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , priSatKey,secSatKey,xa_satData_pri,xa_satData_sec,xa_coco,coco_astat)
   return errCode, xa_satData_pri, xa_satData_sec, xa_coco, Int64(coco_astat[1])
end

#############################################################################
# This is a thread-safe version of CocoGetResults
function CocoGetResults_MT(xa_ecdiff, priSatKey, secSatKey)
   xa_satData_pri = zeros(Float64, 16)
   xa_satData_sec = zeros(Float64, 16)
   xa_coco = zeros(Float64, 16)
   coco_astat = zeros(Int32, 1)
   errCode = ccall( (:CocoGetResults_MT,libname) 
     , Int32
     , (Ref{Float64}
     , Int64
     , Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , xa_ecdiff,priSatKey,secSatKey,xa_satData_pri,xa_satData_sec,xa_coco,coco_astat)
   return errCode, xa_satData_pri, xa_satData_sec, xa_coco, Int64(coco_astat[1])
end

#############################################################################
#   CocoGetResultsWOA executes COCO, Computation of coplanar Orbits, to evaluate two element sets
#   loaded via their satKeys. It's similar to CocoGetResults but without returning the ASTAT value
function CocoGetResultsWOA(priSatKey, secSatKey)
   xa_satData_pri = zeros(Float64, 16)
   xa_satData_sec = zeros(Float64, 16)
   xa_coco = zeros(Float64, 16)
   errCode = ccall( (:CocoGetResultsWOA,libname) 
     , Int32
     , (Int64
     , Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , priSatKey,secSatKey,xa_satData_pri,xa_satData_sec,xa_coco)
   return errCode, xa_satData_pri, xa_satData_sec, xa_coco
end

#############################################################################
# Returns comparison results between two elsets without loading the elsets into TLE dll
function CocoFrElData(xa_satData_pri, xa_satData_sec)
   xa_coco = zeros(Float64, 16)
   coco_astat = zeros(Int32, 1)
   ccall( (:CocoFrElData,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , xa_satData_pri,xa_satData_sec,xa_coco,coco_astat)
   return xa_coco, Int64(coco_astat[1])
end

#############################################################################
# This is a thread-safe version of CocoFrElData
function CocoFrElData_MT(xa_ecdiff, xa_satData_pri, xa_satData_sec)
   xa_coco = zeros(Float64, 16)
   coco_astat = zeros(Int32, 1)
   ccall( (:CocoFrElData_MT,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32})
     , xa_ecdiff,xa_satData_pri,xa_satData_sec,xa_coco,coco_astat)
   return xa_coco, Int64(coco_astat[1])
end

#############################################################################
# Returns comparison results between two elsets without loading the elsets into TLE dll. It's similar to CocoFrElData but without returning the ASTAT value
function CocoFrElDataWOA(xa_satData_pri, xa_satData_sec)
   xa_coco = zeros(Float64, 16)
   ccall( (:CocoFrElDataWOA,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , xa_satData_pri,xa_satData_sec,xa_coco)
   return xa_coco
end

#############################################################################
# Resets criteria to default values for Coco 
function CocoResetCriteria()
   ccall( (:CocoResetCriteria,libname) 
     , Nothing
     , ())
end

#############################################################################

end #of module ElCompDll
# ========================= End of auto generated code ==========================
