// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "SpPropDll.h"
   #include "SpPropDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadSpPropDll( )
// [ ] = FreeSpPropDll( )
// [retVar] = SpInit(apAddr)
// [infoStr[128]] = SpGetInfo()
// [retVar] = SpLoadFile(spInputFile[512])
// [retVar] = SpLoadFileAll(spInputFile[512])
// [retVar] = SpSaveFile(spFile[512], saveMode, saveForm)
// [retVar] = SpInitSat(satKey)
// [retVar] = SpRemoveSat(satKey)
// [retVar] = SpRemoveAllSats()
// [retVar] = SpGetCount()
// [] = SpReset()
// [valueStr[512]] = SpGetApCtrl(xf_SpApp)
// [geoDir[512], bufSize, runMode, savePartials, isSpectr, consider, decayAlt, outCoord] = SpGetApCtrlAll()
// [] = SpSetApCtrl(xf_SpApp, valueStr[512])
// [] = SpSetApCtrlAll(geoDir[512], bufSize, runMode, savePartials, isSpectr, consider, decayAlt, outCoord)
// [valueStr[512]] = SpGet4P(xf_4P)
// [] = SpSet4P(xf_4P, valueStr[512])
// [startFrEpoch, stopFrEpoch, startTime, stopTime, interval] = SpGetPredCtrl()
// [] = SpSetPredCtrl(startFrEpoch, stopFrEpoch, startTime, stopTime, interval)
// [retVar, valueStr[512]] = SpGetSatData(satKey, xf_SpSat)
// [retVar, satNum, epochDs50UTC, epochDs50TAI, mu, hasCovMtx, integMode, nTerms, isSpectr] = SpGetSatDataAll(satKey)
// [retVar, xa_timeTypes[5], revNum, posJ2K[3], velJ2K[3]] = SpPropMse(satKey, mse)
// [retVar, xa_timeTypes[5], revNum, posJ2K[3], velJ2K[3]] = SpPropDs50UTC(satKey, ds50UTC)
// [retVar, llh[3]] = SpPropDs50UtcLLH(satKey, ds50UTC)
// [retVar, pos[3]] = SpPropDs50UtcPos(satKey, ds50UTC)
// [retVar, xa_spOut[128]] = SpPropAll(satKey, timeType, timeIn, covType)
// [retVar, posDate[3], velDate[3]] = SpGetStateDs50UTC(satKey, ds50UTC)
// [retVar] = SpSetStateDs50UTC(satKey, ds50UTC, posDate[3], velDate[3])
// [retVar, propDataArr[128]] = SpSetAndProp(satKey, setDataArr[128], propTimeDs50UTC)
// [retVar, destArr[size_destArr]] = SpGetPropOut(satKey, index, size_destArr)
// [retVar, covMtx[6][6]] = SpGetCovMtx(satKey, covType)
// [covSigma[6]] = SpCompCovSigma(covMtx[6][6])
// [] = SpSet4pAll(geoIdx, bulgePert, dragPert, radPresPert, lunSolPert, f10, f10Avg, ap, trunc, incr, ogPert, tidePert, inCoord, nTerms, reEval, integStepMode, stepSizeMethod, initStepSize, dcaFile[512], fluxFile[512], geoFile[512], jplFile[512], jplStart[512], jplStop[512])
// [geoIdx, bulgePert, dragPert, radPresPert, lunSolPert, f10, f10Avg, ap, trunc, incr, ogPert, tidePert, inCoord, nTerms, reEval, integStepMode, stepSizeMethod, initStepSize, dcaFile[512], fluxFile[512], geoFile[512], jplFile[512], jplStart[512], jplStop[512]] = SpGet4pAll()
// [retVar] = SpSet4PCard(card4P[512])
// [card4P[512]] = SpGet4PCard()
// [retVar] = SpAddFluxRec(refDs50UTC, f10, f10Avg, ap[8])
// [retVar, actualEphPts, ds50UTCArr[size_ds50UTCArr]] = SpGetEphemTimes(satKey, maxEphPts, startDs50UTC, stopDs50UTC, minStepSize, size_ds50UTCArr)
// [retVar, ephemArr[size_ephemArr][7], genEphemPts] = SpGenEphems(satKey, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, arrSize, size_ephemArr)
// [retVar, ephemArr[size_ephemArr][28], genEphemPts] = SpGenEphemsCov(satKey, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, covType, arrSize, size_ephemArr)
// [retVar, ephemArr[size_ephemArr][7], genEphemPts] = SpGenEphemsVcm_OS(vcmString[4000], startDs50UTC, stopDs50UTC, stepSize, sp_ephem, arrSize, size_ephemArr)
// [retVar, ephemArr[size_ephemArr][28], genEphemPts] = SpGenEphemsVcmCov_OS(vcmString[4000], startDs50UTC, stopDs50UTC, stepSize, sp_ephem, covType, arrSize, size_ephemArr)
// [retVar, ephemArr[size_ephemArr][6]] = SpPropAllSats(size_satKeys, satKeys[size_satKeys], numOfSats, ds50UTC, size_ephemArr)
// [retVar, xa_spExt[128]] = SpPropAllExt(satKey, timeType, timeIn, spCoord, xf_CovMtx, stmType)

DEFUN_DLD (LoadSpPropDll, args, nargout, "Load SpProp Library") {
   LoadSpPropDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeSpPropDll, args, nargout, "Free SpProp Library") {
   FreeSpPropDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (SpInit, args, nargout, "SpInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = SpInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpGetInfo, args, nargout, "SpGetInfo") {
   char infoStr[128];

   SpGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (SpLoadFile, args, nargout, "SpLoadFile") {
   char* spInputFile = OctToString(args(0), 512);

   int retVar = SpLoadFile(spInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpLoadFileAll, args, nargout, "SpLoadFileAll") {
   char* spInputFile = OctToString(args(0), 512);

   int retVar = SpLoadFileAll(spInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpSaveFile, args, nargout, "SpSaveFile") {
   char* spFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = SpSaveFile(spFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpInitSat, args, nargout, "SpInitSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = SpInitSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpRemoveSat, args, nargout, "SpRemoveSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = SpRemoveSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpRemoveAllSats, args, nargout, "SpRemoveAllSats") {
   int retVar = SpRemoveAllSats();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpGetCount, args, nargout, "SpGetCount") {
   int retVar = SpGetCount();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpReset, args, nargout, "SpReset") {
   SpReset();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (SpGetApCtrl, args, nargout, "SpGetApCtrl") {
   int xf_SpApp=OctToInt(args(0));

   char valueStr[512];

   SpGetApCtrl(xf_SpApp, valueStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(valueStr);
   return retval;
}

DEFUN_DLD (SpGetApCtrlAll, args, nargout, "SpGetApCtrlAll") {
   char geoDir[512];

   int bufSize;

   int runMode;

   int savePartials;

   int isSpectr;

   double consider;

   int decayAlt;

   int outCoord;

   SpGetApCtrlAll(geoDir, &bufSize, &runMode, &savePartials, &isSpectr, &consider, &decayAlt, &outCoord);

   octave_value_list retval(nargout);
   retval(0) = octave_value(geoDir);
   retval(1) = octave_value(bufSize);
   retval(2) = octave_value(runMode);
   retval(3) = octave_value(savePartials);
   retval(4) = octave_value(isSpectr);
   retval(5) = octave_value(consider);
   retval(6) = octave_value(decayAlt);
   retval(7) = octave_value(outCoord);
   return retval;
}

DEFUN_DLD (SpSetApCtrl, args, nargout, "SpSetApCtrl") {
   int xf_SpApp=OctToInt(args(0));

   char* valueStr = OctToString(args(1), 512);

   SpSetApCtrl(xf_SpApp, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (SpSetApCtrlAll, args, nargout, "SpSetApCtrlAll") {
   char* geoDir = OctToString(args(0), 512);

   int bufSize=OctToInt(args(1));

   int runMode=OctToInt(args(2));

   int savePartials=OctToInt(args(3));

   int isSpectr=OctToInt(args(4));

   double consider=OctToDouble(args(5));

   int decayAlt=OctToInt(args(6));

   int outCoord=OctToInt(args(7));

   SpSetApCtrlAll(geoDir, bufSize, runMode, savePartials, isSpectr, consider, decayAlt, outCoord);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (SpGet4P, args, nargout, "SpGet4P") {
   int xf_4P=OctToInt(args(0));

   char valueStr[512];

   SpGet4P(xf_4P, valueStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(valueStr);
   return retval;
}

DEFUN_DLD (SpSet4P, args, nargout, "SpSet4P") {
   int xf_4P=OctToInt(args(0));

   char* valueStr = OctToString(args(1), 512);

   SpSet4P(xf_4P, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (SpGetPredCtrl, args, nargout, "SpGetPredCtrl") {
   int startFrEpoch;

   int stopFrEpoch;

   double startTime;

   double stopTime;

   double interval;

   SpGetPredCtrl(&startFrEpoch, &stopFrEpoch, &startTime, &stopTime, &interval);

   octave_value_list retval(nargout);
   retval(0) = octave_value(startFrEpoch);
   retval(1) = octave_value(stopFrEpoch);
   retval(2) = octave_value(startTime);
   retval(3) = octave_value(stopTime);
   retval(4) = octave_value(interval);
   return retval;
}

DEFUN_DLD (SpSetPredCtrl, args, nargout, "SpSetPredCtrl") {
   int startFrEpoch=OctToInt(args(0));

   int stopFrEpoch=OctToInt(args(1));

   double startTime=OctToDouble(args(2));

   double stopTime=OctToDouble(args(3));

   double interval=OctToDouble(args(4));

   SpSetPredCtrl(startFrEpoch, stopFrEpoch, startTime, stopTime, interval);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (SpGetSatData, args, nargout, "SpGetSatData") {
   __int64 satKey=OctToInt64(args(0));

   int xf_SpSat=OctToInt(args(1));

   char valueStr[512];

   int retVar = SpGetSatData(satKey, xf_SpSat, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(valueStr);
   return retval;
}

DEFUN_DLD (SpGetSatDataAll, args, nargout, "SpGetSatDataAll") {
   __int64 satKey=OctToInt64(args(0));

   int satNum;

   double epochDs50UTC;

   double epochDs50TAI;

   double mu;

   int hasCovMtx;

   int integMode;

   int nTerms;

   int isSpectr;

   int retVar = SpGetSatDataAll(satKey, &satNum, &epochDs50UTC, &epochDs50TAI, &mu, &hasCovMtx, &integMode, &nTerms, &isSpectr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(satNum);
   retval(2) = octave_value(epochDs50UTC);
   retval(3) = octave_value(epochDs50TAI);
   retval(4) = octave_value(mu);
   retval(5) = octave_value(hasCovMtx);
   retval(6) = octave_value(integMode);
   retval(7) = octave_value(nTerms);
   retval(8) = octave_value(isSpectr);
   return retval;
}

DEFUN_DLD (SpPropMse, args, nargout, "SpPropMse") {
   __int64 satKey=OctToInt64(args(0));

   double mse=OctToDouble(args(1));

   double xa_timeTypes[5];

   int revNum;

   double posJ2K[3];

   double velJ2K[3];

   int retVar = SpPropMse(satKey, mse, xa_timeTypes, &revNum, posJ2K, velJ2K);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_timeTypes);
   retval(2) = octave_value(revNum);
   Double1DToOct(&retval(3), posJ2K);
   Double1DToOct(&retval(4), velJ2K);
   return retval;
}

DEFUN_DLD (SpPropDs50UTC, args, nargout, "SpPropDs50UTC") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double xa_timeTypes[5];

   int revNum;

   double posJ2K[3];

   double velJ2K[3];

   int retVar = SpPropDs50UTC(satKey, ds50UTC, xa_timeTypes, &revNum, posJ2K, velJ2K);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_timeTypes);
   retval(2) = octave_value(revNum);
   Double1DToOct(&retval(3), posJ2K);
   Double1DToOct(&retval(4), velJ2K);
   return retval;
}

DEFUN_DLD (SpPropDs50UtcLLH, args, nargout, "SpPropDs50UtcLLH") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double llh[3];

   int retVar = SpPropDs50UtcLLH(satKey, ds50UTC, llh);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), llh);
   return retval;
}

DEFUN_DLD (SpPropDs50UtcPos, args, nargout, "SpPropDs50UtcPos") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double pos[3];

   int retVar = SpPropDs50UtcPos(satKey, ds50UTC, pos);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), pos);
   return retval;
}

DEFUN_DLD (SpPropAll, args, nargout, "SpPropAll") {
   __int64 satKey=OctToInt64(args(0));

   int timeType=OctToInt(args(1));

   double timeIn=OctToDouble(args(2));

   int covType=OctToInt(args(3));

   double xa_spOut[128];

   int retVar = SpPropAll(satKey, timeType, timeIn, covType, xa_spOut);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_spOut);
   return retval;
}

DEFUN_DLD (SpGetStateDs50UTC, args, nargout, "SpGetStateDs50UTC") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double posDate[3];

   double velDate[3];

   int retVar = SpGetStateDs50UTC(satKey, ds50UTC, posDate, velDate);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), posDate);
   Double1DToOct(&retval(2), velDate);
   return retval;
}

DEFUN_DLD (SpSetStateDs50UTC, args, nargout, "SpSetStateDs50UTC") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double posDate[3];
   OctToDouble1D(args(2), 3, posDate);

   double velDate[3];
   OctToDouble1D(args(3), 3, velDate);

   int retVar = SpSetStateDs50UTC(satKey, ds50UTC, posDate, velDate);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpSetAndProp, args, nargout, "SpSetAndProp") {
   __int64 satKey=OctToInt64(args(0));

   double setDataArr[128];
   OctToDouble1D(args(1), 128, setDataArr);

   double propTimeDs50UTC=OctToDouble(args(2));

   double propDataArr[128];

   int retVar = SpSetAndProp(satKey, setDataArr, propTimeDs50UTC, propDataArr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), propDataArr);
   return retval;
}

DEFUN_DLD (SpGetPropOut, args, nargout, "SpGetPropOut") {
   __int64 satKey=OctToInt64(args(0));

   int index=OctToInt(args(1));

   int size_destArr = OctToInt(args(2));
   double destArr[size_destArr];

   int retVar = SpGetPropOut(satKey, index, destArr);

   NDArray destArrTemp(dim_vector(1,size_destArr));
   for (int i = 0; i < size_destArr; i++) {
      destArrTemp(i) = destArr[i];
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(destArrTemp);
   return retval;
}

DEFUN_DLD (SpGetCovMtx, args, nargout, "SpGetCovMtx") {
   __int64 satKey=OctToInt64(args(0));

   int covType=OctToInt(args(1));

   double covMtx[6][6];

   int retVar = SpGetCovMtx(satKey, covType, covMtx);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double2DToOct(&retval(1), covMtx);
   return retval;
}

DEFUN_DLD (SpCompCovSigma, args, nargout, "SpCompCovSigma") {
   double covMtx[6][6];
   NDArray covMtxTemp=args(0).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         covMtx[i][j]=covMtxTemp(i,j);
      }
   }

   double covSigma[6];

   SpCompCovSigma(covMtx, covSigma);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), covSigma);
   return retval;
}

DEFUN_DLD (SpSet4pAll, args, nargout, "SpSet4pAll") {
   int geoIdx=OctToInt(args(0));

   int bulgePert=OctToInt(args(1));

   int dragPert=OctToInt(args(2));

   int radPresPert=OctToInt(args(3));

   int lunSolPert=OctToInt(args(4));

   int f10=OctToInt(args(5));

   int f10Avg=OctToInt(args(6));

   int ap=OctToInt(args(7));

   int trunc=OctToInt(args(8));

   int incr=OctToInt(args(9));

   int ogPert=OctToInt(args(10));

   int tidePert=OctToInt(args(11));

   int inCoord=OctToInt(args(12));

   int nTerms=OctToInt(args(13));

   int reEval=OctToInt(args(14));

   int integStepMode=OctToInt(args(15));

   int stepSizeMethod=OctToInt(args(16));

   double initStepSize=OctToDouble(args(17));

   char* dcaFile = OctToString(args(18), 512);

   char* fluxFile = OctToString(args(19), 512);

   char* geoFile = OctToString(args(20), 512);

   char* jplFile = OctToString(args(21), 512);

   char* jplStart = OctToString(args(22), 512);

   char* jplStop = OctToString(args(23), 512);

   SpSet4pAll(geoIdx, bulgePert, dragPert, radPresPert, lunSolPert, f10, f10Avg, ap, trunc, incr, ogPert, tidePert, inCoord, nTerms, reEval, integStepMode, stepSizeMethod, initStepSize, dcaFile, fluxFile, geoFile, jplFile, jplStart, jplStop);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (SpGet4pAll, args, nargout, "SpGet4pAll") {
   int geoIdx;

   int bulgePert;

   int dragPert;

   int radPresPert;

   int lunSolPert;

   int f10;

   int f10Avg;

   int ap;

   int trunc;

   int incr;

   int ogPert;

   int tidePert;

   int inCoord;

   int nTerms;

   int reEval;

   int integStepMode;

   int stepSizeMethod;

   double initStepSize;

   char dcaFile[512];

   char fluxFile[512];

   char geoFile[512];

   char jplFile[512];

   char jplStart[512];

   char jplStop[512];

   SpGet4pAll(&geoIdx, &bulgePert, &dragPert, &radPresPert, &lunSolPert, &f10, &f10Avg, &ap, &trunc, &incr, &ogPert, &tidePert, &inCoord, &nTerms, &reEval, &integStepMode, &stepSizeMethod, &initStepSize, dcaFile, fluxFile, geoFile, jplFile, jplStart, jplStop);

   octave_value_list retval(nargout);
   retval(0) = octave_value(geoIdx);
   retval(1) = octave_value(bulgePert);
   retval(2) = octave_value(dragPert);
   retval(3) = octave_value(radPresPert);
   retval(4) = octave_value(lunSolPert);
   retval(5) = octave_value(f10);
   retval(6) = octave_value(f10Avg);
   retval(7) = octave_value(ap);
   retval(8) = octave_value(trunc);
   retval(9) = octave_value(incr);
   retval(10) = octave_value(ogPert);
   retval(11) = octave_value(tidePert);
   retval(12) = octave_value(inCoord);
   retval(13) = octave_value(nTerms);
   retval(14) = octave_value(reEval);
   retval(15) = octave_value(integStepMode);
   retval(16) = octave_value(stepSizeMethod);
   retval(17) = octave_value(initStepSize);
   retval(18) = octave_value(dcaFile);
   retval(19) = octave_value(fluxFile);
   retval(20) = octave_value(geoFile);
   retval(21) = octave_value(jplFile);
   retval(22) = octave_value(jplStart);
   retval(23) = octave_value(jplStop);
   return retval;
}

DEFUN_DLD (SpSet4PCard, args, nargout, "SpSet4PCard") {
   char* card4P = OctToString(args(0), 512);

   int retVar = SpSet4PCard(card4P);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpGet4PCard, args, nargout, "SpGet4PCard") {
   char card4P[512];

   SpGet4PCard(card4P);

   octave_value_list retval(nargout);
   retval(0) = octave_value(card4P);
   return retval;
}

DEFUN_DLD (SpAddFluxRec, args, nargout, "SpAddFluxRec") {
   double refDs50UTC=OctToDouble(args(0));

   double f10=OctToDouble(args(1));

   double f10Avg=OctToDouble(args(2));

   double ap[8];
   OctToDouble1D(args(3), 8, ap);

   int retVar = SpAddFluxRec(refDs50UTC, f10, f10Avg, ap);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpGetEphemTimes, args, nargout, "SpGetEphemTimes") {
   __int64 satKey=OctToInt64(args(0));

   int maxEphPts=OctToInt(args(1));

   double startDs50UTC=OctToDouble(args(2));

   double stopDs50UTC=OctToDouble(args(3));

   double minStepSize=OctToDouble(args(4));

   int actualEphPts;

   int size_ds50UTCArr = OctToInt(args(5));
   double ds50UTCArr[size_ds50UTCArr];

   int retVar = SpGetEphemTimes(satKey, maxEphPts, startDs50UTC, stopDs50UTC, minStepSize, &actualEphPts, ds50UTCArr);

   NDArray ds50UTCArrTemp(dim_vector(1,size_ds50UTCArr));
   for (int i = 0; i < size_ds50UTCArr; i++) {
      ds50UTCArrTemp(i) = ds50UTCArr[i];
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(actualEphPts);
   retval(2) = octave_value(ds50UTCArrTemp);
   return retval;
}

DEFUN_DLD (SpGenEphems, args, nargout, "SpGenEphems") {
   __int64 satKey=OctToInt64(args(0));

   double startDs50UTC=OctToDouble(args(1));

   double stopDs50UTC=OctToDouble(args(2));

   double stepSize=OctToDouble(args(3));

   int sp_ephem=OctToInt(args(4));

   int arrSize=OctToInt(args(5));

   int size_ephemArr = OctToInt(args(6));
   double ephemArr[size_ephemArr][7];

   int genEphemPts;

   int retVar = SpGenEphems(satKey, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, arrSize, ephemArr, &genEphemPts);

   NDArray ephemArrTemp(dim_vector(size_ephemArr,7 ));
   for (int i = 0; i < size_ephemArr; i++) {
      for (int j = 0; j < 7; j++) {
         ephemArrTemp(i,j) = ephemArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ephemArrTemp);
   retval(2) = octave_value(genEphemPts);
   return retval;
}

DEFUN_DLD (SpGenEphemsCov, args, nargout, "SpGenEphemsCov") {
   __int64 satKey=OctToInt64(args(0));

   double startDs50UTC=OctToDouble(args(1));

   double stopDs50UTC=OctToDouble(args(2));

   double stepSize=OctToDouble(args(3));

   int sp_ephem=OctToInt(args(4));

   int covType=OctToInt(args(5));

   int arrSize=OctToInt(args(6));

   int size_ephemArr = OctToInt(args(7));
   double ephemArr[size_ephemArr][28];

   int genEphemPts;

   int retVar = SpGenEphemsCov(satKey, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, covType, arrSize, ephemArr, &genEphemPts);

   NDArray ephemArrTemp(dim_vector(size_ephemArr,28 ));
   for (int i = 0; i < size_ephemArr; i++) {
      for (int j = 0; j < 28; j++) {
         ephemArrTemp(i,j) = ephemArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ephemArrTemp);
   retval(2) = octave_value(genEphemPts);
   return retval;
}

DEFUN_DLD (SpGenEphemsVcm_OS, args, nargout, "SpGenEphemsVcm_OS") {
   char* vcmString = OctToString(args(0), 4000);

   double startDs50UTC=OctToDouble(args(1));

   double stopDs50UTC=OctToDouble(args(2));

   double stepSize=OctToDouble(args(3));

   int sp_ephem=OctToInt(args(4));

   int arrSize=OctToInt(args(5));

   int size_ephemArr = OctToInt(args(6));
   double ephemArr[size_ephemArr][7];

   int genEphemPts;

   int retVar = SpGenEphemsVcm_OS(vcmString, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, arrSize, ephemArr, &genEphemPts);

   NDArray ephemArrTemp(dim_vector(size_ephemArr,7 ));
   for (int i = 0; i < size_ephemArr; i++) {
      for (int j = 0; j < 7; j++) {
         ephemArrTemp(i,j) = ephemArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ephemArrTemp);
   retval(2) = octave_value(genEphemPts);
   return retval;
}

DEFUN_DLD (SpGenEphemsVcmCov_OS, args, nargout, "SpGenEphemsVcmCov_OS") {
   char* vcmString = OctToString(args(0), 4000);

   double startDs50UTC=OctToDouble(args(1));

   double stopDs50UTC=OctToDouble(args(2));

   double stepSize=OctToDouble(args(3));

   int sp_ephem=OctToInt(args(4));

   int covType=OctToInt(args(5));

   int arrSize=OctToInt(args(6));

   int size_ephemArr = OctToInt(args(7));
   double ephemArr[size_ephemArr][28];

   int genEphemPts;

   int retVar = SpGenEphemsVcmCov_OS(vcmString, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, covType, arrSize, ephemArr, &genEphemPts);

   NDArray ephemArrTemp(dim_vector(size_ephemArr,28 ));
   for (int i = 0; i < size_ephemArr; i++) {
      for (int j = 0; j < 28; j++) {
         ephemArrTemp(i,j) = ephemArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ephemArrTemp);
   retval(2) = octave_value(genEphemPts);
   return retval;
}

DEFUN_DLD (SpPropAllSats, args, nargout, "SpPropAllSats") {
   int size_satKeys = OctToInt(args(0));
   __int64 satKeys[size_satKeys];
   OctToLong1D(args(1), size_satKeys, satKeys);

   int numOfSats=OctToInt(args(2));

   double ds50UTC=OctToDouble(args(3));

   int size_ephemArr = OctToInt(args(4));
   double ephemArr[size_ephemArr][6];

   int retVar = SpPropAllSats(satKeys, numOfSats, ds50UTC, ephemArr);

   NDArray ephemArrTemp(dim_vector(size_ephemArr,6 ));
   for (int i = 0; i < size_ephemArr; i++) {
      for (int j = 0; j < 6; j++) {
         ephemArrTemp(i,j) = ephemArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ephemArrTemp);
   return retval;
}

DEFUN_DLD (SpPropAllExt, args, nargout, "SpPropAllExt") {
   __int64 satKey=OctToInt64(args(0));

   int timeType=OctToInt(args(1));

   double timeIn=OctToDouble(args(2));

   int spCoord=OctToInt(args(3));

   int xf_CovMtx=OctToInt(args(4));

   int stmType=OctToInt(args(5));

   double xa_spExt[128];

   int retVar = SpPropAllExt(satKey, timeType, timeIn, spCoord, xf_CovMtx, stmType, xa_spExt);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_spExt);
   return retval;
}

// ========================= End of auto generated code ==========================
