// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes ElComp dll for use in the program 
   pub fn ElCompInit(apAddr: i64) -> i32;
   //  Returns information about the current version of ElComp.dll. The information is placed in the
   //  string parameter passed-in
   pub fn ElCompGetInfo(infoStr: *const c_char);
   //  ElCompSetCriteria for ElComp 'Manual' mode which replaces default association status criteria
   //  for "FULL", including primary vs. secondary element comparison difference thresholds in 
   //  inclination, coplanar angle (determined as the dot product of the primary and secondary 
   //  angular momentum vectors), perigee height, eccentricity, orbital period, and argument of perigee.
   //  See ElCompGetCriteria for a description of the xa_ecdiff array.
   pub fn ElCompSetCriteria(xa_ecdiff: *const [f64; 32]);
   //  Retrieves criteria settings for ElComp
   //  <br>
   //  ElCompGetCriteria establishes the difference thresholds the element comparison program uses
   //  to evaluate the association statuses between the primary and secondary element sets.  The
   //  following values are the default settings for ELCOMP:
   //  <br>
   //  <ol type="1">
   //      <li>FULL element comparison, if all of the following criteria are met:
   //          <ol type="a">
   //              <li>Inclination                         difference less than      0.10 degrees</li>
   //              <li>Angular Momentum Vector             difference less than      0.15 degrees</li>
   //              <li>Perigee Height                      difference less than        25 km</li>
   //              <li>Period                              difference less than      0.15 minutes</li>
   //              <li>Eccentricity                        difference less than     0.005</li>
   //              <li>argument of perigee (when e&gt;.005)   difference less than         5 degrees</li>
   //          </ol></li>
   //      <li>CLOSE element comparison, if all the following criteria are met:
   //          <ol type="a">
   //              <li>Inclination                         difference less than      0.15 degrees</li>
   //              <li>Angular Momentum Vector             difference less than      0.30 degrees</li>
   //              <li>Perigee Height                      difference less than        75 km</li>
   //              <li>Period                              difference less than      0.50 minutes</li>
   //              <li>Eccentricity                        difference less than     0.015 </li>
   //              <li>argument of perigee (when e&gt;.005)   difference less than        10 degrees</li>
   //          </ol></li>
   //      <li>MAYBE element comparison, if all of the following criteria are met:
   //          <ol type="a">
   //              <li>Inclination                         difference less than      0.25 degrees</li>
   //              <li>Angular Momentum Vector             difference less than      0.50 degrees</li>
   //              <li>Perigee Height                      difference less than       100 km</li>
   //              <li>Period                              difference less than      10.0 minutes</li>
   //              <li>Eccentricity                        difference less than     0.025</li>
   //              <li>argument of perigee (when e&gt;.005)   difference less than        20 degrees</li>
   //          </ol></li>
   //      <li>If none of the combined criteria are met as described above, then ElComp found NONE in
   //           the satellite comparison. The user may define their own criteria or use the automatic/
   //           default criteria summarized above.</li>
   //  </ol>
   //  <br>
   //  Order of elements in the input xa_ecdiff array:
   //  <table>
   //      <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td> 0 </td><td> inclination difference criteria for FULL evaluation, [degrees]</td></tr>
   //  <tr><td> 1 </td><td> inclination difference criteria for CLOSE evaluation, [degrees]</td></tr>
   //  <tr><td> 2 </td><td> inclination difference criteria for MAYBE evaluation, [degrees]</td></tr>
   //  <tr><td> 3 </td><td> w Angular Momentum Vector dot product criteria for FULL evalutation, [degrees]</td></tr>
   //  <tr><td> 4 </td><td> w Angular Momentum Vector dot product criteria for CLOSE evalutation, [degrees]</td></tr>
   //  <tr><td> 5 </td><td> w Angular Momentum Vector dot product criteria for MAYBE evalutation, [degrees]</td></tr>
   //  <tr><td> 6 </td><td> Perigee height difference criteria for FULL evaluation, [kilometers]</td></tr>
   //  <tr><td> 7 </td><td> Perigee height difference criteria for CLOSE evaluation, [kilometers]</td></tr>
   //  <tr><td> 8 </td><td> Perigee height difference criteria for MAYBE evaluation, [kilometers]</td></tr>
   //  <tr><td> 9 </td><td> Eccentricity difference criteria for FULL evaluation</td></tr>
   //  <tr><td>10 </td><td> Eccentricity difference criteria for CLOSE evaluation</td></tr>
   //  <tr><td>11 </td><td> Eccentricity difference criteria for MAYBE evaluation</td></tr>
   //  <tr><td>12 </td><td> Period difference criteria for FULL evaluation</td></tr>
   //  <tr><td>13 </td><td> Period difference criteria for CLOSE evaluation</td></tr>
   //  <tr><td>14 </td><td> Period difference criteria for MAYBE evaluation</td></tr>
   //  <tr><td>15 </td><td> Argument of Perigee difference criteria for FULL evaluation</td></tr>
   //  <tr><td>16 </td><td> Argument of Perigee difference criteria for CLOSE evaluation</td></tr>
   //  <tr><td>17 </td><td> Argument of Perigee difference criteria for MAYBE evaluation</td></tr>
   //  <tr><td>18-31 </td><td> unused at this time </td></tr> 
   //  </table>      
   pub fn ElCompGetCriteria(xa_ecdiff: *mut [f64; 32]);
   //  ElCompGetResults executes ELCOMP, Element Comparison, to evaluate two element sets loaded
   //    via their satKeys 
   //  <br>
   //  <br>
   //  ELCOMP software description:
   //  <br>
   //    ElCompGetResults executes ELCOMP, Element Comparison, to evaluate two element sets loaded
   //    via their satKeys 
   //  <br>
   //  <br>
   //  ELCOMP algorithm:
   //  <br>
   //    ELCOMP uses inclination, right ascension of ascending node, perigee height, eccentricity,
   //    period, argument of perigee, nodal crossing time, orbit plane alignment (via dot product
   //    between the primary and secondary angular momentum vectors), and East Longitude (for
   //    Geosynchronous orbits) to evaluate the degree of similarity between primary and secondary
   //    element sets (orbit definitions) in terms of their relative size, shape, and orientation.
   //    ELCOMP computes a correction, due to drag, to the nodal crossing time for each elset as part
   //    of the nodal crossing time-difference evaluation. Because the epoch times of the primary and
   //    secondary element sets are rarely the same, ELCOMP updates time-variant quantities to a
   //    common time prior to element comparison.  Element sets with epochs that differ by more than
   //    90 days are not evaluated.  Time-variant quantities updated to a common time include:
   //    Right Ascension of Ascending Node, Argument of Perigee, and East Longitude (for Geosynchronous
   //    oribts).  Time-variant quantities are updated to a common time by using the difference in
   //    epoch times between the primary and secondary element sets and by determining the change
   //    in argument of perigee with respect to time, the change in Right Ascension of Ascending
   //    Node with respect to time, and for geosynchronous orbits, the East Longitude drift rate. 
   //    ELCOMP also sets the nodal-crossing time criteria according to orbit type and epoch age,
   //    allowing for longer nodal-crossing time differences for deep-space orbits versus near-Earth,
   //    and longer time differences with greater differences in epoch, while also taking into account
   //    perigee height for more circular orbits.  Argument of perigee is evaluated for eccentricities
   //    greater than 0.005 only.  This is because for very-near circular orbits, the argement of perigee
   //    becomes ill-defined such that perigee may vary widely due to epoch time difference, when in
   //    fact the orbits are the same.  User-specified or default thresholds, along with orbital
   //    element comparison differences are used by ELCOMP to produce an element comparison association
   //    status for each primary-secondary pair.  Association statuses include FULL, CLOSE, MAYBE,
   //    and NONE.  A typical application for ELCOMP is to automate determining if a new or external
   //    element set is a duplicate or very similar element set to an existing internal element set
   //    within a large catalog of element sets.
   //  <br>
   //  <br>
   //  INPUTS include:
   //  <table>
   //    <caption>table</caption>
   //    <tr><td>(a)</td><td> Primary element set to compare</td></tr>
   //    <tr><td>(b)</td><td> Secondary element set to be compared against</td></tr>
   //    <tr>
   //        <td>(c)</td>
   //        <td> 
   //           Specified orbital element comparison threshold values for FULL, CLOSE, MAYBE, and NONE
   //        association statuses.  Specified element comparison thresholds include:
   //          <br>
   //          <ul>
   //          <li>inclination</li>
   //          <li>plane</li>
   //          <li>perigee height</li>
   //          <li>eccentricity</li>
   //          <li>period</li>
   //          <li>argument of perigee </li>
   //          </ul>
   //        </td>
   //    </tr>
   //  </table>
   //  <br>
   //  <br>
   //  OUTPUTS include:
   //    (a) Evaluation results of FULL, CLOSE, MAYBE, or NONE for each primary-secondary element
   //        set pair
   //  <br>
   //  Order of the input xa_elcom_pri(16) array - primary TLE satellite data:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td>0 </td><td> inclination [degrees]</td></tr>
   //  <tr><td>1 </td><td> right ascension of ascending node [degrees]</td></tr>
   //  <tr><td>2 </td><td> eccentricity [unitless]</td></tr>
   //  <tr><td>3 </td><td> argument of perigee [degrees]</td></tr>
   //  <tr><td>4 </td><td> mean anomaly [degrees]</td></tr>
   //  <tr><td>5 </td><td> mean motion [revs/day]</td></tr>
   //  <tr><td>6 </td><td> epoch [fractional days since 1950]</td></tr>
   //  <tr><td>7-15 </td><td> not used at this time</td></tr>
   //  </table>   
   //  Order of the input xa_elcomp_sec(16) array - secondary TLE sat data, is same order as primary
   //  <br>
   //  Order of the output xa_elcomp_deltas(16) array - delta quantities between primary and secondary
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td>0 </td><td> delta Inclination [degrees]</td></tr>
   //  <tr><td>1 </td><td> delta Right Ascension of Ascending Node (RAAN) [degrees]</td></tr>
   //  <tr><td>2 </td><td> delta Perigeee Height [kilometers]</td></tr>
   //  <tr><td>3 </td><td> delta Orbital Period [minutes]</td></tr>
   //  <tr><td>4 </td><td> delta Coplanar angle (dot product of the w angular momentum vetors) [degrees]</td></tr>
   //  <tr><td>5 </td><td> delta Right Ascension dot (rate of change of the delta RAAN) [degrees/day]</td></tr>
   //  <tr><td>6 </td><td> delta Nodal crossing time [minutes]</td></tr>
   //  <tr><td>7 </td><td> number of fractional days to achieve 0.0 delta in RAAN, if &lt; 60 days</td></tr>
   //  <tr><td>8 </td><td> Flag - sustained close approach possible, if non-zero</td></tr>
   //  <tr><td>9 </td><td> Flag - possible constellation member, if non-zero</td></tr>
   //  </table>   
   //  <br>
   //   elcom_astat possible return values:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Value</b></td>
   //  <td><b>Interpretation</b></td>
   //  </tr>
   //  <tr><td>1 </td><td> FULL</td></tr>
   //  <tr><td>2 </td><td> CLOSE</td></tr>
   //  <tr><td>3 </td><td> MAYBE</td></tr>
   //  <tr><td>4 </td><td> NONE</td></tr>
   //  </table>   
   pub fn ElCompGetResults(priSatKey: i64, secSatKey: i64, checkDeltaTime: i32, xa_elcom_pri: *mut [f64; 16], xa_elcom_sec: *mut [f64; 16], xa_elcom_deltas: *mut [f64; 16], elcom_astat: *mut i32) -> i32;
   //  This is a thread-safe version of the ElCompGetResults
   pub fn ElCompGetResults_MT(xa_ecdiff: *const [f64; 32], priSatKey: i64, secSatKey: i64, checkDeltaTime: i32, xa_elcom_pri: *mut [f64; 16], xa_elcom_sec: *mut [f64; 16], xa_elcom_deltas: *mut [f64; 16], elcom_astat: *mut i32) -> i32;
   //  Returns comparison results between two elsets without loading the elsets into memory
   //  See ElCompGetResults for a description of the input and output values.
   pub fn ElCompFrElData(checkDeltaTime: i32, xa_elcom_pri: *const [f64; 16], xa_elcom_sec: *const [f64; 16], xa_elcom_deltas: *mut [f64; 16], elcom_astat: *mut i32);
   //  This is a threa-safe version of ElCompFrElData
   pub fn ElCompFrElData_MT(xa_ecdiff: *const [f64; 32], checkDeltaTime: i32, xa_elcom_pri: *const [f64; 16], xa_elcom_sec: *const [f64; 16], xa_elcom_deltas: *mut [f64; 16], elcom_astat: *mut i32);
   //  Resets criteria to default values for ElComp 
   pub fn ElCompResetCriteria();
   //  Sets up criteria for Coco 
   //  See CocoGetCriteria for a description of the input and output values.
   pub fn CocoSetCriteria(xa_ecdiff: *const [f64; 32]);
   //  Retrieves criteria settings for Coco
   //  <br>
   //  Order of elements in the input xa_ecdiff array:
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td> 0 </td><td> inclination difference criteria for SAME evaluation, [degrees]</td></tr>
   //  <tr><td> 1 </td><td> inclination difference criteria for CLOSE evaluation, [degrees]</td></tr>
   //  <tr><td> 2 </td><td> inclination difference criteria for NEARBY evaluation, [degrees]</td></tr>
   //  <tr><td> 3 </td><td> w Angular Momentum Vector dot product criteria for SAME evalutation, [degrees]</td></tr>
   //  <tr><td> 4 </td><td> w Angular Momentum Vector dot product criteria for CLOSE evalutation, [degrees]</td></tr>
   //  <tr><td> 5 </td><td> w Angular Momentum Vector dot product criteria for NEARBY evalutation, [degrees]</td></tr>
   //  <tr><td> 6 </td><td> Perigee height difference criteria for SAME evaluation, [kilometers]</td></tr>
   //  <tr><td> 7 </td><td> Perigee height difference criteria for CLOSE evaluation, [kilometers]</td></tr>
   //  <tr><td> 8 </td><td> Perigee height difference criteria for NEARBY evaluation, [kilometers]</td></tr>
   //  <tr><td> 9 </td><td> Eccentricity difference criteria for SAME evaluation</td></tr>
   //  <tr><td>10 </td><td> Eccentricity difference criteria for CLOSE evaluation</td></tr>
   //  <tr><td>11 </td><td> Eccentricity difference criteria for NEARBY evaluation</td></tr>
   //  <tr><td>12 </td><td> Period difference criteria for SAME evaluation</td></tr>
   //  <tr><td>13 </td><td> Period difference criteria for CLOSE evaluation</td></tr>
   //  <tr><td>14 </td><td> Period difference criteria for NEARBY evaluation</td></tr>
   //  <tr><td>15 </td><td> Argument of Perigee difference criteria for SAME evaluation</td></tr>
   //  <tr><td>16 </td><td> Argument of Perigee difference criteria for CLOSE evaluation</td></tr>
   //  <tr><td>17 </td><td> Argument of Perigee difference criteria for NEARBY evaluation</td></tr>
   //  <tr><td>18-31 </td><td> unused at this time</td></tr>
   //  </table>   
   pub fn CocoGetCriteria(xa_ecdiff: *mut [f64; 32]);
   //    CocoGetResults executes COCO, Computation of coplanar Orbits, to evaluate two element sets
   //    loaded via their satKeys.   
   //  COCO software description:
   //    CocoGetResults executes COCO, Computation of coplanar Orbits, to evaluate two element sets
   //    loaded via their satKeys.   
   //  COCO algortihm:
   //    A primary element set is compared to a secondary element set using criteria summarized
   //    above. The program uses data from standard two-line element sets (TLEs) as input.  The COCO
   //    program was modified to allow for nodal crossing time comparison when the input element sets
   //    are not at the node, and thereby addresses various inherent Keplerian orbital-element
   //    comparison difficulties by accounting for nodal-crossing time differences between primary
   //    and secondary element sets which are rarely epoched to the time of nodal crossing. COCO
   //    uses inclination, right ascension of ascending node, perigee height, eccentricity, period,
   //    argument of perigee, and nodal crossing time (via dot product between the primary and secondary
   //    angular momentum vectors), to evaluate the degree of coplanarness between a primary and 
   //    secondary element set in terms of their relative size, shape, and orientation.  COCO 
   //    computes a correction, due to drag, to the nodal crossing time for each elset as part of 
   //    the nodal cross time-difference evaluation.
   //  INPUTS include:
   //    (a) Primary element set to compare
   //    (b) Secondary element set to be compared against
   //    (c) Specified orbital element threshold values for SAME, CLOSE, and NEARBY coplanar
   //        definitions. Specified orbital element thresholds include:
   //          inclination
   //          plane
   //          perigee height
   //          eccentricity
   //          period
   //          argument of perigee 
   //  OUTPUTS include:
   //    (a) Evaluation results of SAME, CLOSE, NEARBY, or NO MATCH for each primary-secondary element
   //        set pair
   //    (b) Special advisories for comparisons that evaluate to:
   //          SUSTAINED CLOSE APPROACH POSSIBLE
   //          POSSIBLE CONSTELLATION MEMBER
   //          RIGHT ASCENSION OF ASCENDING NODE DIFFERENCE WILL BE 0.0 WITHIN 60 DAYS (along with the
   //          estimated number of days to 0.0 degrees nodal nodal crossing difference)
   pub fn CocoGetResults(priSatKey: i64, secSatKey: i64, xa_satData_pri: *mut [f64; 16], xa_satData_sec: *mut [f64; 16], xa_coco: *mut [f64; 16], coco_astat: *mut i32) -> i32;
   //  This is a thread-safe version of CocoGetResults
   pub fn CocoGetResults_MT(xa_ecdiff: *const [f64; 32], priSatKey: i64, secSatKey: i64, xa_satData_pri: *mut [f64; 16], xa_satData_sec: *mut [f64; 16], xa_coco: *mut [f64; 16], coco_astat: *mut i32) -> i32;
   //    CocoGetResultsWOA executes COCO, Computation of coplanar Orbits, to evaluate two element sets
   //    loaded via their satKeys. It's similar to CocoGetResults but without returning the ASTAT value
   pub fn CocoGetResultsWOA(priSatKey: i64, secSatKey: i64, xa_satData_pri: *mut [f64; 16], xa_satData_sec: *mut [f64; 16], xa_coco: *mut [f64; 16]) -> i32;
   //  Returns comparison results between two elsets without loading the elsets into TLE dll
   pub fn CocoFrElData(xa_satData_pri: *const [f64; 16], xa_satData_sec: *const [f64; 16], xa_coco: *mut [f64; 16], coco_astat: *mut i32);
   //  This is a thread-safe version of CocoFrElData
   pub fn CocoFrElData_MT(xa_ecdiff: *const [f64; 32], xa_satData_pri: *const [f64; 16], xa_satData_sec: *const [f64; 16], xa_coco: *mut [f64; 16], coco_astat: *mut i32);
   //  Returns comparison results between two elsets without loading the elsets into TLE dll. It's similar to CocoFrElData but without returning the ASTAT value
   pub fn CocoFrElDataWOA(xa_satData_pri: *const [f64; 16], xa_satData_sec: *const [f64; 16], xa_coco: *mut [f64; 16]);
   //  Resets criteria to default values for Coco 
   pub fn CocoResetCriteria();
}
   
   // indexes for ElComp reference sat data and deltas
   // inclination (deg)
   pub static XA_ELCOM_INCLI: i32 =  0;
   // right ascension of the asending node (deg)
   pub static XA_ELCOM_NODE: i32 =  1;
   // eccentricity (unitless)
   pub static XA_ELCOM_E: i32 =  2;
   // argument of perigee (deg)
   pub static XA_ELCOM_OMEGA: i32 =  3;
   // mean anomaly (deg)
   pub static XA_ELCOM_MNANOM: i32 =  4;
   // mean motion (revs/day)
   pub static XA_ELCOM_MNMOTION: i32 =  5;
   // epoch in days since 1950, UTC
   pub static XA_ELCOM_EPOCH: i32 =  6;
   
   // perigee height (km)
   pub static XA_ELCOM_PHT: i32 =  7;
   // period (min)
   pub static XA_ELCOM_PERIOD: i32 =  8;
   // delta t between nodal crossing times (min)
   pub static XA_ELCOM_TNODE: i32 =  9;
   // delta east longitude for geo satellites (deg)
   pub static XA_ELCOM_LONGE: i32 = 10;
   
   pub static XA_ELCOM_SIZE: i32 = 16;
   
   // indexes for setting criteria for full, close, maybe
   // incli diff in deg - full
   pub static XA_ECDIFF_INCMAX1: i32 =  0;
   // incli diff in deg - close
   pub static XA_ECDIFF_INCMAX2: i32 =  1;
   // incli diff in deg - maybe
   pub static XA_ECDIFF_INCMAX3: i32 =  2;
   
   // W vector dot product in deg - full
   pub static XA_ECDIFF_RAMAX1: i32 =  3;
   // W vector dot product in deg - close
   pub static XA_ECDIFF_RAMAX2: i32 =  4;
   // W vector dot product in deg - maybe
   pub static XA_ECDIFF_RAMAX3: i32 =  5;
   
   // perigee height diff in km - full
   pub static XA_ECDIFF_PHTMAX1: i32 =  6;
   // perigee height diff in km - close
   pub static XA_ECDIFF_PHTMAX2: i32 =  7;
   // perigee height diff in km - maybe
   pub static XA_ECDIFF_PHTMAX3: i32 =  8;
   
   // eccentricity diff - full
   pub static XA_ECDIFF_ECCMAX1: i32 =  9;
   // eccentricity diff - close
   pub static XA_ECDIFF_ECCMAX2: i32 = 10;
   // eccentricity diff - maybe
   pub static XA_ECDIFF_ECCMAX3: i32 = 11;
   
   // period diff in min - full
   pub static XA_ECDIFF_PERMAX1: i32 = 12;
   // period diff in min - close
   pub static XA_ECDIFF_PERMAX2: i32 = 13;
   // period diff in min - maybe
   pub static XA_ECDIFF_PERMAX3: i32 = 14;
   
   // argument of perigee diff in deg - full
   pub static XA_ECDIFF_APMAX1: i32 = 15;
   // argument of perigee diff in deg - close
   pub static XA_ECDIFF_APMAX2: i32 = 16;
   // argument of perigee diff in deg - maybe
   pub static XA_ECDIFF_APMAX3: i32 = 17;
   
   pub static XA_ECDIFF_SIZE: i32 = 32;
   
   // indexes for association status from ElComp
   // "FULL" association
   pub static ELCOM_ASTAT_FULL: i32 = 1;
   // "CLOSE" association
   pub static ELCOM_ASTAT_CLOSE: i32 = 2;
   // "MAYBE" association
   pub static ELCOM_ASTAT_MAYBE: i32 = 3;
   // "NONE" association
   pub static ELCOM_ASTAT_NONE: i32 = 4;
   
   // indexes for setting criteria for full, close, maybe
   // incli diff in deg - same
   pub static XA_COCODIFF_INCMAX1: i32 =  0;
   // incli diff in deg - close
   pub static XA_COCODIFF_INCMAX2: i32 =  1;
   // incli diff in deg - near-by
   pub static XA_COCODIFF_INCMAX3: i32 =  2;
   
   // W vector dot product in deg - same
   pub static XA_COCODIFF_RAMAX1: i32 =  3;
   // W vector dot product in deg - close
   pub static XA_COCODIFF_RAMAX2: i32 =  4;
   // W vector dot product in deg - near-by
   pub static XA_COCODIFF_RAMAX3: i32 =  5;
   
   // perigee height diff in km - same
   pub static XA_COCODIFF_PHTMAX1: i32 =  6;
   // perigee height diff in km - close
   pub static XA_COCODIFF_PHTMAX2: i32 =  7;
   // perigee height diff in km - near-by
   pub static XA_COCODIFF_PHTMAX3: i32 =  8;
   
   // period diff in min - same
   pub static XA_COCODIFF_PERMAX1: i32 =  9;
   // period diff in min - close
   pub static XA_COCODIFF_PERMAX2: i32 = 10;
   // period diff in min - near-by
   pub static XA_COCODIFF_PERMAX3: i32 = 11;
   
   pub static XA_COCODIFF_SIZE: i32 = 32;
   
   
   // indexes for Coco sat data and coplanar deltas fields
   // inclination (deg)
   pub static XA_SATDATA_INCLI: i32 =  0;
   // right ascension of the asending node (deg)
   pub static XA_SATDATA_NODE: i32 =  1;
   // eccentricity (unitless)
   pub static XA_SATDATA_E: i32 =  2;
   // argument of perigee (deg)
   pub static XA_SATDATA_OMEGA: i32 =  3;
   // mean anomaly (deg)
   pub static XA_SATDATA_MNANOM: i32 =  4;
   // mean motion (revs/day)
   pub static XA_SATDATA_MNMOTION: i32 =  5;
   // epoch in days since 1950, UTC
   pub static XA_SATDATA_EPOCH: i32 =  6;
   
   // perigee height (km)
   pub static XA_SATDATA_PHT: i32 =  7;
   // period (min)
   pub static XA_SATDATA_PERIOD: i32 =  8;
   
   pub static XA_SATDATA_SIZE: i32 = 16;
   
   
   // indexes for Coco sat data and coplanar deltas fields
   // inclination (deg)
   pub static XA_COCO_INCLI: i32 =  0;
   // right ascension of the asending node (deg)
   pub static XA_COCO_NODE: i32 =  1;
   // perigee height (km)
   pub static XA_COCO_PHT: i32 =  2;
   // period (min)
   pub static XA_COCO_PERIOD: i32 =  3;
   // coplanar angle (dot the w vectors) (deg)
   pub static XA_COCO_WDOT: i32 =  4;
   // right ascension dot (deg/day)
   pub static XA_COCO_RADOT: i32 =  5;
   // nodal crossing (min)
   pub static XA_COCO_TNODE: i32 =  6;
   // time in days to approach 0.0 RA delta
   pub static XA_COCO_TZERO: i32 =  7;
   // sustained close approach possible
   pub static XA_COCO_SCAP: i32 =  8;
   // potential constellation member
   pub static XA_COCO_PCM: i32 =  9;
   // time in ds50UTC when primary at nodal crossing (prior to its epoch)
   pub static XA_COCO_PNODALX: i32 = 10;
   // time in ds50UTC when secondary at nodal crossing (after primary nodal crossing time)
   pub static XA_COCO_SNODALX: i32 = 11;
   
   pub static XA_COCO_SIZE: i32 = 16;
   
   
   // indexes for association status from COCO
   // "SAME" association
   pub static COCO_ASTAT_SAME: i32 = 1;
   // "CLOSE" association
   pub static COCO_ASTAT_CLOSE: i32 = 2;
   // "NEARBY" association
   pub static COCO_ASTAT_NEARBY: i32 = 3;
   // "NONE" association
   pub static COCO_ASTAT_NONE: i32 = 5;
   
// ========================= End of auto generated code ==========================
