// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "LamodDll.h"
   #include "LamodDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadLamodDll( )
// [ ] = FreeLamodDll( )
// [retVar] = LamodInit(apAddr)
// [infoStr[128]] = LamodGetInfo()
// [retVar] = LamodLoadFile(lamodInputFile[512])
// [retVar] = LamodLoadFileAll(lamodInputFile[512])
// [retVar] = LamodLoadCard(card[512])
// [retVar] = LamodSaveFile(lamodFile[512], saveMode, saveForm)
// [numSens, numSats] = LamodGetNumOfSensSats()
// [senNums[size_senNums]] = LamodGetSenNums(size_senNums)
// [satNums[size_satNums]] = LamodGetSatNums(size_satNums)
// [lamod1PCard[512]] = LamodGet1pCard()
// [timeFlg, startTime, stopTime, interval, prtOpt, punchObs, visFlg, stepMode, schedMode, diagMode, solAspAngle] = LamodGet1pAll()
// [] = LamodSet1pAll(timeFlg, startTime, stopTime, interval, prtOpt, punchObs, visFlg, stepMode, schedMode, diagMode, solAspAngle)
// [retVal[512]] = LamodGet1pField(xf_1P)
// [] = LamodSet1pField(xf_1P, valueStr[512])
// [concurrFlg, concurrSens[3]] = LamodGet3pAll()
// [] = LamodSet3pAll(concurrFlg, concurrSens[3])
// [obsFile[512]] = LamodGetObsFileName()
// [] = LamodSetObsFileName(obsFile[512])
// [retVar] = LamodSenSatVisible(senKey, satKey)
// [retVar] = LamodInitSenSat(senKey, satKey)
// [retVar] = LamodInitSenSat_MT(xa_la_parms[16], senKey, satKey)
// [retVar, stepMode, optVisFlg, startDs50TAI, stopDs50TAI, interval, period] = LamodGetSenSatDataAll(senSatKey)
// [retVar, retVal[512]] = LamodGetSenSatDataField(senSatKey, xf_SenSat)
// [retVar, xa_senSat[32]] = LamodSenSatDataToArray(senSatKey)
// [retVar] = LamodGetNumPasses(senSatKey)
// [retVar, rcsTimeArr[size_rcsTimeArr][3]] = LamodGetRiseCulmSetTimes(senSatKey, size_rcsTimeArr)
// [retVar, lookCode, xa_look[6], senElts[9], satElts[9]] = LamodComputeLookAngle(senSatKey, currDs50TAI)
// [retVar, xa_lv[128]] = LamodComputeLookView(senSatKey, currDs50TAI)
// [retVar] = LamodFindExactIOTime(senSatKey, t1Ds50TAI, t2Ds50TAI)
// [retVar, uvSun[3], uvMoon[3], xa_angle[5], nBore1, nBore2, xa_offBore[4]] = LamodGetOrbSenViewdata(senSatKey)
// [retVar, retVal[size_retVal]] = LamodGetViewDataField(senSatKey, xf_View, size_retVal)
// [rasc, decl, raHr, raMin, raSec, decDeg, decMin, decSec] = LamodCompRaDec(xlPos[3])
// [retVar, obsLine1[512], obsLine2[512], numLines] = LamodGenObs(senSatKey, punchObs, obsClass)
// [retVar, obsLine1[512], obsLine2[512], numLines] = LamodGenObsAtTime(senSatKey, currDs50TAI, punchObs, obsClass)
// [retVar] = LamodRemoveSenSat(senSatKey)
// [retVar] = LamodRemoveAllSenSats()
// [] = LamodReset()
// [xa_lv[128]] = LamodSenSatDirect_OS(ds50TAI, xa_locSen[16], xa_pvSat[6])

DEFUN_DLD (LoadLamodDll, args, nargout, "Load Lamod Library") {
   LoadLamodDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeLamodDll, args, nargout, "Free Lamod Library") {
   FreeLamodDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (LamodInit, args, nargout, "LamodInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = LamodInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodGetInfo, args, nargout, "LamodGetInfo") {
   char infoStr[128];

   LamodGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (LamodLoadFile, args, nargout, "LamodLoadFile") {
   char* lamodInputFile = OctToString(args(0), 512);

   int retVar = LamodLoadFile(lamodInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodLoadFileAll, args, nargout, "LamodLoadFileAll") {
   char* lamodInputFile = OctToString(args(0), 512);

   int retVar = LamodLoadFileAll(lamodInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodLoadCard, args, nargout, "LamodLoadCard") {
   char* card = OctToString(args(0), 512);

   int retVar = LamodLoadCard(card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodSaveFile, args, nargout, "LamodSaveFile") {
   char* lamodFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = LamodSaveFile(lamodFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodGetNumOfSensSats, args, nargout, "LamodGetNumOfSensSats") {
   int numSens;

   int numSats;

   LamodGetNumOfSensSats(&numSens, &numSats);

   octave_value_list retval(nargout);
   retval(0) = octave_value(numSens);
   retval(1) = octave_value(numSats);
   return retval;
}

DEFUN_DLD (LamodGetSenNums, args, nargout, "LamodGetSenNums") {
   int size_senNums = OctToInt(args(0));
   int senNums[size_senNums];

   LamodGetSenNums(senNums);

   int32NDArray senNumsTemp(dim_vector(1,size_senNums));
   for (int i = 0; i < size_senNums; i++) {
      senNumsTemp(i) = senNums[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(senNumsTemp);
   return retval;
}

DEFUN_DLD (LamodGetSatNums, args, nargout, "LamodGetSatNums") {
   int size_satNums = OctToInt(args(0));
   int satNums[size_satNums];

   LamodGetSatNums(satNums);

   int32NDArray satNumsTemp(dim_vector(1,size_satNums));
   for (int i = 0; i < size_satNums; i++) {
      satNumsTemp(i) = satNums[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(satNumsTemp);
   return retval;
}

DEFUN_DLD (LamodGet1pCard, args, nargout, "LamodGet1pCard") {
   char lamod1PCard[512];

   LamodGet1pCard(lamod1PCard);

   octave_value_list retval(nargout);
   retval(0) = octave_value(lamod1PCard);
   return retval;
}

DEFUN_DLD (LamodGet1pAll, args, nargout, "LamodGet1pAll") {
   int timeFlg;

   double startTime;

   double stopTime;

   double interval;

   int prtOpt;

   int punchObs;

   int visFlg;

   int stepMode;

   char schedMode;

   int diagMode;

   double solAspAngle;

   LamodGet1pAll(&timeFlg, &startTime, &stopTime, &interval, &prtOpt, &punchObs, &visFlg, &stepMode, &schedMode, &diagMode, &solAspAngle);

   octave_value_list retval(nargout);
   retval(0) = octave_value(timeFlg);
   retval(1) = octave_value(startTime);
   retval(2) = octave_value(stopTime);
   retval(3) = octave_value(interval);
   retval(4) = octave_value(prtOpt);
   retval(5) = octave_value(punchObs);
   retval(6) = octave_value(visFlg);
   retval(7) = octave_value(stepMode);
   retval(8) = octave_value(schedMode);
   retval(9) = octave_value(diagMode);
   retval(10) = octave_value(solAspAngle);
   return retval;
}

DEFUN_DLD (LamodSet1pAll, args, nargout, "LamodSet1pAll") {
   int timeFlg=OctToInt(args(0));

   double startTime=OctToDouble(args(1));

   double stopTime=OctToDouble(args(2));

   double interval=OctToDouble(args(3));

   int prtOpt=OctToInt(args(4));

   int punchObs=OctToInt(args(5));

   int visFlg=OctToInt(args(6));

   int stepMode=OctToInt(args(7));

   char schedMode=OctToChar(args(8));

   int diagMode=OctToInt(args(9));

   double solAspAngle=OctToDouble(args(10));

   LamodSet1pAll(timeFlg, startTime, stopTime, interval, prtOpt, punchObs, visFlg, stepMode, schedMode, diagMode, solAspAngle);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (LamodGet1pField, args, nargout, "LamodGet1pField") {
   int xf_1P=OctToInt(args(0));

   char retVal[512];

   LamodGet1pField(xf_1P, retVal);

   octave_value_list retval(nargout);
   retval(0) = octave_value(retVal);
   return retval;
}

DEFUN_DLD (LamodSet1pField, args, nargout, "LamodSet1pField") {
   int xf_1P=OctToInt(args(0));

   char* valueStr = OctToString(args(1), 512);

   LamodSet1pField(xf_1P, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (LamodGet3pAll, args, nargout, "LamodGet3pAll") {
   int concurrFlg;

   int concurrSens[3];

   LamodGet3pAll(&concurrFlg, concurrSens);

   octave_value_list retval(nargout);
   retval(0) = octave_value(concurrFlg);
   Int1DToOct(&retval(1), concurrSens);
   return retval;
}

DEFUN_DLD (LamodSet3pAll, args, nargout, "LamodSet3pAll") {
   int concurrFlg=OctToInt(args(0));

   int concurrSens[3];
   OctToInt1D(args(1), 3, concurrSens);

   LamodSet3pAll(concurrFlg, concurrSens);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (LamodGetObsFileName, args, nargout, "LamodGetObsFileName") {
   char obsFile[512];

   LamodGetObsFileName(obsFile);

   octave_value_list retval(nargout);
   retval(0) = octave_value(obsFile);
   return retval;
}

DEFUN_DLD (LamodSetObsFileName, args, nargout, "LamodSetObsFileName") {
   char* obsFile = OctToString(args(0), 512);

   LamodSetObsFileName(obsFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (LamodSenSatVisible, args, nargout, "LamodSenSatVisible") {
   __int64 senKey=OctToInt64(args(0));

   __int64 satKey=OctToInt64(args(1));

   int retVar = LamodSenSatVisible(senKey, satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodInitSenSat, args, nargout, "LamodInitSenSat") {
   __int64 senKey=OctToInt64(args(0));

   __int64 satKey=OctToInt64(args(1));

   __int64 retVar = LamodInitSenSat(senKey, satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (LamodInitSenSat_MT, args, nargout, "LamodInitSenSat_MT") {
   double xa_la_parms[16];
   OctToDouble1D(args(0), 16, xa_la_parms);

   __int64 senKey=OctToInt64(args(1));

   __int64 satKey=OctToInt64(args(2));

   __int64 retVar = LamodInitSenSat_MT(xa_la_parms, senKey, satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (LamodGetSenSatDataAll, args, nargout, "LamodGetSenSatDataAll") {
   __int64 senSatKey=OctToInt64(args(0));

   int stepMode;

   int optVisFlg;

   double startDs50TAI;

   double stopDs50TAI;

   double interval;

   double period;

   int retVar = LamodGetSenSatDataAll(senSatKey, &stepMode, &optVisFlg, &startDs50TAI, &stopDs50TAI, &interval, &period);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(stepMode);
   retval(2) = octave_value(optVisFlg);
   retval(3) = octave_value(startDs50TAI);
   retval(4) = octave_value(stopDs50TAI);
   retval(5) = octave_value(interval);
   retval(6) = octave_value(period);
   return retval;
}

DEFUN_DLD (LamodGetSenSatDataField, args, nargout, "LamodGetSenSatDataField") {
   __int64 senSatKey=OctToInt64(args(0));

   int xf_SenSat=OctToInt(args(1));

   char retVal[512];

   int retVar = LamodGetSenSatDataField(senSatKey, xf_SenSat, retVal);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(retVal);
   return retval;
}

DEFUN_DLD (LamodSenSatDataToArray, args, nargout, "LamodSenSatDataToArray") {
   __int64 senSatKey=OctToInt64(args(0));

   double xa_senSat[32];

   int retVar = LamodSenSatDataToArray(senSatKey, xa_senSat);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_senSat);
   return retval;
}

DEFUN_DLD (LamodGetNumPasses, args, nargout, "LamodGetNumPasses") {
   __int64 senSatKey=OctToInt64(args(0));

   int retVar = LamodGetNumPasses(senSatKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodGetRiseCulmSetTimes, args, nargout, "LamodGetRiseCulmSetTimes") {
   __int64 senSatKey=OctToInt64(args(0));

   int size_rcsTimeArr = OctToInt(args(1));
   double rcsTimeArr[size_rcsTimeArr][3];

   int retVar = LamodGetRiseCulmSetTimes(senSatKey, rcsTimeArr);

   NDArray rcsTimeArrTemp(dim_vector(size_rcsTimeArr,3 ));
   for (int i = 0; i < size_rcsTimeArr; i++) {
      for (int j = 0; j < 3; j++) {
         rcsTimeArrTemp(i,j) = rcsTimeArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(rcsTimeArrTemp);
   return retval;
}

DEFUN_DLD (LamodComputeLookAngle, args, nargout, "LamodComputeLookAngle") {
   __int64 senSatKey=OctToInt64(args(0));

   double currDs50TAI=OctToDouble(args(1));

   int lookCode;

   double xa_look[6];

   double senElts[9];

   double satElts[9];

   int retVar = LamodComputeLookAngle(senSatKey, currDs50TAI, &lookCode, xa_look, senElts, satElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(lookCode);
   Double1DToOct(&retval(2), xa_look);
   Double1DToOct(&retval(3), senElts);
   Double1DToOct(&retval(4), satElts);
   return retval;
}

DEFUN_DLD (LamodComputeLookView, args, nargout, "LamodComputeLookView") {
   __int64 senSatKey=OctToInt64(args(0));

   double currDs50TAI=OctToDouble(args(1));

   double xa_lv[128];

   int retVar = LamodComputeLookView(senSatKey, currDs50TAI, xa_lv);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_lv);
   return retval;
}

DEFUN_DLD (LamodFindExactIOTime, args, nargout, "LamodFindExactIOTime") {
   __int64 senSatKey=OctToInt64(args(0));

   double t1Ds50TAI=OctToDouble(args(1));

   double t2Ds50TAI=OctToDouble(args(2));

   double retVar = LamodFindExactIOTime(senSatKey, t1Ds50TAI, t2Ds50TAI);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodGetOrbSenViewdata, args, nargout, "LamodGetOrbSenViewdata") {
   __int64 senSatKey=OctToInt64(args(0));

   double uvSun[3];

   double uvMoon[3];

   double xa_angle[5];

   int nBore1;

   int nBore2;

   double xa_offBore[4];

   int retVar = LamodGetOrbSenViewdata(senSatKey, uvSun, uvMoon, xa_angle, &nBore1, &nBore2, xa_offBore);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), uvSun);
   Double1DToOct(&retval(2), uvMoon);
   Double1DToOct(&retval(3), xa_angle);
   retval(4) = octave_value(nBore1);
   retval(5) = octave_value(nBore2);
   Double1DToOct(&retval(6), xa_offBore);
   return retval;
}

DEFUN_DLD (LamodGetViewDataField, args, nargout, "LamodGetViewDataField") {
   __int64 senSatKey=OctToInt64(args(0));

   int xf_View=OctToInt(args(1));

   int size_retVal = OctToInt(args(2));
   double retVal[size_retVal];

   int retVar = LamodGetViewDataField(senSatKey, xf_View, retVal);

   NDArray retValTemp(dim_vector(1,size_retVal));
   for (int i = 0; i < size_retVal; i++) {
      retValTemp(i) = retVal[i];
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(retValTemp);
   return retval;
}

DEFUN_DLD (LamodCompRaDec, args, nargout, "LamodCompRaDec") {
   double xlPos[3];
   OctToDouble1D(args(0), 3, xlPos);

   double rasc;

   double decl;

   int raHr;

   int raMin;

   double raSec;

   int decDeg;

   int decMin;

   double decSec;

   LamodCompRaDec(xlPos, &rasc, &decl, &raHr, &raMin, &raSec, &decDeg, &decMin, &decSec);

   octave_value_list retval(nargout);
   retval(0) = octave_value(rasc);
   retval(1) = octave_value(decl);
   retval(2) = octave_value(raHr);
   retval(3) = octave_value(raMin);
   retval(4) = octave_value(raSec);
   retval(5) = octave_value(decDeg);
   retval(6) = octave_value(decMin);
   retval(7) = octave_value(decSec);
   return retval;
}

DEFUN_DLD (LamodGenObs, args, nargout, "LamodGenObs") {
   __int64 senSatKey=OctToInt64(args(0));

   int punchObs=OctToInt(args(1));

   char obsClass=OctToChar(args(2));

   char obsLine1[512];

   char obsLine2[512];

   int numLines;

   int retVar = LamodGenObs(senSatKey, punchObs, obsClass, obsLine1, obsLine2, &numLines);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(obsLine1);
   retval(2) = octave_value(obsLine2);
   retval(3) = octave_value(numLines);
   return retval;
}

DEFUN_DLD (LamodGenObsAtTime, args, nargout, "LamodGenObsAtTime") {
   __int64 senSatKey=OctToInt64(args(0));

   double currDs50TAI=OctToDouble(args(1));

   int punchObs=OctToInt(args(2));

   char obsClass=OctToChar(args(3));

   char obsLine1[512];

   char obsLine2[512];

   int numLines;

   int retVar = LamodGenObsAtTime(senSatKey, currDs50TAI, punchObs, obsClass, obsLine1, obsLine2, &numLines);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(obsLine1);
   retval(2) = octave_value(obsLine2);
   retval(3) = octave_value(numLines);
   return retval;
}

DEFUN_DLD (LamodRemoveSenSat, args, nargout, "LamodRemoveSenSat") {
   __int64 senSatKey=OctToInt64(args(0));

   int retVar = LamodRemoveSenSat(senSatKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodRemoveAllSenSats, args, nargout, "LamodRemoveAllSenSats") {
   int retVar = LamodRemoveAllSenSats();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LamodReset, args, nargout, "LamodReset") {
   LamodReset();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (LamodSenSatDirect_OS, args, nargout, "LamodSenSatDirect_OS") {
   double ds50TAI=OctToDouble(args(0));

   double xa_locSen[16];
   OctToDouble1D(args(1), 16, xa_locSen);

   double xa_pvSat[6];
   OctToDouble1D(args(2), 6, xa_pvSat);

   double xa_lv[128];

   LamodSenSatDirect_OS(ds50TAI, xa_locSen, xa_pvSat, xa_lv);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_lv);
   return retval;
}

// ========================= End of auto generated code ==========================
