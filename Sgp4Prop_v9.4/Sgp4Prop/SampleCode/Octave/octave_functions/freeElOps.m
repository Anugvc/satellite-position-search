% This wrapper file was generated automatically by the GenDllWrappers program.
function freeElOps()   
   % Satellite maintenance category
   % Synchronous
   global SATCAT_SYNCHRONOUS;
   % Deep space (not synchronous)
   global SATCAT_DEEPSPACE;
   % Decaying (perigee height below 575 km)
   global SATCAT_DECAYING;
   % Routine (everything else)
   global SATCAT_ROUTINE;
   
   % Indexes of available satellite data fields
   % epoch in days since 1950, UTC
   global XF_ELFIELD_EPOCHUTC;
   % mean anomaly (deg)
   global XF_ELFIELD_MNANOM;
   % right ascension of the asending node (deg)
   global XF_ELFIELD_NODE;
   % argument of perigee (deg)
   global XF_ELFIELD_OMEGA;
   % period (min)
   global XF_ELFIELD_PERIOD;
   % eccentricity (unitless)
   global XF_ELFIELD_ECCEN;
   % inclination (deg)
   global XF_ELFIELD_INCLI;
   % mean motion (revs/day)
   global XF_ELFIELD_MNMOTION;
   % either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   global XF_ELFIELD_BFIELD;
   % perigee height (km)
   global XF_ELFIELD_PERIGEEHT;
   % apogee height (km)
   global XF_ELFIELD_APOGEEHT;
   % perigee (km)
   global XF_ELFIELD_PERIGEE;
   % apogee (km)
   global XF_ELFIELD_APOGEE;
   % semi major axis (km)
   global XF_ELFIELD_A;
   % Satellite category (Synchronous, Deep space, Decaying, Routine)
   global XF_ELFIELD_SATCAT;
   % Astat 3 Height multiplier
   global XF_ELFIELD_HTM3;
   % Center of mass offset (m)
   global XF_ELFIELD_CMOFFSET;
   % n-double-dot/6  (for SGP, eph-type = 0)
   global XF_ELFIELD_N2DOT;
   
   
   % Indexes of available satellite parameters
   % satellite's epoch in days since 1950, UTC
   global XA_SATPARM_EPOCHUTC;
   % satellite's mean anomaly (deg)
   global XA_SATPARM_MNANOM;
   % satellite's right ascension of the asending node (deg)
   global XA_SATPARM_NODE;
   % satellite's argument of perigee (deg)
   global XA_SATPARM_OMEGA;
   % satellite's period (min)
   global XA_SATPARM_PERIOD;
   % satellite's eccentricity (unitless)
   global XA_SATPARM_ECCEN;
   % satellite's inclination (deg)
   global XA_SATPARM_INCLI;
   % satellite's mean motion (revs/day)
   global XA_SATPARM_MNMOTION;
   % satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   global XA_SATPARM_BFIELD;
   % satellite's perigee height (km)
   global XA_SATPARM_PERIGEEHT;
   % satellite's apogee height (km)
   global XA_SATPARM_APOGEEHT;
   % satellite's perigee (km)
   global XA_SATPARM_PERIGEE;
   % satellite's apogee (km)
   global XA_SATPARM_APOGEE;
   % satellite's semi major axis (km)
   global XA_SATPARM_A;
   % satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine)
   global XA_SATPARM_SATCAT;
   % satellite's center of mass offset (m)
   global XA_SATPARM_CMOFFSET;
   % satellite's east longitude east subpoint (deg) - only for synchronous orbits
   global XA_SATPARM_LONE;
   % satellite's longitude drift rate (deg East/day) - only for synchronous orbits
   global XA_SATPARM_DRIFT;
   % satellite's omega rate of change (deg/day)
   global XA_SATPARM_OMEGADOT;
   % satellite's nodal precession rate (deg/day)
   global XA_SATPARM_RADOT;
   % satellite's nodal period (min)
   global XA_SATPARM_NODALPRD;
   % satellite's nodal crossing time prior to its epoch (ds50UTC)
   global XA_SATPARM_NODALX;
   % satellite is GEO: 0=no, 1=yes
   global XA_SATPARM_ISGEO;
   % satellite's relative energy - only for GOBS
   global XA_SATPARM_RELENERGY;
   % satellite's number
   global XA_SATPARM_SATNUM;
   % satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET)
   global XA_SATPARM_ELTTYPE;
   % obsolete - should use new name XA_SATPARM_ELTTYPE intead
   global XA_SATPARM_OET;
   % satellite's propagation type - see PROPTYPE_? for list of available values
   global XA_SATPARM_PROPTYPE;
   % satellite's element number
   global XA_SATPARM_ELSETNUM;
   % sin(incl)*sin(r.a. node)
   global XA_SATPARM_WX;
   % -sin(incl)*cos(r.a. node)
   global XA_SATPARM_WY;
   % cos(incl)
   global XA_SATPARM_WZ;
   % Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   global XA_SATPARM_TROUGH;
   
   global XA_SATPARM_SIZE;
   
   % Different input time options of VP card
   % VP's input time is in days since 1950 UTC
   global VP_TIME_DS50UTC;
   % VP's input time is in minutes since epoch
   global VP_TIME_MSE;
   
   % VP record arrangement in array format
   % VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   global XA_VP_TIMETYPE;
   % VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   global XA_VP_TIMEVAL;
   % impulse U-component of delta-velocity (km/sec)
   global XA_VP_IMPULSE_U;
   % impulse V-component of delta-velocity (km/sec)
   global XA_VP_IMPULSE_V;
   % impulse W-component of delta-velocity (km/sec)
   global XA_VP_IMPULSE_W;
   % apply above delta-v this number of times at the interval specified below
   global XA_VP_REPETITIONS;
   % time interval in minutes between repetitions specified above
   global XA_VP_INTERVAL;
   
   global XA_VP_SIZE;
   
   
   
   %*******************************************************************************
   
   
   % Satellite maintenance category
   % Synchronous
   clear SATCAT_SYNCHRONOUS;
   % Deep space (not synchronous)
   clear SATCAT_DEEPSPACE;
   % Decaying (perigee height below 575 km)
   clear SATCAT_DECAYING;
   % Routine (everything else)
   clear SATCAT_ROUTINE;
   
   % Indexes of available satellite data fields
   % epoch in days since 1950, UTC
   clear XF_ELFIELD_EPOCHUTC;
   % mean anomaly (deg)
   clear XF_ELFIELD_MNANOM;
   % right ascension of the asending node (deg)
   clear XF_ELFIELD_NODE;
   % argument of perigee (deg)
   clear XF_ELFIELD_OMEGA;
   % period (min)
   clear XF_ELFIELD_PERIOD;
   % eccentricity (unitless)
   clear XF_ELFIELD_ECCEN;
   % inclination (deg)
   clear XF_ELFIELD_INCLI;
   % mean motion (revs/day)
   clear XF_ELFIELD_MNMOTION;
   % either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   clear XF_ELFIELD_BFIELD;
   % perigee height (km)
   clear XF_ELFIELD_PERIGEEHT;
   % apogee height (km)
   clear XF_ELFIELD_APOGEEHT;
   % perigee (km)
   clear XF_ELFIELD_PERIGEE;
   % apogee (km)
   clear XF_ELFIELD_APOGEE;
   % semi major axis (km)
   clear XF_ELFIELD_A;
   % Satellite category (Synchronous, Deep space, Decaying, Routine)
   clear XF_ELFIELD_SATCAT;
   % Astat 3 Height multiplier
   clear XF_ELFIELD_HTM3;
   % Center of mass offset (m)
   clear XF_ELFIELD_CMOFFSET;
   % n-double-dot/6  (for SGP, eph-type = 0)
   clear XF_ELFIELD_N2DOT;
   
   
   % Indexes of available satellite parameters
   % satellite's epoch in days since 1950, UTC
   clear XA_SATPARM_EPOCHUTC;
   % satellite's mean anomaly (deg)
   clear XA_SATPARM_MNANOM;
   % satellite's right ascension of the asending node (deg)
   clear XA_SATPARM_NODE;
   % satellite's argument of perigee (deg)
   clear XA_SATPARM_OMEGA;
   % satellite's period (min)
   clear XA_SATPARM_PERIOD;
   % satellite's eccentricity (unitless)
   clear XA_SATPARM_ECCEN;
   % satellite's inclination (deg)
   clear XA_SATPARM_INCLI;
   % satellite's mean motion (revs/day)
   clear XA_SATPARM_MNMOTION;
   % satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   clear XA_SATPARM_BFIELD;
   % satellite's perigee height (km)
   clear XA_SATPARM_PERIGEEHT;
   % satellite's apogee height (km)
   clear XA_SATPARM_APOGEEHT;
   % satellite's perigee (km)
   clear XA_SATPARM_PERIGEE;
   % satellite's apogee (km)
   clear XA_SATPARM_APOGEE;
   % satellite's semi major axis (km)
   clear XA_SATPARM_A;
   % satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine)
   clear XA_SATPARM_SATCAT;
   % satellite's center of mass offset (m)
   clear XA_SATPARM_CMOFFSET;
   % satellite's east longitude east subpoint (deg) - only for synchronous orbits
   clear XA_SATPARM_LONE;
   % satellite's longitude drift rate (deg East/day) - only for synchronous orbits
   clear XA_SATPARM_DRIFT;
   % satellite's omega rate of change (deg/day)
   clear XA_SATPARM_OMEGADOT;
   % satellite's nodal precession rate (deg/day)
   clear XA_SATPARM_RADOT;
   % satellite's nodal period (min)
   clear XA_SATPARM_NODALPRD;
   % satellite's nodal crossing time prior to its epoch (ds50UTC)
   clear XA_SATPARM_NODALX;
   % satellite is GEO: 0=no, 1=yes
   clear XA_SATPARM_ISGEO;
   % satellite's relative energy - only for GOBS
   clear XA_SATPARM_RELENERGY;
   % satellite's number
   clear XA_SATPARM_SATNUM;
   % satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET)
   clear XA_SATPARM_ELTTYPE;
   % obsolete - should use new name XA_SATPARM_ELTTYPE intead
   clear XA_SATPARM_OET;
   % satellite's propagation type - see PROPTYPE_? for list of available values
   clear XA_SATPARM_PROPTYPE;
   % satellite's element number
   clear XA_SATPARM_ELSETNUM;
   % sin(incl)*sin(r.a. node)
   clear XA_SATPARM_WX;
   % -sin(incl)*cos(r.a. node)
   clear XA_SATPARM_WY;
   % cos(incl)
   clear XA_SATPARM_WZ;
   % Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   clear XA_SATPARM_TROUGH;
   
   clear XA_SATPARM_SIZE;
   
   % Different input time options of VP card
   % VP's input time is in days since 1950 UTC
   clear VP_TIME_DS50UTC;
   % VP's input time is in minutes since epoch
   clear VP_TIME_MSE;
   
   % VP record arrangement in array format
   % VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   clear XA_VP_TIMETYPE;
   % VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   clear XA_VP_TIMEVAL;
   % impulse U-component of delta-velocity (km/sec)
   clear XA_VP_IMPULSE_U;
   % impulse V-component of delta-velocity (km/sec)
   clear XA_VP_IMPULSE_V;
   % impulse W-component of delta-velocity (km/sec)
   clear XA_VP_IMPULSE_W;
   % apply above delta-v this number of times at the interval specified below
   clear XA_VP_REPETITIONS;
   % time interval in minutes between repetitions specified above
   clear XA_VP_INTERVAL;
   
   clear XA_VP_SIZE;
   
   
   
   %*******************************************************************************
   
   FreeElOpsDll;
   clear LoadElOpsDll;
   clear FreeElOpsDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes ElOps dll for use in the program
   clear ElOpsInit
   
   %  Returns information about the current version of ElOps.dll. The information is placed in the string parameter you pass in
   clear ElOpsGetInfo
   
   %  Checks to see if satellite has geo orbit
   clear IsGeoOrbit
   
   %  Estimates the approx long east subpt
   clear CompLonEastSubPt
   
   %  Computes the decay time of the input satellite
   clear FindSatDecayTime
   
   %  Returs parameters of a satellite via its satKey
   clear GetSatParameters
   
   %  Returs the satellite number associated with the input satKey
   clear SatNumOf
   
   %  Adds an impulsive maneuver (using VP-card string format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
   %  Note: All maneuvers have to be entered before the satellite's initialization step
   clear AddManeuverVPStr
   
   %  Adds an impulsive maneuver (using VP-card array format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
   %  Note: All maneuvers have to be entered before the satellite's initialization step
   clear AddManeuverVPArr
endfunction
% ========================= End of auto generated code ==========================
