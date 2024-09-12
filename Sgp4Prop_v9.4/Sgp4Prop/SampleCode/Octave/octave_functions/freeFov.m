% This wrapper file was generated automatically by the GenDllWrappers program.
function freeFov()   
   % Fov run parameters
   % Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
   global XA_FOVRUN_MAXPASSES;
   % FOV start time in days since 1950, UTC
   global XA_FOVRUN_START;
   % FOV stop time in days since 1950, UTC
   global XA_FOVRUN_STOP;
   % Cone half angle (deg) (0=auto) (0-45)
   global XA_FOVRUN_HALFCONE;
   % Search interval (min)
   global XA_FOVRUN_INTERVAL;
   
   global XA_FOVRUN_SIZE;
   
   % FOV source types
   % Source is sensor
   global FOV_SRCTYPE_SEN;
   % Source is lat lon height
   global FOV_SRCTYPE_LLH;
   % Source is EFG
   global FOV_SRCTYPE_EFG;
   % Source is XYZ
   global FOV_SRCTYPE_XYZ;
   
   % FOV source types
   % Target is elset
   global FOV_TGTTYPE_ELSET;
   % Target is constant Az/El
   global FOV_TGTTYPE_AZEL;
   % Target is RA/Dec (STAR)
   global FOV_TGTTYPE_RADEC;
   
   % FOV source specification
   % 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
   global XA_FOVSRC_TYPE;
   % Sensor# | Source ID   | Source ID  | Source ID
   global XA_FOVSRC_ID;
   % | N lat (deg) | EFG: E (m) | X (m)
   global XA_FOVSRC_ELEM1;
   % | E lon (deg) | EFG: F (m) | Y (m)
   global XA_FOVSRC_ELEM2;
   % | height (m)  | EFG: G (m) | Z (m)
   global XA_FOVSRC_ELEM3;
   % |             |            | time of position in Ds50UTC
   global XA_FOVSRC_ELEM4;
   
   global XA_FOVSRC_SIZE;
   
   
   % FOV target specification
   % 1=ELSET | 2=AZEL    | 3=RADEC
   global XA_FOVTGT_TYPE;
   % Elset#  | Target ID | Target ID
   global XA_FOVTGT_ID;
   % | az (deg)  | RA (deg)
   global XA_FOVTGT_ELEM1;
   % | el (deg)  | Dec (deg)
   global XA_FOVTGT_ELEM2;
   % |           | equinox indicator
   global XA_FOVTGT_ELEM3;
   
   global XA_FOVTGT_SIZE;
   
   % entry/minimum/exit time data
   % entry time (ds50UTC)
   global XA_EMEDAT_ENTRY;
   % minimum time (ds50UTC)
   global XA_EMEDAT_MIN;
   % exit time (ds50UTC)
   global XA_EMEDAT_EXIT;
   
   global XA_EMEDAT_SIZE;
   
   % FOV parameters
   % Cone half angle (deg) (0=auto) (0-45)
   global XA_FOVCTRL_HALFCONE;
   % Search interval (min)
   global XA_FOVCTRL_INTERVAL;
   % Print option
   global XA_FOVCTRL_PRTOPT;
   
   global XA_FOVCTRL_SIZE;
   
   
   % maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
   global FOVMAXNUM;
   
   
   % Fov run parameters
   % Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
   clear XA_FOVRUN_MAXPASSES;
   % FOV start time in days since 1950, UTC
   clear XA_FOVRUN_START;
   % FOV stop time in days since 1950, UTC
   clear XA_FOVRUN_STOP;
   % Cone half angle (deg) (0=auto) (0-45)
   clear XA_FOVRUN_HALFCONE;
   % Search interval (min)
   clear XA_FOVRUN_INTERVAL;
   
   clear XA_FOVRUN_SIZE;
   
   % FOV source types
   % Source is sensor
   clear FOV_SRCTYPE_SEN;
   % Source is lat lon height
   clear FOV_SRCTYPE_LLH;
   % Source is EFG
   clear FOV_SRCTYPE_EFG;
   % Source is XYZ
   clear FOV_SRCTYPE_XYZ;
   
   % FOV source types
   % Target is elset
   clear FOV_TGTTYPE_ELSET;
   % Target is constant Az/El
   clear FOV_TGTTYPE_AZEL;
   % Target is RA/Dec (STAR)
   clear FOV_TGTTYPE_RADEC;
   
   % FOV source specification
   % 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
   clear XA_FOVSRC_TYPE;
   % Sensor# | Source ID   | Source ID  | Source ID
   clear XA_FOVSRC_ID;
   % | N lat (deg) | EFG: E (m) | X (m)
   clear XA_FOVSRC_ELEM1;
   % | E lon (deg) | EFG: F (m) | Y (m)
   clear XA_FOVSRC_ELEM2;
   % | height (m)  | EFG: G (m) | Z (m)
   clear XA_FOVSRC_ELEM3;
   % |             |            | time of position in Ds50UTC
   clear XA_FOVSRC_ELEM4;
   
   clear XA_FOVSRC_SIZE;
   
   
   % FOV target specification
   % 1=ELSET | 2=AZEL    | 3=RADEC
   clear XA_FOVTGT_TYPE;
   % Elset#  | Target ID | Target ID
   clear XA_FOVTGT_ID;
   % | az (deg)  | RA (deg)
   clear XA_FOVTGT_ELEM1;
   % | el (deg)  | Dec (deg)
   clear XA_FOVTGT_ELEM2;
   % |           | equinox indicator
   clear XA_FOVTGT_ELEM3;
   
   clear XA_FOVTGT_SIZE;
   
   % entry/minimum/exit time data
   % entry time (ds50UTC)
   clear XA_EMEDAT_ENTRY;
   % minimum time (ds50UTC)
   clear XA_EMEDAT_MIN;
   % exit time (ds50UTC)
   clear XA_EMEDAT_EXIT;
   
   clear XA_EMEDAT_SIZE;
   
   % FOV parameters
   % Cone half angle (deg) (0=auto) (0-45)
   clear XA_FOVCTRL_HALFCONE;
   % Search interval (min)
   clear XA_FOVCTRL_INTERVAL;
   % Print option
   clear XA_FOVCTRL_PRTOPT;
   
   clear XA_FOVCTRL_SIZE;
   
   
   % maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
   clear FOVMAXNUM;
   
   FreeFovDll;
   clear LoadFovDll;
   clear FreeFovDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Fov dll for use in the program
   clear FovInit
   
   %  Returns information about the current version of Fov.dll. The information is placed in the string parameter you pass in
   clear FovGetInfo
   
   %  Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
   clear FovLoadFile
   
   %  Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
   clear FovLoadFileAll
   
   %  Loads a single Fov-typed card
   clear FovLoadCard
   
   %  Saves any currently loaded Fov-related settings to a file
   clear FovSaveFile
   
   %  This function retrieves various FOV input data being entered from input flat files (various FOV cards)
   clear FovGetDataFrInputFiles
   
   %  This function screens the specified start/end time window and returns passes when the target satellite can be seen (passed all limit checks) by the source 
   clear FovFindTargetPasses
   
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
   clear FovTargetElset
   
   %  This function returns a look angle from the source to the potential victim satellite at the specified time (target is an elset)
   %  <br>
   %  If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid.
   clear FovTargetElsetLook
   
   %  This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is a vector: AZ/EL or RA/DEC).
   %  See FovTargetElset for a description of the xa_emeDat array.<br>
   %  If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid 
   clear FovTargetVec
   
   %  This function returns a look angle from the source to the potential victim satellite at the specified time (target is a vector: AZ/EL or RA/DEC).
   %  See FovGetDataFrInputFiles for a description of the XA_FOVSRC and XA_FOVTGT parameter values.
   %  See FovTargetElsetLook for a description of the XA_LOOK parameter values.
   clear FovTargetVecLook
   
   %  Resets all FOV control parameters back to their default values
   clear FovReset
endfunction
% ========================= End of auto generated code ==========================
