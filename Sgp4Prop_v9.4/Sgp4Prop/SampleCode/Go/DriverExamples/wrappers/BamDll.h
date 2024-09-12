// This wrapper file was generated automatically by the GenDllWrappers program.

// Notes: This function has been deprecated since v9.0. 
// Initializes Bam dll for use in the program
int BamInit(long apAddr);

// Returns information about the current version of Bam.dll. The information is placed in the string parameter you pass in
void BamGetInfo(char infoStr[128]);

// Computes the number of time steps using the input start/end times and the step size
int BamCompNumTSs(double startDs50UTC, double stopDs50UTC, double stepSizeMin);

// Computes and returns separate/missed distance data
// <br>
// The table below shows the indexes for the Separation Distance values contained in the extBamArr array:
// <table>
//     <caption>table</caption>
//     <tr>
//         <td><b>Index</b></td>
//         <td><b>Index Interpretation</b></td>
//     </tr>
//     <tr><td>0</td><td>time at mininum average separate distances (ds50UTC)</td></tr>
//     <tr><td>1</td><td>minimum average separate distance (km)</td></tr>
//     <tr><td>2</td><td>average position X at minimum average separate distance (km)</td></tr>
//     <tr><td>3</td><td>average position Y at minimum average separate distance (km)</td></tr>
//     <tr><td>4</td><td>average position Z at minimum average separate distance (km)</td></tr>
//     <tr><td>5</td><td>average velocity X at minimum average separate distance (km/s)</td></tr>
//     <tr><td>6</td><td>average velocity Y at minimum average separate distance (km/s)</td></tr>
//     <tr><td>7</td><td>average velocity Z at minimum average separate distance (km/s)</td></tr>
//     <tr><td>8</td><td>average latitude at minimum average separate distance (deg)</td></tr>
//     <tr><td>9</td><td>average longitude at minimum average separate distance (deg)</td></tr>
//     <tr><td>10</td><td>average height at minimum average separate distance (km)</td></tr>
// </table>
// <br>
// The table below shows the indexes for the Miss Distance values contained in the extBamArr array:
// <table>
//     <caption>table</caption>
//     <tr>
//         <td><b>Index</b></td>
//         <td><b>Index Interpretation</b></td>
//     </tr>
//     <tr><td>20</td><td>time at mininum average missed distances (ds50UTC)</td></tr>
//     <tr><td>21</td><td>minimum average missed distance (km)</td></tr>
//     <tr><td>22</td><td>average position X of satellites when they cross the pinch point plan (km)</td></tr>
//     <tr><td>23</td><td>average position Y of satellites when they cross the pinch point plan (km)</td></tr>
//     <tr><td>24</td><td>average position Z of satellites when they cross the pinch point plan (km)</td></tr>
//     <tr><td>25</td><td>average velocity X of satellites when they cross the pinch point plan (km/s)</td></tr>
//     <tr><td>26</td><td>average velocity Y of satellites when they cross the pinch point plan (km/s)</td></tr>
//     <tr><td>27</td><td>average velocity Z of satellites when they cross the pinch point plan (km/s)</td></tr>
//     <tr><td>28</td><td>average latitude of satellites when they cross the pinch point plan (deg)</td></tr>
//     <tr><td>29</td><td>average longitude of satellites when they cross the pinch point plan (deg)</td></tr>
//     <tr><td>30</td><td>average height of satellites when they cross the pinch point plan (km)</td></tr>
// </table>
void BamCompute(long satKeys[], int numSats, double startDs50UTC, double stopDs50UTC, double stepSizeMin, double avgSDs[], double avgMDs[], double extBamArr[64], int* errCode);

// Retrieves other BAM data
// <br>
// The table below shows the indexes for the values for the xf_bam parameter:
// <table>
//     <caption>table</caption>
//     <tr>
//         <td><b>Index</b></td>
//         <td><b>Index Interpretation</b></td>
//     </tr>
//     <tr><td>0</td><td>times when satellites cross the pinch point plan (ds50UTC)</td></tr>
//     <tr><td>1</td><td>missed distances from satellites to the pinch point (km)</td></tr>
//     <tr><td>2</td><td>nadir angles of satellites when they cross the pinch point plan</td></tr>
//     <tr><td>3</td><td>position Xs of satellites when they cross the pinch point plan (km)</td></tr>
//     <tr><td>4</td><td>position Ys of satellites when they cross the pinch point plan (km)</td></tr>
//     <tr><td>5</td><td>position Zs of satellites when they cross the pinch point plan (km)</td></tr>
//     <tr><td>6</td><td>velocity Xs of satellites when they cross the pinch point plan (km/s)</td></tr>
//     <tr><td>7</td><td>velocity Ys of satellites when they cross the pinch point plan (km/s)</td></tr>
//     <tr><td>8</td><td>velocity Zs of satellites when they cross the pinch point plan (km/s)</td></tr>
//     <tr><td>9</td><td>latitude of satellites when they cross the pinch point plan (deg)</td></tr>
//     <tr><td>10</td><td>longitude of satellites when they cross the pinch point plan (deg)</td></tr>
//     <tr><td>11</td><td>height of satellites when they cross the pinch point plan (km)</td></tr>
// </table>
void BamGetResults(int xf_bam, double bamArr[]);

// time at mininum average separate distances (ds50UTC)
#define BAM_SD_TIME      0
// minimum average separate distance (km)
#define BAM_SD_DIST      1
// average position X at minimum average separate distance (km)
#define BAM_SD_POSX      2
// average position Y at minimum average separate distance (km)
#define BAM_SD_POSY      3
// average position Z at minimum average separate distance (km)
#define BAM_SD_POSZ      4
// average velocity X at minimum average separate distance (km/s)
#define BAM_SD_VELX      5
// average velocity Y at minimum average separate distance (km/s)
#define BAM_SD_VELY      6
// average velocity Z at minimum average separate distance (km/s)
#define BAM_SD_VELZ      7
// average latitude at minimum average separate distance (deg)
#define BAM_SD_LAT       8
// average longitude at minimum average separate distance (deg)
#define BAM_SD_LON       9
// average height at minimum average separate distance (km)
#define BAM_SD_HEIGHT   10

// time at mininum average missed distances (ds50UTC)
#define BAM_MD_TIME     20
// minimum average missed distance (km)
#define BAM_MD_DIST     21
// average position X of satellites when they cross the pinch point plan (km)
#define BAM_MD_POSX     22
// average position Y of satellites when they cross the pinch point plan (km)
#define BAM_MD_POSY     23
// average position Z of satellites when they cross the pinch point plan (km)
#define BAM_MD_POSZ     24
// average velocity X of satellites when they cross the pinch point plan (km/s)
#define BAM_MD_VELX     25
// average velocity Y of satellites when they cross the pinch point plan (km/s)
#define BAM_MD_VELY     26
// average velocity Z of satellites when they cross the pinch point plan (km/s)
#define BAM_MD_VELZ     27
// average latitude of satellites when they cross the pinch point plan (deg)
#define BAM_MD_LAT      28
// average longitude of satellites when they cross the pinch point plan (deg)
#define BAM_MD_LON      29
// average height of satellites when they cross the pinch point plan (km)
#define BAM_MD_HEIGHT   30

#define BAM_MD_SIZE     64

// times when satellites cross the pinch point plan (ds50UTC)
#define XF_BAM_MDTIME    0
// missed distances from satellites to the pinch point (km)
#define XF_BAM_RANGE     1
// nadir angles of satellites when they cross the pinch point plan
#define XF_BAM_NADIR     2
// position Xs of satellites when they cross the pinch point plan (km)
#define XF_BAM_POSX      3
// position Ys of satellites when they cross the pinch point plan (km)
#define XF_BAM_POSY      4
// position Zs of satellites when they cross the pinch point plan (km)
#define XF_BAM_POSZ      5
// velocity Xs of satellites when they cross the pinch point plan (km/s)
#define XF_BAM_VELX      6
// velocity Ys of satellites when they cross the pinch point plan (km/s)
#define XF_BAM_VELY      7
// velocity Zs of satellites when they cross the pinch point plan (km/s)
#define XF_BAM_VELZ      8
// latitude of satellites when they cross the pinch point plan (deg)
#define XF_BAM_LAT       9
// longitude of satellites when they cross the pinch point plan (deg)
#define XF_BAM_LON      10
// height of satellites when they cross the pinch point plan (km)
#define XF_BAM_HEIGHT   11



// ========================= End of auto generated code ==========================
