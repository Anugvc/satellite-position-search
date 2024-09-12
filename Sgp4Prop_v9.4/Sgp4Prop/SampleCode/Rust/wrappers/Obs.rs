// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes Obs DLL for use in the program
   pub fn ObsInit(apAddr: i64) -> i32;
   //  Returns information about the current version of Obs DLL. 
   //  The information is placed in the string parameter passed in.
   pub fn ObsGetInfo(infoStr: *const c_char);
   //  Sets the year for transmission observation format (TTY) input files
   pub fn ObsSetTTYYear(ttyYear: i32);
   //  Loads observation data from an input text file
   pub fn ObsLoadFile(obsFile: *const c_char) -> i32;
   //  Saves the currently loaded obs data to a file
   pub fn ObsSaveFile(obsFile: *const c_char, saveMode: i32, obsForm: i32) -> i32;
   //  Removes an obs, represented by the obsKey, from the set of currently loaded observations
   pub fn ObsRemove(obsKey: i64) -> i32;
   //  Removes all currently loaded observations from memory
   pub fn ObsRemoveAll() -> i32;
   //  Returns the number of observations currently loaded
   pub fn ObsGetCount() -> i32;
   //  Retrieves all of the currently loaded obsKeys. These obsKeys can be used to access the internal data for the observations
   //  Sort options (order):
   //  (+/-)1 = (descending/ascending) time, sensor, obsType, elev
   //  (+/-)2 = (descending/ascending) time, elevation
   //  (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
   //  (+/-)4 = (descending/ascending) sensor, satno, time, elev
   //  (+/-)5 = (descending/ascending) sensor, time, elevation
   //  (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
   //  (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
   //  (+/-)8 = (reversed/same)        order as obs were read
   //  9 : as is in the tree
   pub fn ObsGetLoaded(order: i32, obsKeys: *mut i64);
   //  Loads a single observation-typed card
   pub fn ObsLoadCard(card: *const c_char) -> i32;
   //  Loads a one-line or two-line observation 
   pub fn ObsLoadTwoCards(card1: *const c_char, card2: *const c_char) -> i32;
   //  Adds an observation from a string in B3 observation format
   pub fn ObsAddFrB3Card(card: *const c_char) -> i64;
   //  Works like ObsAddFrB3Card but designed for Matlab
   pub fn ObsAddFrB3CardML(card: *const c_char, obsKey: *mut i64);
   //  Converts B3 format to csv format without loading B3 obs into memory
   pub fn ObsB3ToCsv(card: *const c_char, csvLine: *const c_char) -> i32;
   //  Converts CSV format to B3 format without loading CSV obs into memory
   pub fn ObsCsvToB3(csvLine: *const c_char, newSatno: i32, card: *const c_char) -> i32;
   //  Adds an observation from a TTY (1 line or 2 lines) observation format
   pub fn ObsAddFrTTYCards(card1: *const c_char, card2: *const c_char) -> i64;
   //  Works like ObsAddFrTTYCards but designed for Matlab
   pub fn ObsAddFrTTYCardsML(card1: *const c_char, card2: *const c_char, obsKey: *mut i64);
   //  Converts TTY format to CSV format without loading TTY obs into memory
   pub fn ObsTTYToCsv(card1: *const c_char, card2: *const c_char, csvLine: *const c_char) -> i32;
   //  Converts CSV format to TTY format without loading CSV obs into memory
   pub fn ObsCsvToTTY(csvLine: *const c_char, newSatno: i32, card1: *const c_char, card2: *const c_char) -> i32;
   //  Adds one observation using csv obs string 
   pub fn ObsAddFrCsv(csvLine: *const c_char) -> i64;
   //  Adds one observation using csv obs string - for MatLab
   pub fn ObsAddFrCsvML(csvLine: *const c_char, obsKey: *mut i64);
   //  Adds one observation using its input data. Depending on the observation type, some input data might be unavailable and left blank
   pub fn ObsAddFrFields(secClass: c_char, satNum: i32, senNum: i32, obsTimeDs50utc: f64, elOrDec: f64, azOrRA: f64, range: f64, rangeRate: f64, elRate: f64, azRate: f64, rangeAccel: f64, obsType: c_char, trackInd: i32, astat: i32, siteTag: i32, spadocTag: i32, pos: *const [f64; 3], vel: *const [f64; 3], extArr: *const [f64; 128]) -> i64;
   //  Works like ObsAddFrFields but designed for Matlab
   pub fn ObsAddFrFieldsML(secClass: c_char, satNum: i32, senNum: i32, obsTimeDs50utc: f64, elOrDec: f64, azOrRA: f64, range: f64, rangeRate: f64, elRate: f64, azRate: f64, rangeAccel: f64, obsType: c_char, trackInd: i32, astat: i32, siteTag: i32, spadocTag: i32, pos: *const [f64; 3], vel: *const [f64; 3], extArr: *const [f64; 128], obsKey: *mut i64);
   //  Adds one observation using its input data stored in an array. Depending on the observation type, some input data might be unavailable and left blank
   pub fn ObsAddFrArray(xa_obs: *const [f64; 64]) -> i64;
   //  Works like ObsAddFrArray but designed for Matlab
   pub fn ObsAddFrArrayML(xa_obs: *const [f64; 64], obsKey: *mut i64);
   //  Retrieves all observation data in a single function call. Depending on the observation type, some input data might be unavailable
   pub fn ObsGetAllFields(obsKey: i64, secClass: *const c_char, satNum: *mut i32, senNum: *mut i32, obsTimeDs50utc: *mut f64, elOrDec: *mut f64, azOrRA: *mut f64, range: *mut f64, rangeRate: *mut f64, elRate: *mut f64, azRate: *mut f64, rangeAccel: *mut f64, obsType: *const c_char, trackInd: *mut i32, astat: *mut i32, siteTag: *mut i32, spadocTag: *mut i32, pos: *mut [f64; 3], vel: *mut [f64; 3], extArr: *mut [f64; 128]) -> i32;
   //  Retrieves observation data and stored it in the passing array. Depending on the observation type, some data fields might be unavailable
   //  See ObsGetField for description of xa_obs elements
   pub fn ObsDataToArray(obsKey: i64, xa_obs: *mut [f64; 64]) -> i32;
   //  Updates existing observation data with the provided new data
   pub fn ObsUpdateFrFields(obsKey: i64, secClass: c_char, elOrDec: f64, azOrRA: f64, range: f64, rangeRate: f64, elRate: f64, azRate: f64, rangeAccel: f64, obsType: c_char, trackInd: i32, astat: i32, siteTag: i32, spadocTag: i32, pos: *const [f64; 3], vel: *const [f64; 3], extArr: *const [f64; 128]) -> i32;
   //  Retrieves the value of a specific field of an observation
   pub fn ObsGetField(obsKey: i64, xf_Obs: i32, strValue: *const c_char) -> i32;
   //  Updates the value of a field of an observation
   //  See ObsGetField for a description of the xf_Obs parameter.
   //  Satellite number, sensor number, and observation time are not allowed to be updated.
   pub fn ObsSetField(obsKey: i64, xf_Obs: i32, strValue: *const c_char) -> i32;
   //  Returns observation in B3-card string
   pub fn ObsGetB3Card(obsKey: i64, b3Card: *const c_char) -> i32;
   //  Returns observation in TTY-card string
   pub fn ObsGetTTYCard(obsKey: i64, ttyCard1: *const c_char, ttyCard2: *const c_char) -> i32;
   //  Returns observation in CSV-format string
   pub fn ObsGetCsv(obsKey: i64, csvline: *const c_char) -> i32;
   //  Constructs a B3-card string from the input observation data fields
   pub fn ObsFieldsToB3Card(secClass: c_char, satNum: i32, senNum: i32, obsTimeDs50utc: f64, elOrDec: f64, azOrRA: f64, range: f64, rangeRate: f64, elRate: f64, azRate: f64, rangeAccel: f64, obsType: c_char, trackInd: i32, astat: i32, siteTag: i32, spadocTag: i32, pos: *const [f64; 3], b3Card: *const c_char);
   //  Constructs a csv string from the input observation data fields
   pub fn ObsFieldsToCsv(secClass: c_char, satNum: i32, senNum: i32, obsTimeDs50utc: f64, elOrDec: f64, azOrRA: f64, range: f64, rangeRate: f64, elRate: f64, azRate: f64, rangeAccel: f64, obsType: c_char, trackInd: i32, astat: i32, siteTag: i32, spadocTag: i32, pos: *const [f64; 3], csvLine: *const c_char);
   //  Constructs a TTY-card string from the input observation data fields
   pub fn ObsFieldsToTTYCard(secClass: c_char, satNum: i32, senNum: i32, obsTimeDs50utc: f64, elOrDec: f64, azOrRA: f64, range: f64, rangeRate: f64, elRate: f64, azRate: f64, rangeAccel: f64, obsType: c_char, pos: *const [f64; 3], ttyCard1: *const c_char, ttyCard2: *const c_char);
   //  Computes an obsKey from individually provided fields
   pub fn ObsFieldsToObsKey(satNum: i32, senNum: i32, obsTimeDs50utc: f64) -> i64;
   //  Works like ObsFieldsToObsKey but designed for Matlab
   pub fn ObsFieldsToObsKeyML(satNum: i32, senNum: i32, obsTimeDs50utc: f64, obsKey: *mut i64);
   //  Parses observation data from a B3-card (or B3E) string / one-line TTY / or CSV - Converts obs data to TEME of Date if neccessary
   pub fn ObsB3Parse(b3ObsCard: *const c_char, secClass: *const c_char, satNum: *mut i32, senNum: *mut i32, obsTimeDs50utc: *mut f64, elOrDec: *mut f64, azOrRA: *mut f64, range: *mut f64, rangeRate: *mut f64, elRate: *mut f64, azRate: *mut f64, rangeAccel: *mut f64, obsType: *const c_char, trackInd: *mut i32, astat: *mut i32, siteTag: *mut i32, spadocTag: *mut i32, pos: *mut [f64; 3]) -> i32;
   //  Parses any observation data format (B3-card (or B3E) string / one or two line TTY / CSV - No conversion takes place
   pub fn ObsParse(line1: *const c_char, line2: *const c_char, xa_obs: *mut [f64; 64]) -> i32;
   //  Loads observation data from an input text file and group them together in the specified groupd id (gid).
   //  This allows the users to easily manage (load/retrieve/remove/save) a group of observations using the group id (gid)
   pub fn ObsLoadFileGID(obsFile: *const c_char, gid: i32) -> i32;
   //  Saves the currently loaded obs data belong to the specified group id (gid) to a file 
   pub fn ObsSaveFileGID(obsFile: *const c_char, gid: i32, saveMode: i32, obsForm: i32) -> i32;
   //  Removes all observations belong to the specified group id (gid) from the set of currently loaded observations
   pub fn ObsRemoveGID(gid: i32) -> i32;
   //  Returns the number of observations currently loaded that have the same gid
   pub fn ObsGetCountGID(gid: i32) -> i32;
   //  Retrieves all of the currently loaded obsKeys that have the same gid. These obsKeys can be used to access the internal data for the observations
   //  Sort options (order):
   //  (+/-)1 = (descending/ascending) time, sensor, obsType, elev
   //  (+/-)2 = (descending/ascending) time, elevation
   //  (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
   //  (+/-)4 = (descending/ascending) sensor, satno, time, elev
   //  (+/-)5 = (descending/ascending) sensor, time, elevation
   //  (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
   //  (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
   //  (+/-)8 = (reversed/same)        order as obs were read
   //  9 : as is in the tree
   pub fn ObsGetLoadedGID(gid: i32, order: i32, obsKeys: *mut i64);
   //  Converts obs type from character to integer
   pub fn ObsTypeCToI(obsTypeChar: c_char) -> i32;
   //  Converts obs type from integer to character
   pub fn ObsTypeIToC(obsTypeInt: i32) -> c_char;
   //  Resets obs selection settings
   pub fn ObsResetSelObs();
   //  Computes other states of the input observation
   //  <br>
   //  The table below indicates which index values correspond to which fields in the xa_obState array.
   //  <table>
   //  <caption>table</caption>
   //  <tr>
   //  <td><b>Index</b></td>
   //  <td><b>Index Interpretation</b></td>
   //  </tr>
   //  <tr><td>0</td><td>Satellite number</td></tr>
   //  <tr><td>1</td><td>Sensor number</td></tr>
   //  <tr><td>2</td><td>Observation time in DS50UTC</td></tr>
   //  <tr><td>10</td><td>Position X/ECI (km)</td></tr>
   //  <tr><td>11</td><td>Position Y/ECI (km)</td></tr>
   //  <tr><td>12</td><td>Position Z/ECI (km)</td></tr>
   //  <tr><td>13</td><td>Velocity X/ECI (km/s)</td></tr>
   //  <tr><td>14</td><td>Velocity Y/ECI (km/s)</td></tr>
   //  <tr><td>15</td><td>Velocity Z/ECI (km/s)</td></tr>
   //  <tr><td>16</td><td>Geodetic latitude (deg)</td></tr>
   //  <tr><td>17</td><td>Geodetic longitude (deg)</td></tr>
   //  <tr><td>18</td><td>Geodetic height (km)</td></tr>
   //  <tr><td>19</td><td>Position X/EFG (km)</td></tr>
   //  <tr><td>20</td><td>Position Y/EFG (km)</td></tr>
   //  <tr><td>21</td><td>Position Z/EFG (km)</td></tr>
   //  </table>
   pub fn ObsGetStates(obsKey: i64, range_km: f64, xa_obState: *mut [f64; 64]) -> i32;
   //  Computes observation states from the observation data
   //  See ObsGetStates for a list of the values for the xa_obState parameter.
   pub fn ObsDataToStates(xa_obs: *const [f64; 64], xa_obState: *mut [f64; 64]) -> i32;
   //  Reconstructs obs string (B3-card/one or two line TTY/CSV) from obs data in the input array xa_obs
   pub fn ObsArrToLines(xa_obs: *const [f64; 64], obsForm: i32, line1: *const c_char, line2: *const c_char) -> i32;
   //  Sets OBS key mode
   //  This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_OBS_ON" -
   //  and is currently calling any of these methods: DllMainLoadFile(), or ObsLoadFile()
   pub fn SetObsKeyMode(obs_keyMode: i32) -> i32;
   //  Gets current OBS key mode
   pub fn GetObsKeyMode() -> i32;
   //  Returs the satellite number associated with the input obsKey
   pub fn SatNumFrObsKey(obsKey: i64) -> i32;
   //  Returs the sensor number associated with the input obsKey
   pub fn SenNumFrObsKey(obsKey: i64) -> i32;
   //  Retrieves only obs that match the selection criteria
   pub fn ObsGetSelected(xa_selob: *const [f64; 128], order: i32, numMatchedObss: *mut i32, obsKeys: *mut i64);
}
   
   // Equinox indicator
   // time of observation
   pub static EQUINOX_OBSTIME: i32 = 0;
   // time @ 0 Jan Year of Date
   pub static EQUINOX_OBSYEAR: i32 = 1;
   // J2000
   pub static EQUINOX_J2K: i32 = 2;
   // B1950
   pub static EQUINOX_B1950: i32 = 3;
   
   // Indexes for sorting ob
   // Sort options:
   // (+/-) 1 = (descending/ascending) time, sensor, obsType, elev
   // (+/-) 2 = (descending/ascending) time, elevation
   // (+/-) 3 = (descending/ascending) time, sensor, otype, el, satno
   // (+/-) 4 = (descending/ascending) sensor, satno, time, elev
   // (+/-) 5 = (descending/ascending) sensor, time, elevation
   // (+/-) 6 = (descending/ascending) sensor, satno, obsType, time, elev
   // (+/-) 7 = (descending/ascending) satno, time, sensor, otype, el
   // (+/-)10 = (descending/ascending) satno, sensor, time
   
   // sort order is time, sensor, obsType, elev (negative value for reverse order)
   pub static SORT_TIMESENTYPEEL: i32 =  1;
   // sort order is time, elevation (negative value for reverse order)
   pub static SORT_TIMEEL: i32 =  2;
   // sort order is time, sensor, otype, el, satno (negative value for reverse order)
   pub static SORT_TIMESENTYPEELSAT: i32 =  3;
   // sort order is sensor, satno, time, elev (negative value for reverse order)
   pub static SORT_SENSATTIMEEL: i32 =  4;
   // sort order is sensor, time, elevation (negative value for reverse order)
   pub static SORT_SENTIMEEL: i32 =  5;
   // sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
   pub static SORT_SENSATTYPETIMEEL: i32 =  6;
   // sort order is satno, time, sensor, otype, el (negative value for reverse order)
   pub static SORT_SATTIMESENTYPEEL: i32 =  7;
   // sort order is the order of obs when they were loaded
   pub static SORT_ORDERASREAD: i32 =  8;
   // sort order is satno, sensor, time (negative value for reverse order)
   pub static SORT_SATSENTIME: i32 = 10;
   
   
   // Indexes of different obs file format
   // B3 obs format
   pub static OBSFORM_B3: i32 = 0;
   // Transmission obs format
   pub static OBSFORM_TTY: i32 = 1;
   // CSV obs format
   pub static OBSFORM_CSV: i32 = 2;
   // Radio Frequency (TDOA/FDOA) observations
   pub static OBSFORM_RF: i32 = 3;
   
   pub static BADOBSKEY: i32 = -1;
   pub static DUPOBSKEY: i32 = 0;
   
   
   // Different key mode options for obsKey
   // Default - duplicate obs can not be loaded in binary tree
   pub static OBS_KEYMODE_NODUP: i32 = 0;
   // Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   pub static OBS_KEYMODE_DMA: i32 = 1;
   
   // CSV sigma type indicator
   pub static CSVSIGMATYPE: i32 = 7;
   
   // Indexes of Observation data fields
   // security classification
   pub static XF_OBS_SECCLASS: i32 =  1;
   // satellite number
   pub static XF_OBS_SATNUM: i32 =  2;
   // sensor number
   pub static XF_OBS_SENNUM: i32 =  3;
   // observation time in days since 1950 UTC
   pub static XF_OBS_DS50UTC: i32 =  4;
   // elevation (deg)
   pub static XF_OBS_ELEVATION: i32 =  5;
   // declination (deg)
   pub static XF_OBS_DECLINATION: i32 =  6;
   // azimuth (deg)
   pub static XF_OBS_AZIMUTH: i32 =  7;
   // right-ascension (deg)
   pub static XF_OBS_RA: i32 =  8;
   // range (km)
   pub static XF_OBS_RANGE: i32 =  9;
   // range rate (km/s)
   pub static XF_OBS_RANGERATE: i32 = 10;
   // elevation rate (deg/s)
   pub static XF_OBS_ELRATE: i32 = 11;
   // azimuth rate (deg/s)
   pub static XF_OBS_AZRATE: i32 = 12;
   // range acceleration (km/s^2)
   pub static XF_OBS_RANGEACCEL: i32 = 13;
   // observation type
   pub static XF_OBS_OBSTYPE: i32 = 14;
   // track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   pub static XF_OBS_TRACKIND: i32 = 15;
   // association status assigned by SPADOC
   pub static XF_OBS_ASTAT: i32 = 16;
   // original satellite number
   pub static XF_OBS_SITETAG: i32 = 17;
   // SPADOC-asssigned tag number
   pub static XF_OBS_SPADOCTAG: i32 = 18;
   // position X/EFG (km)
   pub static XF_OBS_POSE: i32 = 19;
   // position Y/EFG (km)
   pub static XF_OBS_POSF: i32 = 20;
   // position Z/EFG (km)
   pub static XF_OBS_POSG: i32 = 21;
   // position X/ECI (km)
   pub static XF_OBS_POSX: i32 = 22;
   // position Y/ECI (km)
   pub static XF_OBS_POSY: i32 = 23;
   // position Z/ECI (km)
   pub static XF_OBS_POSZ: i32 = 24;
   
   // Principal Polarization RCS
   pub static XF_OBS_RCS_PP: i32 = 25;
   // Orthogonal Polarization RCS
   pub static XF_OBS_RCS_OP: i32 = 26;
   // Principal Polarization RCS sigma
   pub static XF_OBS_RCS_PPS: i32 = 27;
   // Orthogonal Polarization RCS sigma
   pub static XF_OBS_RCS_OPS: i32 = 28;
   // Radar Signal to Noise Ratio
   pub static XF_OBS_SNR: i32 = 29;
   // Azimuth of Boresite
   pub static XF_OBS_BORE_AZ: i32 = 30;
   // Elevation of Boresite
   pub static XF_OBS_BORE_EL: i32 = 31;
   // Apparent Visual magnitude
   pub static XF_OBS_VISMAG: i32 = 32;
   // GEO Normalized Visual magnitude
   pub static XF_OBS_VISMAG_NORM: i32 = 33;
   // Solar Phase Angle
   pub static XF_OBS_SOL_PHASE: i32 = 34;
   // Frame Number
   pub static XF_OBS_FRAME: i32 = 35;
   // Aberration correction indicator (0=YES, 1=NO)
   pub static XF_OBS_ABERRATION: i32 = 36;
   // Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
   pub static XF_OBS_ASTAT_METHOD: i32 = 37;
   
   // Indexes of observation data in an array
   // security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   pub static XA_OBS_SECCLASS: i32 =  0;
   // satellite number
   pub static XA_OBS_SATNUM: i32 =  1;
   // sensor number
   pub static XA_OBS_SENNUM: i32 =  2;
   // observation time in days since 1950 UTC
   pub static XA_OBS_DS50UTC: i32 =  3;
   // observation type
   pub static XA_OBS_OBSTYPE: i32 = 11;
   
   
   // elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   pub static XA_OBS_ELORDEC: i32 =  4;
   // azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   pub static XA_OBS_AZORRA: i32 =  5;
   // range (km)
   pub static XA_OBS_RANGE: i32 =  6;
   // range rate (km/s) for non-optical obs type
   pub static XA_OBS_RANGERATE: i32 =  7;
   // elevation rate (deg/s)
   pub static XA_OBS_ELRATE: i32 =  8;
   // azimuth rate (deg/s)
   pub static XA_OBS_AZRATE: i32 =  9;
   // range acceleration (km/s^2)
   pub static XA_OBS_RANGEACCEL: i32 = 10;
   // track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   pub static XA_OBS_TRACKIND: i32 = 12;
   // association status assigned by SPADOC
   pub static XA_OBS_ASTAT: i32 = 13;
   // original satellite number
   pub static XA_OBS_SITETAG: i32 = 14;
   // SPADOC-asssigned tag number
   pub static XA_OBS_SPADOCTAG: i32 = 15;
   // position X/ECI or X/EFG (km)
   pub static XA_OBS_POSX: i32 = 16;
   // position Y/ECI or Y/EFG (km)
   pub static XA_OBS_POSY: i32 = 17;
   // position Z/ECI or Z/EFG (km)
   pub static XA_OBS_POSZ: i32 = 18;
   // velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   pub static XA_OBS_VELX: i32 = 19;
   // velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   pub static XA_OBS_VELY: i32 = 20;
   // velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   pub static XA_OBS_VELZ: i32 = 21;
   // year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   pub static XA_OBS_YROFEQNX: i32 = 22;
   // aberration indicator, 0-not corrected, 1-corrceted
   pub static XA_OBS_ABERRATION: i32 = 23;
   
   // AZ/RA bias (deg)
   pub static XA_OBS_AZORRABIAS: i32 = 33;
   // EL/DEC bias (deg)
   pub static XA_OBS_ELORDECBIAS: i32 = 34;
   // Range bias (km)
   pub static XA_OBS_RGBIAS: i32 = 35;
   // Range-rate bias (km/sec)
   pub static XA_OBS_RRBIAS: i32 = 36;
   // Time bias (sec)
   pub static XA_OBS_TIMEBIAS: i32 = 37;
   // AZ/RA rate bias (deg/sec)
   pub static XA_OBS_RAZORRABIAS: i32 = 38;
   // EL/DEC rate bias (deg/sec)
   pub static XA_OBS_RELORDECBIAS: i32 = 39;
   
   // individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
   pub static XA_OBS_SIGMATYPE: i32 = 40;
   // sigma - covariance element 1 - 6 elemens - Az sigma
   pub static XA_OBS_SIGMAEL1: i32 = 41;
   // sigma - covariance element 2 - 6 elemens - El sigma
   pub static XA_OBS_SIGMAEL2: i32 = 42;
   // sigma - covariance element 3 - 6 elemens - Range sigma
   pub static XA_OBS_SIGMAEL3: i32 = 43;
   // sigma - covariance element 4 - 6 elemens - Range rate sigma
   pub static XA_OBS_SIGMAEL4: i32 = 44;
   // sigma - covariance element 5 - 6 elemens - Az rate sigma
   pub static XA_OBS_SIGMAEL5: i32 = 45;
   // sigma - covariance element 6 - 6 elemens - El rate sigma
   pub static XA_OBS_SIGMAEL6: i32 = 46;
   // sigma - covariance element 7
   pub static XA_OBS_SIGMAEL7: i32 = 47;
   // sigma - covariance element 8
   pub static XA_OBS_SIGMAEL8: i32 = 48;
   // sigma - covariance element 9
   pub static XA_OBS_SIGMAEL9: i32 = 49;
   // sigma - covariance element 10
   pub static XA_OBS_SIGMAEL10: i32 = 50;
   // sigma - covariance element 11
   pub static XA_OBS_SIGMAEL11: i32 = 51;
   // sigma - covariance element 12
   pub static XA_OBS_SIGMAEL12: i32 = 52;
   // sigma - covariance element 13
   pub static XA_OBS_SIGMAEL13: i32 = 53;
   // sigma - covariance element 14
   pub static XA_OBS_SIGMAEL14: i32 = 54;
   // sigma - covariance element 15
   pub static XA_OBS_SIGMAEL15: i32 = 55;
   // sigma - covariance element 16
   pub static XA_OBS_SIGMAEL16: i32 = 56;
   // sigma - covariance element 17
   pub static XA_OBS_SIGMAEL17: i32 = 57;
   // sigma - covariance element 18
   pub static XA_OBS_SIGMAEL18: i32 = 58;
   // sigma - covariance element 19
   pub static XA_OBS_SIGMAEL19: i32 = 59;
   // sigma - covariance element 20
   pub static XA_OBS_SIGMAEL20: i32 = 60;
   // sigma - covariance element 21
   pub static XA_OBS_SIGMAEL21: i32 = 61;
   
   pub static XA_OBS_SIZE: i32 = 64;
   
   // Indexes of observation data in an array (Obs Type CSV specific)
   // security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   pub static XA_OTCSV_SECCLASS: i32 =  0;
   // satellite number
   pub static XA_OTCSV_SATNUM: i32 =  1;
   // sensor number
   pub static XA_OTCSV_SENNUM: i32 =  2;
   // observation time in days since 1950 UTC
   pub static XA_OTCSV_DS50UTC: i32 =  3;
   // elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   pub static XA_OTCSV_ELORDEC: i32 =  4;
   // azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   pub static XA_OTCSV_AZORRA: i32 =  5;
   // range (km)
   pub static XA_OTCSV_RANGE: i32 =  6;
   // range rate (km/s) for non-optical obs type
   pub static XA_OTCSV_RANGERATE: i32 =  7;
   // elevation rate (deg/s)
   pub static XA_OTCSV_ELRATE: i32 =  8;
   // azimuth rate (deg/s)
   pub static XA_OTCSV_AZRATE: i32 =  9;
   // range acceleration (km/s^2)
   pub static XA_OTCSV_RANGEACCEL: i32 = 10;
   // observation type
   pub static XA_OTCSV_OBSTYPE: i32 = 11;
   // track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   pub static XA_OTCSV_TRACKIND: i32 = 12;
   // association status assigned by SPADOC
   pub static XA_OTCSV_ASTAT: i32 = 13;
   // original satellite number
   pub static XA_OTCSV_SITETAG: i32 = 14;
   // SPADOC-asssigned tag number
   pub static XA_OTCSV_SPADOCTAG: i32 = 15;
   // position X/ECI or X/EFG (km)
   pub static XA_OTCSV_POSX: i32 = 16;
   // position Y/ECI or Y/EFG (km)
   pub static XA_OTCSV_POSY: i32 = 17;
   // position Z/ECI or Z/EFG (km)
   pub static XA_OTCSV_POSZ: i32 = 18;
   // velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   pub static XA_OTCSV_VELX: i32 = 19;
   // velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   pub static XA_OTCSV_VELY: i32 = 20;
   // velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   pub static XA_OTCSV_VELZ: i32 = 21;
   // year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   pub static XA_OTCSV_YROFEQNX: i32 = 22;
   
   // Principal Polarization RCS
   pub static XA_OTCSV_RCS_PP: i32 = 23;
   // Orthogonal Polarization RCS
   pub static XA_OTCSV_RCS_OP: i32 = 24;
   // Principal Polarization RCS sigma
   pub static XA_OTCSV_RCS_PPS: i32 = 25;
   // Orthogonal Polarization RCS sigma
   pub static XA_OTCSV_RCS_OPS: i32 = 26;
   // Radar Signal to Noise Ratio
   pub static XA_OTCSV_SNR: i32 = 27;
   // Azimuth of Boresite
   pub static XA_OTCSV_BORE_AZ: i32 = 28;
   // Elevation of Boresite
   pub static XA_OTCSV_BORE_EL: i32 = 29;
   // Apparent Visual magnitude
   pub static XA_OTCSV_VISMAG: i32 = 30;
   // GEO Normalized Visual magnitude
   pub static XA_OTCSV_VISMAG_NORM: i32 = 31;
   // Solar Phase Angle
   pub static XA_OTCSV_SOL_PHASE: i32 = 32;
   // Frame Number
   pub static XA_OTCSV_FRAME: i32 = 33;
   // Aberration correction indicator (0=YES, 1=NO)
   pub static XA_OTCSV_ABERRATION: i32 = 34;
   // 0 = ROTAS, 1 = TRACK
   pub static XA_OTCSV_ASTAT_METHOD: i32 = 35;
   
   // must equal to 7 to signify this is CSV format
   pub static XA_OTCSV_SIGMATYPE: i32 = 40;
   // sigma - covariance element 1 - Az sigma
   pub static XA_OTCSV_SIGMAEL1: i32 = 41;
   // sigma - covariance element 2 - El sigma
   pub static XA_OTCSV_SIGMAEL2: i32 = 42;
   // sigma - covariance element 3 - Range sigma
   pub static XA_OTCSV_SIGMAEL3: i32 = 43;
   // sigma - covariance element 4 - Range rate sigma
   pub static XA_OTCSV_SIGMAEL4: i32 = 44;
   // sigma - covariance element 5 - Az rate sigma
   pub static XA_OTCSV_SIGMAEL5: i32 = 45;
   // sigma - covariance element 6 - El rate sigma
   pub static XA_OTCSV_SIGMAEL6: i32 = 46;
   // sigma - covariance element 7 - Time sigma
   pub static XA_OTCSV_SIGMAEL7: i32 = 47;
   // AZ/RA bias
   pub static XA_OTCSV_BIAS1: i32 = 48;
   // EL/DEC bias
   pub static XA_OTCSV_BIAS2: i32 = 49;
   // Range bias
   pub static XA_OTCSV_BIAS3: i32 = 50;
   // Range-rate bias
   pub static XA_OTCSV_BIAS4: i32 = 51;
   // Time bias
   pub static XA_OTCSV_BIAS5: i32 = 52;
   
   
   pub static XA_OTCSV_SIZE: i32 = 64;
   
   // Indexes of observation data in an array
   // satellite number
   pub static XA_OBSTATE_SATNUM: i32 =  0;
   // sensor number
   pub static XA_OBSTATE_SENNUM: i32 =  1;
   // observation time in days since 1950 UTC
   pub static XA_OBSTATE_DS50UTC: i32 =  2;
   
   // position X/ECI (km)
   pub static XA_OBSTATE_POSX: i32 = 10;
   // position Y/ECI (km)
   pub static XA_OBSTATE_POSY: i32 = 11;
   // position Z/ECI (km)
   pub static XA_OBSTATE_POSZ: i32 = 12;
   // velocity X/ECI (km/s)
   pub static XA_OBSTATE_VELX: i32 = 13;
   // velocity Y/ECI (km/s)
   pub static XA_OBSTATE_VELY: i32 = 14;
   // velocity Z/ECI (km/s)
   pub static XA_OBSTATE_VELZ: i32 = 15;
   // geodetic latitude (deg)
   pub static XA_OBSTATE_LAT: i32 = 16;
   // geodetic longitude (deg)
   pub static XA_OBSTATE_LON: i32 = 17;
   // geodetic height (km)
   pub static XA_OBSTATE_HGHT: i32 = 18;
   // position X/EFG (km)
   pub static XA_OBSTATE_POSE: i32 = 19;
   // position Y/EFG (km)
   pub static XA_OBSTATE_POSF: i32 = 20;
   // position Z/EFG (km)
   pub static XA_OBSTATE_POSG: i32 = 21;
   
   
   pub static XA_OBSTATE_SIZE: i32 = 64;
   
   // Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
   // All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
   // range rate (km/s)
   pub static XA_OT0_RANGERATE: i32 =  7;
   
   // elevation (deg)
   pub static XA_OT1_ELEVATION: i32 =  4;
   // azimuth (deg)
   pub static XA_OT1_AZIMUTH: i32 =  5;
   
   // elevation (deg)
   pub static XA_OT2_ELEVATION: i32 =  4;
   // azimuth (deg)
   pub static XA_OT2_AZIMUTH: i32 =  5;
   // range (km)
   pub static XA_OT2_RANGE: i32 =  6;
   
   // elevation (deg)
   pub static XA_OT3_ELEVATION: i32 =  4;
   // azimuth (deg)
   pub static XA_OT3_AZIMUTH: i32 =  5;
   // range (km)
   pub static XA_OT3_RANGE: i32 =  6;
   // range rate (km/s)
   pub static XA_OT3_RANGERATE: i32 =  7;
   
   // elevation (deg)
   pub static XA_OT4_ELEVATION: i32 =  4;
   // azimuth (deg)
   pub static XA_OT4_AZIMUTH: i32 =  5;
   // range (km)
   pub static XA_OT4_RANGE: i32 =  6;
   // range rate (km/s)
   pub static XA_OT4_RANGERATE: i32 =  7;
   // elevation rate (deg/s)
   pub static XA_OT4_ELRATE: i32 =  8;
   // azimuth rate (deg/s)
   pub static XA_OT4_AZRATE: i32 =  9;
   // range acceleration (km/s^2)
   pub static XA_OT4_RANGEACCEL: i32 = 10;
   
   // declination (deg)
   pub static XA_OT5_DECL: i32 =  4;
   // right ascesion (deg)
   pub static XA_OT5_RIGHTASC: i32 =  5;
   // year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   pub static XA_OT5_YROFEQNX: i32 = 22;
   // ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   pub static XA_OT5_ABERRATION: i32 = 23;
   
   // range (km)
   pub static XA_OT6_RANGE: i32 =  6;
   
   // elevation (deg)
   pub static XA_OT8_ELEVATION: i32 =  4;
   // azimuth (deg)
   pub static XA_OT8_AZIMUTH: i32 =  5;
   // optional - range (km)
   pub static XA_OT8_RANGE: i32 =  6;
   // orbiting sensor position X/EFG (km)
   pub static XA_OT8_POSE: i32 = 16;
   // orbiting sensor position Y/EFG (km)
   pub static XA_OT8_POSF: i32 = 17;
   // orbiting sensor position Z/EFG (km)
   pub static XA_OT8_POSG: i32 = 18;
   
   // declination (deg)
   pub static XA_OT9_DECL: i32 =  4;
   // right ascesion (deg)
   pub static XA_OT9_RIGHTASC: i32 =  5;
   // optional - range (km)
   pub static XA_OT9_RANGE: i32 =  6;
   // orbiting sensor position X/EFG (km)
   pub static XA_OT9_POSE: i32 = 16;
   // orbiting sensor position Y/EFG (km)
   pub static XA_OT9_POSF: i32 = 17;
   // orbiting sensor position Z/EFG (km)
   pub static XA_OT9_POSG: i32 = 18;
   // year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   pub static XA_OT9_YROFEQNX: i32 = 22;
   // ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   pub static XA_OT9_ABERRATION: i32 = 23;
   
   // position X/ECI or X/EFG (km)
   pub static XA_OTP_POSX: i32 = 16;
   // position Y/ECI or Y/EFG (km)
   pub static XA_OTP_POSY: i32 = 17;
   // position Z/ECI or Z/EFG (km)
   pub static XA_OTP_POSZ: i32 = 18;
   
   // position X/ECI or X/EFG (km)
   pub static XA_OTV_POSX: i32 = 16;
   // position Y/ECI or Y/EFG (km)
   pub static XA_OTV_POSY: i32 = 17;
   // position Z/ECI or Z/EFG (km)
   pub static XA_OTV_POSZ: i32 = 18;
   // velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   pub static XA_OTV_VELX: i32 = 19;
   // velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   pub static XA_OTV_VELY: i32 = 20;
   // velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   pub static XA_OTV_VELZ: i32 = 21;
   
   pub static XA_OT_SIZE: i32 = 64;
   
   // Obs selection criteria
   // Seclection mode (unused for now)
   pub static XA_SELOB_MODE: i32 =  0;
   
   // From time
   pub static XA_SELOB_FRTIME: i32 =  1;
   // To time
   pub static XA_SELOB_TOTIME: i32 =  2;
   
   // From time
   pub static XA_SELOB_FRIDX: i32 =  3;
   // To time
   pub static XA_SELOB_TOIDX: i32 =  4;
   
   // Select any obs that match this satellite number #1
   pub static XA_SELOB_SAT1: i32 = 11;
   // Select any obs that match this satellite number #2
   pub static XA_SELOB_SAT2: i32 = 12;
   // Select any obs that match this satellite number #3
   pub static XA_SELOB_SAT3: i32 = 13;
   // Select any obs that match this satellite number #4
   pub static XA_SELOB_SAT4: i32 = 14;
   // Select any obs that match this satellite number #5
   pub static XA_SELOB_SAT5: i32 = 15;
   // Select any obs that match this satellite number #6
   pub static XA_SELOB_SAT6: i32 = 16;
   // Select any obs that match this satellite number #7
   pub static XA_SELOB_SAT7: i32 = 17;
   // Select any obs that match this satellite number #8
   pub static XA_SELOB_SAT8: i32 = 18;
   // Select any obs that match this satellite number #9
   pub static XA_SELOB_SAT9: i32 = 19;
   // Select any obs that match this satellite number #10
   pub static XA_SELOB_SAT10: i32 = 20;
   
   // Select any obs that are obtained by this sensor site #1
   pub static XA_SELOB_SEN1: i32 = 21;
   // Select any obs that are obtained by this sensor site #2
   pub static XA_SELOB_SEN2: i32 = 22;
   // Select any obs that are obtained by this sensor site #3
   pub static XA_SELOB_SEN3: i32 = 23;
   // Select any obs that are obtained by this sensor site #4
   pub static XA_SELOB_SEN4: i32 = 24;
   // Select any obs that are obtained by this sensor site #5
   pub static XA_SELOB_SEN5: i32 = 25;
   // Select any obs that are obtained by this sensor site #6
   pub static XA_SELOB_SEN6: i32 = 26;
   // Select any obs that are obtained by this sensor site #7
   pub static XA_SELOB_SEN7: i32 = 27;
   // Select any obs that are obtained by this sensor site #8
   pub static XA_SELOB_SEN8: i32 = 28;
   // Select any obs that are obtained by this sensor site #9
   pub static XA_SELOB_SEN9: i32 = 29;
   // Select any obs that are obtained by this sensor site #10
   pub static XA_SELOB_SEN10: i32 = 30;
   
   // Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
   pub static XA_SELOB_OT1: i32 = 31;
   // Select any obs that match this obs type #2
   pub static XA_SELOB_OT2: i32 = 32;
   // Select any obs that match this obs type #3
   pub static XA_SELOB_OT3: i32 = 33;
   // Select any obs that match this obs type #4
   pub static XA_SELOB_OT4: i32 = 34;
   // Select any obs that match this obs type #5
   pub static XA_SELOB_OT5: i32 = 35;
   // Select any obs that match this obs type #6
   pub static XA_SELOB_OT6: i32 = 36;
   // Select any obs that match this obs type #7
   pub static XA_SELOB_OT7: i32 = 37;
   // Select any obs that match this obs type #8
   pub static XA_SELOB_OT8: i32 = 38;
   // Select any obs that match this obs type #9
   pub static XA_SELOB_OT9: i32 = 39;
   // Select any obs that match this obs type #10
   pub static XA_SELOB_OT10: i32 = 40;
   
   // From azimuth
   pub static XA_SELOB_FRAZ: i32 = 41;
   // To azimuth
   pub static XA_SELOB_TOAZ: i32 = 42;
   // From elevation
   pub static XA_SELOB_FREL: i32 = 43;
   // To elevation
   pub static XA_SELOB_TOEL: i32 = 44;
   // From right ascension
   pub static XA_SELOB_FRRA: i32 = 45;
   // To right ascension
   pub static XA_SELOB_TORA: i32 = 46;
   // From declincation
   pub static XA_SELOB_FRDEC: i32 = 47;
   // To declination
   pub static XA_SELOB_TODEC: i32 = 48;
   // From range
   pub static XA_SELOB_FRRNG: i32 = 49;
   // To range
   pub static XA_SELOB_TORNG: i32 = 50;
   // From range rate
   pub static XA_SELOB_FRRNGRT: i32 = 51;
   // To range rate
   pub static XA_SELOB_TORNGRT: i32 = 52;
   // From azimuth rate
   pub static XA_SELOB_FRAZRT: i32 = 53;
   // To azimuth rate
   pub static XA_SELOB_TOAZRT: i32 = 54;
   // From elevation rate
   pub static XA_SELOB_FRELRT: i32 = 55;
   // To elevation rate
   pub static XA_SELOB_TOELRT: i32 = 56;
   // From ASTAT (0 to 4)
   pub static XA_SELOB_FRASTAT: i32 = 57;
   // To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
   pub static XA_SELOB_TOASTAT: i32 = 58;
   
   pub static XA_SELOB_SIZE: i32 = 128;
   
   
// ========================= End of auto generated code ==========================
