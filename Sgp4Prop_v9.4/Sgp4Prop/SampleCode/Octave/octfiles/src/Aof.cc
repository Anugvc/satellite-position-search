// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "AofDll.h"
   #include "AofDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadAofDll( )
// [ ] = FreeAofDll( )
// [retVar] = AofInit(apAddr)
// [infoStr[128]] = AofGetInfo()
// [retVar] = AofLoadFile(aofInputFile[512])
// [retVar] = AofLoadFileAll(aofInputFile[512])
// [retVar] = AofLoadCard(card[512])
// [xa_aofCtrl[16], numOfInpSats, aofInpSats[100], numOfMissions, xa_aofSen[100][16], numOfAreas, xa_aofArea[100][16]] = AofGetDataFrInputFiles()
// [] = AofReset()
// [retVar, numOfPasses, xa_entExitTimes[size_xa_entExitTimes]] = AofBasic(xa_aofRun[8], satKey, xa_aofSen[16], xa_aofArea[16], size_xa_entExitTimes)
// [retVar, numOfPasses, xa_entExitTimes[size_xa_entExitTimes]] = AofComplex(xa_aofRun[8], satKey, xa_aofSen[16], numOfLlhPts, llhArr[360], size_xa_entExitTimes)
// [retVar, xa_look[8]] = AofGetLook(ds50TAI, llh[3], satKey)
// [retVar, xa_aofView[8]] = AofGetView(ds50TAI, llh[3], satKey)
// [retVar] = AofGetDarknessLevel(ds50TAI, xa_aofArea[16])

DEFUN_DLD (LoadAofDll, args, nargout, "Load Aof Library") {
   LoadAofDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeAofDll, args, nargout, "Free Aof Library") {
   FreeAofDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (AofInit, args, nargout, "AofInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = AofInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AofGetInfo, args, nargout, "AofGetInfo") {
   char infoStr[128];

   AofGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (AofLoadFile, args, nargout, "AofLoadFile") {
   char* aofInputFile = OctToString(args(0), 512);

   int retVar = AofLoadFile(aofInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AofLoadFileAll, args, nargout, "AofLoadFileAll") {
   char* aofInputFile = OctToString(args(0), 512);

   int retVar = AofLoadFileAll(aofInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AofLoadCard, args, nargout, "AofLoadCard") {
   char* card = OctToString(args(0), 512);

   int retVar = AofLoadCard(card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AofGetDataFrInputFiles, args, nargout, "AofGetDataFrInputFiles") {
   double xa_aofCtrl[16];

   int numOfInpSats;

   int aofInpSats[100];

   int numOfMissions;

   double xa_aofSen[100][16];

   int numOfAreas;

   double xa_aofArea[100][16];

   AofGetDataFrInputFiles(xa_aofCtrl, &numOfInpSats, aofInpSats, &numOfMissions, xa_aofSen, &numOfAreas, xa_aofArea);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_aofCtrl);
   retval(1) = octave_value(numOfInpSats);
   Int1DToOct(&retval(2), aofInpSats);
   retval(3) = octave_value(numOfMissions);
   Double2DToOct(&retval(4), xa_aofSen);
   retval(5) = octave_value(numOfAreas);
   Double2DToOct(&retval(6), xa_aofArea);
   return retval;
}

DEFUN_DLD (AofReset, args, nargout, "AofReset") {
   AofReset();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (AofBasic, args, nargout, "AofBasic") {
   double xa_aofRun[8];
   OctToDouble1D(args(0), 8, xa_aofRun);

   __int64 satKey=OctToInt64(args(1));

   double xa_aofSen[16];
   OctToDouble1D(args(2), 16, xa_aofSen);

   double xa_aofArea[16];
   OctToDouble1D(args(3), 16, xa_aofArea);

   int numOfPasses;

   int size_xa_entExitTimes = OctToInt(args(4));
   double xa_entExitTimes[size_xa_entExitTimes];

   int retVar = AofBasic(xa_aofRun, satKey, xa_aofSen, xa_aofArea, &numOfPasses, xa_entExitTimes);

   NDArray xa_entExitTimesTemp(dim_vector(1,size_xa_entExitTimes));
   for (int i = 0; i < size_xa_entExitTimes; i++) {
      xa_entExitTimesTemp(i) = xa_entExitTimes[i];
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(numOfPasses);
   retval(2) = octave_value(xa_entExitTimesTemp);
   return retval;
}

DEFUN_DLD (AofComplex, args, nargout, "AofComplex") {
   double xa_aofRun[8];
   OctToDouble1D(args(0), 8, xa_aofRun);

   __int64 satKey=OctToInt64(args(1));

   double xa_aofSen[16];
   OctToDouble1D(args(2), 16, xa_aofSen);

   int numOfLlhPts=OctToInt(args(3));

   double llhArr[360];
   OctToDouble1D(args(4), 360, llhArr);

   int numOfPasses;

   int size_xa_entExitTimes = OctToInt(args(5));
   double xa_entExitTimes[size_xa_entExitTimes];

   int retVar = AofComplex(xa_aofRun, satKey, xa_aofSen, numOfLlhPts, llhArr, &numOfPasses, xa_entExitTimes);

   NDArray xa_entExitTimesTemp(dim_vector(1,size_xa_entExitTimes));
   for (int i = 0; i < size_xa_entExitTimes; i++) {
      xa_entExitTimesTemp(i) = xa_entExitTimes[i];
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(numOfPasses);
   retval(2) = octave_value(xa_entExitTimesTemp);
   return retval;
}

DEFUN_DLD (AofGetLook, args, nargout, "AofGetLook") {
   double ds50TAI=OctToDouble(args(0));

   double llh[3];
   OctToDouble1D(args(1), 3, llh);

   __int64 satKey=OctToInt64(args(2));

   double xa_look[8];

   int retVar = AofGetLook(ds50TAI, llh, satKey, xa_look);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_look);
   return retval;
}

DEFUN_DLD (AofGetView, args, nargout, "AofGetView") {
   double ds50TAI=OctToDouble(args(0));

   double llh[3];
   OctToDouble1D(args(1), 3, llh);

   __int64 satKey=OctToInt64(args(2));

   double xa_aofView[8];

   int retVar = AofGetView(ds50TAI, llh, satKey, xa_aofView);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_aofView);
   return retval;
}

DEFUN_DLD (AofGetDarknessLevel, args, nargout, "AofGetDarknessLevel") {
   double ds50TAI=OctToDouble(args(0));

   double xa_aofArea[16];
   OctToDouble1D(args(1), 16, xa_aofArea);

   int retVar = AofGetDarknessLevel(ds50TAI, xa_aofArea);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

// ========================= End of auto generated code ==========================
