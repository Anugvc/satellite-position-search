// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes Obs DLL for use in the program
int ObsInit(long apAddr);

// Returns information about the current version of Obs DLL. 
// The information is placed in the string parameter passed in.
void ObsGetInfo(char infoStr[128]);

// Sets the year for transmission observation format (TTY) input files
void ObsSetTTYYear(int ttyYear);

// Loads observation data from an input text file
int ObsLoadFile(char obsFile[512]);

// Saves the currently loaded obs data to a file
int ObsSaveFile(char obsFile[512], int saveMode, int obsForm);

// Removes an obs, represented by the obsKey, from the set of currently loaded observations
int ObsRemove(long obsKey);

// Removes all currently loaded observations from memory
int ObsRemoveAll();

// Returns the number of observations currently loaded
int ObsGetCount();

// Retrieves all of the currently loaded obsKeys. These obsKeys can be used to access the internal data for the observations
// Sort options (order):
// (+/-)1 = (descending/ascending) time, sensor, obsType, elev
// (+/-)2 = (descending/ascending) time, elevation
// (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
// (+/-)4 = (descending/ascending) sensor, satno, time, elev
// (+/-)5 = (descending/ascending) sensor, time, elevation
// (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
// (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
// (+/-)8 = (reversed/same)        order as obs were read
// 9 : as is in the tree
void ObsGetLoaded(int order, long obsKeys[]);

// Loads a single observation-typed card
int ObsLoadCard(char card[512]);

// Loads a one-line or two-line observation 
int ObsLoadTwoCards(char card1[512], char card2[512]);

// Adds an observation from a string in B3 observation format
long ObsAddFrB3Card(char card[512]);

// Works like ObsAddFrB3Card but designed for Matlab
void ObsAddFrB3CardML(char card[512], long* obsKey);

// Converts B3 format to csv format without loading B3 obs into memory
int ObsB3ToCsv(char card[512], char csvLine[512]);

// Converts CSV format to B3 format without loading CSV obs into memory
int ObsCsvToB3(char csvLine[512], int newSatno, char card[512]);

// Adds an observation from a TTY (1 line or 2 lines) observation format
long ObsAddFrTTYCards(char card1[512], char card2[512]);

// Works like ObsAddFrTTYCards but designed for Matlab
void ObsAddFrTTYCardsML(char card1[512], char card2[512], long* obsKey);

// Converts TTY format to CSV format without loading TTY obs into memory
int ObsTTYToCsv(char card1[512], char card2[512], char csvLine[512]);

// Converts CSV format to TTY format without loading CSV obs into memory
int ObsCsvToTTY(char csvLine[512], int newSatno, char card1[512], char card2[512]);

// Adds one observation using csv obs string 
long ObsAddFrCsv(char csvLine[512]);

// Adds one observation using csv obs string - for MatLab
void ObsAddFrCsvML(char csvLine[512], long* obsKey);

// Adds one observation using its input data. Depending on the observation type, some input data might be unavailable and left blank
long ObsAddFrFields(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double pos[3], double vel[3], double extArr[128]);

// Works like ObsAddFrFields but designed for Matlab
void ObsAddFrFieldsML(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double pos[3], double vel[3], double extArr[128], long* obsKey);

// Adds one observation using its input data stored in an array. Depending on the observation type, some input data might be unavailable and left blank
long ObsAddFrArray(double xa_obs[64]);

// Works like ObsAddFrArray but designed for Matlab
void ObsAddFrArrayML(double xa_obs[64], long* obsKey);

// Retrieves all observation data in a single function call. Depending on the observation type, some input data might be unavailable
int ObsGetAllFields(long obsKey, char secClass[1], int* satNum, int* senNum, double* obsTimeDs50utc, double* elOrDec, double* azOrRA, double* range, double* rangeRate, double* elRate, double* azRate, double* rangeAccel, char obsType[1], int* trackInd, int* astat, int* siteTag, int* spadocTag, double pos[3], double vel[3], double extArr[128]);

// Retrieves observation data and stored it in the passing array. Depending on the observation type, some data fields might be unavailable
// See ObsGetField for description of xa_obs elements
int ObsDataToArray(long obsKey, double xa_obs[64]);

// Updates existing observation data with the provided new data
int ObsUpdateFrFields(long obsKey, char secClass, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double pos[3], double vel[3], double extArr[128]);

// Retrieves the value of a specific field of an observation
int ObsGetField(long obsKey, int xf_Obs, char strValue[512]);

// Updates the value of a field of an observation
// See ObsGetField for a description of the xf_Obs parameter.
// Satellite number, sensor number, and observation time are not allowed to be updated.
int ObsSetField(long obsKey, int xf_Obs, char strValue[512]);

// Returns observation in B3-card string
int ObsGetB3Card(long obsKey, char b3Card[512]);

// Returns observation in TTY-card string
int ObsGetTTYCard(long obsKey, char ttyCard1[512], char ttyCard2[512]);

// Returns observation in CSV-format string
int ObsGetCsv(long obsKey, char csvline[512]);

// Constructs a B3-card string from the input observation data fields
void ObsFieldsToB3Card(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double pos[3], char b3Card[512]);

// Constructs a csv string from the input observation data fields
void ObsFieldsToCsv(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double pos[3], char csvLine[512]);

// Constructs a TTY-card string from the input observation data fields
void ObsFieldsToTTYCard(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, double pos[3], char ttyCard1[512], char ttyCard2[512]);

// Computes an obsKey from individually provided fields
long ObsFieldsToObsKey(int satNum, int senNum, double obsTimeDs50utc);

// Works like ObsFieldsToObsKey but designed for Matlab
void ObsFieldsToObsKeyML(int satNum, int senNum, double obsTimeDs50utc, long* obsKey);

// Parses observation data from a B3-card (or B3E) string / one-line TTY / or CSV - Converts obs data to TEME of Date if neccessary
int ObsB3Parse(char b3ObsCard[512], char secClass[1], int* satNum, int* senNum, double* obsTimeDs50utc, double* elOrDec, double* azOrRA, double* range, double* rangeRate, double* elRate, double* azRate, double* rangeAccel, char obsType[1], int* trackInd, int* astat, int* siteTag, int* spadocTag, double pos[3]);

// Parses any observation data format (B3-card (or B3E) string / one or two line TTY / CSV - No conversion takes place
int ObsParse(char line1[512], char line2[512], double xa_obs[64]);

// Loads observation data from an input text file and group them together in the specified groupd id (gid).
// This allows the users to easily manage (load/retrieve/remove/save) a group of observations using the group id (gid)
int ObsLoadFileGID(char obsFile[512], int gid);

// Saves the currently loaded obs data belong to the specified group id (gid) to a file 
int ObsSaveFileGID(char obsFile[512], int gid, int saveMode, int obsForm);

// Removes all observations belong to the specified group id (gid) from the set of currently loaded observations
int ObsRemoveGID(int gid);

// Returns the number of observations currently loaded that have the same gid
int ObsGetCountGID(int gid);

// Retrieves all of the currently loaded obsKeys that have the same gid. These obsKeys can be used to access the internal data for the observations
// Sort options (order):
// (+/-)1 = (descending/ascending) time, sensor, obsType, elev
// (+/-)2 = (descending/ascending) time, elevation
// (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
// (+/-)4 = (descending/ascending) sensor, satno, time, elev
// (+/-)5 = (descending/ascending) sensor, time, elevation
// (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
// (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
// (+/-)8 = (reversed/same)        order as obs were read
// 9 : as is in the tree
void ObsGetLoadedGID(int gid, int order, long obsKeys[]);

// Converts obs type from character to integer
int ObsTypeCToI(char obsTypeChar);

// Converts obs type from integer to character
char ObsTypeIToC(int obsTypeInt);

// Resets obs selection settings
void ObsResetSelObs();

// Computes other states of the input observation
// <br>
// The table below indicates which index values correspond to which fields in the xa_obState array.
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>0</td><td>Satellite number</td></tr>
// <tr><td>1</td><td>Sensor number</td></tr>
// <tr><td>2</td><td>Observation time in DS50UTC</td></tr>
// <tr><td>10</td><td>Position X/ECI (km)</td></tr>
// <tr><td>11</td><td>Position Y/ECI (km)</td></tr>
// <tr><td>12</td><td>Position Z/ECI (km)</td></tr>
// <tr><td>13</td><td>Velocity X/ECI (km/s)</td></tr>
// <tr><td>14</td><td>Velocity Y/ECI (km/s)</td></tr>
// <tr><td>15</td><td>Velocity Z/ECI (km/s)</td></tr>
// <tr><td>16</td><td>Geodetic latitude (deg)</td></tr>
// <tr><td>17</td><td>Geodetic longitude (deg)</td></tr>
// <tr><td>18</td><td>Geodetic height (km)</td></tr>
// <tr><td>19</td><td>Position X/EFG (km)</td></tr>
// <tr><td>20</td><td>Position Y/EFG (km)</td></tr>
// <tr><td>21</td><td>Position Z/EFG (km)</td></tr>
// </table>
int ObsGetStates(long obsKey, double range_km, double xa_obState[64]);

// Computes observation states from the observation data
// See ObsGetStates for a list of the values for the xa_obState parameter.
int ObsDataToStates(double xa_obs[64], double xa_obState[64]);

// Reconstructs obs string (B3-card/one or two line TTY/CSV) from obs data in the input array xa_obs
int ObsArrToLines(double xa_obs[64], int obsForm, char line1[512], char line2[512]);

// Sets OBS key mode
// This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_OBS_ON" -
// and is currently calling any of these methods: DllMainLoadFile(), or ObsLoadFile()
int SetObsKeyMode(int obs_keyMode);

// Gets current OBS key mode
int GetObsKeyMode();

// Returs the satellite number associated with the input obsKey
int SatNumFrObsKey(long obsKey);

// Returs the sensor number associated with the input obsKey
int SenNumFrObsKey(long obsKey);

// Retrieves only obs that match the selection criteria
void ObsGetSelected(double xa_selob[128], int order, int* numMatchedObss, long obsKeys[]);

// Equinox indicator
// time of observation
#define EQUINOX_OBSTIME  0
// time @ 0 Jan Year of Date
#define EQUINOX_OBSYEAR  1
// J2000
#define EQUINOX_J2K      2
// B1950
#define EQUINOX_B1950    3

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
#define SORT_TIMESENTYPEEL        1
// sort order is time, elevation (negative value for reverse order)
#define SORT_TIMEEL               2
// sort order is time, sensor, otype, el, satno (negative value for reverse order)
#define SORT_TIMESENTYPEELSAT     3
// sort order is sensor, satno, time, elev (negative value for reverse order)
#define SORT_SENSATTIMEEL         4
// sort order is sensor, time, elevation (negative value for reverse order)
#define SORT_SENTIMEEL            5
// sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
#define SORT_SENSATTYPETIMEEL     6
// sort order is satno, time, sensor, otype, el (negative value for reverse order)
#define SORT_SATTIMESENTYPEEL     7
// sort order is the order of obs when they were loaded
#define SORT_ORDERASREAD          8
// sort order is satno, sensor, time (negative value for reverse order)
#define SORT_SATSENTIME          10


// Indexes of different obs file format
// B3 obs format
#define OBSFORM_B3    0
// Transmission obs format
#define OBSFORM_TTY   1
// CSV obs format
#define OBSFORM_CSV   2
// Radio Frequency (TDOA/FDOA) observations
#define OBSFORM_RF    3

#define BADOBSKEY  -1
#define DUPOBSKEY  0


// Different key mode options for obsKey
// Default - duplicate obs can not be loaded in binary tree
#define OBS_KEYMODE_NODUP   0
// Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
#define OBS_KEYMODE_DMA     1

// CSV sigma type indicator
#define CSVSIGMATYPE  7

// Indexes of Observation data fields
// security classification
#define XF_OBS_SECCLASS       1
// satellite number
#define XF_OBS_SATNUM         2
// sensor number
#define XF_OBS_SENNUM         3
// observation time in days since 1950 UTC
#define XF_OBS_DS50UTC        4
// elevation (deg)
#define XF_OBS_ELEVATION      5
// declination (deg)
#define XF_OBS_DECLINATION    6
// azimuth (deg)
#define XF_OBS_AZIMUTH        7
// right-ascension (deg)
#define XF_OBS_RA             8
// range (km)
#define XF_OBS_RANGE          9
// range rate (km/s)
#define XF_OBS_RANGERATE     10
// elevation rate (deg/s)
#define XF_OBS_ELRATE        11
// azimuth rate (deg/s)
#define XF_OBS_AZRATE        12
// range acceleration (km/s^2)
#define XF_OBS_RANGEACCEL    13
// observation type
#define XF_OBS_OBSTYPE       14
// track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
#define XF_OBS_TRACKIND      15
// association status assigned by SPADOC
#define XF_OBS_ASTAT         16
// original satellite number
#define XF_OBS_SITETAG       17
// SPADOC-asssigned tag number
#define XF_OBS_SPADOCTAG     18
// position X/EFG (km)
#define XF_OBS_POSE          19
// position Y/EFG (km)
#define XF_OBS_POSF          20
// position Z/EFG (km)
#define XF_OBS_POSG          21
// position X/ECI (km)
#define XF_OBS_POSX          22
// position Y/ECI (km)
#define XF_OBS_POSY          23
// position Z/ECI (km)
#define XF_OBS_POSZ          24

// Principal Polarization RCS
#define XF_OBS_RCS_PP        25
// Orthogonal Polarization RCS
#define XF_OBS_RCS_OP        26
// Principal Polarization RCS sigma
#define XF_OBS_RCS_PPS       27
// Orthogonal Polarization RCS sigma
#define XF_OBS_RCS_OPS       28
// Radar Signal to Noise Ratio
#define XF_OBS_SNR           29
// Azimuth of Boresite
#define XF_OBS_BORE_AZ       30
// Elevation of Boresite
#define XF_OBS_BORE_EL       31
// Apparent Visual magnitude
#define XF_OBS_VISMAG        32
// GEO Normalized Visual magnitude
#define XF_OBS_VISMAG_NORM   33
// Solar Phase Angle
#define XF_OBS_SOL_PHASE     34
// Frame Number
#define XF_OBS_FRAME         35
// Aberration correction indicator (0=YES, 1=NO)
#define XF_OBS_ABERRATION    36
// Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
#define XF_OBS_ASTAT_METHOD  37

// Indexes of observation data in an array
// security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
#define XA_OBS_SECCLASS       0
// satellite number
#define XA_OBS_SATNUM         1
// sensor number
#define XA_OBS_SENNUM         2
// observation time in days since 1950 UTC
#define XA_OBS_DS50UTC        3
// observation type
#define XA_OBS_OBSTYPE       11


// elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
#define XA_OBS_ELORDEC        4
// azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
#define XA_OBS_AZORRA         5
// range (km)
#define XA_OBS_RANGE          6
// range rate (km/s) for non-optical obs type
#define XA_OBS_RANGERATE      7
// elevation rate (deg/s)
#define XA_OBS_ELRATE         8
// azimuth rate (deg/s)
#define XA_OBS_AZRATE         9
// range acceleration (km/s^2)
#define XA_OBS_RANGEACCEL    10
// track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
#define XA_OBS_TRACKIND      12
// association status assigned by SPADOC
#define XA_OBS_ASTAT         13
// original satellite number
#define XA_OBS_SITETAG       14
// SPADOC-asssigned tag number
#define XA_OBS_SPADOCTAG     15
// position X/ECI or X/EFG (km)
#define XA_OBS_POSX          16
// position Y/ECI or Y/EFG (km)
#define XA_OBS_POSY          17
// position Z/ECI or Z/EFG (km)
#define XA_OBS_POSZ          18
// velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
#define XA_OBS_VELX          19
// velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
#define XA_OBS_VELY          20
// velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
#define XA_OBS_VELZ          21
// year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
#define XA_OBS_YROFEQNX      22
// aberration indicator, 0-not corrected, 1-corrceted
#define XA_OBS_ABERRATION    23

// AZ/RA bias (deg)
#define XA_OBS_AZORRABIAS    33
// EL/DEC bias (deg)
#define XA_OBS_ELORDECBIAS   34
// Range bias (km)
#define XA_OBS_RGBIAS        35
// Range-rate bias (km/sec)
#define XA_OBS_RRBIAS        36
// Time bias (sec)
#define XA_OBS_TIMEBIAS      37
// AZ/RA rate bias (deg/sec)
#define XA_OBS_RAZORRABIAS   38
// EL/DEC rate bias (deg/sec)
#define XA_OBS_RELORDECBIAS  39

// individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
#define XA_OBS_SIGMATYPE     40
// sigma - covariance element 1 - 6 elemens - Az sigma
#define XA_OBS_SIGMAEL1      41
// sigma - covariance element 2 - 6 elemens - El sigma
#define XA_OBS_SIGMAEL2      42
// sigma - covariance element 3 - 6 elemens - Range sigma
#define XA_OBS_SIGMAEL3      43
// sigma - covariance element 4 - 6 elemens - Range rate sigma
#define XA_OBS_SIGMAEL4      44
// sigma - covariance element 5 - 6 elemens - Az rate sigma
#define XA_OBS_SIGMAEL5      45
// sigma - covariance element 6 - 6 elemens - El rate sigma
#define XA_OBS_SIGMAEL6      46
// sigma - covariance element 7
#define XA_OBS_SIGMAEL7      47
// sigma - covariance element 8
#define XA_OBS_SIGMAEL8      48
// sigma - covariance element 9
#define XA_OBS_SIGMAEL9      49
// sigma - covariance element 10
#define XA_OBS_SIGMAEL10     50
// sigma - covariance element 11
#define XA_OBS_SIGMAEL11     51
// sigma - covariance element 12
#define XA_OBS_SIGMAEL12     52
// sigma - covariance element 13
#define XA_OBS_SIGMAEL13     53
// sigma - covariance element 14
#define XA_OBS_SIGMAEL14     54
// sigma - covariance element 15
#define XA_OBS_SIGMAEL15     55
// sigma - covariance element 16
#define XA_OBS_SIGMAEL16     56
// sigma - covariance element 17
#define XA_OBS_SIGMAEL17     57
// sigma - covariance element 18
#define XA_OBS_SIGMAEL18     58
// sigma - covariance element 19
#define XA_OBS_SIGMAEL19     59
// sigma - covariance element 20
#define XA_OBS_SIGMAEL20     60
// sigma - covariance element 21
#define XA_OBS_SIGMAEL21     61

#define XA_OBS_SIZE          64

// Indexes of observation data in an array (Obs Type CSV specific)
// security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
#define XA_OTCSV_SECCLASS       0
// satellite number
#define XA_OTCSV_SATNUM         1
// sensor number
#define XA_OTCSV_SENNUM         2
// observation time in days since 1950 UTC
#define XA_OTCSV_DS50UTC        3
// elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
#define XA_OTCSV_ELORDEC        4
// azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
#define XA_OTCSV_AZORRA         5
// range (km)
#define XA_OTCSV_RANGE          6
// range rate (km/s) for non-optical obs type
#define XA_OTCSV_RANGERATE      7
// elevation rate (deg/s)
#define XA_OTCSV_ELRATE         8
// azimuth rate (deg/s)
#define XA_OTCSV_AZRATE         9
// range acceleration (km/s^2)
#define XA_OTCSV_RANGEACCEL    10
// observation type
#define XA_OTCSV_OBSTYPE       11
// track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
#define XA_OTCSV_TRACKIND      12
// association status assigned by SPADOC
#define XA_OTCSV_ASTAT         13
// original satellite number
#define XA_OTCSV_SITETAG       14
// SPADOC-asssigned tag number
#define XA_OTCSV_SPADOCTAG     15
// position X/ECI or X/EFG (km)
#define XA_OTCSV_POSX          16
// position Y/ECI or Y/EFG (km)
#define XA_OTCSV_POSY          17
// position Z/ECI or Z/EFG (km)
#define XA_OTCSV_POSZ          18
// velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
#define XA_OTCSV_VELX          19
// velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
#define XA_OTCSV_VELY          20
// velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
#define XA_OTCSV_VELZ          21
// year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
#define XA_OTCSV_YROFEQNX      22

// Principal Polarization RCS
#define XA_OTCSV_RCS_PP        23
// Orthogonal Polarization RCS
#define XA_OTCSV_RCS_OP        24
// Principal Polarization RCS sigma
#define XA_OTCSV_RCS_PPS       25
// Orthogonal Polarization RCS sigma
#define XA_OTCSV_RCS_OPS       26
// Radar Signal to Noise Ratio
#define XA_OTCSV_SNR           27
// Azimuth of Boresite
#define XA_OTCSV_BORE_AZ       28
// Elevation of Boresite
#define XA_OTCSV_BORE_EL       29
// Apparent Visual magnitude
#define XA_OTCSV_VISMAG        30
// GEO Normalized Visual magnitude
#define XA_OTCSV_VISMAG_NORM   31
// Solar Phase Angle
#define XA_OTCSV_SOL_PHASE     32
// Frame Number
#define XA_OTCSV_FRAME         33
// Aberration correction indicator (0=YES, 1=NO)
#define XA_OTCSV_ABERRATION    34
// 0 = ROTAS, 1 = TRACK
#define XA_OTCSV_ASTAT_METHOD  35

// must equal to 7 to signify this is CSV format
#define XA_OTCSV_SIGMATYPE     40
// sigma - covariance element 1 - Az sigma
#define XA_OTCSV_SIGMAEL1      41
// sigma - covariance element 2 - El sigma
#define XA_OTCSV_SIGMAEL2      42
// sigma - covariance element 3 - Range sigma
#define XA_OTCSV_SIGMAEL3      43
// sigma - covariance element 4 - Range rate sigma
#define XA_OTCSV_SIGMAEL4      44
// sigma - covariance element 5 - Az rate sigma
#define XA_OTCSV_SIGMAEL5      45
// sigma - covariance element 6 - El rate sigma
#define XA_OTCSV_SIGMAEL6      46
// sigma - covariance element 7 - Time sigma
#define XA_OTCSV_SIGMAEL7      47
// AZ/RA bias
#define XA_OTCSV_BIAS1         48
// EL/DEC bias
#define XA_OTCSV_BIAS2         49
// Range bias
#define XA_OTCSV_BIAS3         50
// Range-rate bias
#define XA_OTCSV_BIAS4         51
// Time bias
#define XA_OTCSV_BIAS5         52


#define XA_OTCSV_SIZE          64

// Indexes of observation data in an array
// satellite number
#define XA_OBSTATE_SATNUM         0
// sensor number
#define XA_OBSTATE_SENNUM         1
// observation time in days since 1950 UTC
#define XA_OBSTATE_DS50UTC        2

// position X/ECI (km)
#define XA_OBSTATE_POSX          10
// position Y/ECI (km)
#define XA_OBSTATE_POSY          11
// position Z/ECI (km)
#define XA_OBSTATE_POSZ          12
// velocity X/ECI (km/s)
#define XA_OBSTATE_VELX          13
// velocity Y/ECI (km/s)
#define XA_OBSTATE_VELY          14
// velocity Z/ECI (km/s)
#define XA_OBSTATE_VELZ          15
// geodetic latitude (deg)
#define XA_OBSTATE_LAT           16
// geodetic longitude (deg)
#define XA_OBSTATE_LON           17
// geodetic height (km)
#define XA_OBSTATE_HGHT          18
// position X/EFG (km)
#define XA_OBSTATE_POSE          19
// position Y/EFG (km)
#define XA_OBSTATE_POSF          20
// position Z/EFG (km)
#define XA_OBSTATE_POSG          21


#define XA_OBSTATE_SIZE          64

// Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
// All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
// range rate (km/s)
#define XA_OT0_RANGERATE   7

// elevation (deg)
#define XA_OT1_ELEVATION   4
// azimuth (deg)
#define XA_OT1_AZIMUTH     5

// elevation (deg)
#define XA_OT2_ELEVATION   4
// azimuth (deg)
#define XA_OT2_AZIMUTH     5
// range (km)
#define XA_OT2_RANGE       6

// elevation (deg)
#define XA_OT3_ELEVATION   4
// azimuth (deg)
#define XA_OT3_AZIMUTH     5
// range (km)
#define XA_OT3_RANGE       6
// range rate (km/s)
#define XA_OT3_RANGERATE   7

// elevation (deg)
#define XA_OT4_ELEVATION   4
// azimuth (deg)
#define XA_OT4_AZIMUTH     5
// range (km)
#define XA_OT4_RANGE       6
// range rate (km/s)
#define XA_OT4_RANGERATE   7
// elevation rate (deg/s)
#define XA_OT4_ELRATE      8
// azimuth rate (deg/s)
#define XA_OT4_AZRATE      9
// range acceleration (km/s^2)
#define XA_OT4_RANGEACCEL 10

// declination (deg)
#define XA_OT5_DECL        4
// right ascesion (deg)
#define XA_OT5_RIGHTASC    5
// year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
#define XA_OT5_YROFEQNX   22
// ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
#define XA_OT5_ABERRATION 23

// range (km)
#define XA_OT6_RANGE       6

// elevation (deg)
#define XA_OT8_ELEVATION   4
// azimuth (deg)
#define XA_OT8_AZIMUTH     5
// optional - range (km)
#define XA_OT8_RANGE       6
// orbiting sensor position X/EFG (km)
#define XA_OT8_POSE       16
// orbiting sensor position Y/EFG (km)
#define XA_OT8_POSF       17
// orbiting sensor position Z/EFG (km)
#define XA_OT8_POSG       18

// declination (deg)
#define XA_OT9_DECL        4
// right ascesion (deg)
#define XA_OT9_RIGHTASC    5
// optional - range (km)
#define XA_OT9_RANGE       6
// orbiting sensor position X/EFG (km)
#define XA_OT9_POSE       16
// orbiting sensor position Y/EFG (km)
#define XA_OT9_POSF       17
// orbiting sensor position Z/EFG (km)
#define XA_OT9_POSG       18
// year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
#define XA_OT9_YROFEQNX   22
// ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
#define XA_OT9_ABERRATION 23

// position X/ECI or X/EFG (km)
#define XA_OTP_POSX       16
// position Y/ECI or Y/EFG (km)
#define XA_OTP_POSY       17
// position Z/ECI or Z/EFG (km)
#define XA_OTP_POSZ       18

// position X/ECI or X/EFG (km)
#define XA_OTV_POSX       16
// position Y/ECI or Y/EFG (km)
#define XA_OTV_POSY       17
// position Z/ECI or Z/EFG (km)
#define XA_OTV_POSZ       18
// velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
#define XA_OTV_VELX       19
// velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
#define XA_OTV_VELY       20
// velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
#define XA_OTV_VELZ       21

#define XA_OT_SIZE          64

// Obs selection criteria
// Seclection mode (unused for now)
#define XA_SELOB_MODE          0

// From time
#define XA_SELOB_FRTIME        1
// To time
#define XA_SELOB_TOTIME        2

// From time
#define XA_SELOB_FRIDX         3
// To time
#define XA_SELOB_TOIDX         4

// Select any obs that match this satellite number #1
#define XA_SELOB_SAT1         11
// Select any obs that match this satellite number #2
#define XA_SELOB_SAT2         12
// Select any obs that match this satellite number #3
#define XA_SELOB_SAT3         13
// Select any obs that match this satellite number #4
#define XA_SELOB_SAT4         14
// Select any obs that match this satellite number #5
#define XA_SELOB_SAT5         15
// Select any obs that match this satellite number #6
#define XA_SELOB_SAT6         16
// Select any obs that match this satellite number #7
#define XA_SELOB_SAT7         17
// Select any obs that match this satellite number #8
#define XA_SELOB_SAT8         18
// Select any obs that match this satellite number #9
#define XA_SELOB_SAT9         19
// Select any obs that match this satellite number #10
#define XA_SELOB_SAT10        20

// Select any obs that are obtained by this sensor site #1
#define XA_SELOB_SEN1         21
// Select any obs that are obtained by this sensor site #2
#define XA_SELOB_SEN2         22
// Select any obs that are obtained by this sensor site #3
#define XA_SELOB_SEN3         23
// Select any obs that are obtained by this sensor site #4
#define XA_SELOB_SEN4         24
// Select any obs that are obtained by this sensor site #5
#define XA_SELOB_SEN5         25
// Select any obs that are obtained by this sensor site #6
#define XA_SELOB_SEN6         26
// Select any obs that are obtained by this sensor site #7
#define XA_SELOB_SEN7         27
// Select any obs that are obtained by this sensor site #8
#define XA_SELOB_SEN8         28
// Select any obs that are obtained by this sensor site #9
#define XA_SELOB_SEN9         29
// Select any obs that are obtained by this sensor site #10
#define XA_SELOB_SEN10        30

// Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
#define XA_SELOB_OT1          31
// Select any obs that match this obs type #2
#define XA_SELOB_OT2          32
// Select any obs that match this obs type #3
#define XA_SELOB_OT3          33
// Select any obs that match this obs type #4
#define XA_SELOB_OT4          34
// Select any obs that match this obs type #5
#define XA_SELOB_OT5          35
// Select any obs that match this obs type #6
#define XA_SELOB_OT6          36
// Select any obs that match this obs type #7
#define XA_SELOB_OT7          37
// Select any obs that match this obs type #8
#define XA_SELOB_OT8          38
// Select any obs that match this obs type #9
#define XA_SELOB_OT9          39
// Select any obs that match this obs type #10
#define XA_SELOB_OT10         40

// From azimuth
#define XA_SELOB_FRAZ         41
// To azimuth
#define XA_SELOB_TOAZ         42
// From elevation
#define XA_SELOB_FREL         43
// To elevation
#define XA_SELOB_TOEL         44
// From right ascension
#define XA_SELOB_FRRA         45
// To right ascension
#define XA_SELOB_TORA         46
// From declincation
#define XA_SELOB_FRDEC        47
// To declination
#define XA_SELOB_TODEC        48
// From range
#define XA_SELOB_FRRNG        49
// To range
#define XA_SELOB_TORNG        50
// From range rate
#define XA_SELOB_FRRNGRT      51
// To range rate
#define XA_SELOB_TORNGRT      52
// From azimuth rate
#define XA_SELOB_FRAZRT       53
// To azimuth rate
#define XA_SELOB_TOAZRT       54
// From elevation rate
#define XA_SELOB_FRELRT       55
// To elevation rate
#define XA_SELOB_TOELRT       56
// From ASTAT (0 to 4)
#define XA_SELOB_FRASTAT      57
// To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
#define XA_SELOB_TOASTAT      58

#define XA_SELOB_SIZE         128


// ========================= End of auto generated code ==========================
