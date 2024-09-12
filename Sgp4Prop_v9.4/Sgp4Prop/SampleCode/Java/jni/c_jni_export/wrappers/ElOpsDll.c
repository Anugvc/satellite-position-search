// This wrapper file was generated automatically by the GenDllWrappers program.

#include "../services/DllUtils.h"
#include "ElOpsDll.h"


// ElOpsDll's function pointers definition
fnPtrElOpsInit                      ElOpsInit;
fnPtrElOpsGetInfo                   ElOpsGetInfo;
fnPtrIsGeoOrbit                     IsGeoOrbit;
fnPtrCompLonEastSubPt               CompLonEastSubPt;
fnPtrFindSatDecayTime               FindSatDecayTime;
fnPtrGetSatParameters               GetSatParameters;
fnPtrSatNumOf                       SatNumOf;
fnPtrAddManeuverVPStr               AddManeuverVPStr;
fnPtrAddManeuverVPArr               AddManeuverVPArr;


static void* hLib = NULL; // handle to the dll

// Load and assign function pointers
void LoadElOpsDll()
{
   // Explicitly load the dll
   hLib = LoadLib(ElOpsDll);


   // Assign function pointers to the appropriate dll functions
   ElOpsInit = (fnPtrElOpsInit)GetFnPtr(hLib, (char*)"ElOpsInit");
   ElOpsGetInfo = (fnPtrElOpsGetInfo)GetFnPtr(hLib, (char*)"ElOpsGetInfo");
   IsGeoOrbit = (fnPtrIsGeoOrbit)GetFnPtr(hLib, (char*)"IsGeoOrbit");
   CompLonEastSubPt = (fnPtrCompLonEastSubPt)GetFnPtr(hLib, (char*)"CompLonEastSubPt");
   FindSatDecayTime = (fnPtrFindSatDecayTime)GetFnPtr(hLib, (char*)"FindSatDecayTime");
   GetSatParameters = (fnPtrGetSatParameters)GetFnPtr(hLib, (char*)"GetSatParameters");
   SatNumOf = (fnPtrSatNumOf)GetFnPtr(hLib, (char*)"SatNumOf");
   AddManeuverVPStr = (fnPtrAddManeuverVPStr)GetFnPtr(hLib, (char*)"AddManeuverVPStr");
   AddManeuverVPArr = (fnPtrAddManeuverVPArr)GetFnPtr(hLib, (char*)"AddManeuverVPArr");
}



// Free ElOpsDll
void FreeElOpsDll()
{
   FreeLib(hLib, ElOpsDll);
}
// ========================= End of auto generated code ==========================
