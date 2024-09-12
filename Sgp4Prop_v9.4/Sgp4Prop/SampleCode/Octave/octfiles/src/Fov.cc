// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "FovDll.h"
   #include "FovDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadFovDll( )
// [ ] = FreeFovDll( )
// [retVar] = FovInit(apAddr)
// [infoStr[128]] = FovGetInfo()
// [retVar] = FovLoadFile(fovInputFile[512])
// [retVar] = FovLoadFileAll(fovInputFile[512])
// [retVar] = FovLoadCard(card[512])
// [retVar] = FovSaveFile(fovFile[512], saveMode, saveForm)
// [xa_fovCtrl[8], numOfWindows, startStopTimes[256], numOfSources, xa_fovSrc_Arr[128][8], numOfTargets, xa_fovTgt_Arr[128][8], numVicSats, vicSatNums[128]] = FovGetDataFrInputFiles()
// [retVar, tgtPassesArr[size_tgtPassesArr][2], numOfPasses] = FovFindTargetPasses(startTimeDs50UTC, stopTimeDs50UTC, srcSenKey, tgtSatKey, size_tgtPassesArr)
// [retVar, xa_emeDat[size_xa_emeDat][3], numOfPasses] = FovTargetElset(xa_fovRun[8], xa_fovSrc[8], tgtSatKey, vicSatKey, size_xa_emeDat)
// [retVar, xa_look[8]] = FovTargetElsetLook(currDs50TAI, xa_fovSrc[8], vicSatKey)
// [retVar, xa_emeDat[size_xa_emeDat][3], numOfPasses] = FovTargetVec(xa_fovRun[8], xa_fovSrc[8], xa_fovTgt[8], vicSatKey, size_xa_emeDat)
// [retVar, xa_look[8]] = FovTargetVecLook(currDs50TAI, xa_fovSrc[8], xa_fovTgt[8], vicSatKey)
// [] = FovReset()

DEFUN_DLD (LoadFovDll, args, nargout, "Load Fov Library") {
   LoadFovDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeFovDll, args, nargout, "Free Fov Library") {
   FreeFovDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FovInit, args, nargout, "FovInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = FovInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (FovGetInfo, args, nargout, "FovGetInfo") {
   char infoStr[128];

   FovGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (FovLoadFile, args, nargout, "FovLoadFile") {
   char* fovInputFile = OctToString(args(0), 512);

   int retVar = FovLoadFile(fovInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (FovLoadFileAll, args, nargout, "FovLoadFileAll") {
   char* fovInputFile = OctToString(args(0), 512);

   int retVar = FovLoadFileAll(fovInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (FovLoadCard, args, nargout, "FovLoadCard") {
   char* card = OctToString(args(0), 512);

   int retVar = FovLoadCard(card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (FovSaveFile, args, nargout, "FovSaveFile") {
   char* fovFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = FovSaveFile(fovFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (FovGetDataFrInputFiles, args, nargout, "FovGetDataFrInputFiles") {
   double xa_fovCtrl[8];

   int numOfWindows;

   double startStopTimes[256];

   int numOfSources;

   double xa_fovSrc_Arr[128][8];

   int numOfTargets;

   double xa_fovTgt_Arr[128][8];

   int numVicSats;

   int vicSatNums[128];

   FovGetDataFrInputFiles(xa_fovCtrl, &numOfWindows, startStopTimes, &numOfSources, xa_fovSrc_Arr, &numOfTargets, xa_fovTgt_Arr, &numVicSats, vicSatNums);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_fovCtrl);
   retval(1) = octave_value(numOfWindows);
   Double1DToOct(&retval(2), startStopTimes);
   retval(3) = octave_value(numOfSources);
   Double2DToOct(&retval(4), xa_fovSrc_Arr);
   retval(5) = octave_value(numOfTargets);
   Double2DToOct(&retval(6), xa_fovTgt_Arr);
   retval(7) = octave_value(numVicSats);
   Int1DToOct(&retval(8), vicSatNums);
   return retval;
}

DEFUN_DLD (FovFindTargetPasses, args, nargout, "FovFindTargetPasses") {
   double startTimeDs50UTC=OctToDouble(args(0));

   double stopTimeDs50UTC=OctToDouble(args(1));

   __int64 srcSenKey=OctToInt64(args(2));

   __int64 tgtSatKey=OctToInt64(args(3));

   int size_tgtPassesArr = OctToInt(args(4));
   double tgtPassesArr[size_tgtPassesArr][2];

   int numOfPasses;

   int retVar = FovFindTargetPasses(startTimeDs50UTC, stopTimeDs50UTC, srcSenKey, tgtSatKey, tgtPassesArr, &numOfPasses);

   NDArray tgtPassesArrTemp(dim_vector(size_tgtPassesArr,2 ));
   for (int i = 0; i < size_tgtPassesArr; i++) {
      for (int j = 0; j < 2; j++) {
         tgtPassesArrTemp(i,j) = tgtPassesArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(tgtPassesArrTemp);
   retval(2) = octave_value(numOfPasses);
   return retval;
}

DEFUN_DLD (FovTargetElset, args, nargout, "FovTargetElset") {
   double xa_fovRun[8];
   OctToDouble1D(args(0), 8, xa_fovRun);

   double xa_fovSrc[8];
   OctToDouble1D(args(1), 8, xa_fovSrc);

   __int64 tgtSatKey=OctToInt64(args(2));

   __int64 vicSatKey=OctToInt64(args(3));

   int size_xa_emeDat = OctToInt(args(4));
   double xa_emeDat[size_xa_emeDat][3];

   int numOfPasses;

   int retVar = FovTargetElset(xa_fovRun, xa_fovSrc, tgtSatKey, vicSatKey, xa_emeDat, &numOfPasses);

   NDArray xa_emeDatTemp(dim_vector(size_xa_emeDat,3 ));
   for (int i = 0; i < size_xa_emeDat; i++) {
      for (int j = 0; j < 3; j++) {
         xa_emeDatTemp(i,j) = xa_emeDat[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(xa_emeDatTemp);
   retval(2) = octave_value(numOfPasses);
   return retval;
}

DEFUN_DLD (FovTargetElsetLook, args, nargout, "FovTargetElsetLook") {
   double currDs50TAI=OctToDouble(args(0));

   double xa_fovSrc[8];
   OctToDouble1D(args(1), 8, xa_fovSrc);

   __int64 vicSatKey=OctToInt64(args(2));

   double xa_look[8];

   int retVar = FovTargetElsetLook(currDs50TAI, xa_fovSrc, vicSatKey, xa_look);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_look);
   return retval;
}

DEFUN_DLD (FovTargetVec, args, nargout, "FovTargetVec") {
   double xa_fovRun[8];
   OctToDouble1D(args(0), 8, xa_fovRun);

   double xa_fovSrc[8];
   OctToDouble1D(args(1), 8, xa_fovSrc);

   double xa_fovTgt[8];
   OctToDouble1D(args(2), 8, xa_fovTgt);

   __int64 vicSatKey=OctToInt64(args(3));

   int size_xa_emeDat = OctToInt(args(4));
   double xa_emeDat[size_xa_emeDat][3];

   int numOfPasses;

   int retVar = FovTargetVec(xa_fovRun, xa_fovSrc, xa_fovTgt, vicSatKey, xa_emeDat, &numOfPasses);

   NDArray xa_emeDatTemp(dim_vector(size_xa_emeDat,3 ));
   for (int i = 0; i < size_xa_emeDat; i++) {
      for (int j = 0; j < 3; j++) {
         xa_emeDatTemp(i,j) = xa_emeDat[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(xa_emeDatTemp);
   retval(2) = octave_value(numOfPasses);
   return retval;
}

DEFUN_DLD (FovTargetVecLook, args, nargout, "FovTargetVecLook") {
   double currDs50TAI=OctToDouble(args(0));

   double xa_fovSrc[8];
   OctToDouble1D(args(1), 8, xa_fovSrc);

   double xa_fovTgt[8];
   OctToDouble1D(args(2), 8, xa_fovTgt);

   __int64 vicSatKey=OctToInt64(args(3));

   double xa_look[8];

   int retVar = FovTargetVecLook(currDs50TAI, xa_fovSrc, xa_fovTgt, vicSatKey, xa_look);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_look);
   return retval;
}

DEFUN_DLD (FovReset, args, nargout, "FovReset") {
   FovReset();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

// ========================= End of auto generated code ==========================
