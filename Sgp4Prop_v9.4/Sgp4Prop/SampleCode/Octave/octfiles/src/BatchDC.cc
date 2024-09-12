// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "BatchDCDll.h"
   #include "BatchDCDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadBatchDCDll( )
// [ ] = FreeBatchDCDll( )
// [retVar] = BatchDCInit(apAddr)
// [infoStr[128]] = BatchDCGetInfo()
// [retVar] = BatchDCLoadFile(batchDCInputFile[512])
// [retVar] = BatchDCLoadFileAll(batchDCInputFile[512])
// [retVar] = BatchDCLoadCard(card[512])
// [dcPCard[512]] = BatchDCGetPCard()
// [retVar] = BatchDCSaveFile(batchDCFile[512], saveMode, saveForm)
// [xai_ctrl[256], xar_ctrl[256], xas_ctrl[512]] = BatchDCGetParams()
// [] = BatchDCSetParams(xai_ctrl[256], xar_ctrl[256], xas_ctrl[512])
// [xa_dcCtrl[64]] = BatchDCGetCtrlArr()
// [retVar] = BatchDCSetCtrlArr(xa_dcCtrl[64])
// [retVar, numObs, obsKeys[size_obsKeys], xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = BatchDCInitSat(satKey, size_obsKeys)
// [retVar, xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = BatchDCInitSatObsKeys(satKey, xa_dcCtrl[64], numObs, size_obsKeys, obsKeys[size_obsKeys])
// [retVar, numObs, obsKeys[size_obsKeys], xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = BatchDCInitSatObsSel(satKey, xa_dcCtrl[64], xa_selob[128], size_obsKeys)
// [retVar, xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = BatchDCSolve(satKey)
// [retVar, xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = BatchDCSolveSelObs(satKey, size_obsKeys, obsKeys[size_obsKeys], numObs)
// [retVar] = BatchDCRemoveSat(satKey)
// [retVar, xa_ObsRes[size_xa_ObsRes][100], xa_rejFlg[size_xa_rejFlg][32], xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = BatchDCIterate(satKey, size_xa_ObsRes, size_xa_rejFlg)
// [retVar, vcmLines[4000]] = BatchDCGetVcm(satKey)
// [spVOutFile[512]] = BatchDCGetSpVOut()
// [] = BatchDCSetSpVOut(spVOutFile[512])
// [] = BatchDCResetAll()
// [retVar, xa_ac[64]] = BatchDCGetAccptCrit(satKey)
// [retVar, xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = SpToEGP(satKey, xa_egpCtrl[64])
// [retVar, line1[512], line2[512]] = SpToTle(satKey, xa_egpCtrl[64])
// [retVar, line1[512], line2[512], xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = SpToTleComb(satKey, xa_egpCtrl[64])
// [retVar, csvLine[512]] = SpToCsv(satKey, xa_egpCtrl[64])
// [retVar, csvLine[512], xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = SpToCsvComb(satKey, xa_egpCtrl[64])
// [retVar, xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = ExtEphemToEGP(extEphFile[512], xa_egpCtrl[64])
// [retVar, xai_dcElts[256], xar_dcElts[256], xas_dcElts[512]] = IomodDC(numObs, size_obsKeys, obsKeys[size_obsKeys], xa_iomdc[64])

DEFUN_DLD (LoadBatchDCDll, args, nargout, "Load BatchDC Library") {
   LoadBatchDCDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeBatchDCDll, args, nargout, "Free BatchDC Library") {
   FreeBatchDCDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (BatchDCInit, args, nargout, "BatchDCInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = BatchDCInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BatchDCGetInfo, args, nargout, "BatchDCGetInfo") {
   char infoStr[128];

   BatchDCGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (BatchDCLoadFile, args, nargout, "BatchDCLoadFile") {
   char* batchDCInputFile = OctToString(args(0), 512);

   int retVar = BatchDCLoadFile(batchDCInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BatchDCLoadFileAll, args, nargout, "BatchDCLoadFileAll") {
   char* batchDCInputFile = OctToString(args(0), 512);

   int retVar = BatchDCLoadFileAll(batchDCInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BatchDCLoadCard, args, nargout, "BatchDCLoadCard") {
   char* card = OctToString(args(0), 512);

   int retVar = BatchDCLoadCard(card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BatchDCGetPCard, args, nargout, "BatchDCGetPCard") {
   char dcPCard[512];

   BatchDCGetPCard(dcPCard);

   octave_value_list retval(nargout);
   retval(0) = octave_value(dcPCard);
   return retval;
}

DEFUN_DLD (BatchDCSaveFile, args, nargout, "BatchDCSaveFile") {
   char* batchDCFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = BatchDCSaveFile(batchDCFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BatchDCGetParams, args, nargout, "BatchDCGetParams") {
   int xai_ctrl[256];

   double xar_ctrl[256];

   char xas_ctrl[512];

   BatchDCGetParams(xai_ctrl, xar_ctrl, xas_ctrl);

   octave_value_list retval(nargout);
   Int1DToOct(&retval(0), xai_ctrl);
   Double1DToOct(&retval(1), xar_ctrl);
   retval(2) = octave_value(xas_ctrl);
   return retval;
}

DEFUN_DLD (BatchDCSetParams, args, nargout, "BatchDCSetParams") {
   int xai_ctrl[256];
   OctToInt1D(args(0), 256, xai_ctrl);

   double xar_ctrl[256];
   OctToDouble1D(args(1), 256, xar_ctrl);

   char* xas_ctrl = OctToString(args(2), 512);

   BatchDCSetParams(xai_ctrl, xar_ctrl, xas_ctrl);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (BatchDCGetCtrlArr, args, nargout, "BatchDCGetCtrlArr") {
   double xa_dcCtrl[64];

   BatchDCGetCtrlArr(xa_dcCtrl);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_dcCtrl);
   return retval;
}

DEFUN_DLD (BatchDCSetCtrlArr, args, nargout, "BatchDCSetCtrlArr") {
   double xa_dcCtrl[64];
   OctToDouble1D(args(0), 64, xa_dcCtrl);

   int retVar = BatchDCSetCtrlArr(xa_dcCtrl);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BatchDCInitSat, args, nargout, "BatchDCInitSat") {
   __int64 satKey=OctToInt64(args(0));

   int numObs;

   int size_obsKeys = OctToInt(args(1));
   __int64 obsKeys[size_obsKeys];

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = BatchDCInitSat(satKey, &numObs, obsKeys, xai_dcElts, xar_dcElts, xas_dcElts);

   charMatrix obsKeysTemp(dim_vector(size_obsKeys,20));
   for (int i = 0; i < size_obsKeys; i++) {
      obsKeysTemp.insert("                    ",i,0);
      obsKeysTemp.insert(Int64ToStr(obsKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(numObs);
   retval(2) = octave_value(obsKeysTemp);
   Int1DToOct(&retval(3), xai_dcElts);
   Double1DToOct(&retval(4), xar_dcElts);
   retval(5) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (BatchDCInitSatObsKeys, args, nargout, "BatchDCInitSatObsKeys") {
   __int64 satKey=OctToInt64(args(0));

   double xa_dcCtrl[64];
   OctToDouble1D(args(1), 64, xa_dcCtrl);

   int numObs=OctToInt(args(2));

   int size_obsKeys = OctToInt(args(3));
   __int64 obsKeys[size_obsKeys];
   OctToLong1D(args(4), size_obsKeys, obsKeys);

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = BatchDCInitSatObsKeys(satKey, xa_dcCtrl, numObs, obsKeys, xai_dcElts, xar_dcElts, xas_dcElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Int1DToOct(&retval(1), xai_dcElts);
   Double1DToOct(&retval(2), xar_dcElts);
   retval(3) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (BatchDCInitSatObsSel, args, nargout, "BatchDCInitSatObsSel") {
   __int64 satKey=OctToInt64(args(0));

   double xa_dcCtrl[64];
   OctToDouble1D(args(1), 64, xa_dcCtrl);

   double xa_selob[128];
   OctToDouble1D(args(2), 128, xa_selob);

   int numObs;

   int size_obsKeys = OctToInt(args(3));
   __int64 obsKeys[size_obsKeys];

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = BatchDCInitSatObsSel(satKey, xa_dcCtrl, xa_selob, &numObs, obsKeys, xai_dcElts, xar_dcElts, xas_dcElts);

   charMatrix obsKeysTemp(dim_vector(size_obsKeys,20));
   for (int i = 0; i < size_obsKeys; i++) {
      obsKeysTemp.insert("                    ",i,0);
      obsKeysTemp.insert(Int64ToStr(obsKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(numObs);
   retval(2) = octave_value(obsKeysTemp);
   Int1DToOct(&retval(3), xai_dcElts);
   Double1DToOct(&retval(4), xar_dcElts);
   retval(5) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (BatchDCSolve, args, nargout, "BatchDCSolve") {
   __int64 satKey=OctToInt64(args(0));

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = BatchDCSolve(satKey, xai_dcElts, xar_dcElts, xas_dcElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Int1DToOct(&retval(1), xai_dcElts);
   Double1DToOct(&retval(2), xar_dcElts);
   retval(3) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (BatchDCSolveSelObs, args, nargout, "BatchDCSolveSelObs") {
   __int64 satKey=OctToInt64(args(0));

   int size_obsKeys = OctToInt(args(1));
   __int64 obsKeys[size_obsKeys];
   OctToLong1D(args(2), size_obsKeys, obsKeys);

   int numObs=OctToInt(args(3));

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = BatchDCSolveSelObs(satKey, obsKeys, numObs, xai_dcElts, xar_dcElts, xas_dcElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Int1DToOct(&retval(1), xai_dcElts);
   Double1DToOct(&retval(2), xar_dcElts);
   retval(3) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (BatchDCRemoveSat, args, nargout, "BatchDCRemoveSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = BatchDCRemoveSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BatchDCIterate, args, nargout, "BatchDCIterate") {
   __int64 satKey=OctToInt64(args(0));

   int size_xa_ObsRes = OctToInt(args(1));
   double xa_ObsRes[size_xa_ObsRes][100];

   int size_xa_rejFlg = OctToInt(args(2));
   int xa_rejFlg[size_xa_rejFlg][32];

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = BatchDCIterate(satKey, xa_ObsRes, xa_rejFlg, xai_dcElts, xar_dcElts, xas_dcElts);

   NDArray xa_ObsResTemp(dim_vector(size_xa_ObsRes,100 ));
   for (int i = 0; i < size_xa_ObsRes; i++) {
      for (int j = 0; j < 100; j++) {
         xa_ObsResTemp(i,j) = xa_ObsRes[i][j];
      }
   }

   int32NDArray xa_rejFlgTemp(dim_vector(size_xa_rejFlg,32 ));
   for (int i = 0; i < size_xa_rejFlg; i++) {
      for (int j = 0; j < 32; j++) {
         xa_rejFlgTemp(i,j) = xa_rejFlg[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(xa_ObsResTemp);
   retval(2) = octave_value(xa_rejFlgTemp);
   Int1DToOct(&retval(3), xai_dcElts);
   Double1DToOct(&retval(4), xar_dcElts);
   retval(5) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (BatchDCGetVcm, args, nargout, "BatchDCGetVcm") {
   __int64 satKey=OctToInt64(args(0));

   char vcmLines[4000];

   int retVar = BatchDCGetVcm(satKey, vcmLines);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(vcmLines);
   return retval;
}

DEFUN_DLD (BatchDCGetSpVOut, args, nargout, "BatchDCGetSpVOut") {
   char spVOutFile[512];

   BatchDCGetSpVOut(spVOutFile);

   octave_value_list retval(nargout);
   retval(0) = octave_value(spVOutFile);
   return retval;
}

DEFUN_DLD (BatchDCSetSpVOut, args, nargout, "BatchDCSetSpVOut") {
   char* spVOutFile = OctToString(args(0), 512);

   BatchDCSetSpVOut(spVOutFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (BatchDCResetAll, args, nargout, "BatchDCResetAll") {
   BatchDCResetAll();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (BatchDCGetAccptCrit, args, nargout, "BatchDCGetAccptCrit") {
   __int64 satKey=OctToInt64(args(0));

   double xa_ac[64];

   int retVar = BatchDCGetAccptCrit(satKey, xa_ac);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_ac);
   return retval;
}

DEFUN_DLD (SpToEGP, args, nargout, "SpToEGP") {
   __int64 satKey=OctToInt64(args(0));

   double xa_egpCtrl[64];
   OctToDouble1D(args(1), 64, xa_egpCtrl);

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = SpToEGP(satKey, xa_egpCtrl, xai_dcElts, xar_dcElts, xas_dcElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_egpCtrl);
   Int1DToOct(&retval(2), xai_dcElts);
   Double1DToOct(&retval(3), xar_dcElts);
   retval(4) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (SpToTle, args, nargout, "SpToTle") {
   __int64 satKey=OctToInt64(args(0));

   double xa_egpCtrl[64];
   OctToDouble1D(args(1), 64, xa_egpCtrl);

   char line1[512];

   char line2[512];

   int retVar = SpToTle(satKey, xa_egpCtrl, line1, line2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_egpCtrl);
   retval(2) = octave_value(line1);
   retval(3) = octave_value(line2);
   return retval;
}

DEFUN_DLD (SpToTleComb, args, nargout, "SpToTleComb") {
   __int64 satKey=OctToInt64(args(0));

   double xa_egpCtrl[64];
   OctToDouble1D(args(1), 64, xa_egpCtrl);

   char line1[512];

   char line2[512];

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = SpToTleComb(satKey, xa_egpCtrl, line1, line2, xai_dcElts, xar_dcElts, xas_dcElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_egpCtrl);
   retval(2) = octave_value(line1);
   retval(3) = octave_value(line2);
   Int1DToOct(&retval(4), xai_dcElts);
   Double1DToOct(&retval(5), xar_dcElts);
   retval(6) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (SpToCsv, args, nargout, "SpToCsv") {
   __int64 satKey=OctToInt64(args(0));

   double xa_egpCtrl[64];
   OctToDouble1D(args(1), 64, xa_egpCtrl);

   char csvLine[512];

   int retVar = SpToCsv(satKey, xa_egpCtrl, csvLine);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_egpCtrl);
   retval(2) = octave_value(csvLine);
   return retval;
}

DEFUN_DLD (SpToCsvComb, args, nargout, "SpToCsvComb") {
   __int64 satKey=OctToInt64(args(0));

   double xa_egpCtrl[64];
   OctToDouble1D(args(1), 64, xa_egpCtrl);

   char csvLine[512];

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = SpToCsvComb(satKey, xa_egpCtrl, csvLine, xai_dcElts, xar_dcElts, xas_dcElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_egpCtrl);
   retval(2) = octave_value(csvLine);
   Int1DToOct(&retval(3), xai_dcElts);
   Double1DToOct(&retval(4), xar_dcElts);
   retval(5) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (ExtEphemToEGP, args, nargout, "ExtEphemToEGP") {
   char* extEphFile = OctToString(args(0), 512);

   double xa_egpCtrl[64];
   OctToDouble1D(args(1), 64, xa_egpCtrl);

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = ExtEphemToEGP(extEphFile, xa_egpCtrl, xai_dcElts, xar_dcElts, xas_dcElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_egpCtrl);
   Int1DToOct(&retval(2), xai_dcElts);
   Double1DToOct(&retval(3), xar_dcElts);
   retval(4) = octave_value(xas_dcElts);
   return retval;
}

DEFUN_DLD (IomodDC, args, nargout, "IomodDC") {
   int numObs=OctToInt(args(0));

   int size_obsKeys = OctToInt(args(1));
   __int64 obsKeys[size_obsKeys];
   OctToLong1D(args(2), size_obsKeys, obsKeys);

   double xa_iomdc[64];
   OctToDouble1D(args(3), 64, xa_iomdc);

   int xai_dcElts[256];

   double xar_dcElts[256];

   char xas_dcElts[512];

   int retVar = IomodDC(numObs, obsKeys, xa_iomdc, xai_dcElts, xar_dcElts, xas_dcElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Int1DToOct(&retval(1), xai_dcElts);
   Double1DToOct(&retval(2), xar_dcElts);
   retval(3) = octave_value(xas_dcElts);
   return retval;
}

// ========================= End of auto generated code ==========================
