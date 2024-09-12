// This wrapper file was generated automatically by the GenDllWrappers program.
#![allow(non_snake_case)]
#![allow(dead_code)]
use std::os::raw::c_char;

extern "C" {
   //  Notes: This function has been deprecated since v9.0. 
   //  Initializes Bam dll for use in the program
   pub fn BamInit(apAddr: i64) -> i32;
   //  Returns information about the current version of Bam.dll. The information is placed in the string parameter you pass in
   pub fn BamGetInfo(infoStr: *const c_char);
   //  Computes the number of time steps using the input start/end times and the step size
   pub fn BamCompNumTSs(startDs50UTC: f64, stopDs50UTC: f64, stepSizeMin: f64) -> i32;
   //  Computes and returns separate/missed distance data
   //  <br>
   //  The table below shows the indexes for the Separation Distance values contained in the extBamArr array:
   //  <table>
   //      <caption>table</caption>
   //      <tr>
   //          <td><b>Index</b></td>
   //          <td><b>Index Interpretation</b></td>
   //      </tr>
   //      <tr><td>0</td><td>time at mininum average separate distances (ds50UTC)</td></tr>
   //      <tr><td>1</td><td>minimum average separate distance (km)</td></tr>
   //      <tr><td>2</td><td>average position X at minimum average separate distance (km)</td></tr>
   //      <tr><td>3</td><td>average position Y at minimum average separate distance (km)</td></tr>
   //      <tr><td>4</td><td>average position Z at minimum average separate distance (km)</td></tr>
   //      <tr><td>5</td><td>average velocity X at minimum average separate distance (km/s)</td></tr>
   //      <tr><td>6</td><td>average velocity Y at minimum average separate distance (km/s)</td></tr>
   //      <tr><td>7</td><td>average velocity Z at minimum average separate distance (km/s)</td></tr>
   //      <tr><td>8</td><td>average latitude at minimum average separate distance (deg)</td></tr>
   //      <tr><td>9</td><td>average longitude at minimum average separate distance (deg)</td></tr>
   //      <tr><td>10</td><td>average height at minimum average separate distance (km)</td></tr>
   //  </table>
   //  <br>
   //  The table below shows the indexes for the Miss Distance values contained in the extBamArr array:
   //  <table>
   //      <caption>table</caption>
   //      <tr>
   //          <td><b>Index</b></td>
   //          <td><b>Index Interpretation</b></td>
   //      </tr>
   //      <tr><td>20</td><td>time at mininum average missed distances (ds50UTC)</td></tr>
   //      <tr><td>21</td><td>minimum average missed distance (km)</td></tr>
   //      <tr><td>22</td><td>average position X of satellites when they cross the pinch point plan (km)</td></tr>
   //      <tr><td>23</td><td>average position Y of satellites when they cross the pinch point plan (km)</td></tr>
   //      <tr><td>24</td><td>average position Z of satellites when they cross the pinch point plan (km)</td></tr>
   //      <tr><td>25</td><td>average velocity X of satellites when they cross the pinch point plan (km/s)</td></tr>
   //      <tr><td>26</td><td>average velocity Y of satellites when they cross the pinch point plan (km/s)</td></tr>
   //      <tr><td>27</td><td>average velocity Z of satellites when they cross the pinch point plan (km/s)</td></tr>
   //      <tr><td>28</td><td>average latitude of satellites when they cross the pinch point plan (deg)</td></tr>
   //      <tr><td>29</td><td>average longitude of satellites when they cross the pinch point plan (deg)</td></tr>
   //      <tr><td>30</td><td>average height of satellites when they cross the pinch point plan (km)</td></tr>
   //  </table>
   pub fn BamCompute(satKeys: *const i64, numSats: i32, startDs50UTC: f64, stopDs50UTC: f64, stepSizeMin: f64, avgSDs: *mut f64, avgMDs: *mut f64, extBamArr: *mut [f64; 64], errCode: *mut i32);
   //  Retrieves other BAM data
   //  <br>
   //  The table below shows the indexes for the values for the xf_bam parameter:
   //  <table>
   //      <caption>table</caption>
   //      <tr>
   //          <td><b>Index</b></td>
   //          <td><b>Index Interpretation</b></td>
   //      </tr>
   //      <tr><td>0</td><td>times when satellites cross the pinch point plan (ds50UTC)</td></tr>
   //      <tr><td>1</td><td>missed distances from satellites to the pinch point (km)</td></tr>
   //      <tr><td>2</td><td>nadir angles of satellites when they cross the pinch point plan</td></tr>
   //      <tr><td>3</td><td>position Xs of satellites when they cross the pinch point plan (km)</td></tr>
   //      <tr><td>4</td><td>position Ys of satellites when they cross the pinch point plan (km)</td></tr>
   //      <tr><td>5</td><td>position Zs of satellites when they cross the pinch point plan (km)</td></tr>
   //      <tr><td>6</td><td>velocity Xs of satellites when they cross the pinch point plan (km/s)</td></tr>
   //      <tr><td>7</td><td>velocity Ys of satellites when they cross the pinch point plan (km/s)</td></tr>
   //      <tr><td>8</td><td>velocity Zs of satellites when they cross the pinch point plan (km/s)</td></tr>
   //      <tr><td>9</td><td>latitude of satellites when they cross the pinch point plan (deg)</td></tr>
   //      <tr><td>10</td><td>longitude of satellites when they cross the pinch point plan (deg)</td></tr>
   //      <tr><td>11</td><td>height of satellites when they cross the pinch point plan (km)</td></tr>
   //  </table>
   pub fn BamGetResults(xf_bam: i32, bamArr: *mut f64);
}
   
   // time at mininum average separate distances (ds50UTC)
   pub static BAM_SD_TIME: i32 =  0;
   // minimum average separate distance (km)
   pub static BAM_SD_DIST: i32 =  1;
   // average position X at minimum average separate distance (km)
   pub static BAM_SD_POSX: i32 =  2;
   // average position Y at minimum average separate distance (km)
   pub static BAM_SD_POSY: i32 =  3;
   // average position Z at minimum average separate distance (km)
   pub static BAM_SD_POSZ: i32 =  4;
   // average velocity X at minimum average separate distance (km/s)
   pub static BAM_SD_VELX: i32 =  5;
   // average velocity Y at minimum average separate distance (km/s)
   pub static BAM_SD_VELY: i32 =  6;
   // average velocity Z at minimum average separate distance (km/s)
   pub static BAM_SD_VELZ: i32 =  7;
   // average latitude at minimum average separate distance (deg)
   pub static BAM_SD_LAT: i32 =  8;
   // average longitude at minimum average separate distance (deg)
   pub static BAM_SD_LON: i32 =  9;
   // average height at minimum average separate distance (km)
   pub static BAM_SD_HEIGHT: i32 = 10;
   
   // time at mininum average missed distances (ds50UTC)
   pub static BAM_MD_TIME: i32 = 20;
   // minimum average missed distance (km)
   pub static BAM_MD_DIST: i32 = 21;
   // average position X of satellites when they cross the pinch point plan (km)
   pub static BAM_MD_POSX: i32 = 22;
   // average position Y of satellites when they cross the pinch point plan (km)
   pub static BAM_MD_POSY: i32 = 23;
   // average position Z of satellites when they cross the pinch point plan (km)
   pub static BAM_MD_POSZ: i32 = 24;
   // average velocity X of satellites when they cross the pinch point plan (km/s)
   pub static BAM_MD_VELX: i32 = 25;
   // average velocity Y of satellites when they cross the pinch point plan (km/s)
   pub static BAM_MD_VELY: i32 = 26;
   // average velocity Z of satellites when they cross the pinch point plan (km/s)
   pub static BAM_MD_VELZ: i32 = 27;
   // average latitude of satellites when they cross the pinch point plan (deg)
   pub static BAM_MD_LAT: i32 = 28;
   // average longitude of satellites when they cross the pinch point plan (deg)
   pub static BAM_MD_LON: i32 = 29;
   // average height of satellites when they cross the pinch point plan (km)
   pub static BAM_MD_HEIGHT: i32 = 30;
   
   pub static BAM_MD_SIZE: i32 = 64;
   
   // times when satellites cross the pinch point plan (ds50UTC)
   pub static XF_BAM_MDTIME: i32 =  0;
   // missed distances from satellites to the pinch point (km)
   pub static XF_BAM_RANGE: i32 =  1;
   // nadir angles of satellites when they cross the pinch point plan
   pub static XF_BAM_NADIR: i32 =  2;
   // position Xs of satellites when they cross the pinch point plan (km)
   pub static XF_BAM_POSX: i32 =  3;
   // position Ys of satellites when they cross the pinch point plan (km)
   pub static XF_BAM_POSY: i32 =  4;
   // position Zs of satellites when they cross the pinch point plan (km)
   pub static XF_BAM_POSZ: i32 =  5;
   // velocity Xs of satellites when they cross the pinch point plan (km/s)
   pub static XF_BAM_VELX: i32 =  6;
   // velocity Ys of satellites when they cross the pinch point plan (km/s)
   pub static XF_BAM_VELY: i32 =  7;
   // velocity Zs of satellites when they cross the pinch point plan (km/s)
   pub static XF_BAM_VELZ: i32 =  8;
   // latitude of satellites when they cross the pinch point plan (deg)
   pub static XF_BAM_LAT: i32 =  9;
   // longitude of satellites when they cross the pinch point plan (deg)
   pub static XF_BAM_LON: i32 = 10;
   // height of satellites when they cross the pinch point plan (km)
   pub static XF_BAM_HEIGHT: i32 = 11;
   
   
   
// ========================= End of auto generated code ==========================
