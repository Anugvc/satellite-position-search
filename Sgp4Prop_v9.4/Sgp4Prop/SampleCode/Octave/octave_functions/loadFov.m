% This wrapper file was generated automatically by the GenDllWrappers program.
function loadFov(OctFilePath)   
   % Fov run parameters
   % Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
   global  XA_FOVRUN_MAXPASSES;
   % FOV start time in days since 1950, UTC
   global  XA_FOVRUN_START;
   % FOV stop time in days since 1950, UTC
   global  XA_FOVRUN_STOP;
   % Cone half angle (deg) (0=auto) (0-45)
   global  XA_FOVRUN_HALFCONE;
   % Search interval (min)
   global  XA_FOVRUN_INTERVAL;
   
   global  XA_FOVRUN_SIZE
   
   % FOV source types
   % Source is sensor
   global  FOV_SRCTYPE_SEN;
   % Source is lat lon height
   global  FOV_SRCTYPE_LLH;
   % Source is EFG
   global  FOV_SRCTYPE_EFG;
   % Source is XYZ
   global  FOV_SRCTYPE_XYZ;
   
   % FOV source types
   % Target is elset
   global  FOV_TGTTYPE_ELSET;
   % Target is constant Az/El
   global  FOV_TGTTYPE_AZEL;
   % Target is RA/Dec (STAR)
   global  FOV_TGTTYPE_RADEC;
   
   % FOV source specification
   % 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
   global  XA_FOVSRC_TYPE;
   % Sensor# | Source ID   | Source ID  | Source ID
   global  XA_FOVSRC_ID;
   % | N lat (deg) | EFG: E (m) | X (m)
   global  XA_FOVSRC_ELEM1;
   % | E lon (deg) | EFG: F (m) | Y (m)
   global  XA_FOVSRC_ELEM2;
   % | height (m)  | EFG: G (m) | Z (m)
   global  XA_FOVSRC_ELEM3;
   % |             |            | time of position in Ds50UTC
   global  XA_FOVSRC_ELEM4;
   
   global  XA_FOVSRC_SIZE
   
   
   % FOV target specification
   % 1=ELSET | 2=AZEL    | 3=RADEC
   global  XA_FOVTGT_TYPE;
   % Elset#  | Target ID | Target ID
   global  XA_FOVTGT_ID;
   % | az (deg)  | RA (deg)
   global  XA_FOVTGT_ELEM1;
   % | el (deg)  | Dec (deg)
   global  XA_FOVTGT_ELEM2;
   % |           | equinox indicator
   global  XA_FOVTGT_ELEM3;
   
   global  XA_FOVTGT_SIZE
   
   % entry/minimum/exit time data
   % entry time (ds50UTC)
   global  XA_EMEDAT_ENTRY;
   % minimum time (ds50UTC)
   global  XA_EMEDAT_MIN;
   % exit time (ds50UTC)
   global  XA_EMEDAT_EXIT;
   
   global  XA_EMEDAT_SIZE
   
   % FOV parameters
   % Cone half angle (deg) (0=auto) (0-45)
   global  XA_FOVCTRL_HALFCONE;
   % Search interval (min)
   global  XA_FOVCTRL_INTERVAL;
   % Print option
   global  XA_FOVCTRL_PRTOPT;
   
   global  XA_FOVCTRL_SIZE
   
   
   % maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
   global  FOVMAXNUM;
   
   
   % Fov run parameters
   % Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
   XA_FOVRUN_MAXPASSES= 0;
   % FOV start time in days since 1950, UTC
   XA_FOVRUN_START    = 1;
   % FOV stop time in days since 1950, UTC
   XA_FOVRUN_STOP     = 2;
   % Cone half angle (deg) (0=auto) (0-45)
   XA_FOVRUN_HALFCONE = 3;
   % Search interval (min)
   XA_FOVRUN_INTERVAL = 4;
   
   XA_FOVRUN_SIZE     = 8;
   
   % FOV source types
   % Source is sensor
   FOV_SRCTYPE_SEN = 1;
   % Source is lat lon height
   FOV_SRCTYPE_LLH = 2;
   % Source is EFG
   FOV_SRCTYPE_EFG = 3;
   % Source is XYZ
   FOV_SRCTYPE_XYZ = 4;
   
   % FOV source types
   % Target is elset
   FOV_TGTTYPE_ELSET = 1;
   % Target is constant Az/El
   FOV_TGTTYPE_AZEL  = 2;
   % Target is RA/Dec (STAR)
   FOV_TGTTYPE_RADEC = 3;
   
   % FOV source specification
   % 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
   XA_FOVSRC_TYPE  = 0;
   % Sensor# | Source ID   | Source ID  | Source ID
   XA_FOVSRC_ID    = 1;
   % | N lat (deg) | EFG: E (m) | X (m)
   XA_FOVSRC_ELEM1 = 2;
   % | E lon (deg) | EFG: F (m) | Y (m)
   XA_FOVSRC_ELEM2 = 3;
   % | height (m)  | EFG: G (m) | Z (m)
   XA_FOVSRC_ELEM3 = 4;
   % |             |            | time of position in Ds50UTC
   XA_FOVSRC_ELEM4 = 5;
   
   XA_FOVSRC_SIZE  = 8;
   
   
   % FOV target specification
   % 1=ELSET | 2=AZEL    | 3=RADEC
   XA_FOVTGT_TYPE  = 0;
   % Elset#  | Target ID | Target ID
   XA_FOVTGT_ID    = 1;
   % | az (deg)  | RA (deg)
   XA_FOVTGT_ELEM1 = 2;
   % | el (deg)  | Dec (deg)
   XA_FOVTGT_ELEM2 = 3;
   % |           | equinox indicator
   XA_FOVTGT_ELEM3 = 4;
   
   XA_FOVTGT_SIZE  = 8;
   
   % entry/minimum/exit time data
   % entry time (ds50UTC)
   XA_EMEDAT_ENTRY = 0;
   % minimum time (ds50UTC)
   XA_EMEDAT_MIN   = 1;
   % exit time (ds50UTC)
   XA_EMEDAT_EXIT  = 2;
   
   XA_EMEDAT_SIZE  = 3;
   
   % FOV parameters
   % Cone half angle (deg) (0=auto) (0-45)
   XA_FOVCTRL_HALFCONE = 0;
   % Search interval (min)
   XA_FOVCTRL_INTERVAL = 1;
   % Print option
   XA_FOVCTRL_PRTOPT   = 2;
   
   XA_FOVCTRL_SIZE     = 8;
   
   
   % maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
   FOVMAXNUM = 128;
   
   autoload("LoadFovDll",strcat(OctFilePath,"Fov.oct"));
   autoload("FreeFovDll",strcat(OctFilePath,"Fov.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Fov dll for use in the program
   autoload("FovInit",strcat(OctFilePath,"Fov.oct"));
   
   %  Returns information about the current version of Fov.dll. The information is placed in the string parameter you pass in
   autoload("FovGetInfo",strcat(OctFilePath,"Fov.oct"));
   
   %  Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
   autoload("FovLoadFile",strcat(OctFilePath,"Fov.oct"));
   
   %  Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
   autoload("FovLoadFileAll",strcat(OctFilePath,"Fov.oct"));
   
   %  Loads a single Fov-typed card
   autoload("FovLoadCard",strcat(OctFilePath,"Fov.oct"));
   
   %  Saves any currently loaded Fov-related settings to a file
   autoload("FovSaveFile",strcat(OctFilePath,"Fov.oct"));
   
   %  This function retrieves various FOV input data being entered from input flat files (various FOV cards)
   autoload("FovGetDataFrInputFiles",strcat(OctFilePath,"Fov.oct"));
   
   %  This function screens the specified start/end time window and returns passes when the target satellite can be seen (passed all limit checks) by the source 
   autoload("FovFindTargetPasses",strcat(OctFilePath,"Fov.oct"));
   
   %  This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is an elset).
   %  <br>
   %  The xa_emeDat array size is [numObs, 3].  The penetration time indexes are:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Name</b></td>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td> 0</td><td> entry time (ds50UTC)</td></tr>
   %  <tr><td> 1</td><td> minimum time (ds50UTC)</td></tr>
   %  <tr><td> 2</td><td> exit time (ds50UTC)</td></tr>
   %  </table>
   %  <br>
   %  See FovGetDataFrInputFiles for a description of the XA_FOVSRC parameter values.
   autoload("FovTargetElset",strcat(OctFilePath,"Fov.oct"));
   
   %  This function returns a look angle from the source to the potential victim satellite at the specified time (target is an elset)
   %  <br>
   %  If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid.
   autoload("FovTargetElsetLook",strcat(OctFilePath,"Fov.oct"));
   
   %  This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is a vector: AZ/EL or RA/DEC).
   %  See FovTargetElset for a description of the xa_emeDat array.<br>
   %  If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid 
   autoload("FovTargetVec",strcat(OctFilePath,"Fov.oct"));
   
   %  This function returns a look angle from the source to the potential victim satellite at the specified time (target is a vector: AZ/EL or RA/DEC).
   %  See FovGetDataFrInputFiles for a description of the XA_FOVSRC and XA_FOVTGT parameter values.
   %  See FovTargetElsetLook for a description of the XA_LOOK parameter values.
   autoload("FovTargetVecLook",strcat(OctFilePath,"Fov.oct"));
   
   %  Resets all FOV control parameters back to their default values
   autoload("FovReset",strcat(OctFilePath,"Fov.oct"));
   LoadFovDll;
endfunction
% ========================= End of auto generated code ==========================
