-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package BamDll is
    
    -- time at mininum average separate distances (ds50UTC)
    BAM_SD_TIME : constant := 0;
    -- minimum average separate distance (km)
    BAM_SD_DIST : constant := 1;
    -- average position X at minimum average separate distance (km)
    BAM_SD_POSX : constant := 2;
    -- average position Y at minimum average separate distance (km)
    BAM_SD_POSY : constant := 3;
    -- average position Z at minimum average separate distance (km)
    BAM_SD_POSZ : constant := 4;
    -- average velocity X at minimum average separate distance (km/s)
    BAM_SD_VELX : constant := 5;
    -- average velocity Y at minimum average separate distance (km/s)
    BAM_SD_VELY : constant := 6;
    -- average velocity Z at minimum average separate distance (km/s)
    BAM_SD_VELZ : constant := 7;
    -- average latitude at minimum average separate distance (deg)
    BAM_SD_LAT : constant := 8;
    -- average longitude at minimum average separate distance (deg)
    BAM_SD_LON : constant := 9;
    -- average height at minimum average separate distance (km)
    BAM_SD_HEIGHT : constant := 10;
    
    -- time at mininum average missed distances (ds50UTC)
    BAM_MD_TIME : constant := 20;
    -- minimum average missed distance (km)
    BAM_MD_DIST : constant := 21;
    -- average position X of satellites when they cross the pinch point plan (km)
    BAM_MD_POSX : constant := 22;
    -- average position Y of satellites when they cross the pinch point plan (km)
    BAM_MD_POSY : constant := 23;
    -- average position Z of satellites when they cross the pinch point plan (km)
    BAM_MD_POSZ : constant := 24;
    -- average velocity X of satellites when they cross the pinch point plan (km/s)
    BAM_MD_VELX : constant := 25;
    -- average velocity Y of satellites when they cross the pinch point plan (km/s)
    BAM_MD_VELY : constant := 26;
    -- average velocity Z of satellites when they cross the pinch point plan (km/s)
    BAM_MD_VELZ : constant := 27;
    -- average latitude of satellites when they cross the pinch point plan (deg)
    BAM_MD_LAT : constant := 28;
    -- average longitude of satellites when they cross the pinch point plan (deg)
    BAM_MD_LON : constant := 29;
    -- average height of satellites when they cross the pinch point plan (km)
    BAM_MD_HEIGHT : constant := 30;
    
    BAM_MD_SIZE : constant := 64;
    
    -- times when satellites cross the pinch point plan (ds50UTC)
    XF_BAM_MDTIME : constant := 0;
    -- missed distances from satellites to the pinch point (km)
    XF_BAM_RANGE : constant := 1;
    -- nadir angles of satellites when they cross the pinch point plan
    XF_BAM_NADIR : constant := 2;
    -- position Xs of satellites when they cross the pinch point plan (km)
    XF_BAM_POSX : constant := 3;
    -- position Ys of satellites when they cross the pinch point plan (km)
    XF_BAM_POSY : constant := 4;
    -- position Zs of satellites when they cross the pinch point plan (km)
    XF_BAM_POSZ : constant := 5;
    -- velocity Xs of satellites when they cross the pinch point plan (km/s)
    XF_BAM_VELX : constant := 6;
    -- velocity Ys of satellites when they cross the pinch point plan (km/s)
    XF_BAM_VELY : constant := 7;
    -- velocity Zs of satellites when they cross the pinch point plan (km/s)
    XF_BAM_VELZ : constant := 8;
    -- latitude of satellites when they cross the pinch point plan (deg)
    XF_BAM_LAT : constant := 9;
    -- longitude of satellites when they cross the pinch point plan (deg)
    XF_BAM_LON : constant := 10;
    -- height of satellites when they cross the pinch point plan (km)
    XF_BAM_HEIGHT : constant := 11;
    
    
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes Bam dll for use in the program
    function BamInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BamInit";

    -- Returns information about the current version of Bam.dll. The information is placed in the string parameter you pass in
    procedure BamGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "BamGetInfo";
        --infoStr            : String    (1..128);

    -- Computes the number of time steps using the input start/end times and the step size
    function BamCompNumTSs
        (startDs50UTC      :         Long_Float;
        stopDs50UTC        :         Long_Float;
        stepSizeMin        :         Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BamCompNumTSs";

    -- Computes and returns separate/missed distance data
    -- 
    -- The table below shows the indexes for the Separation Distance values contained in the extBamArr array:
    -- 
    --     table
    --     
    --         Index
    --         Index Interpretation
    --     
    --     0time at mininum average separate distances (ds50UTC)
    --     1minimum average separate distance (km)
    --     2average position X at minimum average separate distance (km)
    --     3average position Y at minimum average separate distance (km)
    --     4average position Z at minimum average separate distance (km)
    --     5average velocity X at minimum average separate distance (km/s)
    --     6average velocity Y at minimum average separate distance (km/s)
    --     7average velocity Z at minimum average separate distance (km/s)
    --     8average latitude at minimum average separate distance (deg)
    --     9average longitude at minimum average separate distance (deg)
    --     10average height at minimum average separate distance (km)
    -- 
    -- 
    -- The table below shows the indexes for the Miss Distance values contained in the extBamArr array:
    -- 
    --     table
    --     
    --         Index
    --         Index Interpretation
    --     
    --     20time at mininum average missed distances (ds50UTC)
    --     21minimum average missed distance (km)
    --     22average position X of satellites when they cross the pinch point plan (km)
    --     23average position Y of satellites when they cross the pinch point plan (km)
    --     24average position Z of satellites when they cross the pinch point plan (km)
    --     25average velocity X of satellites when they cross the pinch point plan (km/s)
    --     26average velocity Y of satellites when they cross the pinch point plan (km/s)
    --     27average velocity Z of satellites when they cross the pinch point plan (km/s)
    --     28average latitude of satellites when they cross the pinch point plan (deg)
    --     29average longitude of satellites when they cross the pinch point plan (deg)
    --     30average height of satellites when they cross the pinch point plan (km)
    -- 
    procedure BamCompute
        (satKeys           : in      Long1D_Ptr;
        numSats            :         Integer;
        startDs50UTC       :         Long_Float;
        stopDs50UTC        :         Long_Float;
        stepSizeMin        :         Long_Float;
        avgSDs             : out     Double1D_Ptr;
        avgMDs             : out     Double1D_Ptr;
        extBamArr          : out     Double1D;
        errCode            : out     Integer)
    with Import => True,
        Convention => C,
        External_Name => "BamCompute";
        --extBamArr          : Double1D  (1..64);

    -- Retrieves other BAM data
    -- 
    -- The table below shows the indexes for the values for the xf_bam parameter:
    -- 
    --     table
    --     
    --         Index
    --         Index Interpretation
    --     
    --     0times when satellites cross the pinch point plan (ds50UTC)
    --     1missed distances from satellites to the pinch point (km)
    --     2nadir angles of satellites when they cross the pinch point plan
    --     3position Xs of satellites when they cross the pinch point plan (km)
    --     4position Ys of satellites when they cross the pinch point plan (km)
    --     5position Zs of satellites when they cross the pinch point plan (km)
    --     6velocity Xs of satellites when they cross the pinch point plan (km/s)
    --     7velocity Ys of satellites when they cross the pinch point plan (km/s)
    --     8velocity Zs of satellites when they cross the pinch point plan (km/s)
    --     9latitude of satellites when they cross the pinch point plan (deg)
    --     10longitude of satellites when they cross the pinch point plan (deg)
    --     11height of satellites when they cross the pinch point plan (km)
    -- 
    procedure BamGetResults
        (xf_bam            :         Integer;
        bamArr             : out     Double1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "BamGetResults";


end BamDll;

-- ========================= End of auto generated code ==========================
