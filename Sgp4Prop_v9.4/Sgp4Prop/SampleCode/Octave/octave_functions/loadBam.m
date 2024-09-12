% This wrapper file was generated automatically by the GenDllWrappers program.
function loadBam(OctFilePath)   
   % time at mininum average separate distances (ds50UTC)
   global  BAM_SD_TIME;
   % minimum average separate distance (km)
   global  BAM_SD_DIST;
   % average position X at minimum average separate distance (km)
   global  BAM_SD_POSX;
   % average position Y at minimum average separate distance (km)
   global  BAM_SD_POSY;
   % average position Z at minimum average separate distance (km)
   global  BAM_SD_POSZ;
   % average velocity X at minimum average separate distance (km/s)
   global  BAM_SD_VELX;
   % average velocity Y at minimum average separate distance (km/s)
   global  BAM_SD_VELY;
   % average velocity Z at minimum average separate distance (km/s)
   global  BAM_SD_VELZ;
   % average latitude at minimum average separate distance (deg)
   global  BAM_SD_LAT;
   % average longitude at minimum average separate distance (deg)
   global  BAM_SD_LON;
   % average height at minimum average separate distance (km)
   global  BAM_SD_HEIGHT;
   
   % time at mininum average missed distances (ds50UTC)
   global  BAM_MD_TIME;
   % minimum average missed distance (km)
   global  BAM_MD_DIST;
   % average position X of satellites when they cross the pinch point plan (km)
   global  BAM_MD_POSX;
   % average position Y of satellites when they cross the pinch point plan (km)
   global  BAM_MD_POSY;
   % average position Z of satellites when they cross the pinch point plan (km)
   global  BAM_MD_POSZ;
   % average velocity X of satellites when they cross the pinch point plan (km/s)
   global  BAM_MD_VELX;
   % average velocity Y of satellites when they cross the pinch point plan (km/s)
   global  BAM_MD_VELY;
   % average velocity Z of satellites when they cross the pinch point plan (km/s)
   global  BAM_MD_VELZ;
   % average latitude of satellites when they cross the pinch point plan (deg)
   global  BAM_MD_LAT;
   % average longitude of satellites when they cross the pinch point plan (deg)
   global  BAM_MD_LON;
   % average height of satellites when they cross the pinch point plan (km)
   global  BAM_MD_HEIGHT;
   
   global  BAM_MD_SIZE
   
   % times when satellites cross the pinch point plan (ds50UTC)
   global  XF_BAM_MDTIME;
   % missed distances from satellites to the pinch point (km)
   global  XF_BAM_RANGE;
   % nadir angles of satellites when they cross the pinch point plan
   global  XF_BAM_NADIR;
   % position Xs of satellites when they cross the pinch point plan (km)
   global  XF_BAM_POSX;
   % position Ys of satellites when they cross the pinch point plan (km)
   global  XF_BAM_POSY;
   % position Zs of satellites when they cross the pinch point plan (km)
   global  XF_BAM_POSZ;
   % velocity Xs of satellites when they cross the pinch point plan (km/s)
   global  XF_BAM_VELX;
   % velocity Ys of satellites when they cross the pinch point plan (km/s)
   global  XF_BAM_VELY;
   % velocity Zs of satellites when they cross the pinch point plan (km/s)
   global  XF_BAM_VELZ;
   % latitude of satellites when they cross the pinch point plan (deg)
   global  XF_BAM_LAT;
   % longitude of satellites when they cross the pinch point plan (deg)
   global  XF_BAM_LON;
   % height of satellites when they cross the pinch point plan (km)
   global  XF_BAM_HEIGHT;
   
   
   
   
   % time at mininum average separate distances (ds50UTC)
   BAM_SD_TIME    =  0;
   % minimum average separate distance (km)
   BAM_SD_DIST    =  1;
   % average position X at minimum average separate distance (km)
   BAM_SD_POSX    =  2;
   % average position Y at minimum average separate distance (km)
   BAM_SD_POSY    =  3;
   % average position Z at minimum average separate distance (km)
   BAM_SD_POSZ    =  4;
   % average velocity X at minimum average separate distance (km/s)
   BAM_SD_VELX    =  5;
   % average velocity Y at minimum average separate distance (km/s)
   BAM_SD_VELY    =  6;
   % average velocity Z at minimum average separate distance (km/s)
   BAM_SD_VELZ    =  7;
   % average latitude at minimum average separate distance (deg)
   BAM_SD_LAT     =  8;
   % average longitude at minimum average separate distance (deg)
   BAM_SD_LON     =  9;
   % average height at minimum average separate distance (km)
   BAM_SD_HEIGHT  = 10;
   
   % time at mininum average missed distances (ds50UTC)
   BAM_MD_TIME    = 20;
   % minimum average missed distance (km)
   BAM_MD_DIST    = 21;
   % average position X of satellites when they cross the pinch point plan (km)
   BAM_MD_POSX    = 22;
   % average position Y of satellites when they cross the pinch point plan (km)
   BAM_MD_POSY    = 23;
   % average position Z of satellites when they cross the pinch point plan (km)
   BAM_MD_POSZ    = 24;
   % average velocity X of satellites when they cross the pinch point plan (km/s)
   BAM_MD_VELX    = 25;
   % average velocity Y of satellites when they cross the pinch point plan (km/s)
   BAM_MD_VELY    = 26;
   % average velocity Z of satellites when they cross the pinch point plan (km/s)
   BAM_MD_VELZ    = 27;
   % average latitude of satellites when they cross the pinch point plan (deg)
   BAM_MD_LAT     = 28;
   % average longitude of satellites when they cross the pinch point plan (deg)
   BAM_MD_LON     = 29;
   % average height of satellites when they cross the pinch point plan (km)
   BAM_MD_HEIGHT  = 30;
   
   BAM_MD_SIZE    = 64;
   
   % times when satellites cross the pinch point plan (ds50UTC)
   XF_BAM_MDTIME  =  0;
   % missed distances from satellites to the pinch point (km)
   XF_BAM_RANGE   =  1;
   % nadir angles of satellites when they cross the pinch point plan
   XF_BAM_NADIR   =  2;
   % position Xs of satellites when they cross the pinch point plan (km)
   XF_BAM_POSX    =  3;
   % position Ys of satellites when they cross the pinch point plan (km)
   XF_BAM_POSY    =  4;
   % position Zs of satellites when they cross the pinch point plan (km)
   XF_BAM_POSZ    =  5;
   % velocity Xs of satellites when they cross the pinch point plan (km/s)
   XF_BAM_VELX    =  6;
   % velocity Ys of satellites when they cross the pinch point plan (km/s)
   XF_BAM_VELY    =  7;
   % velocity Zs of satellites when they cross the pinch point plan (km/s)
   XF_BAM_VELZ    =  8;
   % latitude of satellites when they cross the pinch point plan (deg)
   XF_BAM_LAT     =  9;
   % longitude of satellites when they cross the pinch point plan (deg)
   XF_BAM_LON     = 10;
   % height of satellites when they cross the pinch point plan (km)
   XF_BAM_HEIGHT  = 11;
   
   
   
   autoload("LoadBamDll",strcat(OctFilePath,"Bam.oct"));
   autoload("FreeBamDll",strcat(OctFilePath,"Bam.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Bam dll for use in the program
   autoload("BamInit",strcat(OctFilePath,"Bam.oct"));
   
   %  Returns information about the current version of Bam.dll. The information is placed in the string parameter you pass in
   autoload("BamGetInfo",strcat(OctFilePath,"Bam.oct"));
   
   %  Computes the number of time steps using the input start/end times and the step size
   autoload("BamCompNumTSs",strcat(OctFilePath,"Bam.oct"));
   
   %  Computes and returns separate/missed distance data
   %  <br>
   %  The table below shows the indexes for the Separation Distance values contained in the extBamArr array:
   %  <table>
   %      <caption>table</caption>
   %      <tr>
   %          <td><b>Index</b></td>
   %          <td><b>Index Interpretation</b></td>
   %      </tr>
   %      <tr><td>0</td><td>time at mininum average separate distances (ds50UTC)</td></tr>
   %      <tr><td>1</td><td>minimum average separate distance (km)</td></tr>
   %      <tr><td>2</td><td>average position X at minimum average separate distance (km)</td></tr>
   %      <tr><td>3</td><td>average position Y at minimum average separate distance (km)</td></tr>
   %      <tr><td>4</td><td>average position Z at minimum average separate distance (km)</td></tr>
   %      <tr><td>5</td><td>average velocity X at minimum average separate distance (km/s)</td></tr>
   %      <tr><td>6</td><td>average velocity Y at minimum average separate distance (km/s)</td></tr>
   %      <tr><td>7</td><td>average velocity Z at minimum average separate distance (km/s)</td></tr>
   %      <tr><td>8</td><td>average latitude at minimum average separate distance (deg)</td></tr>
   %      <tr><td>9</td><td>average longitude at minimum average separate distance (deg)</td></tr>
   %      <tr><td>10</td><td>average height at minimum average separate distance (km)</td></tr>
   %  </table>
   %  <br>
   %  The table below shows the indexes for the Miss Distance values contained in the extBamArr array:
   %  <table>
   %      <caption>table</caption>
   %      <tr>
   %          <td><b>Index</b></td>
   %          <td><b>Index Interpretation</b></td>
   %      </tr>
   %      <tr><td>20</td><td>time at mininum average missed distances (ds50UTC)</td></tr>
   %      <tr><td>21</td><td>minimum average missed distance (km)</td></tr>
   %      <tr><td>22</td><td>average position X of satellites when they cross the pinch point plan (km)</td></tr>
   %      <tr><td>23</td><td>average position Y of satellites when they cross the pinch point plan (km)</td></tr>
   %      <tr><td>24</td><td>average position Z of satellites when they cross the pinch point plan (km)</td></tr>
   %      <tr><td>25</td><td>average velocity X of satellites when they cross the pinch point plan (km/s)</td></tr>
   %      <tr><td>26</td><td>average velocity Y of satellites when they cross the pinch point plan (km/s)</td></tr>
   %      <tr><td>27</td><td>average velocity Z of satellites when they cross the pinch point plan (km/s)</td></tr>
   %      <tr><td>28</td><td>average latitude of satellites when they cross the pinch point plan (deg)</td></tr>
   %      <tr><td>29</td><td>average longitude of satellites when they cross the pinch point plan (deg)</td></tr>
   %      <tr><td>30</td><td>average height of satellites when they cross the pinch point plan (km)</td></tr>
   %  </table>
   autoload("BamCompute",strcat(OctFilePath,"Bam.oct"));
   
   %  Retrieves other BAM data
   %  <br>
   %  The table below shows the indexes for the values for the xf_bam parameter:
   %  <table>
   %      <caption>table</caption>
   %      <tr>
   %          <td><b>Index</b></td>
   %          <td><b>Index Interpretation</b></td>
   %      </tr>
   %      <tr><td>0</td><td>times when satellites cross the pinch point plan (ds50UTC)</td></tr>
   %      <tr><td>1</td><td>missed distances from satellites to the pinch point (km)</td></tr>
   %      <tr><td>2</td><td>nadir angles of satellites when they cross the pinch point plan</td></tr>
   %      <tr><td>3</td><td>position Xs of satellites when they cross the pinch point plan (km)</td></tr>
   %      <tr><td>4</td><td>position Ys of satellites when they cross the pinch point plan (km)</td></tr>
   %      <tr><td>5</td><td>position Zs of satellites when they cross the pinch point plan (km)</td></tr>
   %      <tr><td>6</td><td>velocity Xs of satellites when they cross the pinch point plan (km/s)</td></tr>
   %      <tr><td>7</td><td>velocity Ys of satellites when they cross the pinch point plan (km/s)</td></tr>
   %      <tr><td>8</td><td>velocity Zs of satellites when they cross the pinch point plan (km/s)</td></tr>
   %      <tr><td>9</td><td>latitude of satellites when they cross the pinch point plan (deg)</td></tr>
   %      <tr><td>10</td><td>longitude of satellites when they cross the pinch point plan (deg)</td></tr>
   %      <tr><td>11</td><td>height of satellites when they cross the pinch point plan (km)</td></tr>
   %  </table>
   autoload("BamGetResults",strcat(OctFilePath,"Bam.oct"));
   LoadBamDll;
endfunction
% ========================= End of auto generated code ==========================
