// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes ElComp dll for use in the program 
int ElCompInit(long apAddr);

// Returns information about the current version of ElComp.dll. The information is placed in the
// string parameter passed-in
void ElCompGetInfo(char infoStr[128]);

// ElCompSetCriteria for ElComp 'Manual' mode which replaces default association status criteria
// for "FULL", including primary vs. secondary element comparison difference thresholds in 
// inclination, coplanar angle (determined as the dot product of the primary and secondary 
// angular momentum vectors), perigee height, eccentricity, orbital period, and argument of perigee.
// See ElCompGetCriteria for a description of the xa_ecdiff array.
void ElCompSetCriteria(double xa_ecdiff[32]);

// Retrieves criteria settings for ElComp
// <br>
// ElCompGetCriteria establishes the difference thresholds the element comparison program uses
// to evaluate the association statuses between the primary and secondary element sets.  The
// following values are the default settings for ELCOMP:
// <br>
// <ol type="1">
//     <li>FULL element comparison, if all of the following criteria are met:
//         <ol type="a">
//             <li>Inclination                         difference less than      0.10 degrees</li>
//             <li>Angular Momentum Vector             difference less than      0.15 degrees</li>
//             <li>Perigee Height                      difference less than        25 km</li>
//             <li>Period                              difference less than      0.15 minutes</li>
//             <li>Eccentricity                        difference less than     0.005</li>
//             <li>argument of perigee (when e&gt;.005)   difference less than         5 degrees</li>
//         </ol></li>
//     <li>CLOSE element comparison, if all the following criteria are met:
//         <ol type="a">
//             <li>Inclination                         difference less than      0.15 degrees</li>
//             <li>Angular Momentum Vector             difference less than      0.30 degrees</li>
//             <li>Perigee Height                      difference less than        75 km</li>
//             <li>Period                              difference less than      0.50 minutes</li>
//             <li>Eccentricity                        difference less than     0.015 </li>
//             <li>argument of perigee (when e&gt;.005)   difference less than        10 degrees</li>
//         </ol></li>
//     <li>MAYBE element comparison, if all of the following criteria are met:
//         <ol type="a">
//             <li>Inclination                         difference less than      0.25 degrees</li>
//             <li>Angular Momentum Vector             difference less than      0.50 degrees</li>
//             <li>Perigee Height                      difference less than       100 km</li>
//             <li>Period                              difference less than      10.0 minutes</li>
//             <li>Eccentricity                        difference less than     0.025</li>
//             <li>argument of perigee (when e&gt;.005)   difference less than        20 degrees</li>
//         </ol></li>
//     <li>If none of the combined criteria are met as described above, then ElComp found NONE in
//          the satellite comparison. The user may define their own criteria or use the automatic/
//          default criteria summarized above.</li>
// </ol>
// <br>
// Order of elements in the input xa_ecdiff array:
// <table>
//     <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td> 0 </td><td> inclination difference criteria for FULL evaluation, [degrees]</td></tr>
// <tr><td> 1 </td><td> inclination difference criteria for CLOSE evaluation, [degrees]</td></tr>
// <tr><td> 2 </td><td> inclination difference criteria for MAYBE evaluation, [degrees]</td></tr>
// <tr><td> 3 </td><td> w Angular Momentum Vector dot product criteria for FULL evalutation, [degrees]</td></tr>
// <tr><td> 4 </td><td> w Angular Momentum Vector dot product criteria for CLOSE evalutation, [degrees]</td></tr>
// <tr><td> 5 </td><td> w Angular Momentum Vector dot product criteria for MAYBE evalutation, [degrees]</td></tr>
// <tr><td> 6 </td><td> Perigee height difference criteria for FULL evaluation, [kilometers]</td></tr>
// <tr><td> 7 </td><td> Perigee height difference criteria for CLOSE evaluation, [kilometers]</td></tr>
// <tr><td> 8 </td><td> Perigee height difference criteria for MAYBE evaluation, [kilometers]</td></tr>
// <tr><td> 9 </td><td> Eccentricity difference criteria for FULL evaluation</td></tr>
// <tr><td>10 </td><td> Eccentricity difference criteria for CLOSE evaluation</td></tr>
// <tr><td>11 </td><td> Eccentricity difference criteria for MAYBE evaluation</td></tr>
// <tr><td>12 </td><td> Period difference criteria for FULL evaluation</td></tr>
// <tr><td>13 </td><td> Period difference criteria for CLOSE evaluation</td></tr>
// <tr><td>14 </td><td> Period difference criteria for MAYBE evaluation</td></tr>
// <tr><td>15 </td><td> Argument of Perigee difference criteria for FULL evaluation</td></tr>
// <tr><td>16 </td><td> Argument of Perigee difference criteria for CLOSE evaluation</td></tr>
// <tr><td>17 </td><td> Argument of Perigee difference criteria for MAYBE evaluation</td></tr>
// <tr><td>18-31 </td><td> unused at this time </td></tr> 
// </table>      
void ElCompGetCriteria(double xa_ecdiff[32]);

// ElCompGetResults executes ELCOMP, Element Comparison, to evaluate two element sets loaded
//   via their satKeys 
// <br>
// <br>
// ELCOMP software description:
// <br>
//   ElCompGetResults executes ELCOMP, Element Comparison, to evaluate two element sets loaded
//   via their satKeys 
// <br>
// <br>
// ELCOMP algorithm:
// <br>
//   ELCOMP uses inclination, right ascension of ascending node, perigee height, eccentricity,
//   period, argument of perigee, nodal crossing time, orbit plane alignment (via dot product
//   between the primary and secondary angular momentum vectors), and East Longitude (for
//   Geosynchronous orbits) to evaluate the degree of similarity between primary and secondary
//   element sets (orbit definitions) in terms of their relative size, shape, and orientation.
//   ELCOMP computes a correction, due to drag, to the nodal crossing time for each elset as part
//   of the nodal crossing time-difference evaluation. Because the epoch times of the primary and
//   secondary element sets are rarely the same, ELCOMP updates time-variant quantities to a
//   common time prior to element comparison.  Element sets with epochs that differ by more than
//   90 days are not evaluated.  Time-variant quantities updated to a common time include:
//   Right Ascension of Ascending Node, Argument of Perigee, and East Longitude (for Geosynchronous
//   oribts).  Time-variant quantities are updated to a common time by using the difference in
//   epoch times between the primary and secondary element sets and by determining the change
//   in argument of perigee with respect to time, the change in Right Ascension of Ascending
//   Node with respect to time, and for geosynchronous orbits, the East Longitude drift rate. 
//   ELCOMP also sets the nodal-crossing time criteria according to orbit type and epoch age,
//   allowing for longer nodal-crossing time differences for deep-space orbits versus near-Earth,
//   and longer time differences with greater differences in epoch, while also taking into account
//   perigee height for more circular orbits.  Argument of perigee is evaluated for eccentricities
//   greater than 0.005 only.  This is because for very-near circular orbits, the argement of perigee
//   becomes ill-defined such that perigee may vary widely due to epoch time difference, when in
//   fact the orbits are the same.  User-specified or default thresholds, along with orbital
//   element comparison differences are used by ELCOMP to produce an element comparison association
//   status for each primary-secondary pair.  Association statuses include FULL, CLOSE, MAYBE,
//   and NONE.  A typical application for ELCOMP is to automate determining if a new or external
//   element set is a duplicate or very similar element set to an existing internal element set
//   within a large catalog of element sets.
// <br>
// <br>
// INPUTS include:
// <table>
//   <caption>table</caption>
//   <tr><td>(a)</td><td> Primary element set to compare</td></tr>
//   <tr><td>(b)</td><td> Secondary element set to be compared against</td></tr>
//   <tr>
//       <td>(c)</td>
//       <td> 
//          Specified orbital element comparison threshold values for FULL, CLOSE, MAYBE, and NONE
//       association statuses.  Specified element comparison thresholds include:
//         <br>
//         <ul>
//         <li>inclination</li>
//         <li>plane</li>
//         <li>perigee height</li>
//         <li>eccentricity</li>
//         <li>period</li>
//         <li>argument of perigee </li>
//         </ul>
//       </td>
//   </tr>
// </table>
// <br>
// <br>
// OUTPUTS include:
//   (a) Evaluation results of FULL, CLOSE, MAYBE, or NONE for each primary-secondary element
//       set pair
// <br>
// Order of the input xa_elcom_pri(16) array - primary TLE satellite data:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>0 </td><td> inclination [degrees]</td></tr>
// <tr><td>1 </td><td> right ascension of ascending node [degrees]</td></tr>
// <tr><td>2 </td><td> eccentricity [unitless]</td></tr>
// <tr><td>3 </td><td> argument of perigee [degrees]</td></tr>
// <tr><td>4 </td><td> mean anomaly [degrees]</td></tr>
// <tr><td>5 </td><td> mean motion [revs/day]</td></tr>
// <tr><td>6 </td><td> epoch [fractional days since 1950]</td></tr>
// <tr><td>7-15 </td><td> not used at this time</td></tr>
// </table>   
// Order of the input xa_elcomp_sec(16) array - secondary TLE sat data, is same order as primary
// <br>
// Order of the output xa_elcomp_deltas(16) array - delta quantities between primary and secondary
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>0 </td><td> delta Inclination [degrees]</td></tr>
// <tr><td>1 </td><td> delta Right Ascension of Ascending Node (RAAN) [degrees]</td></tr>
// <tr><td>2 </td><td> delta Perigeee Height [kilometers]</td></tr>
// <tr><td>3 </td><td> delta Orbital Period [minutes]</td></tr>
// <tr><td>4 </td><td> delta Coplanar angle (dot product of the w angular momentum vetors) [degrees]</td></tr>
// <tr><td>5 </td><td> delta Right Ascension dot (rate of change of the delta RAAN) [degrees/day]</td></tr>
// <tr><td>6 </td><td> delta Nodal crossing time [minutes]</td></tr>
// <tr><td>7 </td><td> number of fractional days to achieve 0.0 delta in RAAN, if &lt; 60 days</td></tr>
// <tr><td>8 </td><td> Flag - sustained close approach possible, if non-zero</td></tr>
// <tr><td>9 </td><td> Flag - possible constellation member, if non-zero</td></tr>
// </table>   
// <br>
//  elcom_astat possible return values:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Value</b></td>
// <td><b>Interpretation</b></td>
// </tr>
// <tr><td>1 </td><td> FULL</td></tr>
// <tr><td>2 </td><td> CLOSE</td></tr>
// <tr><td>3 </td><td> MAYBE</td></tr>
// <tr><td>4 </td><td> NONE</td></tr>
// </table>   
int ElCompGetResults(long priSatKey, long secSatKey, int checkDeltaTime, double xa_elcom_pri[16], double xa_elcom_sec[16], double xa_elcom_deltas[16], int* elcom_astat);

// This is a thread-safe version of the ElCompGetResults
int ElCompGetResults_MT(double xa_ecdiff[32], long priSatKey, long secSatKey, int checkDeltaTime, double xa_elcom_pri[16], double xa_elcom_sec[16], double xa_elcom_deltas[16], int* elcom_astat);

// Returns comparison results between two elsets without loading the elsets into memory
// See ElCompGetResults for a description of the input and output values.
void ElCompFrElData(int checkDeltaTime, double xa_elcom_pri[16], double xa_elcom_sec[16], double xa_elcom_deltas[16], int* elcom_astat);

// This is a threa-safe version of ElCompFrElData
void ElCompFrElData_MT(double xa_ecdiff[32], int checkDeltaTime, double xa_elcom_pri[16], double xa_elcom_sec[16], double xa_elcom_deltas[16], int* elcom_astat);

// Resets criteria to default values for ElComp 
void ElCompResetCriteria();

// Sets up criteria for Coco 
// See CocoGetCriteria for a description of the input and output values.
void CocoSetCriteria(double xa_ecdiff[32]);

// Retrieves criteria settings for Coco
// <br>
// Order of elements in the input xa_ecdiff array:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td> 0 </td><td> inclination difference criteria for SAME evaluation, [degrees]</td></tr>
// <tr><td> 1 </td><td> inclination difference criteria for CLOSE evaluation, [degrees]</td></tr>
// <tr><td> 2 </td><td> inclination difference criteria for NEARBY evaluation, [degrees]</td></tr>
// <tr><td> 3 </td><td> w Angular Momentum Vector dot product criteria for SAME evalutation, [degrees]</td></tr>
// <tr><td> 4 </td><td> w Angular Momentum Vector dot product criteria for CLOSE evalutation, [degrees]</td></tr>
// <tr><td> 5 </td><td> w Angular Momentum Vector dot product criteria for NEARBY evalutation, [degrees]</td></tr>
// <tr><td> 6 </td><td> Perigee height difference criteria for SAME evaluation, [kilometers]</td></tr>
// <tr><td> 7 </td><td> Perigee height difference criteria for CLOSE evaluation, [kilometers]</td></tr>
// <tr><td> 8 </td><td> Perigee height difference criteria for NEARBY evaluation, [kilometers]</td></tr>
// <tr><td> 9 </td><td> Eccentricity difference criteria for SAME evaluation</td></tr>
// <tr><td>10 </td><td> Eccentricity difference criteria for CLOSE evaluation</td></tr>
// <tr><td>11 </td><td> Eccentricity difference criteria for NEARBY evaluation</td></tr>
// <tr><td>12 </td><td> Period difference criteria for SAME evaluation</td></tr>
// <tr><td>13 </td><td> Period difference criteria for CLOSE evaluation</td></tr>
// <tr><td>14 </td><td> Period difference criteria for NEARBY evaluation</td></tr>
// <tr><td>15 </td><td> Argument of Perigee difference criteria for SAME evaluation</td></tr>
// <tr><td>16 </td><td> Argument of Perigee difference criteria for CLOSE evaluation</td></tr>
// <tr><td>17 </td><td> Argument of Perigee difference criteria for NEARBY evaluation</td></tr>
// <tr><td>18-31 </td><td> unused at this time</td></tr>
// </table>   
void CocoGetCriteria(double xa_ecdiff[32]);

//   CocoGetResults executes COCO, Computation of coplanar Orbits, to evaluate two element sets
//   loaded via their satKeys.   
// COCO software description:
//   CocoGetResults executes COCO, Computation of coplanar Orbits, to evaluate two element sets
//   loaded via their satKeys.   
// COCO algortihm:
//   A primary element set is compared to a secondary element set using criteria summarized
//   above. The program uses data from standard two-line element sets (TLEs) as input.  The COCO
//   program was modified to allow for nodal crossing time comparison when the input element sets
//   are not at the node, and thereby addresses various inherent Keplerian orbital-element
//   comparison difficulties by accounting for nodal-crossing time differences between primary
//   and secondary element sets which are rarely epoched to the time of nodal crossing. COCO
//   uses inclination, right ascension of ascending node, perigee height, eccentricity, period,
//   argument of perigee, and nodal crossing time (via dot product between the primary and secondary
//   angular momentum vectors), to evaluate the degree of coplanarness between a primary and 
//   secondary element set in terms of their relative size, shape, and orientation.  COCO 
//   computes a correction, due to drag, to the nodal crossing time for each elset as part of 
//   the nodal cross time-difference evaluation.
// INPUTS include:
//   (a) Primary element set to compare
//   (b) Secondary element set to be compared against
//   (c) Specified orbital element threshold values for SAME, CLOSE, and NEARBY coplanar
//       definitions. Specified orbital element thresholds include:
//         inclination
//         plane
//         perigee height
//         eccentricity
//         period
//         argument of perigee 
// OUTPUTS include:
//   (a) Evaluation results of SAME, CLOSE, NEARBY, or NO MATCH for each primary-secondary element
//       set pair
//   (b) Special advisories for comparisons that evaluate to:
//         SUSTAINED CLOSE APPROACH POSSIBLE
//         POSSIBLE CONSTELLATION MEMBER
//         RIGHT ASCENSION OF ASCENDING NODE DIFFERENCE WILL BE 0.0 WITHIN 60 DAYS (along with the
//         estimated number of days to 0.0 degrees nodal nodal crossing difference)
int CocoGetResults(long priSatKey, long secSatKey, double xa_satData_pri[16], double xa_satData_sec[16], double xa_coco[16], int* coco_astat);

// This is a thread-safe version of CocoGetResults
int CocoGetResults_MT(double xa_ecdiff[32], long priSatKey, long secSatKey, double xa_satData_pri[16], double xa_satData_sec[16], double xa_coco[16], int* coco_astat);

//   CocoGetResultsWOA executes COCO, Computation of coplanar Orbits, to evaluate two element sets
//   loaded via their satKeys. It's similar to CocoGetResults but without returning the ASTAT value
int CocoGetResultsWOA(long priSatKey, long secSatKey, double xa_satData_pri[16], double xa_satData_sec[16], double xa_coco[16]);

// Returns comparison results between two elsets without loading the elsets into TLE dll
void CocoFrElData(double xa_satData_pri[16], double xa_satData_sec[16], double xa_coco[16], int* coco_astat);

// This is a thread-safe version of CocoFrElData
void CocoFrElData_MT(double xa_ecdiff[32], double xa_satData_pri[16], double xa_satData_sec[16], double xa_coco[16], int* coco_astat);

// Returns comparison results between two elsets without loading the elsets into TLE dll. It's similar to CocoFrElData but without returning the ASTAT value
void CocoFrElDataWOA(double xa_satData_pri[16], double xa_satData_sec[16], double xa_coco[16]);

// Resets criteria to default values for Coco 
void CocoResetCriteria();

// indexes for ElComp reference sat data and deltas
// inclination (deg)
#define XA_ELCOM_INCLI      0
// right ascension of the asending node (deg)
#define XA_ELCOM_NODE       1
// eccentricity (unitless)
#define XA_ELCOM_E          2
// argument of perigee (deg)
#define XA_ELCOM_OMEGA      3
// mean anomaly (deg)
#define XA_ELCOM_MNANOM     4
// mean motion (revs/day)
#define XA_ELCOM_MNMOTION   5
// epoch in days since 1950, UTC
#define XA_ELCOM_EPOCH      6

// perigee height (km)
#define XA_ELCOM_PHT        7
// period (min)
#define XA_ELCOM_PERIOD     8
// delta t between nodal crossing times (min)
#define XA_ELCOM_TNODE      9
// delta east longitude for geo satellites (deg)
#define XA_ELCOM_LONGE     10

#define XA_ELCOM_SIZE      16

// indexes for setting criteria for full, close, maybe
// incli diff in deg - full
#define XA_ECDIFF_INCMAX1    0
// incli diff in deg - close
#define XA_ECDIFF_INCMAX2    1
// incli diff in deg - maybe
#define XA_ECDIFF_INCMAX3    2

// W vector dot product in deg - full
#define XA_ECDIFF_RAMAX1     3
// W vector dot product in deg - close
#define XA_ECDIFF_RAMAX2     4
// W vector dot product in deg - maybe
#define XA_ECDIFF_RAMAX3     5

// perigee height diff in km - full
#define XA_ECDIFF_PHTMAX1    6
// perigee height diff in km - close
#define XA_ECDIFF_PHTMAX2    7
// perigee height diff in km - maybe
#define XA_ECDIFF_PHTMAX3    8

// eccentricity diff - full
#define XA_ECDIFF_ECCMAX1    9
// eccentricity diff - close
#define XA_ECDIFF_ECCMAX2   10
// eccentricity diff - maybe
#define XA_ECDIFF_ECCMAX3   11

// period diff in min - full
#define XA_ECDIFF_PERMAX1   12
// period diff in min - close
#define XA_ECDIFF_PERMAX2   13
// period diff in min - maybe
#define XA_ECDIFF_PERMAX3   14

// argument of perigee diff in deg - full
#define XA_ECDIFF_APMAX1    15
// argument of perigee diff in deg - close
#define XA_ECDIFF_APMAX2    16
// argument of perigee diff in deg - maybe
#define XA_ECDIFF_APMAX3    17

#define XA_ECDIFF_SIZE      32

// indexes for association status from ElComp
// "FULL" association
#define ELCOM_ASTAT_FULL   1
// "CLOSE" association
#define ELCOM_ASTAT_CLOSE  2
// "MAYBE" association
#define ELCOM_ASTAT_MAYBE  3
// "NONE" association
#define ELCOM_ASTAT_NONE   4

// indexes for setting criteria for full, close, maybe
// incli diff in deg - same
#define XA_COCODIFF_INCMAX1    0
// incli diff in deg - close
#define XA_COCODIFF_INCMAX2    1
// incli diff in deg - near-by
#define XA_COCODIFF_INCMAX3    2

// W vector dot product in deg - same
#define XA_COCODIFF_RAMAX1     3
// W vector dot product in deg - close
#define XA_COCODIFF_RAMAX2     4
// W vector dot product in deg - near-by
#define XA_COCODIFF_RAMAX3     5

// perigee height diff in km - same
#define XA_COCODIFF_PHTMAX1    6
// perigee height diff in km - close
#define XA_COCODIFF_PHTMAX2    7
// perigee height diff in km - near-by
#define XA_COCODIFF_PHTMAX3    8

// period diff in min - same
#define XA_COCODIFF_PERMAX1    9
// period diff in min - close
#define XA_COCODIFF_PERMAX2   10
// period diff in min - near-by
#define XA_COCODIFF_PERMAX3   11

#define XA_COCODIFF_SIZE      32


// indexes for Coco sat data and coplanar deltas fields
// inclination (deg)
#define XA_SATDATA_INCLI      0
// right ascension of the asending node (deg)
#define XA_SATDATA_NODE       1
// eccentricity (unitless)
#define XA_SATDATA_E          2
// argument of perigee (deg)
#define XA_SATDATA_OMEGA      3
// mean anomaly (deg)
#define XA_SATDATA_MNANOM     4
// mean motion (revs/day)
#define XA_SATDATA_MNMOTION   5
// epoch in days since 1950, UTC
#define XA_SATDATA_EPOCH      6

// perigee height (km)
#define XA_SATDATA_PHT        7
// period (min)
#define XA_SATDATA_PERIOD     8

#define XA_SATDATA_SIZE      16


// indexes for Coco sat data and coplanar deltas fields
// inclination (deg)
#define XA_COCO_INCLI      0
// right ascension of the asending node (deg)
#define XA_COCO_NODE       1
// perigee height (km)
#define XA_COCO_PHT        2
// period (min)
#define XA_COCO_PERIOD     3
// coplanar angle (dot the w vectors) (deg)
#define XA_COCO_WDOT       4
// right ascension dot (deg/day)
#define XA_COCO_RADOT      5
// nodal crossing (min)
#define XA_COCO_TNODE      6
// time in days to approach 0.0 RA delta
#define XA_COCO_TZERO      7
// sustained close approach possible
#define XA_COCO_SCAP       8
// potential constellation member
#define XA_COCO_PCM        9
// time in ds50UTC when primary at nodal crossing (prior to its epoch)
#define XA_COCO_PNODALX   10
// time in ds50UTC when secondary at nodal crossing (after primary nodal crossing time)
#define XA_COCO_SNODALX   11

#define XA_COCO_SIZE      16


// indexes for association status from COCO
// "SAME" association
#define COCO_ASTAT_SAME    1
// "CLOSE" association
#define COCO_ASTAT_CLOSE   2
// "NEARBY" association
#define COCO_ASTAT_NEARBY  3
// "NONE" association
#define COCO_ASTAT_NONE    5

// ========================= End of auto generated code ==========================
