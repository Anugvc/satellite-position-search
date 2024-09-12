// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "SatStateDll.h"
   #include "SatStateDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadSatStateDll( )
// [ ] = FreeSatStateDll( )
// [retVar] = SatStateInit(apAddr)
// [infoStr[128]] = SatStateGetInfo()
// [retVar] = SatStateLoadFile(inputFile[512], xf_Task)
// [retVar] = SatStateSaveFile(outFile[512], saveMode, saveForm, xf_Task)
// [retVar] = SatStateRemoveSat(satKey)
// [retVar] = SatStateRemoveSatAll(satKey)
// [retVar] = SatStateRemoveAllSats()
// [] = SatStateReset()
// [retVar] = SatStateGetCount()
// [satKeys[size_satKeys]] = SatStateGetLoaded(order, size_satKeys)
// [retVar] = SatStateNumToKey(satNum)
// [retVar, satNum, satName[8], eltType, revNum, epochDs50UTC, bField, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, period, perigeeHt, apogeeHt, perigee, apogee, a] = SatStateGetSatDataAll(satKey)
// [retVar, retVal[512]] = SatStateGetSatDataField(satKey, xf_Sat)
// [retVar] = SatStateInitSat(satKey)
// [retVar, ds50UTC, revNum, pos[3], vel[3], llh[3]] = SatStateMse(satKey, mse)
// [retVar, mse, revNum, pos[3], vel[3], llh[3]] = SatStateDs50UTC(satKey, ds50UTC)
// [retVar, destArr[128]] = SatStateGetPropOut(satKey, index)
// [retVar, xa_Delta[100]] = SatStateEphCom(primSatKey, secSatKey, ds50UTC, uvwFlag)
// [xa_Delta[100]] = SatStateEphCom_OS(priPosVel[6], secPosVel[6], ds50UTC, uvwFlag)
// [retVar] = SatStateHasCovMtx(satKey)
// [retVar, covUVW[6][6]] = SatStateGetCovUVW(satKey, ds50UTC)
// [retVar] = SatStateGenEphFile(satKey, startDs50UTC, stopDs50UTC, stepSizeSecs, ephFileName[512], ephFileType)
// [retVar] = GetNodalCrossingPriorToTime(satKey, ds50TAI)
// [xa_gobs[32], errCode] = GetGobsParams(satKey, ds50UTC)
// [retVar, xa_gobs_delta[16]] = GobsCom(primSatKey, secSatKey, ds50UTC, xa_gobs_lim[16])
// [xa_gobs_delta[16]] = GobsComArr(xa_gobs_prim[32], xa_gobs_sec[32], xa_gobs_lim[16])

DEFUN_DLD (LoadSatStateDll, args, nargout, "Load SatState Library") {
   LoadSatStateDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeSatStateDll, args, nargout, "Free SatState Library") {
   FreeSatStateDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (SatStateInit, args, nargout, "SatStateInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = SatStateInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatStateGetInfo, args, nargout, "SatStateGetInfo") {
   char infoStr[128];

   SatStateGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (SatStateLoadFile, args, nargout, "SatStateLoadFile") {
   char* inputFile = OctToString(args(0), 512);

   int xf_Task=OctToInt(args(1));

   int retVar = SatStateLoadFile(inputFile, xf_Task);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatStateSaveFile, args, nargout, "SatStateSaveFile") {
   char* outFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int xf_Task=OctToInt(args(3));

   int retVar = SatStateSaveFile(outFile, saveMode, saveForm, xf_Task);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatStateRemoveSat, args, nargout, "SatStateRemoveSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = SatStateRemoveSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatStateRemoveSatAll, args, nargout, "SatStateRemoveSatAll") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = SatStateRemoveSatAll(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatStateRemoveAllSats, args, nargout, "SatStateRemoveAllSats") {
   int retVar = SatStateRemoveAllSats();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatStateReset, args, nargout, "SatStateReset") {
   SatStateReset();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (SatStateGetCount, args, nargout, "SatStateGetCount") {
   int retVar = SatStateGetCount();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatStateGetLoaded, args, nargout, "SatStateGetLoaded") {
   int order=OctToInt(args(0));

   int size_satKeys = OctToInt(args(1));
   __int64 satKeys[size_satKeys];

   SatStateGetLoaded(order, satKeys);

   charMatrix satKeysTemp(dim_vector(size_satKeys,20));
   for (int i = 0; i < size_satKeys; i++) {
      satKeysTemp.insert("                    ",i,0);
      satKeysTemp.insert(Int64ToStr(satKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(satKeysTemp);
   return retval;
}

DEFUN_DLD (SatStateNumToKey, args, nargout, "SatStateNumToKey") {
   int satNum=OctToInt(args(0));

   __int64 retVar = SatStateNumToKey(satNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (SatStateGetSatDataAll, args, nargout, "SatStateGetSatDataAll") {
   __int64 satKey=OctToInt64(args(0));

   int satNum;

   char satName[8];

   int eltType;

   int revNum;

   double epochDs50UTC;

   double bField;

   int elsetNum;

   double incli;

   double node;

   double eccen;

   double omega;

   double mnAnomaly;

   double mnMotion;

   double period;

   double perigeeHt;

   double apogeeHt;

   double perigee;

   double apogee;

   double a;

   int retVar = SatStateGetSatDataAll(satKey, &satNum, satName, &eltType, &revNum, &epochDs50UTC, &bField, &elsetNum, &incli, &node, &eccen, &omega, &mnAnomaly, &mnMotion, &period, &perigeeHt, &apogeeHt, &perigee, &apogee, &a);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(satNum);
   retval(2) = octave_value(satName);
   retval(3) = octave_value(eltType);
   retval(4) = octave_value(revNum);
   retval(5) = octave_value(epochDs50UTC);
   retval(6) = octave_value(bField);
   retval(7) = octave_value(elsetNum);
   retval(8) = octave_value(incli);
   retval(9) = octave_value(node);
   retval(10) = octave_value(eccen);
   retval(11) = octave_value(omega);
   retval(12) = octave_value(mnAnomaly);
   retval(13) = octave_value(mnMotion);
   retval(14) = octave_value(period);
   retval(15) = octave_value(perigeeHt);
   retval(16) = octave_value(apogeeHt);
   retval(17) = octave_value(perigee);
   retval(18) = octave_value(apogee);
   retval(19) = octave_value(a);
   return retval;
}

DEFUN_DLD (SatStateGetSatDataField, args, nargout, "SatStateGetSatDataField") {
   __int64 satKey=OctToInt64(args(0));

   int xf_Sat=OctToInt(args(1));

   char retVal[512];

   int retVar = SatStateGetSatDataField(satKey, xf_Sat, retVal);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(retVal);
   return retval;
}

DEFUN_DLD (SatStateInitSat, args, nargout, "SatStateInitSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = SatStateInitSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatStateMse, args, nargout, "SatStateMse") {
   __int64 satKey=OctToInt64(args(0));

   double mse=OctToDouble(args(1));

   double ds50UTC;

   int revNum;

   double pos[3];

   double vel[3];

   double llh[3];

   int retVar = SatStateMse(satKey, mse, &ds50UTC, &revNum, pos, vel, llh);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ds50UTC);
   retval(2) = octave_value(revNum);
   Double1DToOct(&retval(3), pos);
   Double1DToOct(&retval(4), vel);
   Double1DToOct(&retval(5), llh);
   return retval;
}

DEFUN_DLD (SatStateDs50UTC, args, nargout, "SatStateDs50UTC") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double mse;

   int revNum;

   double pos[3];

   double vel[3];

   double llh[3];

   int retVar = SatStateDs50UTC(satKey, ds50UTC, &mse, &revNum, pos, vel, llh);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(mse);
   retval(2) = octave_value(revNum);
   Double1DToOct(&retval(3), pos);
   Double1DToOct(&retval(4), vel);
   Double1DToOct(&retval(5), llh);
   return retval;
}

DEFUN_DLD (SatStateGetPropOut, args, nargout, "SatStateGetPropOut") {
   __int64 satKey=OctToInt64(args(0));

   int index=OctToInt(args(1));

   double destArr[128];

   int retVar = SatStateGetPropOut(satKey, index, destArr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), destArr);
   return retval;
}

DEFUN_DLD (SatStateEphCom, args, nargout, "SatStateEphCom") {
   __int64 primSatKey=OctToInt64(args(0));

   __int64 secSatKey=OctToInt64(args(1));

   double ds50UTC=OctToDouble(args(2));

   int uvwFlag=OctToInt(args(3));

   double xa_Delta[100];

   int retVar = SatStateEphCom(primSatKey, secSatKey, ds50UTC, uvwFlag, xa_Delta);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_Delta);
   return retval;
}

DEFUN_DLD (SatStateEphCom_OS, args, nargout, "SatStateEphCom_OS") {
   double priPosVel[6];
   OctToDouble1D(args(0), 6, priPosVel);

   double secPosVel[6];
   OctToDouble1D(args(1), 6, secPosVel);

   double ds50UTC=OctToDouble(args(2));

   int uvwFlag=OctToInt(args(3));

   double xa_Delta[100];

   SatStateEphCom_OS(priPosVel, secPosVel, ds50UTC, uvwFlag, xa_Delta);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_Delta);
   return retval;
}

DEFUN_DLD (SatStateHasCovMtx, args, nargout, "SatStateHasCovMtx") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = SatStateHasCovMtx(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatStateGetCovUVW, args, nargout, "SatStateGetCovUVW") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double covUVW[6][6];

   int retVar = SatStateGetCovUVW(satKey, ds50UTC, covUVW);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double2DToOct(&retval(1), covUVW);
   return retval;
}

DEFUN_DLD (SatStateGenEphFile, args, nargout, "SatStateGenEphFile") {
   __int64 satKey=OctToInt64(args(0));

   double startDs50UTC=OctToDouble(args(1));

   double stopDs50UTC=OctToDouble(args(2));

   double stepSizeSecs=OctToDouble(args(3));

   char* ephFileName = OctToString(args(4), 512);

   int ephFileType=OctToInt(args(5));

   int retVar = SatStateGenEphFile(satKey, startDs50UTC, stopDs50UTC, stepSizeSecs, ephFileName, ephFileType);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (GetNodalCrossingPriorToTime, args, nargout, "GetNodalCrossingPriorToTime") {
   __int64 satKey=OctToInt64(args(0));

   double ds50TAI=OctToDouble(args(1));

   double retVar = GetNodalCrossingPriorToTime(satKey, ds50TAI);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (GetGobsParams, args, nargout, "GetGobsParams") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double xa_gobs[32];

   int errCode;

   GetGobsParams(satKey, ds50UTC, xa_gobs, &errCode);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_gobs);
   retval(1) = octave_value(errCode);
   return retval;
}

DEFUN_DLD (GobsCom, args, nargout, "GobsCom") {
   __int64 primSatKey=OctToInt64(args(0));

   __int64 secSatKey=OctToInt64(args(1));

   double ds50UTC=OctToDouble(args(2));

   double xa_gobs_lim[16];
   OctToDouble1D(args(3), 16, xa_gobs_lim);

   double xa_gobs_delta[16];

   int retVar = GobsCom(primSatKey, secSatKey, ds50UTC, xa_gobs_lim, xa_gobs_delta);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_gobs_delta);
   return retval;
}

DEFUN_DLD (GobsComArr, args, nargout, "GobsComArr") {
   double xa_gobs_prim[32];
   OctToDouble1D(args(0), 32, xa_gobs_prim);

   double xa_gobs_sec[32];
   OctToDouble1D(args(1), 32, xa_gobs_sec);

   double xa_gobs_lim[16];
   OctToDouble1D(args(2), 16, xa_gobs_lim);

   double xa_gobs_delta[16];

   GobsComArr(xa_gobs_prim, xa_gobs_sec, xa_gobs_lim, xa_gobs_delta);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_gobs_delta);
   return retval;
}

// ========================= End of auto generated code ==========================
