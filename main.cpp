
#include <ctime>
//#include <sgp4/sgp4.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <tuple>
#include <cuda.h>
#include <cuda_runtime.h>
//#include "sgp4io.h"  // Include the SGP4 library headers
//#include "sgp4unit.h"

#include "common_include.h"

// Compiler directive that allows C++ code to use the C header files
// Begin
#ifdef __cplusplus
extern "C"
{
#endif

#include "DllMainDll_Service.h" 
#include "TimeFuncDll_Service.h"
#include "DllMainDll.h"
#include "EnvConstDll.h"
#include "AstroFuncDll.h"
#include "TimeFuncDll.h"
#include "TleDll.h"
#include "Sgp4PropDll.h"

    // End
#ifdef __cplusplus
}
#endif

//extern "C" void createPositionVector(sat_pos_st * d_sat_pos, satellite_st * d_satllites, int numSatellites, int time_mins);

//extern "C" void transformlla(sat_pos_st * d_sat_pos, int numSatellites, int time_mins);

extern "C" unsigned int searchSatellites(sat_pos_st * satelliteArray, int numSatllite, int numMins, sat_pos_st* searchedSatData, point_st * region, unsigned int* numSatInsideRegion);


// Function prototypes
void  LoadAstroStdDlls();
void  FreeAstroStdDlls();


// Function to convert std::tm to Julian Date
void jday(int year, int month, int day, int hour, int minute, double second, double& jd, double& fr) {
    jd = 367.0 * year - int((7 * (year + int((month + 9) / 12.0))) * 0.25) + int(275 * month / 9.0) + day + 1721013.5;
    fr = (second + minute * 60.0 + hour * 3600.0) / 86400.0;
}



int main() {

    int   errCode;
    int   numSats;

    double ds50UTC;

    __int64* pSatKeys;

    clock_t start, finish;
    std::string tle_file_path = "D:\\perdonsl\\Assignment_Code_Optimization\\Assignment_Code_Optimization\\Assignment_Code_Optimization\\30000sats.txt"; // Replace with your TLE file path

    double  mse, startTime, endTime;
    __int64 satKey;

    // Arrays that store propagation data
    double pos[3];   // Position (km) in TEME of Epoch
    double vel[3];   // Velocity (km/s) in TEME of Epoch
    double llh[3];   // Latitude(deg), Longitude(deg), Height above Geoid (km)


    // Load all the dlls being used in the program from the specified path (PATH env on Windows or LD_LIBRARY_PATH on Linux)
    LoadAstroStdDlls();

    /* load a TLE using strings (see TLE dll document)
    satKey = TleAddSatFrLines("1 25544U 98067A   23055.36715531  .00017001  00000+0  31285-3 0  9996",
        "2 25544  51.6387 167.3561 0005418  22.9195  99.0673 15.49284681384295");

    // other ways to load TLEs into memory to work with
    //TleLoadFile(fileName);  // load TLEs from a text file
    //TleAddSatFrFieldsGP();  // load a TLE by passing its data fields

    // initialize the loaded TLE before it can be propagated (see Sgp4Prop dll document)
    // This is important!!!
    errCode = Sgp4InitSat(satKey);

    // check to see if initialization was successful
    if (errCode != 0)
        exit(1);
    mse = 0;

    //Sgp4PropMse(satKey, mse, &ds50UTC, pos, vel, llh);


    startTime = DTGToUTC("2460191.33765046296296297");

    Sgp4PropDs50UTC(satKey, startTime, &mse, pos, vel, llh);

    std::cout << "pos1: " << pos[0] << "pos2: " << pos[1] << "pos3: " << pos[2] << std::endl;
    return 0;
    */
    // mannual check to verify sgp4 output



    char* tlestr = (char*)malloc(tle_file_path.size() + 1);
    strcpy(tlestr, tle_file_path.c_str());

    // Load Tles from the input file
    if (TleLoadFile(tlestr))
        ShowMsgAndTerminate();

    // Count number of satellites currently loaded in memory
    numSats = TleGetCount();
    if (numSats == 0)
    {
        printf("No TLEs were found in the input file\n");
        ShowMsgAndTerminate();
    }
    printf("NUMSAT: %d\n", numSats);


    // Using dinamic array
    pSatKeys = (__int64*)malloc(numSats * sizeof(__int64));
    sat_pos_st* sat_positions = (sat_pos_st*)malloc(sizeof(sat_pos_st) * numSats * 1440);

    // Get all the satellites' ids from memory and store them in the local array
    TleGetLoaded(2, pSatKeys);  // Get the satKeys in the order they were read

    satellite_st* satDetails = (satellite_st*)malloc(sizeof(satellite_st) * numSats);


    // Loop through all the TLEs in the input file
    for (int i = 0; i < numSats; i++)
    {

        // Initialize the satellite before propagating it
        if (Sgp4InitSat(pSatKeys[i]) != 0)
        {
            sat_positions[i].err = true; // Indicates error
            printf("SGP4 INIT ERROR: %d\n", i);
            ShowMsgAndTerminate();

        }
        //char satName[10];
        //TleGetField(pSatKeys[i], 1, satName); // Retreives satname to satDetails structure array;
        //strcpy(satDetails[i].satName, satName);

        for (int mse = 0; mse < 1440; mse++)
        {
            sat_positions[1440 * i + mse].idx = i; // Set common index for same satellite
            sat_positions[1440 * i + mse].mse = mse; // Iterate from satellite epoch

            // propagate the initialized TLE to the specified time in minutes since epoch
            Sgp4PropMse(pSatKeys[i], mse, &ds50UTC, sat_positions[1440 * i + mse].L, sat_positions[1440 * i + mse].V, sat_positions[1440 * i + mse].llh); // see Sgp4Prop dll document
            sat_positions[1440 * i + mse].d50UTC = ds50UTC;
            // std::cout << "INSIDE  SPG4PROP: " << sat_positions[1440 * i + mse].llh[0] << " " << sat_positions[1440 * i + mse].llh[1] << " " << sat_positions[1440 * i + mse].llh[2] << std::endl;
            //std::cout << "INSIDE  SPG4PROP L : " << sat_positions[1440 * i + mse].L[0] << " " << sat_positions[1440 * i + mse].L[1] << " " << sat_positions[1440 * i + mse].L[2] << std::endl;

            // break;
        }
        //break;
        // Remove loaded satellites if no longer needed
        //TleRemoveSat(pSatKeys[i]);   // remove loaded TLE from memory
        //Sgp4RemoveSat(pSatKeys[i]);  // remove initialized TLE from memory
        //TleRemoveAllSats();   // remove all loaded TLEs from memory
        //Sgp4RemoveAllSats();  // remove all initialized TLEs from memory

    }

    //std::cout << "INSIDE  SPG4PROP LLH: " << sat_positions[0].llh[0] << " " << sat_positions[0].llh[1] << " " << sat_positions[0].llh[2] << std::endl;
    //std::cout << "INSIDE  SPG4PROP POS: " << sat_positions[0].L[0] << " " << sat_positions[0].L[1] << " " << sat_positions[0].L[2] << std::endl;


    //TleRemoveAllSats();   // remove all loaded TLEs from memory
    //Sgp4RemoveAllSats();  // remove all initialized TLEs from memory


    //free(pSatKeys);

    // Free loaded AstroStd dlls
    //FreeAstroStdDlls();

    std::cout << "Propogation completed.." << std::endl;

    point_st* region = (point_st*)malloc(sizeof(point_st) * 4);

    /* Test case1 */
    /*region[0].latitude = -4141.927695967769 + 500;// 16.66673;
    region[0].longitude = 2003.6766308399845 + 500;//103.58196;

    region[1].latitude = -4141.927695967769 + 500;//69.74973;
    region[1].longitude = 2003.6766308399845 - 500;//-120.64459;

    region[2].latitude = -4141.927695967769 - 500;//-21.09096;
    region[2].longitude = 2003.6766308399845 - 500;//-119.71009;

    region[3].latitude = -4141.927695967769 - 500;//-31.32309;
    region[3].longitude = 2003.6766308399845 + 500;//-147.79778;
    *//* End of test case1 */



    /* Test case 2 */
    /*region[0].latitude = 41.791 + 10;// 16.66673;
    region[0].longitude = 16.4926 + 10;//103.58196;

    region[1].latitude = 41.791 + 10;//69.74973;
    region[1].longitude = 16.4926 - 10;//-120.64459;

    region[2].latitude = 41.791 - 10;//-21.09096;
    region[2].longitude = 16.4926 - 10;//-119.71009;

    region[3].latitude = 41.791 - 10;//-31.32309;
    region[3].longitude = 16.4926 + 10;//-147.79778;*/
    /* End of test case2 */

    std::cout << "Enter region to search: " << std::endl;

    //for (int k = 0; k < 4; k++)
    {
        std::cout << "Enter latitude and longitude for point 1 " << std::endl;
        std::cin >> region[0].latitude;
        std::cin >> region[0].longitude;

        std::cout << "Enter latitude and longitude for point 2 " << std::endl;
        std::cin >> region[1].latitude;
        std::cin >> region[1].longitude;

        std::cout << "Enter latitude and longitude for point 3 " << std::endl;
        std::cin >> region[2].latitude;
        std::cin >> region[2].longitude;

        std::cout << "Enter latitude and longitude for point 4 " << std::endl;
        std::cin >> region[3].latitude;
        std::cin >> region[3].longitude;

    }

    /*for (int i = 0; i < 10; i++)
    {
        std::cout << "sat pos: " <<i << ": " << sat_positions[i].L[0] << " " << sat_positions[i].L[1] << " " << sat_positions[i].L[2] << std::endl;
    }*/


    // To store the positions that falls inside the user defined region
    sat_pos_st* searchedSatData = (sat_pos_st*)malloc(sizeof(sat_pos_st) * numSats * 1440); 
    unsigned int* numSatInsideRegion = (unsigned int*)malloc(sizeof(unsigned int)); // Will store the total count of satellite positions inside the user defined region

    /*std::cout << "Calling search kernel.." << std::endl;
    unsigned int resultCount = searchSatellites(sat_positions, numSats, 1440, searchedSatData, region, numSatInsideRegion); // Helper function to call the kernel

    std::cout << "Gpu Results: " << resultCount << std::endl;
    for (int i = 0; i < 20; i++)
    {
        std::cout << "Gpu searched: " <<  searchedSatData[i].idx << std::endl;
    }*/

    /*for (int i = 0; i < *numSatInsideRegion; i++)
    {
        std::cout << "Searched Sat id: " << searchedSatData[i].idx << std::endl;

    }*/

    /*********************************************************************/
    /*********************************************************************/
    /*********************************************************************/
    //return 0;

    std::cout << "Cpu Results: " << std::endl;



    // Define the point to check
//    Point point(-4141.927695967769, 2003.6766308399845); 
    Point point(41.791, 16.4926);


    int insideCount = 0;

    for (int i = 0; i < numSats * 1440; i++)
    {
        int numVertices = 4;//region1.vertices.size();
        bool inside = false;
        double x = sat_positions[i].llh[1]; // point.longitude;
        double y = sat_positions[i].llh[0]; // point.latitude;

        for (int i = 0, j = numVertices - 1; i < numVertices; j = i++) {
            double xi = region[i].longitude, yi = region[i].latitude;
            double xj = region[j].longitude, yj = region[j].latitude;
            bool intersect = ((yi > y) != (yj > y)) && (x < (xj - xi) * (y - yi) / (yj - yi) + xi);
            if (intersect) {
                inside = !inside;
            }
        }

        if (inside)
        {
            //TleGetField(pSatKeys[i], 1, satName);
            searchedSatData[insideCount].idx = i;
            searchedSatData[insideCount].L[0] = sat_positions[i].L[0];
            searchedSatData[insideCount].L[1] = sat_positions[i].L[1];
            searchedSatData[insideCount].L[2] = sat_positions[i].L[2];

            searchedSatData[insideCount].V[0] = sat_positions[i].V[0];
            searchedSatData[insideCount].V[1] = sat_positions[i].V[1];
            searchedSatData[insideCount].V[2] = sat_positions[i].V[2];
            
            searchedSatData[insideCount].d50UTC = sat_positions[i].d50UTC;

            
            //std::cout << "region is inside" << std::endl;
            insideCount++;

        }
        else
        {
            //std::cout << "Region is outside" << std::endl;
        }
    }
    std::cout << "cpu count: " << insideCount << std::endl;
    
    
    /*for (int i = 80; i < 90; i++)
    {
        std::cout << searchedSatData[i].idx << std::endl;
    }*/

    FILE* outFile;
    outFile = FileOpen("Positions.txt", "wt");

    printf("File opened for writing\n");

    for (int i = 0; i < insideCount; i++)
    {
        //printf("%d\n", insideCount);
        //int idx = searchedSatData[insideCount].idx;
        
        //int satIdx = sat_positions[idx].idx;
        //char * satName = (char*)malloc(sizeof(char) * 512);
        //TleGetField(pSatKeys[satIdx], 1, satName);

        fprintf(outFile, "%d %lf %lf %lf %lf %lf %lf %lf\n\n", i, searchedSatData[i].d50UTC, sat_positions[i].L[0], sat_positions[i].L[1], sat_positions[i].L[2], sat_positions[i].V[0], sat_positions[i].V[1], sat_positions[i].V[2]);
    
    }

    TleRemoveAllSats();   // remove all loaded TLEs from memory
    Sgp4RemoveAllSats();  // remove all initialized TLEs from memory


    free(pSatKeys);

    // Free loaded AstroStd dlls
    FreeAstroStdDlls();
    
    return 0;

    

}

// Load all the dlls being used in the program
void LoadAstroStdDlls()
{
    // Load MainDll dll
    LoadDllMainDll();

    // Load EnvConst dll and assign function pointers
    LoadEnvConstDll();

    // Load TimeFunc dll and assign function pointers
    LoadTimeFuncDll();

    // Load AstroFunc dll and assign function pointers
    LoadAstroFuncDll();

    // Load Tle dll and assign function pointers
    LoadTleDll();

    // Load Sgp4Prop dll and assign function pointers
    LoadSgp4PropDll();
}


// Free all the dlls being used in the program
void FreeAstroStdDlls()
{
    // Free MainDll dll
    FreeDllMainDll();

    // Free EnvConst dll
    FreeEnvConstDll();

    // Free AstroFunc dll
    FreeAstroFuncDll();

    // Free TimeFunc dll
    FreeTimeFuncDll();

    // Free Tle dll
    FreeTleDll();

    // Free Sgp4Prop dll
    FreeSgp4PropDll();
}
