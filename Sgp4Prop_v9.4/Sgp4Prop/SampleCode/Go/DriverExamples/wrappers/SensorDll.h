// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes Sensor DLL for use in the program
// If this function returns an error, it is recommended that the users stop the program immediately. 
// The error occurs if the users forget to load and initialize all the prerequisite dlls, as listed 
// in the DLL Prerequisite section, before using this DLL.
int SensorInit(long apAddr);

// Returns information about the current version of Sensor DLL. 
// The information is placed in the string parameter passed in.
// The returned string provides information about the version number, build date, and the platform of the Sensor DLL.
void SensorGetInfo(char infoStr[128]);

// Loads sensor data, contained in a text file, into the set of loaded sensors
// The users can use this function repeatedly to load sensor data from different input files. 
// However, only unique senKeys are stored in the binary tree.  New sensor data will overwrite the existing data. 
// 
// Sensor data can be included directly in the main input file or they can be read from a separate file 
// identified with "SENFIL=[pathname\filename]".
// 
// This function only reads sensor data from the main input file or the file identified with SENFIL in the input file. 
// It won't read anything else.
int SensorLoadFile(char senFile[512]);

// Loads a single sensor-typed card
int SensorLoadCard(char card[512]);

// Saves the currently loaded sensor data to a file
// If the users call this routine immediately after the SensorLoadFile(). 
// The sensor data contents in the two file should be the same (minus duplicated sensors or bad sensors).
// 
// The purpose of this function is to save the current state of the loaded sensors, usually used in GUI applications, for future use.
int SensorSaveFile(char sensorFile[512], int saveMode, int saveForm);

// Removes a sensor, represented by the senKey, from the set of currently loaded sensors
// If the users enter an invalid senKey - a non-existing senKey, the function will return a non-zero value indicating an error.
int SensorRemove(long senKey);

// Removes all currently loaded sensors from memory
// The function returns zero if all the loaded sensors are removed successfully from the SENSOR DLL's binary tree. Other values indicate an error.
int SensorRemoveAll();

// Returns the number of sensors currently loaded
// See SensorGetLoaded for example.
// This function is useful for dynamically allocating memory for the array that is passed to the function SensorGetLoaded().
int SensorGetCount();

// Retrieves all of the currently loaded senKeys. 
// These senKeys can be used to access the internal data for the sensors.
// It is recommended that SensorGetCount() is used to count how many sensors are currently loaded in the SENSOR DLL's binary tree. 
// The user can then use this number to dynamically allocate the senKeys array and pass it to this function. 
// 
// If the users prefer to pass a static array to the function, make sure it is big enough to store all the senKeys in memory.
void SensorGetLoaded(int order, long senKeys[]);

// Retrieves sensor location data for a sensor
int SensorGetLocAll(long senKey, double* astroLat, double* astroLon, double senPos[3], char senDesc[24], int* orbSatNum, char secClass[1]);

// Adds/updates sensor location data (non DMA) for a sensor using individually provided field values
// This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
// 
// If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
// 
// If it is an orbiting sensor, the users need to provide the associated satellite number.
int SensorSetLocAll(long senKey, double astroLat, double astroLon, double senPos[3], char senDesc[24], int orbSatNum, char secClass);

// Retrieves the value of an individual field of sensor location data
// <br>
// Make sure to use the appropriate field index for ground sensors and orbiting sensors.
// <br>
// The table below shows the values for the xf_SenLoc parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>1</td><td>Sensor number</td></tr>
// <tr><td>2</td><td>Sensor astronomical latitude (deg)</td></tr>
// <tr><td>3</td><td>Sensor astronomical longitude (deg)</td></tr>
// <tr><td>4</td><td>Sensor position X (km)</td></tr>
// <tr><td>5</td><td>Sensor position Y (km)</td></tr>
// <tr><td>6</td><td>Sensor position Z (km)</td></tr>
// <tr><td>7</td><td>Sensor description</td></tr>
// <tr><td>8</td><td>Orbiting sensor's number (satNum)   </td></tr>
// <tr><td>9</td><td>Sensor classification </td></tr>   
// </table>   
int SensorGetLocField(long senKey, int xf_SenLoc, char strValue[512]);

// Updates the value of an individual field of sensor location data
// See SensorGetLocField for a description of the xf_SenLoc values.
// The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
// 
// Make sure to use the appropriate field index for ground sensors and orbiting sensors.
int SensorSetLocField(long senKey, int xf_SenLoc, char strValue[512]);

// Retrieves sensor limits data
// This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
int SensorGet1L(long senKey, char viewType[1], char obsType[1], int* rngUnits, double* maxRngLim, char boresight1[1], double* elLim1, double* elLim2, double* azLim1, double* azLim2, double* interval, int* visFlg, int* rngLimFlg, int* maxPPP, double* minRngLim, int* plntryRes, double* rrLim);

// Adds/updates sensor limits data (non DMA) via individually provided field values
// This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
// 
// If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
// 
// If it is an orbiting sensor, the users need to provide the associated satellite number.
int SensorSet1L(long senKey, char viewType, char obsType, int rngUnits, double maxRngLim, char boresight1, double elLim1, double elLim2, double azLim1, double azLim2, double interval, int visFlg, int rngLimFlg, int maxPPP, double minRngLim, int plntryRes, double rrLim);

// Retrieves additional sensor limits data
// This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
int SensorGet2L(long senKey, char boresight2[1], double* elLim3, double* elLim4, double* azLim3, double* azLim4, int* earthBckgrnd, double* earthLimb, double* solarXAngle, double* lunarXAngle, double* minIllum, double* twilit);

// Adds/updates additional sensor limits data
// This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
// 
// If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.	
int SensorSet2L(long senKey, char boresight2, double elLim3, double elLim4, double azLim3, double azLim4, int earthBckgrnd, double earthLimb, double solarXAngle, double lunarXAngle, double minIllum, double twilit);

// Retrieves an individual field of sensor limits data
// <br>
// Make sure to use the appropriate field index for ground sensors and orbiting sensors.
// <br>
// The table below shows the values for the xf_SenLim parameter:
// <table>
// <caption>table</caption>
// <tr>
// <td><b>Index</b></td>
// <td><b>Index Interpretation</b></td>
// </tr>
// <tr><td>11</td><td> Sensor view type</td></tr>
// <tr><td>12</td><td> Sensor observation type</td></tr>
// <tr><td>13</td><td> Unit on range/range rate</td></tr>
// <tr><td>14</td><td> Max observable range (km)</td></tr>
// <tr><td>15</td><td> Min observable range (km)</td></tr>
// <tr><td>16</td><td> Output interval (min)</td></tr>
// <tr><td>17</td><td> Visual pass control flag</td></tr>
// <tr><td>18</td><td> Range limit control flag </td></tr>
// <tr><td>19</td><td> Max number of points per pass</td></tr>
// <tr><td>20</td><td> Range rate/relative velocity limit (km/sec)</td></tr>
// <tr><td>31</td><td> Elevation limits (deg) 1, 2, 3, 4 or Sensor off-boresight angle (deg)</td></tr>
// <tr><td>32</td><td> </td></tr>
// <tr><td>33</td><td> </td></tr>
// <tr><td>34</td><td> </td></tr>
// <tr><td>35</td><td> Azimuth limits (deg) 1, 2,3, 4 or Sensor clock angle (deg)</td></tr>
// <tr><td>36</td><td> </td></tr>
// <tr><td>37</td><td> </td></tr>
// <tr><td>38</td><td> </td></tr>
// <tr><td>52</td><td> Orbiting sensor planetary restriction</td></tr>
// <tr><td>53</td><td> Orbiting sensor boresight vector 1</td></tr>
// <tr><td>54</td><td> Orbiting sensor boresight vector 2</td></tr>
// <tr><td>55</td><td> Allow orbiting sensor to view sat against earth background</td></tr>
// <tr><td>56</td><td> Orbiting sensor earth limb exclusion distance (km)</td></tr>
// <tr><td>57</td><td> Orbiting sensor solar exclusion angle (deg)   </td></tr>
// <tr><td>58</td><td> Orbiting sensor lunar exclusion angle (deg)</td></tr>
// <tr><td>59</td><td> Orbiting sensor min illumination angle (deg)</td></tr>
// <tr><td>60</td><td> Ground site twilight offset angle (deg)</td></tr>    
// </table>   
int SensorGetLimField(long senKey, int xf_SenLim, char strValue[512]);

// Updates an individual field of sensor limits data
// See SensorGetLimField for a description of the xf_SenLim parameter.
// The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
// 
// Make sure to use the appropriate field index for ground sensors and orbiting sensors.
int SensorSetLimField(long senKey, int xf_SenLim, char strValue[512]);

// Retrieves sensor sigma/bias data
int SensorGetBS(long senKey, double xaf_senbs[16]);

// Adds/updates sensor sigma/bias data (non DMA)
int SensorSetBS(long senKey, double xaf_senbs[16]);

// Retrieves an individual field of sensor sigma/bias data
int SensorGetBSField(long senKey, int xaf_senbs, char strValue[512]);

// Updates an individual field of sensor sigma/bias data
int SensorSetBSField(long senKey, int xaf_senbs, char strValue[512]);

// Retrieves the sensor data in form of S-Card, L1-Card, and L2-Card of the sensor
int SensorGetLines(long senKey, char sCard[512], char l1Card[512], char l2Card[512]);

// Gets sensor's orbiting satellite's satKey
int SensorGetOrbSatKey(long senKey, long* orbSatKey);

// Sets sensor's orbiting satellite's satKey
int SensorSetOrbSatKey(long senKey, long orbSatKey);

// Loads Space Fence's detailed azimuth-elevation definition table
int SensorLoadAzElTable(long senKey, char azElTableFile[512]);

// Adds a new sensor segment whose limits defined by the input parameters - a cone or a dome portion 
int SensorAddSegment(long senKey, int segType, double xa_seg[16]);

// Retrieves sensor segment data of the specified segment (segNum)
int SensorGetSegment(long senKey, int segNum, int* segType, double xa_seg[16]);

// Sets sensor key mode
// This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_SEN_ON" -
// and is currently calling any of these methods: DllMainLoadFile(), or SenLoadFile()
int SetSenKeyMode(int sen_keyMode);

// Gets current sensor key mode
int GetSenKeyMode();

// Returs the sensor number associated with the input senKey
int SenNumOf(long senKey);

// Returns the first senKey from the currently loaded set of sensors that contains the specified sensor number.
// A negative value will be returned if there is an error.
long SensorGetSenKey(int senNum);

// This function is similar to SensorGetSenKey but designed to be used in Matlab. 
// Matlab doesn't correctly return the 19-digit satellite key using SensorGetSenKey. This method is an alternative way to return the senKey output.
// A negative value will be returned in senKey if there is an error.
void SensorGetSenKeyML(int senNum, long* senKey);

// Adds a sensor (location, limits, sigmas/biases), using its data stored in the input arrays.
long SensorAddFrArray(double xa_sen[128], char xs_sen[512]);

// Retrieves sensor data (location, limits, sigmas/biases) and stores it in the passing arrays.
int SensorDataToArray(long senKey, double xa_sen[128], char xs_sen[512]);

// Sensor segment types
// bounded-cone-typed limit: Boresight Az/El, Min/Max halfcone angle/Range, minimum cut-off elevation
#define SEG_BCONE  1
// dome-typed limit: Min/Max Az/El/Range
#define SEG_DOME   2



// Indexes of dome segment parameters
// start azimuth (deg)
#define XA_SEG_DOME_AZFR     0
// end azimuth (deg)
#define XA_SEG_DOME_AZTO     1
// lower-bound elevation (deg)
#define XA_SEG_DOME_ELFR     2
// higher-bound elevation (deg)
#define XA_SEG_DOME_ELTO     3
// minimum range (km)
#define XA_SEG_DOME_MINRNG   4
// maximum range (km)
#define XA_SEG_DOME_MAXRNG   5

#define XA_SEG_DOME_SIZE    16


// Indexes of bounded-cone segment parameters
// boresight azimuth (deg)
#define XA_SEG_BCONE_BSAZ     0
// boresight elevation (deg)
#define XA_SEG_BCONE_BSEL     1
// offboresight lower angle (deg)
#define XA_SEG_BCONE_ANGFR    2
// offboresight higher angle (deg)
#define XA_SEG_BCONE_ANGTO    3
// minimum range (km)
#define XA_SEG_BCONE_MINRNG   4
// maximum range (km)
#define XA_SEG_BCONE_MAXRNG   5
// minimum cut-off elevation (deg)
#define XA_SEG_BCONE_MINEL    6

#define XA_SEG_BCONE_SIZE    16


// Different key mode options for senKey
// Default - duplicate sensor can not be loaded in binary tree
#define SEN_KEYMODE_NODUP   0
// Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
#define SEN_KEYMODE_DMA     1

// sensor key possible errors
// Bad sensor key
#define BADSENKEY  -1
// Duplicate sensor key
#define DUPSENKEY   0

// Different sensor types
// bounded-cone tracker
#define VT_BCT    2
// conventional tracker
#define VT_CON    3
// optical tracker
#define VT_OPT    4
// constant azimuth fan sweeping vertical plane
#define VT_FAN    7
// orbiting sensor (same as 'M' or 'O')
#define VT_ORB    9
// space fence's field of regard FOR ('R' = 86)
#define VT_FOR   82
// space fence's surveillance fan FOV ('V' = 82)
#define VT_FOV   86

// Different sensor location types
// Sensor location is in ECR
#define SENLOC_TYPE_ECR   1
// Sensor location is in EFG
#define SENLOC_TYPE_EFG   2
// Sensor location is in LLH
#define SENLOC_TYPE_LLH   3


// Sensor Data -
//*******************************************************************************
// generic data for all sensor types
//*******************************************************************************
// sensor number
#define XA_SEN_GEN_SENNUM      0
// sensor minimum range (km) (=0 no minimum range check)
#define XA_SEN_GEN_MINRNG      3
// sensor maxinmum range (km) (=0 no maximum range check)
#define XA_SEN_GEN_MAXRNG      4
// range rate/relative velocity limit (km/sec) (=0 no range rate check)
#define XA_SEN_GEN_RRLIM       5
// min/max range check (=0 apply min/max range limits, =1 accept all passes regardless of range)
#define XA_SEN_GEN_RNGLIMFLG   6
// is special mobil sensor flag / column 9 in 1L card (=0 non mobile sensor, =1 mobile sensor)
#define XA_SEN_GEN_SMSEN       7


//*******************************************************************************

// sensor location - for all ground-based sensor types (non-orbiting)
// location type (see SENLOC_TYPE_? for available types)
#define XA_SEN_GRN_LOCTYPE    10
// sensor location ECR/EFG X component (km) or LLH/Lat (deg)
#define XA_SEN_GRN_POS1       11
// sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg)
#define XA_SEN_GRN_POS2       12
// sensor location ECR/EFG Z component (km) or LLH/Height (km)
#define XA_SEN_GRN_POS3       13
// astronomical latitude (deg) (+: North, -: South)
#define XA_SEN_GRN_ASTROLAT   14
// astronomical longitude (deg) (+: West, -: East)
#define XA_SEN_GRN_ASTROLON   15


//*******************************************************************************
// sensor limits - for LAMOD only (not needed by Rotas/BatchDC)
//*******************************************************************************
// Bounded cone tracker (conical sensor) (VT_BCT)
// conical sensor boresight azimuth angle (deg)
#define XA_SEN_BCT_BRSGHTAZ   20
// conical sensor boresight elevation angle (deg)
#define XA_SEN_BCT_BRSGHTEL   21
// coninal sensor off-boresight angle/half cone angle (deg)
#define XA_SEN_BCT_HALFANG    22
// conical sensor minimum elevation angle (deg)
#define XA_SEN_BCT_MINEL      23

//*******************************************************************************
// Conventinoal tracker (VT_CON)
// low elevation limit #1 (deg)
#define XA_SEN_CON_ELFR1      20
// hight elevation limit #1 (deg)
#define XA_SEN_CON_ELTO1      21
// low azimuth limit #1 (deg)
#define XA_SEN_CON_AZFR1      22
// hight azimuth limit #1 (deg)
#define XA_SEN_CON_AZTO1      23
// low elevation limit #2 (deg)
#define XA_SEN_CON_ELFR2      24
// hight elevation limit #2 (deg)
#define XA_SEN_CON_ELTO2      25
// low azimuth limit #2 (deg)
#define XA_SEN_CON_AZFR2      26
// hight azimuth limit #2 (deg)
#define XA_SEN_CON_AZTO2      27

//*******************************************************************************
// Optical tracker (VT_OPT)
// low elevation limit #1 (deg)
#define XA_SEN_OPT_ELFR1      20
// hight elevation limit #1 (deg)
#define XA_SEN_OPT_ELTO1      21
// low azimuth limit #1 (deg)
#define XA_SEN_OPT_AZFR1      22
// hight azimuth limit #1 (deg)
#define XA_SEN_OPT_AZTO1      23
// low elevation limit #2 (deg)
#define XA_SEN_OPT_ELFR2      24
// hight elevation limit #2 (deg)
#define XA_SEN_OPT_ELTO2      25
// low azimuth limit #2 (deg)
#define XA_SEN_OPT_AZFR2      26
// hight azimuth limit #2 (deg)
#define XA_SEN_OPT_AZTO2      27

// optical sensor solar exclusion angle (to check for solar aspect angle limit)
#define XA_SEN_OPT_SEA        40
// ground site twilight offset angle
#define XA_SEN_OPT_TWILGHT    41
// visual pass check (sensor in dark, satellite illuminated)
#define XA_SEN_OPT_VISCHK     42

//*******************************************************************************
// Constant azimuth fan (VT_FAN)
// fan's constant azimuth (deg) - fan sweeps a vertical plane  [0, 180)
#define XA_SEN_FAN_AZ         20
// fan's tilt angle (deg)  (-: North/West tilt, +: South/East tilt) [-90, 90]
#define XA_SEN_FAN_TILTANGLE  21
// fan's off-boresight angle (deg) [0, 90]
#define XA_SEN_FAN_OBSANGLE   23


//*******************************************************************************
// Orbiting sensor (VT_ORB)
// orbiting sensor's satellite number
#define XA_SEN_ORB_SATNUM     10

// orbiting sensor's off-boresight angle - low elevation limit #1 (deg)
#define XA_SEN_ORB_ELMIN1     20
// orbiting sensor's off-boresight angle - hight elevation limit #1 (deg)
#define XA_SEN_ORB_ELMAX1     21
// orbiting sensor's off-boresight clock angle - low azimuth limit #1 (deg)
#define XA_SEN_ORB_AZMIN1     22
// orbiting sensor's off-boresight clock angle - hight azimuth limit #1 (deg)
#define XA_SEN_ORB_AZMAX1     23
// orbiting sensor's off-boresight angle - low elevation limit #2 (deg)
#define XA_SEN_ORB_ELMIN2     24
// orbiting sensor's off-boresight angle - hight elevation limit #2 (deg)
#define XA_SEN_ORB_ELMAX2     25
// orbiting sensor's off-boresight clock angle - low azimuth limit #2 (deg)
#define XA_SEN_ORB_AZMIN2     26
// orbiting sensor's off-boresight clock angle - hight azimuth limit #2 (deg)
#define XA_SEN_ORB_AZMAX2     27

// orbiting sensor earth limb exclusion distance (km)
#define XA_SEN_ORB_EARTHLIMB  40
// orbiting sensor solar exclusion angle (deg)
#define XA_SEN_ORB_SEA        41
// orbiting sensor lunar exclusion angle (deg)
#define XA_SEN_ORB_LEA        42
// orbiting sensor minimum illumination angle (deg)
#define XA_SEN_ORB_MINILLUM   43
// orbiting sensor allow earth in the back ground
#define XA_SEN_ORB_EARTHBRND  44
// orbiting sensor planetary restriction
#define XA_SEN_ORB_PLNTRYRES  45

//*******************************************************************************

// Space fence Field Of Regard (VT_FOR)
// Sensor limits are defined in the az/el table file (using XS_SEN_FOR_AZFILE_255_256)


//*******************************************************************************

// Space fence Field Of View (VT_FOV)
// north/south beam width (deg)
#define XA_SEN_FOV_BEAMWIDTH  20
// fence tilt angle (deg)
#define XA_SEN_FOV_TILTANGLE  21


//*******************************************************************************

// Output control parameters (shouldn't be part of sensor data - just for backward compatibility)
// unit on range/range rate (0= km, km/sec; 1=nm, nm/sec)
#define XA_SEN_GEN_UNIT       90
// output interval (min)
#define XA_SEN_GEN_INTERVAL   91
// max number of points per pass
#define XA_SEN_GEN_PTSPERPAS  92


// sensor sigmas/biases - ROTAS/BATCHDC
// azimuth sigma (deg)
#define XA_SEN_GEN_AZSIGMA   110
// elevation sigma (deg)
#define XA_SEN_GEN_ELSIGMA   111
// range sigma (km)
#define XA_SEN_GEN_RGSIGMA   112
// range-rate sigma (km/sec)
#define XA_SEN_GEN_RRSIGMA   113
// az rate sigma (deg/sec)
#define XA_SEN_GEN_ARSIGMA   114
// el rate sigma (deg/sec)
#define XA_SEN_GEN_ERSIGMA   115
// azimuth bias (deg)
#define XA_SEN_GEN_AZBIAS    116
// elevation bias (deg)
#define XA_SEN_GEN_ELBIAS    117
// range bias (km)
#define XA_SEN_GEN_RGBIAS    118
// range-rate bias (km/sec)
#define XA_SEN_GEN_RRBIAS    119
// time bias (sec)
#define XA_SEN_GEN_TIMEBIAS  120


#define XA_SEN_SIZE           128

// Indexes of SENSOR text data in an array of chars
// The last two numbers in the field name are the zero-based starting character position and the number of characters in the text field
// sensor security classification (1-character length)
#define XS_SEN_SECCLASS_0_1         0
// sensor viewing type (1-character length)
#define XS_SEN_VIEWTYPE_1_1         1
// sensor observation type (1-character length)
#define XS_SEN_OBSTYPE_2_1          2
// sensor description/narrative/notes (24-character length)
#define XS_SEN_DSCRPTN_3_24         3
// orbiting sensor's boresight vector #1 (1-character length)
#define XS_SEN_ORB_BSVEC1_27_1     27
// orbiting sensor's boresight vector #2 (1-character length)
#define XS_SEN_ORB_BSVEC2_28_1     28
// for VT_FOR only, az/el table file path (256-character length)
#define XS_SEN_FOR_AZFILE_255_256 255

#define XS_SEN_LENGTH             512

// Indexes of Sensor data fields
// Sensor number
#define XF_SENLOC_NUM   1
// Sensor location - astronomical longitude (deg) (+=West/-=East)
#define XF_SENLOC_LAT   2
// Sensor location - astronomical latitude (deg)  (+=North/-=South)
#define XF_SENLOC_LON   3
// Sensor ECR position X (km)
#define XF_SENLOC_POSX  4
// Sensor ECR position Y (km)
#define XF_SENLOC_POSY  5
// Sensor ECR position Z (km)
#define XF_SENLOC_POSZ  6
// Sensor description
#define XF_SENLOC_DESC  7
// Orbiting sensor's number (satNum)
#define XF_SENLOC_ORBSATNUM  8
// Sensor classification
#define XF_SENLOC_SECCLASS   9

// Sensor view type
#define XF_SENLIM_VIEWTYPE   11
// Sensor observation type
#define XF_SENLIM_OBSTYPE    12
// Unit on range/range rate
#define XF_SENLIM_UNIT       13
// Max observable range (km)
#define XF_SENLIM_MAXRNG     14
// Min observable range (km)
#define XF_SENLIM_MINRNG     15
// Output interval (min)
#define XF_SENLIM_INTERVAL   16
// Visual pass control flag
#define XF_SENLIM_OPTVISFLG  17
// Range limit control flag
#define XF_SENLIM_RNGLIMFLG  18
// Max number of points per pass
#define XF_SENLIM_PTSPERPAS  19
// Range rate/relative velocity limit (km/sec)
#define XF_SENLIM_RRLIM      20

// Elevation limits #1 (low, deg) or orbiting sensor off-boresight angle (low, deg) or conical sensor boresight elvation (deg)
#define XF_SENLIM_ELLIM1     31
// Elevation limits #2 (high, deg) or orbiting sensor off-boresight angle (high, deg) or conical sensor boresight minimum angle (deg)
#define XF_SENLIM_ELLIM2     32
// Elevation limits #3 (low, deg) or orbiting sensor off-boresight angle (low, deg) or
#define XF_SENLIM_ELLIM3     33
// Elevation limits #4 (high, deg) or orbiting sensor off-boresight angle (high, deg)
#define XF_SENLIM_ELLIM4     34
// Azimuth limits #1 (low, deg) or orbiting sensor clock angle (from, deg) or conical sensor boresight azimuth (deg)
#define XF_SENLIM_AZLIM1     35
// Azimuth limits #2 (high, deg) or orbiting sensor clock angle (to, deg) or conical sensor off-boresight azimuth angle (deg)
#define XF_SENLIM_AZLIM2     36
// Azimuth limits #3 (low, deg) or orbiting sensor clock angle (from, deg)
#define XF_SENLIM_AZLIM3     37
// Azimuth limits #4 (high, deg) or orbiting sensor clock angle (to, deg)
#define XF_SENLIM_AZLIM4     38


// Orbiting sensor planetary restriction
#define XF_SENLIM_PLNTRYRES  52
// Orbiting sensor boresight vector 1
#define XF_SENLIM_BOREVEC1   53
// Orbiting sensor boresight vector 2
#define XF_SENLIM_BOREVEC2   54
// Allow orbiting sensor to view sat against earth background
#define XF_SENLIM_KEARTH     55
// Orbiting sensor earth limb exclusion distance (km)
#define XF_SENLIM_ELIMB      56
// Orbiting sensor solar exclusion angle (deg)
#define XF_SENLIM_SOLEXCANG  57
// Orbiting sensor lunar exclusion angle (deg)
#define XF_SENLIM_LUNEXCANG  58


// Orbiting sensor min illumination angle (deg)
#define XF_SENLIM_MINIL      59
// Ground site twilight offset angle (deg)
#define XF_SENLIM_TWILIT     60
// Is special mobil sensor flag / column 9 in 1L card
#define XF_SENLIM_SMSEN      61
// Number of additional segments added to sensor limits
#define XF_SENLIM_NUMSEGS    62
// Space fence FOR's Az/El table file name
#define XF_SENLIM_FILE       63
// Number of rows in space fence FOR's Az/El table
#define XF_SENLIM_AZELROWS   64

//*******************************************************************************

// Indexes of sensor location data
// Sensor nubmer
#define XA_SENLOC_NUM       0
// Sensor location - astronomical latitude (deg)  (+=North/-=South)
#define XA_SENLOC_LAT       1
// Sensor location - astronomical longitude (deg) (+=West/-=East)
#define XA_SENLOC_LON       2
// Sensor ECR position X (km)
#define XA_SENLOC_POSX      3
// Sensor ECR position Y (km)
#define XA_SENLOC_POSY      4
// Sensor ECR position Z (km)
#define XA_SENLOC_POSZ      5

#define XA_SENLOC_SIZE     16

//*******************************************************************************

// Indexes of Sensor's sigmas & biases data fields
// azimuth sigma (deg)
#define XAF_SENBS_AZSIGMA   0
// elevation sigma (deg)
#define XAF_SENBS_ELSIGMA   1
// range sigma (km)
#define XAF_SENBS_RGSIGMA   2
// range-rate sigma (km/sec)
#define XAF_SENBS_RRSIGMA   3
// az rate sigma (deg/sec)
#define XAF_SENBS_ARSIGMA   4
// el rate sigma (deg/sec)
#define XAF_SENBS_ERSIGMA   5

// azimuth bias (deg)
#define XAF_SENBS_AZBIAS    8
// elevation bias (deg)
#define XAF_SENBS_ELBIAS    9
// range bias (km)
#define XAF_SENBS_RGBIAS   10
// range-rate bias (km/sec)
#define XAF_SENBS_RRBIAS   11
// time bias (sec)
#define XAF_SENBS_TIMEBIAS 15

#define XAF_SENBS_SIZE     16

// Named constants for different obs types
// obs contains range rate only data
#define OT_RRATE            0
// obs contains azimuth, elevation data
#define OT_AZEL             1
// obs contains azimuth, elevation, and range data
#define OT_AZEL_RNG         2
// obs contains azimuth, elevation, range, and range rate data
#define OT_AZEL_RNGRRATE    3
// obs contains azimuth, elevation, range, range rate, azimuth rate, elevation rate, and range acceleration data
#define OT_AZEL_ALL         4
// obs contains right ascention and declination data
#define OT_RADEC            5
// obs contains range only data
#define OT_RNGONLY          6
// obs contains azimuth, elevation, and sensor location data
#define OT_AZEL_SENPOS      8
// obs contains right ascension, declination, and sensor location data
#define OT_RADEC_SENPOS     9
// obs contains ECI position and velocity data
#define OT_VEL             10
// obs contains ECI position data
#define OT_POS             11
// obs contains Satellite Laser Ranging (SLR) - range only, with tropospheric refraction term data
#define OT_SLR             16
// obs contains azimuth, elevation, sensor location, and range data
#define OT_M               18
// obs contains right ascension, declination, sensor location, and range data
#define OT_O               19
// obs contains TDOA/FDOA data
#define OT_RF              13
// obs contains range rate only data - for use in obs selection criteria
#define OT_RRATE_SELOB    999


// ========================= End of auto generated code ==========================
