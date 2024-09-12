% This wrapper file was generated automatically by the GenDllWrappers program.
function loadElOps(OctFilePath)   
   % Satellite maintenance category
   % Synchronous
   global  SATCAT_SYNCHRONOUS;
   % Deep space (not synchronous)
   global  SATCAT_DEEPSPACE;
   % Decaying (perigee height below 575 km)
   global  SATCAT_DECAYING;
   % Routine (everything else)
   global  SATCAT_ROUTINE;
   
   % Indexes of available satellite data fields
   % epoch in days since 1950, UTC
   global  XF_ELFIELD_EPOCHUTC;
   % mean anomaly (deg)
   global  XF_ELFIELD_MNANOM;
   % right ascension of the asending node (deg)
   global  XF_ELFIELD_NODE;
   % argument of perigee (deg)
   global  XF_ELFIELD_OMEGA;
   % period (min)
   global  XF_ELFIELD_PERIOD;
   % eccentricity (unitless)
   global  XF_ELFIELD_ECCEN;
   % inclination (deg)
   global  XF_ELFIELD_INCLI;
   % mean motion (revs/day)
   global  XF_ELFIELD_MNMOTION;
   % either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   global  XF_ELFIELD_BFIELD;
   % perigee height (km)
   global  XF_ELFIELD_PERIGEEHT;
   % apogee height (km)
   global  XF_ELFIELD_APOGEEHT;
   % perigee (km)
   global  XF_ELFIELD_PERIGEE;
   % apogee (km)
   global  XF_ELFIELD_APOGEE;
   % semi major axis (km)
   global  XF_ELFIELD_A;
   % Satellite category (Synchronous, Deep space, Decaying, Routine)
   global  XF_ELFIELD_SATCAT;
   % Astat 3 Height multiplier
   global  XF_ELFIELD_HTM3;
   % Center of mass offset (m)
   global  XF_ELFIELD_CMOFFSET;
   % n-double-dot/6  (for SGP, eph-type = 0)
   global  XF_ELFIELD_N2DOT;
   
   
   % Indexes of available satellite parameters
   % satellite's epoch in days since 1950, UTC
   global  XA_SATPARM_EPOCHUTC;
   % satellite's mean anomaly (deg)
   global  XA_SATPARM_MNANOM;
   % satellite's right ascension of the asending node (deg)
   global  XA_SATPARM_NODE;
   % satellite's argument of perigee (deg)
   global  XA_SATPARM_OMEGA;
   % satellite's period (min)
   global  XA_SATPARM_PERIOD;
   % satellite's eccentricity (unitless)
   global  XA_SATPARM_ECCEN;
   % satellite's inclination (deg)
   global  XA_SATPARM_INCLI;
   % satellite's mean motion (revs/day)
   global  XA_SATPARM_MNMOTION;
   % satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   global  XA_SATPARM_BFIELD;
   % satellite's perigee height (km)
   global  XA_SATPARM_PERIGEEHT;
   % satellite's apogee height (km)
   global  XA_SATPARM_APOGEEHT;
   % satellite's perigee (km)
   global  XA_SATPARM_PERIGEE;
   % satellite's apogee (km)
   global  XA_SATPARM_APOGEE;
   % satellite's semi major axis (km)
   global  XA_SATPARM_A;
   % satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine)
   global  XA_SATPARM_SATCAT;
   % satellite's center of mass offset (m)
   global  XA_SATPARM_CMOFFSET;
   % satellite's east longitude east subpoint (deg) - only for synchronous orbits
   global  XA_SATPARM_LONE;
   % satellite's longitude drift rate (deg East/day) - only for synchronous orbits
   global  XA_SATPARM_DRIFT;
   % satellite's omega rate of change (deg/day)
   global  XA_SATPARM_OMEGADOT;
   % satellite's nodal precession rate (deg/day)
   global  XA_SATPARM_RADOT;
   % satellite's nodal period (min)
   global  XA_SATPARM_NODALPRD;
   % satellite's nodal crossing time prior to its epoch (ds50UTC)
   global  XA_SATPARM_NODALX;
   % satellite is GEO: 0=no, 1=yes
   global  XA_SATPARM_ISGEO;
   % satellite's relative energy - only for GOBS
   global  XA_SATPARM_RELENERGY;
   % satellite's number
   global  XA_SATPARM_SATNUM;
   % satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET)
   global  XA_SATPARM_ELTTYPE;
   % obsolete - should use new name XA_SATPARM_ELTTYPE intead
   global  XA_SATPARM_OET;
   % satellite's propagation type - see PROPTYPE_? for list of available values
   global  XA_SATPARM_PROPTYPE;
   % satellite's element number
   global  XA_SATPARM_ELSETNUM;
   % sin(incl)*sin(r.a. node)
   global  XA_SATPARM_WX;
   % -sin(incl)*cos(r.a. node)
   global  XA_SATPARM_WY;
   % cos(incl)
   global  XA_SATPARM_WZ;
   % Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   global  XA_SATPARM_TROUGH;
   
   global  XA_SATPARM_SIZE
   
   % Different input time options of VP card
   % VP's input time is in days since 1950 UTC
   global  VP_TIME_DS50UTC;
   % VP's input time is in minutes since epoch
   global  VP_TIME_MSE;
   
   % VP record arrangement in array format
   % VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   global  XA_VP_TIMETYPE;
   % VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   global  XA_VP_TIMEVAL;
   % impulse U-component of delta-velocity (km/sec)
   global  XA_VP_IMPULSE_U;
   % impulse V-component of delta-velocity (km/sec)
   global  XA_VP_IMPULSE_V;
   % impulse W-component of delta-velocity (km/sec)
   global  XA_VP_IMPULSE_W;
   % apply above delta-v this number of times at the interval specified below
   global  XA_VP_REPETITIONS;
   % time interval in minutes between repetitions specified above
   global  XA_VP_INTERVAL;
   
   global  XA_VP_SIZE
   
   
   
   %*******************************************************************************
   
   
   % Satellite maintenance category
   % Synchronous
   SATCAT_SYNCHRONOUS = 1;
   % Deep space (not synchronous)
   SATCAT_DEEPSPACE   = 2;
   % Decaying (perigee height below 575 km)
   SATCAT_DECAYING    = 3;
   % Routine (everything else)
   SATCAT_ROUTINE     = 4;
   
   % Indexes of available satellite data fields
   % epoch in days since 1950, UTC
   XF_ELFIELD_EPOCHUTC =  1;
   % mean anomaly (deg)
   XF_ELFIELD_MNANOM   =  2;
   % right ascension of the asending node (deg)
   XF_ELFIELD_NODE     =  3;
   % argument of perigee (deg)
   XF_ELFIELD_OMEGA    =  4;
   % period (min)
   XF_ELFIELD_PERIOD   =  5;
   % eccentricity (unitless)
   XF_ELFIELD_ECCEN    =  6;
   % inclination (deg)
   XF_ELFIELD_INCLI    =  7;
   % mean motion (revs/day)
   XF_ELFIELD_MNMOTION =  8;
   % either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   XF_ELFIELD_BFIELD   =  9;
   % perigee height (km)
   XF_ELFIELD_PERIGEEHT= 10;
   % apogee height (km)
   XF_ELFIELD_APOGEEHT = 11;
   % perigee (km)
   XF_ELFIELD_PERIGEE  = 12;
   % apogee (km)
   XF_ELFIELD_APOGEE   = 13;
   % semi major axis (km)
   XF_ELFIELD_A        = 14;
   % Satellite category (Synchronous, Deep space, Decaying, Routine)
   XF_ELFIELD_SATCAT   = 15;
   % Astat 3 Height multiplier
   XF_ELFIELD_HTM3     = 16;
   % Center of mass offset (m)
   XF_ELFIELD_CMOFFSET = 17;
   % n-double-dot/6  (for SGP, eph-type = 0)
   XF_ELFIELD_N2DOT    = 18;
   
   
   % Indexes of available satellite parameters
   % satellite's epoch in days since 1950, UTC
   XA_SATPARM_EPOCHUTC =  0;
   % satellite's mean anomaly (deg)
   XA_SATPARM_MNANOM   =  1;
   % satellite's right ascension of the asending node (deg)
   XA_SATPARM_NODE     =  2;
   % satellite's argument of perigee (deg)
   XA_SATPARM_OMEGA    =  3;
   % satellite's period (min)
   XA_SATPARM_PERIOD   =  4;
   % satellite's eccentricity (unitless)
   XA_SATPARM_ECCEN    =  5;
   % satellite's inclination (deg)
   XA_SATPARM_INCLI    =  6;
   % satellite's mean motion (revs/day)
   XA_SATPARM_MNMOTION =  7;
   % satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg)
   XA_SATPARM_BFIELD   =  8;
   % satellite's perigee height (km)
   XA_SATPARM_PERIGEEHT=  9;
   % satellite's apogee height (km)
   XA_SATPARM_APOGEEHT = 10;
   % satellite's perigee (km)
   XA_SATPARM_PERIGEE  = 11;
   % satellite's apogee (km)
   XA_SATPARM_APOGEE   = 12;
   % satellite's semi major axis (km)
   XA_SATPARM_A        = 13;
   % satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine)
   XA_SATPARM_SATCAT   = 14;
   % satellite's center of mass offset (m)
   XA_SATPARM_CMOFFSET = 15;
   % satellite's east longitude east subpoint (deg) - only for synchronous orbits
   XA_SATPARM_LONE     = 16;
   % satellite's longitude drift rate (deg East/day) - only for synchronous orbits
   XA_SATPARM_DRIFT    = 17;
   % satellite's omega rate of change (deg/day)
   XA_SATPARM_OMEGADOT = 18;
   % satellite's nodal precession rate (deg/day)
   XA_SATPARM_RADOT    = 19;
   % satellite's nodal period (min)
   XA_SATPARM_NODALPRD = 20;
   % satellite's nodal crossing time prior to its epoch (ds50UTC)
   XA_SATPARM_NODALX   = 21;
   % satellite is GEO: 0=no, 1=yes
   XA_SATPARM_ISGEO    = 22;
   % satellite's relative energy - only for GOBS
   XA_SATPARM_RELENERGY= 23;
   % satellite's number
   XA_SATPARM_SATNUM   = 24;
   % satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET)
   XA_SATPARM_ELTTYPE  = 25;
   % obsolete - should use new name XA_SATPARM_ELTTYPE intead
   XA_SATPARM_OET      = 25;
   % satellite's propagation type - see PROPTYPE_? for list of available values
   XA_SATPARM_PROPTYPE = 26;
   % satellite's element number
   XA_SATPARM_ELSETNUM = 27;
   % sin(incl)*sin(r.a. node)
   XA_SATPARM_WX       = 28;
   % -sin(incl)*cos(r.a. node)
   XA_SATPARM_WY       = 29;
   % cos(incl)
   XA_SATPARM_WZ       = 30;
   % Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
   XA_SATPARM_TROUGH   = 31;
   
   XA_SATPARM_SIZE     = 32;
   
   % Different input time options of VP card
   % VP's input time is in days since 1950 UTC
   VP_TIME_DS50UTC = 0;
   % VP's input time is in minutes since epoch
   VP_TIME_MSE     = 1;
   
   % VP record arrangement in array format
   % VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   XA_VP_TIMETYPE    = 0;
   % VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
   XA_VP_TIMEVAL     = 1;
   % impulse U-component of delta-velocity (km/sec)
   XA_VP_IMPULSE_U   = 2;
   % impulse V-component of delta-velocity (km/sec)
   XA_VP_IMPULSE_V   = 3;
   % impulse W-component of delta-velocity (km/sec)
   XA_VP_IMPULSE_W   = 4;
   % apply above delta-v this number of times at the interval specified below
   XA_VP_REPETITIONS = 5;
   % time interval in minutes between repetitions specified above
   XA_VP_INTERVAL    = 6;
   
   XA_VP_SIZE        = 16;
   
   
   
   %*******************************************************************************
   
   autoload("LoadElOpsDll",strcat(OctFilePath,"ElOps.oct"));
   autoload("FreeElOpsDll",strcat(OctFilePath,"ElOps.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes ElOps dll for use in the program
   autoload("ElOpsInit",strcat(OctFilePath,"ElOps.oct"));
   
   %  Returns information about the current version of ElOps.dll. The information is placed in the string parameter you pass in
   autoload("ElOpsGetInfo",strcat(OctFilePath,"ElOps.oct"));
   
   %  Checks to see if satellite has geo orbit
   autoload("IsGeoOrbit",strcat(OctFilePath,"ElOps.oct"));
   
   %  Estimates the approx long east subpt
   autoload("CompLonEastSubPt",strcat(OctFilePath,"ElOps.oct"));
   
   %  Computes the decay time of the input satellite
   autoload("FindSatDecayTime",strcat(OctFilePath,"ElOps.oct"));
   
   %  Returs parameters of a satellite via its satKey
   autoload("GetSatParameters",strcat(OctFilePath,"ElOps.oct"));
   
   %  Returs the satellite number associated with the input satKey
   autoload("SatNumOf",strcat(OctFilePath,"ElOps.oct"));
   
   %  Adds an impulsive maneuver (using VP-card string format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
   %  Note: All maneuvers have to be entered before the satellite's initialization step
   autoload("AddManeuverVPStr",strcat(OctFilePath,"ElOps.oct"));
   
   %  Adds an impulsive maneuver (using VP-card array format) to the specified elset (VCM, SpVec, or Tle type 6) represented by its satKey
   %  Note: All maneuvers have to be entered before the satellite's initialization step
   autoload("AddManeuverVPArr",strcat(OctFilePath,"ElOps.oct"));
   LoadElOpsDll;
endfunction
% ========================= End of auto generated code ==========================
