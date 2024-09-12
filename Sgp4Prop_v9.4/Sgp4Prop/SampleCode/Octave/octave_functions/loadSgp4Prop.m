% This wrapper file was generated automatically by the GenDllWrappers program.
function loadSgp4Prop(OctFilePath)   % Different return values of errCode from Sgp4 propagation
   % SGP4 propagates successfully
   global  GP_ERR_NONE;
   % Bad FK model (FK5 must be selected)
   global  GP_ERR_BADFK;
   % A is negative
   global  GP_ERR_ANEGATIVE;
   % A is to large
   global  GP_ERR_ATOOLARGE;
   % Eccentricity is hyperbolic
   global  GP_ERR_EHYPERPOLIC;
   % Eccentricity is negative
   global  GP_ERR_ENEGATIVE;
   % Mean anomaly is too large
   global  GP_ERR_MATOOLARGE;
   % e**2 is too large
   global  GP_ERR_E2TOOLARGE;
   
   % Different time types for passing to Sgp4PropAll
   % propagation time is in minutes since epoch
   global  SGP4_TIMETYPE_MSE;
   % propagation time is in days since 1950, UTC
   global  SGP4_TIMETYPE_DS50UTC;
   
   % Sgp4 propagated output fields
   % Revolution number
   global  XF_SGP4OUT_REVNUM;
   % Nodal period, apogee, perigee
   global  XF_SGP4OUT_NODAL_AP_PER;
   % Mean Keplerian
   global  XF_SGP4OUT_MEAN_KEP;
   % Osculating Keplerian
   global  XF_SGP4OUT_OSC_KEP;
   
   % Sgp4 propagated data
   % Propagation time in days since 1950, UTC
   global  XA_SGP4OUT_DS50UTC;
   % Propagation time in minutes since the satellite's epoch time
   global  XA_SGP4OUT_MSE;
   % ECI X position (km) in True Equator and Mean Equinox of Epoch
   global  XA_SGP4OUT_POSX;
   % ECI Y position (km) in True Equator and Mean Equinox of Epoch
   global  XA_SGP4OUT_POSY;
   % ECI Z position (km) in True Equator and Mean Equinox of Epoch
   global  XA_SGP4OUT_POSZ;
   % ECI X velocity (km/s) in True Equator and Mean Equinox of Epoch
   global  XA_SGP4OUT_VELX;
   % ECI Y velocity (km/s) in True Equator and Mean Equinox of Epoch
   global  XA_SGP4OUT_VELY;
   % ECI Z velocity (km/s) in True Equator and Mean Equinox of Epoch
   global  XA_SGP4OUT_VELZ;
   % Geodetic latitude (deg)
   global  XA_SGP4OUT_LAT;
   % Geodetic longitude (deg)
   global  XA_SGP4OUT_LON;
   % Height above geoid (km)
   global  XA_SGP4OUT_HEIGHT;
   % Revolution number
   global  XA_SGP4OUT_REVNUM;
   % Nodal period (min)
   global  XA_SGP4OUT_NODALPER;
   % Apogee (km)
   global  XA_SGP4OUT_APOGEE;
   % Perigee (km)
   global  XA_SGP4OUT_PERIGEE;
   % Mean semi-major axis (km)
   global  XA_SGP4OUT_MN_A;
   % Mean eccentricity (unitless)
   global  XA_SGP4OUT_MN_E;
   % Mean inclination (deg)
   global  XA_SGP4OUT_MN_INCLI;
   % Mean mean anomaly (deg)
   global  XA_SGP4OUT_MN_MA;
   % Mean right ascension of the asending node (deg)
   global  XA_SGP4OUT_MN_NODE;
   % Mean argument of perigee (deg)
   global  XA_SGP4OUT_MN_OMEGA;
   % Osculating semi-major axis (km)
   global  XA_SGP4OUT_OSC_A;
   % Osculating eccentricity (unitless)
   global  XA_SGP4OUT_OSC_E;
   % Osculating inclination (deg)
   global  XA_SGP4OUT_OSC_INCLI;
   % Osculating mean anomaly (deg)
   global  XA_SGP4OUT_OSC_MA;
   % Osculating right ascension of the asending node (deg)
   global  XA_SGP4OUT_OSC_NODE;
   % Osculating argument of perigee (deg)
   global  XA_SGP4OUT_OSC_OMEGA;
   
   global  XA_SGP4OUT_SIZE
   
   % Different options for generating ephemerides from SGP4
   % ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   global  SGP4_EPHEM_ECI;
   % MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   global  SGP4_EPHEM_J2K;
   
   
   % Different dynamic step size options
   % Use a simple algorithm to determine step size based on satellite's current position
   global  DYN_SS_BASIC;
   
   %*******************************************************************************
   
   % Different return values of errCode from Sgp4 propagation
   % SGP4 propagates successfully
   GP_ERR_NONE        = 0;
   % Bad FK model (FK5 must be selected)
   GP_ERR_BADFK       = 1;
   % A is negative
   GP_ERR_ANEGATIVE   = 2;
   % A is to large
   GP_ERR_ATOOLARGE   = 3;
   % Eccentricity is hyperbolic
   GP_ERR_EHYPERPOLIC = 4;
   % Eccentricity is negative
   GP_ERR_ENEGATIVE   = 5;
   % Mean anomaly is too large
   GP_ERR_MATOOLARGE  = 6;
   % e**2 is too large
   GP_ERR_E2TOOLARGE  = 7;
   
   % Different time types for passing to Sgp4PropAll
   % propagation time is in minutes since epoch
   SGP4_TIMETYPE_MSE      = 0;
   % propagation time is in days since 1950, UTC
   SGP4_TIMETYPE_DS50UTC  = 1;
   
   % Sgp4 propagated output fields
   % Revolution number
   XF_SGP4OUT_REVNUM       = 1;
   % Nodal period, apogee, perigee
   XF_SGP4OUT_NODAL_AP_PER = 2;
   % Mean Keplerian
   XF_SGP4OUT_MEAN_KEP     = 3;
   % Osculating Keplerian
   XF_SGP4OUT_OSC_KEP      = 4;
   
   % Sgp4 propagated data
   % Propagation time in days since 1950, UTC
   XA_SGP4OUT_DS50UTC      =  0;
   % Propagation time in minutes since the satellite's epoch time
   XA_SGP4OUT_MSE          =  1;
   % ECI X position (km) in True Equator and Mean Equinox of Epoch
   XA_SGP4OUT_POSX         =  2;
   % ECI Y position (km) in True Equator and Mean Equinox of Epoch
   XA_SGP4OUT_POSY         =  3;
   % ECI Z position (km) in True Equator and Mean Equinox of Epoch
   XA_SGP4OUT_POSZ         =  4;
   % ECI X velocity (km/s) in True Equator and Mean Equinox of Epoch
   XA_SGP4OUT_VELX         =  5;
   % ECI Y velocity (km/s) in True Equator and Mean Equinox of Epoch
   XA_SGP4OUT_VELY         =  6;
   % ECI Z velocity (km/s) in True Equator and Mean Equinox of Epoch
   XA_SGP4OUT_VELZ         =  7;
   % Geodetic latitude (deg)
   XA_SGP4OUT_LAT          =  8;
   % Geodetic longitude (deg)
   XA_SGP4OUT_LON          =  9;
   % Height above geoid (km)
   XA_SGP4OUT_HEIGHT       = 10;
   % Revolution number
   XA_SGP4OUT_REVNUM       = 11;
   % Nodal period (min)
   XA_SGP4OUT_NODALPER     = 12;
   % Apogee (km)
   XA_SGP4OUT_APOGEE       = 13;
   % Perigee (km)
   XA_SGP4OUT_PERIGEE      = 14;
   % Mean semi-major axis (km)
   XA_SGP4OUT_MN_A         = 15;
   % Mean eccentricity (unitless)
   XA_SGP4OUT_MN_E         = 16;
   % Mean inclination (deg)
   XA_SGP4OUT_MN_INCLI     = 17;
   % Mean mean anomaly (deg)
   XA_SGP4OUT_MN_MA        = 18;
   % Mean right ascension of the asending node (deg)
   XA_SGP4OUT_MN_NODE      = 19;
   % Mean argument of perigee (deg)
   XA_SGP4OUT_MN_OMEGA     = 20;
   % Osculating semi-major axis (km)
   XA_SGP4OUT_OSC_A        = 21;
   % Osculating eccentricity (unitless)
   XA_SGP4OUT_OSC_E        = 22;
   % Osculating inclination (deg)
   XA_SGP4OUT_OSC_INCLI    = 23;
   % Osculating mean anomaly (deg)
   XA_SGP4OUT_OSC_MA       = 24;
   % Osculating right ascension of the asending node (deg)
   XA_SGP4OUT_OSC_NODE     = 25;
   % Osculating argument of perigee (deg)
   XA_SGP4OUT_OSC_OMEGA    = 26;
   
   XA_SGP4OUT_SIZE         = 64;
   
   % Different options for generating ephemerides from SGP4
   % ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   SGP4_EPHEM_ECI   = 1;
   % MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   SGP4_EPHEM_J2K   = 2;
   
   
   % Different dynamic step size options
   % Use a simple algorithm to determine step size based on satellite's current position
   DYN_SS_BASIC  = -1;
   
   %*******************************************************************************
   
   autoload("LoadSgp4PropDll",strcat(OctFilePath,"Sgp4Prop.oct"));
   autoload("FreeSgp4PropDll",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes the Sgp4 DLL for use in the program.
   %  <br>
   %  If this function returns an error, it is recommended that you stop the program immediately.
   %  <br>
   %  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   autoload("Sgp4Init",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Returns information about the current version of Sgp4Prop.dll. The information is placed in the string parameter you pass in.
   %  The returned string provides information about the version number, build date, and platform.
   autoload("Sgp4GetInfo",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Loads SGP4-related parameters (prediction controls, JPL settings) and SGP4 elsets from a text file
   autoload("Sgp4LoadFileAll",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Saves currently loaded SGP4-related parameters (SGP4 application controls, prediction controls, integration controls) to a file
   %  The purpose of this function is to save the current SGP4-related settings, usually used in GUI applications, for future use.
   autoload("Sgp4SaveFile",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Initializes an SGP4 satellite from an SGP or SGP4 TLE.
   %  Internally, when this function is called, Tle.dll's set of TLEs is searched for the provided satKey. If found, the associated TLE data will be used to create an SGP4 satellite which then will be added to Sgp4Prop.dll's set of satellites. Subsequent calls to propagate this satellite will use the data in this set to compute the satellite's new state.
   %  
   %  This routine should be called once for each satellite you wish to propagate before propagation begins, or any time the associated data that is stored by Tle.dll is changed.
   %  
   %  The call to this routine needs to be placed before any calls to the SGP4 propagator routines (Sgp4PropMse(), Sgp4PropDs50UTC(), etc.).
   autoload("Sgp4InitSat",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Removing a satellite from the propagator's set of satellites does not affect the corresponding TLE data loaded by calls to routines in Tle.dll.
   autoload("Sgp4RemoveSat",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Removes all currently loaded satellites from memory.
   %  Calling this function removes all satellites from the set maintained by Sgp4Prop.dll. However, the TLE data loaded by Tle.dll is unaffected by this function.
   autoload("Sgp4RemoveAllSats",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Returns the number of GP objects currently created. 
   autoload("Sgp4GetCount",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in minutes since the satellite's epoch time. 
   %  The resulting data about the satellite is placed in the various reference parameters.
   %  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   %  
   %  This function can be called in random time requests.
   %  The following cases will result in an error:
   %  <ul>
   %  <li>Semi major axis A &lt;= 0 or A &gt;1.0D6</li>
   %  <li>Eccentricity E &gt;= 1.0 or E &lt; -1.0D-3</li>
   %  <li>Mean anomaly MA&gt;=1.0D10</li>
   %  <li>Hyperbolic orbit E<sup>2</sup>&gt;= 1.0</li>
   %  <li>satKey doesn't exist in the set of loaded satellites</li>
   %  <li>FK model not set to FK5</li>
   %  </ul>
   autoload("Sgp4PropMse",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  The resulting data about the satellite is placed in the pos (position), vel (velocity), and llh (Lat/Lon/Height) parameters.
   %  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   %  The following cases will result in an error:
   %  <ul>
   %  <li>Semi major axis A &lt;= 0 or A &gt;1.0D6</li>
   %  <li>Eccentricity E &gt;= 1.0 or E &lt; -1.0D-3</li>
   %  <li>Mean anomaly MA&gt;=1.0D10</li>
   %  <li>Hyperbolic orbit E<sup>2</sup>&gt;= 1.0</li>
   %  <li>satKey doesn't exist in the set of loaded satellites</li>
   %  <li>GEO model not set to WGS-72 and/or FK model not set to FK5</li>
   %  </ul>
   autoload("Sgp4PropDs50UTC",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  The resulting data about the satellite is placed in the pos (position), vel (velocity) parameters.
   autoload("Sgp4PropDs50UtcPosVel",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  Only the geodetic information is returned by this function.
   %  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   %  
   %  This function is similar to Sgp4PropDs50UTC but returns only LLH.  This function is designed especially for applications which plot ground traces.
   %  The following cases will result in an error:
   %  <ul>
   %  <li>Semi major axis A &lt;= 0 or A &gt;1.0D6</li>
   %  <li>Eccentricity E &gt;= 1.0 or E &lt; -1.0D-3</li>
   %  <li>Mean anomaly MA&gt;=1.0D10</li>
   %  <li>Hyperbolic orbit E<sup>2</sup>&gt;= 1.0</li>
   %  <li>satKey doesn't exist in the set of loaded satellites</li>
   %  <li>GEO model not set to WGS-72 and/or FK model not set to FK5</li>
   %  </ul>
   autoload("Sgp4PropDs50UtcLLH",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  Only the ECI position vector is returned by this function.
   %  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   %  
   %  This function is similar to Sgp4PropDs50UTC but returns only ECI position vector.  This function is designed especially for applications which plot satellite position in 3D.
   %  The following cases will result in an error:
   %  <ul>
   %  <li>Semi major axis A &lt;= 0 or A &gt;1.0D6</li>
   %  <li>Eccentricity E &gt;= 1.0 or E &lt; -1.0D-3</li>
   %  <li>Mean anomaly MA&gt;=1.0D10</li>
   %  <li>Hyperbolic orbit E<sup>2</sup>&gt;= 1.0</li>
   %  <li>satKey doesn't exist in the set of loaded satellites</li>
   %  <li>GEO model not set to WGS-72 and/or FK model not set to FK5</li>
   %  </ul>
   autoload("Sgp4PropDs50UtcPos",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Retrieves propagator's precomputed results. This function can be used to obtain results from 
   %  a propagation which are not made available through calls to the propagation functions themselves.
   %  <br>
   %  See example in Sgp4PropMse or Sgp4PropDs50UTC.
   %  <br>
   %  This function should be called immediately after a successful call to Sgp4PropMse() or Sgp4PropDs50UTC() to retrieve the desired values.
   %  <br>
   %  It is the caller's responsibility to ensure that the array passed in the destArray parameter is large enough to hold the requested values. The required size can be found by looking at the destArray size column of the table below describing valid index values.
   %  <br>
   %  The destArray Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element. In other programming languages, the subscript of the first element is 1.
   %  <br>
   %  Note: This function is not thread safe, please use Sgp4PropAll() instead 
   %  <br>
   %  The table below shows the values for the xf_Sgp4Out parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  <td><b>DestArray size</b></td>
   %  <td><b>DestArray Arrangement</b></td>
   %  </tr>
   %  <tr><td>1</td><td>Revolution number</td><td>1</td><td><ol><li>Revolution number (based on the Osculating Keplerian
   %  Elements)</li></ol></td></tr>
   %  <tr><td>2</td><td>Nodal Apogee Perigee</td><td>3</td><td><ol><li>nodal period (minutes)</li><li>apogee
   %  (km)</li><li>perigee (km)</li></ol></td></tr>
   %  <tr><td>3</td><td>Mean Keplerian Elements</td><td>6</td><td><ol><li>semi-major axis (km)</li><li>eccentricity
   %  (unitless)</li><li>inclination (degree)</li><li>mean anomaly (degree)</li><li>right ascension of the ascending node
   %  (degree)</li><li>argument of perigee (degree)</li></ol></td></tr>
   %  <tr><td>4</td><td>Osculating Keplerian Elements</td><td>6</td><td>Same as Mean Keplerian Elements</td></tr>
   %  </table>
   autoload("Sgp4GetPropOut",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   %  All propagation data is returned by this function.
   autoload("Sgp4PropAll",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Converts osculating position and velocity vectors to a set of mean Keplerian SGP4 elements.
   %  The new position and velocity vectors are the results of using SGP4 propagator to propagate the computed sgp4MeanKep to the time specified in year and day of epoch time. 
   %  They should be closely matched with the input osculating position and velocity vectors.
   %  
   %  The mean Keplerian elements are SGP4's Brouwer mean motion not SGP's Kozai mean motion.
   %  Notes: Even if the function fails, the less acurate results may still be availalbe 
   autoload("Sgp4PosVelToKep",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Converts osculating position and velocity vectors to TLE array - allows bstar/bterm, drag values to be used in the conversion if desired
   %  The function is similar to Sgp4PosVelToKep but allows the user to specify agom (XP mode) and bstar/bterm values, if desired, to be used in solving for the new Keplerian elements.
   %  
   %  The updated elements returned in the xa_tle array is of type SGP and the mean motion is Kozai mean motion.
   %  Notes: Even if the function fails, the less acurate results may still be availalbe 
   autoload("Sgp4PosVelToTleArr",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Reepochs a loaded TLE, represented by the satKey, to a new epoch.
   autoload("Sgp4ReepochTLE",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Reepochs a loaded TLE, represented by the satKey, to a new epoch in Csv format.
   autoload("Sgp4ReepochCsv",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  This function has been deprecated since v8.2
   %  Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
   autoload("Sgp4SetLicFilePath",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  This function has been deprecated since v8.2
   %  Note: The only requirement now is that "SGP4_Open_License.txt" file needs to be in those folders specified in PATH/LD_LIBRARY_PATH environment or AstroStds DLLs/SOs'
   autoload("Sgp4GetLicFilePath",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
   %  Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   %  that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   autoload("Sgp4GenEphems",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Generates ephemerides for the input TLE - in an array format - for the specified time span and step size (OS - in One Step)
   %  Notes: <br>
   %  - This function takes in TLE data directly and doesn't need to go through loading/geting satKey/initializing steps<br>
   %  - if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   %    that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   autoload("Sgp4GenEphems_OS",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
   autoload("Sgp4PropAllSats",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Provides the native XP equinoctial elements and rates at given time
   autoload("XpGetNativeElts",strcat(OctFilePath,"Sgp4Prop.oct"));
   
   %  Reepochs to a csv and provides the native XP equinoctial elements and rates
   autoload("XpReepochGetNativeElts",strcat(OctFilePath,"Sgp4Prop.oct"));
   LoadSgp4PropDll;
endfunction
% ========================= End of auto generated code ==========================
