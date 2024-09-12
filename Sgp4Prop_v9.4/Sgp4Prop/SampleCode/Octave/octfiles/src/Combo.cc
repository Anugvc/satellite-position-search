// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "ComboDll.h"
   #include "ComboDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadComboDll( )
// [ ] = FreeComboDll( )
// [retVar] = ComboInit(apAddr)
// [infoStr[128]] = ComboGetInfo()
// [retVar] = ComboLoadFile(comboInputFile[512])
// [retVar] = ComboLoadFileAll(comboInputFile[512])
// [retVar] = ComboLoadCard(card[512])
// [retVar] = ComboSaveFile(comboFile[512], saveMode, saveForm)
// [numPriSats, numSecSats] = ComboGetNumOfPriSecSats()
// [priSatNums[size_priSatNums]] = ComboGetPriSatNums(size_priSatNums)
// [secSatNums[size_secSatNums]] = ComboGetSecSatNums(size_secSatNums)
// [combo7pCard[512]] = ComboGet7pCard()
// [timeFlg, startTime, stopTime, relMinFlg, absMinFlg, closeProxFlg, relEphFlg, pocSigma, relMinLim, closeProxLim, relEphInterval, prtOpt] = ComboGet7pAll()
// [] = ComboSet7pAll(timeFlg, startTime, stopTime, relMinFlg, absMinFlg, closeProxFlg, relEphFlg, pocSigma, relMinLim, closeProxLim, relEphInterval, prtOpt)
// [retVal[512]] = ComboGet7pField(xf_7P)
// [] = ComboSet7pField(xf_7P, valueStr[512])
// [retVar, absMinDs50UTC, absMinDist, relMinDs50UTCs[1000], numOfRelMins, entryDs50UTCs[1000], exitDs50UTCs[1000], numOfEntryExits] = ComboCompPriSec(priSatKey, secSatKey)
// [retVar, absMinDs50UTC, absMinDist, relMinDs50UTCs[1000], numOfRelMins, entryDs50UTCs[1000], exitDs50UTCs[1000], numOfEntryExits] = ComboCompPriSec_MT(xa_cb_parms[16], priSatKey, secSatKey)
// [retVar, xa_cb_poc[4]] = ComboPOC(priSatPos[3], priSatVel[3], priSatCov[3][3], priSatRad, secSatPos[3], secSatVel[3], secSatCov[3][3], secSatRad, xf_CovType)
// [retVar, xa_cb_poc[4]] = ComboCSMPOC(csmFile[512], sumR)

DEFUN_DLD (LoadComboDll, args, nargout, "Load Combo Library") {
   LoadComboDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeComboDll, args, nargout, "Free Combo Library") {
   FreeComboDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (ComboInit, args, nargout, "ComboInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = ComboInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ComboGetInfo, args, nargout, "ComboGetInfo") {
   char infoStr[128];

   ComboGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (ComboLoadFile, args, nargout, "ComboLoadFile") {
   char* comboInputFile = OctToString(args(0), 512);

   int retVar = ComboLoadFile(comboInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ComboLoadFileAll, args, nargout, "ComboLoadFileAll") {
   char* comboInputFile = OctToString(args(0), 512);

   int retVar = ComboLoadFileAll(comboInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ComboLoadCard, args, nargout, "ComboLoadCard") {
   char* card = OctToString(args(0), 512);

   int retVar = ComboLoadCard(card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ComboSaveFile, args, nargout, "ComboSaveFile") {
   char* comboFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = ComboSaveFile(comboFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ComboGetNumOfPriSecSats, args, nargout, "ComboGetNumOfPriSecSats") {
   int numPriSats;

   int numSecSats;

   ComboGetNumOfPriSecSats(&numPriSats, &numSecSats);

   octave_value_list retval(nargout);
   retval(0) = octave_value(numPriSats);
   retval(1) = octave_value(numSecSats);
   return retval;
}

DEFUN_DLD (ComboGetPriSatNums, args, nargout, "ComboGetPriSatNums") {
   int size_priSatNums = OctToInt(args(0));
   int priSatNums[size_priSatNums];

   ComboGetPriSatNums(priSatNums);

   int32NDArray priSatNumsTemp(dim_vector(1,size_priSatNums));
   for (int i = 0; i < size_priSatNums; i++) {
      priSatNumsTemp(i) = priSatNums[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(priSatNumsTemp);
   return retval;
}

DEFUN_DLD (ComboGetSecSatNums, args, nargout, "ComboGetSecSatNums") {
   int size_secSatNums = OctToInt(args(0));
   int secSatNums[size_secSatNums];

   ComboGetSecSatNums(secSatNums);

   int32NDArray secSatNumsTemp(dim_vector(1,size_secSatNums));
   for (int i = 0; i < size_secSatNums; i++) {
      secSatNumsTemp(i) = secSatNums[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(secSatNumsTemp);
   return retval;
}

DEFUN_DLD (ComboGet7pCard, args, nargout, "ComboGet7pCard") {
   char combo7pCard[512];

   ComboGet7pCard(combo7pCard);

   octave_value_list retval(nargout);
   retval(0) = octave_value(combo7pCard);
   return retval;
}

DEFUN_DLD (ComboGet7pAll, args, nargout, "ComboGet7pAll") {
   int timeFlg;

   double startTime;

   double stopTime;

   int relMinFlg;

   int absMinFlg;

   int closeProxFlg;

   int relEphFlg;

   double pocSigma;

   double relMinLim;

   double closeProxLim;

   double relEphInterval;

   int prtOpt;

   ComboGet7pAll(&timeFlg, &startTime, &stopTime, &relMinFlg, &absMinFlg, &closeProxFlg, &relEphFlg, &pocSigma, &relMinLim, &closeProxLim, &relEphInterval, &prtOpt);

   octave_value_list retval(nargout);
   retval(0) = octave_value(timeFlg);
   retval(1) = octave_value(startTime);
   retval(2) = octave_value(stopTime);
   retval(3) = octave_value(relMinFlg);
   retval(4) = octave_value(absMinFlg);
   retval(5) = octave_value(closeProxFlg);
   retval(6) = octave_value(relEphFlg);
   retval(7) = octave_value(pocSigma);
   retval(8) = octave_value(relMinLim);
   retval(9) = octave_value(closeProxLim);
   retval(10) = octave_value(relEphInterval);
   retval(11) = octave_value(prtOpt);
   return retval;
}

DEFUN_DLD (ComboSet7pAll, args, nargout, "ComboSet7pAll") {
   int timeFlg=OctToInt(args(0));

   double startTime=OctToDouble(args(1));

   double stopTime=OctToDouble(args(2));

   int relMinFlg=OctToInt(args(3));

   int absMinFlg=OctToInt(args(4));

   int closeProxFlg=OctToInt(args(5));

   int relEphFlg=OctToInt(args(6));

   double pocSigma=OctToDouble(args(7));

   double relMinLim=OctToDouble(args(8));

   double closeProxLim=OctToDouble(args(9));

   double relEphInterval=OctToDouble(args(10));

   int prtOpt=OctToInt(args(11));

   ComboSet7pAll(timeFlg, startTime, stopTime, relMinFlg, absMinFlg, closeProxFlg, relEphFlg, pocSigma, relMinLim, closeProxLim, relEphInterval, prtOpt);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (ComboGet7pField, args, nargout, "ComboGet7pField") {
   int xf_7P=OctToInt(args(0));

   char retVal[512];

   ComboGet7pField(xf_7P, retVal);

   octave_value_list retval(nargout);
   retval(0) = octave_value(retVal);
   return retval;
}

DEFUN_DLD (ComboSet7pField, args, nargout, "ComboSet7pField") {
   int xf_7P=OctToInt(args(0));

   char* valueStr = OctToString(args(1), 512);

   ComboSet7pField(xf_7P, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (ComboCompPriSec, args, nargout, "ComboCompPriSec") {
   __int64 priSatKey=OctToInt64(args(0));

   __int64 secSatKey=OctToInt64(args(1));

   double absMinDs50UTC;

   double absMinDist;

   double relMinDs50UTCs[1000];

   int numOfRelMins;

   double entryDs50UTCs[1000];

   double exitDs50UTCs[1000];

   int numOfEntryExits;

   int retVar = ComboCompPriSec(priSatKey, secSatKey, &absMinDs50UTC, &absMinDist, relMinDs50UTCs, &numOfRelMins, entryDs50UTCs, exitDs50UTCs, &numOfEntryExits);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(absMinDs50UTC);
   retval(2) = octave_value(absMinDist);
   Double1DToOct(&retval(3), relMinDs50UTCs);
   retval(4) = octave_value(numOfRelMins);
   Double1DToOct(&retval(5), entryDs50UTCs);
   Double1DToOct(&retval(6), exitDs50UTCs);
   retval(7) = octave_value(numOfEntryExits);
   return retval;
}

DEFUN_DLD (ComboCompPriSec_MT, args, nargout, "ComboCompPriSec_MT") {
   double xa_cb_parms[16];
   OctToDouble1D(args(0), 16, xa_cb_parms);

   __int64 priSatKey=OctToInt64(args(1));

   __int64 secSatKey=OctToInt64(args(2));

   double absMinDs50UTC;

   double absMinDist;

   double relMinDs50UTCs[1000];

   int numOfRelMins;

   double entryDs50UTCs[1000];

   double exitDs50UTCs[1000];

   int numOfEntryExits;

   int retVar = ComboCompPriSec_MT(xa_cb_parms, priSatKey, secSatKey, &absMinDs50UTC, &absMinDist, relMinDs50UTCs, &numOfRelMins, entryDs50UTCs, exitDs50UTCs, &numOfEntryExits);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(absMinDs50UTC);
   retval(2) = octave_value(absMinDist);
   Double1DToOct(&retval(3), relMinDs50UTCs);
   retval(4) = octave_value(numOfRelMins);
   Double1DToOct(&retval(5), entryDs50UTCs);
   Double1DToOct(&retval(6), exitDs50UTCs);
   retval(7) = octave_value(numOfEntryExits);
   return retval;
}

DEFUN_DLD (ComboPOC, args, nargout, "ComboPOC") {
   double priSatPos[3];
   OctToDouble1D(args(0), 3, priSatPos);

   double priSatVel[3];
   OctToDouble1D(args(1), 3, priSatVel);

   double priSatCov[3][3];
   NDArray priSatCovTemp=args(2).array_value();
   for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
         priSatCov[i][j]=priSatCovTemp(i,j);
      }
   }

   double priSatRad=OctToDouble(args(3));

   double secSatPos[3];
   OctToDouble1D(args(4), 3, secSatPos);

   double secSatVel[3];
   OctToDouble1D(args(5), 3, secSatVel);

   double secSatCov[3][3];
   NDArray secSatCovTemp=args(6).array_value();
   for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
         secSatCov[i][j]=secSatCovTemp(i,j);
      }
   }

   double secSatRad=OctToDouble(args(7));

   int xf_CovType=OctToInt(args(8));

   double xa_cb_poc[4];

   int retVar = ComboPOC(priSatPos, priSatVel, priSatCov, priSatRad, secSatPos, secSatVel, secSatCov, secSatRad, xf_CovType, xa_cb_poc);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_cb_poc);
   return retval;
}

DEFUN_DLD (ComboCSMPOC, args, nargout, "ComboCSMPOC") {
   char* csmFile = OctToString(args(0), 512);

   double sumR=OctToDouble(args(1));

   double xa_cb_poc[4];

   int retVar = ComboCSMPOC(csmFile, sumR, xa_cb_poc);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_cb_poc);
   return retval;
}

// ========================= End of auto generated code ==========================
