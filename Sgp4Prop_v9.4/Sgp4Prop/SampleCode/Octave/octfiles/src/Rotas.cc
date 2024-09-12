// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "RotasDll.h"
   #include "RotasDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadRotasDll( )
// [ ] = FreeRotasDll( )
// [retVar] = RotasInit(apAddr)
// [infoStr[128]] = RotasGetInfo()
// [retVar] = RotasLoadFile(rotasInputFile[512])
// [retVar] = RotasLoadFileAll(rotasInputFile[512])
// [retVar] = RotasLoadCard(card[512])
// [retVar] = RotasSaveFile(rotasFile[512], saveMode, saveForm)
// [rotasPCard[512]] = RotasGetPCard()
// [rotasMode[5], grossBeta, betaLimit, deltaTLimit, deltaHLimit, astat2Mult, prtFlag, retagFlag, ltcFlag, maxNumAssoc, debiasFlag, diagMode, covPrtFlag, isTrackMode, remRetagObs, extArr[128]] = RotasGetPAll()
// [] = RotasSetPAll(rotasMode[5], grossBeta, betaLimit, deltaTLimit, deltaHLimit, astat2Mult, prtFlag, retagFlag, ltcFlag, maxNumAssoc, debiasFlag, diagMode, covPrtFlag, isTrackMode, remRetagObs, extArr[128])
// [retVal[512]] = RotasGetPField(xf_RP)
// [] = RotasSetPField(xf_RP, valueStr[512])
// [xa_assocMultp[12]] = RotasGetAssocMultipliers()
// [] = RotasSetAssocMultipliers(xa_assocMultp[12])
// [] = RotasResetAll()
// [retVar] = RotasHasASTAT(obsKey, satKey)
// [retVar] = RotasHasASTAT_MT(xa_rt_parms[16], obsKey, satKey)
// [retVar] = RotasHasASTATMultp_MT(xa_assocMultp[12], xa_rt_parms[16], obsKey, satKey)
// [retVar, xa_ObsRes[100], satElts[9], obElts[9]] = RotasComputeObsResiduals(obsKey, satKey)
// [retVar, xa_ObsRes[100], satElts[9], obElts[9]] = RotasComputeObsResiduals_MT(xa_rt_parms[16], obsKey, satKey)
// [retVar, xa_ObsRes[100], satElts[9], obElts[9]] = RotasComputeObsResidualsMultp_MT(xa_assocMultp[12], xa_rt_parms[16], obsKey, satKey)
// [retVar, xa_ObsRes[100], trackObsKeys[3], b3ObsCard[512], satElts[9], obElts[9]] = RotasComputeTrackResiduals(size_obsKeys, obsKeys[size_obsKeys], trackStartIdx, trackLength, satKey)
// [retVar, xa_ObsRes[100], trackObsKeys[3], b3ObsCard[512], satElts[9], obElts[9]] = RotasComputeTrackResiduals_MT(xa_assocMultp[12], xa_rt_parms[16], size_obsKeys, obsKeys[size_obsKeys], trackStartIdx, trackLength, satKey)
// [retVar, xa_ObsRes[100]] = RotasCompObResDirect(obDataArr[16], satDataArr[16])
// [retagObsFile[512]] = RotasGetRetagObsFile()
// [] = RotasSetRetagObsFile(retagObsFile[512])

DEFUN_DLD (LoadRotasDll, args, nargout, "Load Rotas Library") {
   LoadRotasDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeRotasDll, args, nargout, "Free Rotas Library") {
   FreeRotasDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (RotasInit, args, nargout, "RotasInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = RotasInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (RotasGetInfo, args, nargout, "RotasGetInfo") {
   char infoStr[128];

   RotasGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (RotasLoadFile, args, nargout, "RotasLoadFile") {
   char* rotasInputFile = OctToString(args(0), 512);

   int retVar = RotasLoadFile(rotasInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (RotasLoadFileAll, args, nargout, "RotasLoadFileAll") {
   char* rotasInputFile = OctToString(args(0), 512);

   int retVar = RotasLoadFileAll(rotasInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (RotasLoadCard, args, nargout, "RotasLoadCard") {
   char* card = OctToString(args(0), 512);

   int retVar = RotasLoadCard(card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (RotasSaveFile, args, nargout, "RotasSaveFile") {
   char* rotasFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = RotasSaveFile(rotasFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (RotasGetPCard, args, nargout, "RotasGetPCard") {
   char rotasPCard[512];

   RotasGetPCard(rotasPCard);

   octave_value_list retval(nargout);
   retval(0) = octave_value(rotasPCard);
   return retval;
}

DEFUN_DLD (RotasGetPAll, args, nargout, "RotasGetPAll") {
   char rotasMode[5];

   double grossBeta;

   double betaLimit;

   double deltaTLimit;

   double deltaHLimit;

   int astat2Mult;

   int prtFlag;

   int retagFlag;

   int ltcFlag;

   int maxNumAssoc;

   int debiasFlag;

   int diagMode;

   int covPrtFlag;

   int isTrackMode;

   int remRetagObs;

   double extArr[128];

   RotasGetPAll(rotasMode, &grossBeta, &betaLimit, &deltaTLimit, &deltaHLimit, &astat2Mult, &prtFlag, &retagFlag, &ltcFlag, &maxNumAssoc, &debiasFlag, &diagMode, &covPrtFlag, &isTrackMode, &remRetagObs, extArr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(rotasMode);
   retval(1) = octave_value(grossBeta);
   retval(2) = octave_value(betaLimit);
   retval(3) = octave_value(deltaTLimit);
   retval(4) = octave_value(deltaHLimit);
   retval(5) = octave_value(astat2Mult);
   retval(6) = octave_value(prtFlag);
   retval(7) = octave_value(retagFlag);
   retval(8) = octave_value(ltcFlag);
   retval(9) = octave_value(maxNumAssoc);
   retval(10) = octave_value(debiasFlag);
   retval(11) = octave_value(diagMode);
   retval(12) = octave_value(covPrtFlag);
   retval(13) = octave_value(isTrackMode);
   retval(14) = octave_value(remRetagObs);
   Double1DToOct(&retval(15), extArr);
   return retval;
}

DEFUN_DLD (RotasSetPAll, args, nargout, "RotasSetPAll") {
   char* rotasMode = OctToString(args(0), 5);

   double grossBeta=OctToDouble(args(1));

   double betaLimit=OctToDouble(args(2));

   double deltaTLimit=OctToDouble(args(3));

   double deltaHLimit=OctToDouble(args(4));

   int astat2Mult=OctToInt(args(5));

   int prtFlag=OctToInt(args(6));

   int retagFlag=OctToInt(args(7));

   int ltcFlag=OctToInt(args(8));

   int maxNumAssoc=OctToInt(args(9));

   int debiasFlag=OctToInt(args(10));

   int diagMode=OctToInt(args(11));

   int covPrtFlag=OctToInt(args(12));

   int isTrackMode=OctToInt(args(13));

   int remRetagObs=OctToInt(args(14));

   double extArr[128];
   OctToDouble1D(args(15), 128, extArr);

   RotasSetPAll(rotasMode, grossBeta, betaLimit, deltaTLimit, deltaHLimit, astat2Mult, prtFlag, retagFlag, ltcFlag, maxNumAssoc, debiasFlag, diagMode, covPrtFlag, isTrackMode, remRetagObs, extArr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (RotasGetPField, args, nargout, "RotasGetPField") {
   int xf_RP=OctToInt(args(0));

   char retVal[512];

   RotasGetPField(xf_RP, retVal);

   octave_value_list retval(nargout);
   retval(0) = octave_value(retVal);
   return retval;
}

DEFUN_DLD (RotasSetPField, args, nargout, "RotasSetPField") {
   int xf_RP=OctToInt(args(0));

   char* valueStr = OctToString(args(1), 512);

   RotasSetPField(xf_RP, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (RotasGetAssocMultipliers, args, nargout, "RotasGetAssocMultipliers") {
   int xa_assocMultp[12];

   RotasGetAssocMultipliers(xa_assocMultp);

   octave_value_list retval(nargout);
   Int1DToOct(&retval(0), xa_assocMultp);
   return retval;
}

DEFUN_DLD (RotasSetAssocMultipliers, args, nargout, "RotasSetAssocMultipliers") {
   int xa_assocMultp[12];
   OctToInt1D(args(0), 12, xa_assocMultp);

   RotasSetAssocMultipliers(xa_assocMultp);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (RotasResetAll, args, nargout, "RotasResetAll") {
   RotasResetAll();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (RotasHasASTAT, args, nargout, "RotasHasASTAT") {
   __int64 obsKey=OctToInt64(args(0));

   __int64 satKey=OctToInt64(args(1));

   int retVar = RotasHasASTAT(obsKey, satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (RotasHasASTAT_MT, args, nargout, "RotasHasASTAT_MT") {
   double xa_rt_parms[16];
   OctToDouble1D(args(0), 16, xa_rt_parms);

   __int64 obsKey=OctToInt64(args(1));

   __int64 satKey=OctToInt64(args(2));

   int retVar = RotasHasASTAT_MT(xa_rt_parms, obsKey, satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (RotasHasASTATMultp_MT, args, nargout, "RotasHasASTATMultp_MT") {
   int xa_assocMultp[12];
   OctToInt1D(args(0), 12, xa_assocMultp);

   double xa_rt_parms[16];
   OctToDouble1D(args(1), 16, xa_rt_parms);

   __int64 obsKey=OctToInt64(args(2));

   __int64 satKey=OctToInt64(args(3));

   int retVar = RotasHasASTATMultp_MT(xa_assocMultp, xa_rt_parms, obsKey, satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (RotasComputeObsResiduals, args, nargout, "RotasComputeObsResiduals") {
   __int64 obsKey=OctToInt64(args(0));

   __int64 satKey=OctToInt64(args(1));

   double xa_ObsRes[100];

   double satElts[9];

   double obElts[9];

   int retVar = RotasComputeObsResiduals(obsKey, satKey, xa_ObsRes, satElts, obElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_ObsRes);
   Double1DToOct(&retval(2), satElts);
   Double1DToOct(&retval(3), obElts);
   return retval;
}

DEFUN_DLD (RotasComputeObsResiduals_MT, args, nargout, "RotasComputeObsResiduals_MT") {
   double xa_rt_parms[16];
   OctToDouble1D(args(0), 16, xa_rt_parms);

   __int64 obsKey=OctToInt64(args(1));

   __int64 satKey=OctToInt64(args(2));

   double xa_ObsRes[100];

   double satElts[9];

   double obElts[9];

   int retVar = RotasComputeObsResiduals_MT(xa_rt_parms, obsKey, satKey, xa_ObsRes, satElts, obElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_ObsRes);
   Double1DToOct(&retval(2), satElts);
   Double1DToOct(&retval(3), obElts);
   return retval;
}

DEFUN_DLD (RotasComputeObsResidualsMultp_MT, args, nargout, "RotasComputeObsResidualsMultp_MT") {
   int xa_assocMultp[12];
   OctToInt1D(args(0), 12, xa_assocMultp);

   double xa_rt_parms[16];
   OctToDouble1D(args(1), 16, xa_rt_parms);

   __int64 obsKey=OctToInt64(args(2));

   __int64 satKey=OctToInt64(args(3));

   double xa_ObsRes[100];

   double satElts[9];

   double obElts[9];

   int retVar = RotasComputeObsResidualsMultp_MT(xa_assocMultp, xa_rt_parms, obsKey, satKey, xa_ObsRes, satElts, obElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_ObsRes);
   Double1DToOct(&retval(2), satElts);
   Double1DToOct(&retval(3), obElts);
   return retval;
}

DEFUN_DLD (RotasComputeTrackResiduals, args, nargout, "RotasComputeTrackResiduals") {
   int size_obsKeys = OctToInt(args(0));
   __int64 obsKeys[size_obsKeys];
   OctToLong1D(args(1), size_obsKeys, obsKeys);

   int trackStartIdx=OctToInt(args(2));

   int trackLength=OctToInt(args(3));

   __int64 satKey=OctToInt64(args(4));

   double xa_ObsRes[100];

   __int64 trackObsKeys[3];

   char b3ObsCard[512];

   double satElts[9];

   double obElts[9];

   int retVar = RotasComputeTrackResiduals(obsKeys, trackStartIdx, trackLength, satKey, xa_ObsRes, trackObsKeys, b3ObsCard, satElts, obElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_ObsRes);
   Int641DToOct(&retval(2), trackObsKeys);
   retval(3) = octave_value(b3ObsCard);
   Double1DToOct(&retval(4), satElts);
   Double1DToOct(&retval(5), obElts);
   return retval;
}

DEFUN_DLD (RotasComputeTrackResiduals_MT, args, nargout, "RotasComputeTrackResiduals_MT") {
   int xa_assocMultp[12];
   OctToInt1D(args(0), 12, xa_assocMultp);

   double xa_rt_parms[16];
   OctToDouble1D(args(1), 16, xa_rt_parms);

   int size_obsKeys = OctToInt(args(2));
   __int64 obsKeys[size_obsKeys];
   OctToLong1D(args(3), size_obsKeys, obsKeys);

   int trackStartIdx=OctToInt(args(4));

   int trackLength=OctToInt(args(5));

   __int64 satKey=OctToInt64(args(6));

   double xa_ObsRes[100];

   __int64 trackObsKeys[3];

   char b3ObsCard[512];

   double satElts[9];

   double obElts[9];

   int retVar = RotasComputeTrackResiduals_MT(xa_assocMultp, xa_rt_parms, obsKeys, trackStartIdx, trackLength, satKey, xa_ObsRes, trackObsKeys, b3ObsCard, satElts, obElts);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_ObsRes);
   Int641DToOct(&retval(2), trackObsKeys);
   retval(3) = octave_value(b3ObsCard);
   Double1DToOct(&retval(4), satElts);
   Double1DToOct(&retval(5), obElts);
   return retval;
}

DEFUN_DLD (RotasCompObResDirect, args, nargout, "RotasCompObResDirect") {
   double obDataArr[16];
   OctToDouble1D(args(0), 16, obDataArr);

   double satDataArr[16];
   OctToDouble1D(args(1), 16, satDataArr);

   double xa_ObsRes[100];

   int retVar = RotasCompObResDirect(obDataArr, satDataArr, xa_ObsRes);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_ObsRes);
   return retval;
}

DEFUN_DLD (RotasGetRetagObsFile, args, nargout, "RotasGetRetagObsFile") {
   char retagObsFile[512];

   RotasGetRetagObsFile(retagObsFile);

   octave_value_list retval(nargout);
   retval(0) = octave_value(retagObsFile);
   return retval;
}

DEFUN_DLD (RotasSetRetagObsFile, args, nargout, "RotasSetRetagObsFile") {
   char* retagObsFile = OctToString(args(0), 512);

   RotasSetRetagObsFile(retagObsFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

// ========================= End of auto generated code ==========================
