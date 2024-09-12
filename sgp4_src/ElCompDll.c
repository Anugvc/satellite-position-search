// This wrapper file was generated automatically by the GenDllWrappers program.

#include "../services/DllUtils.h"
#include "ElCompDll.h"


// ElCompDll's function pointers definition
fnPtrElCompInit                     ElCompInit;
fnPtrElCompGetInfo                  ElCompGetInfo;
fnPtrElCompSetCriteria              ElCompSetCriteria;
fnPtrElCompGetCriteria              ElCompGetCriteria;
fnPtrElCompGetResults               ElCompGetResults;
fnPtrElCompGetResults_MT            ElCompGetResults_MT;
fnPtrElCompFrElData                 ElCompFrElData;
fnPtrElCompFrElData_MT              ElCompFrElData_MT;
fnPtrElCompResetCriteria            ElCompResetCriteria;
fnPtrCocoSetCriteria                CocoSetCriteria;
fnPtrCocoGetCriteria                CocoGetCriteria;
fnPtrCocoGetResults                 CocoGetResults;
fnPtrCocoGetResults_MT              CocoGetResults_MT;
fnPtrCocoGetResultsWOA              CocoGetResultsWOA;
fnPtrCocoFrElData                   CocoFrElData;
fnPtrCocoFrElData_MT                CocoFrElData_MT;
fnPtrCocoFrElDataWOA                CocoFrElDataWOA;
fnPtrCocoResetCriteria              CocoResetCriteria;


static void* hLib = NULL; // handle to the dll

// Load and assign function pointers
void LoadElCompDll()
{
   // Explicitly load the dll
   hLib = LoadLib(ElCompDll);


   // Assign function pointers to the appropriate dll functions
   ElCompInit = (fnPtrElCompInit)GetFnPtr(hLib, (char*)"ElCompInit");
   ElCompGetInfo = (fnPtrElCompGetInfo)GetFnPtr(hLib, (char*)"ElCompGetInfo");
   ElCompSetCriteria = (fnPtrElCompSetCriteria)GetFnPtr(hLib, (char*)"ElCompSetCriteria");
   ElCompGetCriteria = (fnPtrElCompGetCriteria)GetFnPtr(hLib, (char*)"ElCompGetCriteria");
   ElCompGetResults = (fnPtrElCompGetResults)GetFnPtr(hLib, (char*)"ElCompGetResults");
   ElCompGetResults_MT = (fnPtrElCompGetResults_MT)GetFnPtr(hLib, (char*)"ElCompGetResults_MT");
   ElCompFrElData = (fnPtrElCompFrElData)GetFnPtr(hLib, (char*)"ElCompFrElData");
   ElCompFrElData_MT = (fnPtrElCompFrElData_MT)GetFnPtr(hLib, (char*)"ElCompFrElData_MT");
   ElCompResetCriteria = (fnPtrElCompResetCriteria)GetFnPtr(hLib, (char*)"ElCompResetCriteria");
   CocoSetCriteria = (fnPtrCocoSetCriteria)GetFnPtr(hLib, (char*)"CocoSetCriteria");
   CocoGetCriteria = (fnPtrCocoGetCriteria)GetFnPtr(hLib, (char*)"CocoGetCriteria");
   CocoGetResults = (fnPtrCocoGetResults)GetFnPtr(hLib, (char*)"CocoGetResults");
   CocoGetResults_MT = (fnPtrCocoGetResults_MT)GetFnPtr(hLib, (char*)"CocoGetResults_MT");
   CocoGetResultsWOA = (fnPtrCocoGetResultsWOA)GetFnPtr(hLib, (char*)"CocoGetResultsWOA");
   CocoFrElData = (fnPtrCocoFrElData)GetFnPtr(hLib, (char*)"CocoFrElData");
   CocoFrElData_MT = (fnPtrCocoFrElData_MT)GetFnPtr(hLib, (char*)"CocoFrElData_MT");
   CocoFrElDataWOA = (fnPtrCocoFrElDataWOA)GetFnPtr(hLib, (char*)"CocoFrElDataWOA");
   CocoResetCriteria = (fnPtrCocoResetCriteria)GetFnPtr(hLib, (char*)"CocoResetCriteria");
}



// Free ElCompDll
void FreeElCompDll()
{
   FreeLib(hLib, ElCompDll);
}
// ========================= End of auto generated code ==========================
