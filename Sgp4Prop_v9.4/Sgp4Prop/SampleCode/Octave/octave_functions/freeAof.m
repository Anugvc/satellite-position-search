% This wrapper file was generated automatically by the GenDllWrappers program.
function freeAof()   
   % AOF parameters
   % input start/stop time type: 1=minutes since epoch (MSE), 0=date time (DTG)
   global XA_AOFCTRL_TIMEFLG;
   % start time of interest (either MSE or DTG)
   global XA_AOFCTRL_START;
   % stop time of interest (either MSE or DTG)
   global XA_AOFCTRL_STOP;
   % search interval (min)
   global XA_AOFCTRL_INTERVAL;
   % print output control flag; 0=print penetrations only, 1=print penetrations and data description
   global XA_AOFCTRL_PRTOPT;
   % search method: 0=use brute force method, 1=use analytical method
   global XA_AOFCTRL_SRCHMET;
   % output sort type: S=sort each area by sat#, then time, T=sort each area by time, then sat#
   global XA_AOFCTRL_SRTTYPE;
   
   global XA_AOFCTRL_SIZE;
   
   
   % Defended area types
   % area box type
   global AREATYPE_I_BOX;
   % area circle type
   global AREATYPE_I_CIRCLE;
   % area point type
   global AREATYPE_I_POINT;
   % area polygon type
   global AREATYPE_I_POLYGON;
   
   
   % AOF satellite/mission (satellite/sensor) data
   % satellite number of sensor-bearing satellite
   global XA_AOFSEN_SATNUM;
   % reserved for future use
   global XA_AOFSEN_TYPE;
   % off nadir minimum look angle (deg) (=0 for Cone)
   global XA_AOFSEN_MINEL;
   % off nadir maximum look angle (deg)
   global XA_AOFSEN_MAXEL;
   % minimum azimuth of first azimuth range (deg)
   global XA_AOFSEN_MINAZ1;
   % maximum azimuth of first azimuth range (deg)
   global XA_AOFSEN_MAXAZ1;
   % minimum azimuth of second azimuth range (deg)
   global XA_AOFSEN_MINAZ2;
   % maximum azimuth of second azimuth range (deg)
   global XA_AOFSEN_MAXAZ2;
   % reserved for future use
   global XA_AOFSEN_ELEM7;
   % reserved for future use
   global XA_AOFSEN_ELEM8;
   % reserved for future use
   global XA_AOFSEN_ELEM9;
   % reserved for future use
   global XA_AOFSEN_ELEM10;
   
   global XA_AOFSEN_SIZE;
   
   
   % AOF satellite/sensor types
   % circle (specify only off-nadir maximum look angle)
   global AOFSENTYPE_CIRCLE;
   
   
   % AOF run parameters
   % Maximum number of passes that AOF returns in one start/stop time
   global XA_AOFRUN_MAXPASSES;
   % AOF start time in days since 1950, UTC
   global XA_AOFRUN_START;
   % AOF stop time in days since 1950, UTC
   global XA_AOFRUN_STOP;
   % Search interval (min)
   global XA_AOFRUN_INTERVAL;
   
   global XA_AOFRUN_SIZE;
   
   
   % AOF defended area types
   % Defended area is a box
   global AOF_AREATYPE_BOX;
   % Defended area is a circle
   global AOF_AREATYPE_CIRCLE;
   % Defended area is a point
   global AOF_AREATYPE_POINT;
   % Defended area is a polygon
   global AOF_AREATYPE_POLYGON;
   
   
   
   % AOF defended area data
   % Area number
   global XA_AOFAREA_NUM;
   % | 1 = BOX                       | 2 = CIRCLE              | 3 = POINT
   global XA_AOFAREA_TYPE;
   % | N lat (deg) upper left corner | N lat (deg) center point| N lat (deg) center point
   global XA_AOFAREA_ELEM1;
   % | E lon (deg) upper left corner | E lon (deg) center point| E lon (deg) center point
   global XA_AOFAREA_ELEM2;
   % | N lat (deg) lower right corner| circle radius (km)      | height (km, above reference geoid)
   global XA_AOFAREA_ELEM3;
   % | E lon (deg) lower right corner|                         |
   global XA_AOFAREA_ELEM4;
   
   global XA_AOFAREA_SIZE;
   
   
   % Penetration-level darkness status
   % lit throughout penetration
   global DARKLEVEL_ALLLIT;
   % dark throughout penetration
   global DARKLEVEL_ALLDARK;
   % partly-lit during penetration
   global DARKLEVEL_PARTLIT;
   
   % View angle from overfly satellite to a llh point
   % Azimuth (deg)
   global XA_AOFVIEW_AZIM;
   % Elevation (deg)
   global XA_AOFVIEW_ELEV;
   % Has line of sight to the point (1=Yes, 0=No-earth obstructs the view)
   global XA_AOFVIEW_HASLOS;
   
   global XA_AOFVIEW_SIZE;
   
   % maximum of number of lat-lon-height points that can be used to describe a defended area
   global MAX_LLHPOINTS;
   
   
   
   
   
   % AOF parameters
   % input start/stop time type: 1=minutes since epoch (MSE), 0=date time (DTG)
   clear XA_AOFCTRL_TIMEFLG;
   % start time of interest (either MSE or DTG)
   clear XA_AOFCTRL_START;
   % stop time of interest (either MSE or DTG)
   clear XA_AOFCTRL_STOP;
   % search interval (min)
   clear XA_AOFCTRL_INTERVAL;
   % print output control flag; 0=print penetrations only, 1=print penetrations and data description
   clear XA_AOFCTRL_PRTOPT;
   % search method: 0=use brute force method, 1=use analytical method
   clear XA_AOFCTRL_SRCHMET;
   % output sort type: S=sort each area by sat#, then time, T=sort each area by time, then sat#
   clear XA_AOFCTRL_SRTTYPE;
   
   clear XA_AOFCTRL_SIZE;
   
   
   % Defended area types
   % area box type
   clear AREATYPE_I_BOX;
   % area circle type
   clear AREATYPE_I_CIRCLE;
   % area point type
   clear AREATYPE_I_POINT;
   % area polygon type
   clear AREATYPE_I_POLYGON;
   
   
   % AOF satellite/mission (satellite/sensor) data
   % satellite number of sensor-bearing satellite
   clear XA_AOFSEN_SATNUM;
   % reserved for future use
   clear XA_AOFSEN_TYPE;
   % off nadir minimum look angle (deg) (=0 for Cone)
   clear XA_AOFSEN_MINEL;
   % off nadir maximum look angle (deg)
   clear XA_AOFSEN_MAXEL;
   % minimum azimuth of first azimuth range (deg)
   clear XA_AOFSEN_MINAZ1;
   % maximum azimuth of first azimuth range (deg)
   clear XA_AOFSEN_MAXAZ1;
   % minimum azimuth of second azimuth range (deg)
   clear XA_AOFSEN_MINAZ2;
   % maximum azimuth of second azimuth range (deg)
   clear XA_AOFSEN_MAXAZ2;
   % reserved for future use
   clear XA_AOFSEN_ELEM7;
   % reserved for future use
   clear XA_AOFSEN_ELEM8;
   % reserved for future use
   clear XA_AOFSEN_ELEM9;
   % reserved for future use
   clear XA_AOFSEN_ELEM10;
   
   clear XA_AOFSEN_SIZE;
   
   
   % AOF satellite/sensor types
   % circle (specify only off-nadir maximum look angle)
   clear AOFSENTYPE_CIRCLE;
   
   
   % AOF run parameters
   % Maximum number of passes that AOF returns in one start/stop time
   clear XA_AOFRUN_MAXPASSES;
   % AOF start time in days since 1950, UTC
   clear XA_AOFRUN_START;
   % AOF stop time in days since 1950, UTC
   clear XA_AOFRUN_STOP;
   % Search interval (min)
   clear XA_AOFRUN_INTERVAL;
   
   clear XA_AOFRUN_SIZE;
   
   
   % AOF defended area types
   % Defended area is a box
   clear AOF_AREATYPE_BOX;
   % Defended area is a circle
   clear AOF_AREATYPE_CIRCLE;
   % Defended area is a point
   clear AOF_AREATYPE_POINT;
   % Defended area is a polygon
   clear AOF_AREATYPE_POLYGON;
   
   
   
   % AOF defended area data
   % Area number
   clear XA_AOFAREA_NUM;
   % | 1 = BOX                       | 2 = CIRCLE              | 3 = POINT
   clear XA_AOFAREA_TYPE;
   % | N lat (deg) upper left corner | N lat (deg) center point| N lat (deg) center point
   clear XA_AOFAREA_ELEM1;
   % | E lon (deg) upper left corner | E lon (deg) center point| E lon (deg) center point
   clear XA_AOFAREA_ELEM2;
   % | N lat (deg) lower right corner| circle radius (km)      | height (km, above reference geoid)
   clear XA_AOFAREA_ELEM3;
   % | E lon (deg) lower right corner|                         |
   clear XA_AOFAREA_ELEM4;
   
   clear XA_AOFAREA_SIZE;
   
   
   % Penetration-level darkness status
   % lit throughout penetration
   clear DARKLEVEL_ALLLIT;
   % dark throughout penetration
   clear DARKLEVEL_ALLDARK;
   % partly-lit during penetration
   clear DARKLEVEL_PARTLIT;
   
   % View angle from overfly satellite to a llh point
   % Azimuth (deg)
   clear XA_AOFVIEW_AZIM;
   % Elevation (deg)
   clear XA_AOFVIEW_ELEV;
   % Has line of sight to the point (1=Yes, 0=No-earth obstructs the view)
   clear XA_AOFVIEW_HASLOS;
   
   clear XA_AOFVIEW_SIZE;
   
   % maximum of number of lat-lon-height points that can be used to describe a defended area
   clear MAX_LLHPOINTS;
   
   
   
   
   FreeAofDll;
   clear LoadAofDll;
   clear FreeAofDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Aof dll for use in the program
   clear AofInit
   
   %  Returns information about the current version of Aof.dll. The information is placed in the string parameter you pass in
   clear AofGetInfo
   
   %  Loads Aof-related parameters (1P/2P/3P cards, and Aof parameter free format) from an input text file
   clear AofLoadFile
   
   %  Loads Aof-related parameters from an input text file
   clear AofLoadFileAll
   
   %  Loads a single Aof-typed card
   clear AofLoadCard
   
   %  This function retrieves various AOF input data being entered from input flat files (and/or various AOF input cards)
   clear AofGetDataFrInputFiles
   
   %  This function resets all Aof control parameters previously loaded from input text files
   clear AofReset
   
   %  Computes entry/exit times of basic overflight satellite/sensor (cone) versus basic defended areas (box, circle, point)
   %  <br>
   %  Note:  for xa_aofArea type=4 (polygon), use the AofComplex method.
   clear AofBasic
   
   %  Computes entry/exit times of overflight satellite/sensor having complex configurations (cone, donut, butterfly, leftButterly, rightButterfly)
   %  versus defended areas defined by multiple lat lon height points (polygon)
   %  For a description of the input parameter arrays xa_aofRun and xa_aofSen, see AofBasic.
   %  The input array llhArr is a zero-based array with latitude, longitude and altitude of each point in subsequent entries, e.g.:
   %  llhArr[0] = point 1 latitude, 
   %  llhArr[1] = point 1 longitude, 
   %  llhArr[2] = point 1 altitude, 
   %  llhArr[3] = point 2 latitude, etc.
   clear AofComplex
   
   %  This function returns a look angle from the llh point to the overfly satellite at the specified time
   clear AofGetLook
   
   %  This function returns a view angle from the overfly satellite to a llh point at the specified time
   clear AofGetView
   
   %  Determines darkness level of the "defended" area at the specified time
   %  For a description of the input parameter array xa_aofArea, see AofBasic.
   clear AofGetDarknessLevel
endfunction
% ========================= End of auto generated code ==========================
