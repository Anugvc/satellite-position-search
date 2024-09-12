// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "ExtEphemDll.h"
   #include "ExtEphemDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadExtEphemDll( )
// [ ] = FreeExtEphemDll( )
// [retVar] = ExtEphInit(apAddr)
// [infoStr[128]] = ExtEphGetInfo()
// [retVar] = ExtEphLoadFile(extEphFile[512])
// [retVar] = ExtEphSaveFile(extEphFile[512], saveMode, saveForm)
// [retVar] = ExtEphRemoveSat(satKey)
// [retVar] = ExtEphRemoveAllSats()
// [retVar] = ExtEphGetCount()
// [satKeys[size_satKeys]] = ExtEphGetLoaded(order, size_satKeys)
// [retVar] = ExtEphAddSat(satNum, epochDs50UTC, ae, ke, coordSys)
// [retVar] = ExtEphAddSatEphem(satKey, ds50UTC, pos[3], vel[3], revNum)
// [retVar] = ExtEphAddSatEphemCovMtx(satKey, ds50UTC, pos[3], vel[3], revNum, covUVW[21])
// [retVar] = ExtEphAddSatEphemExt(satKey, ds50UTC, pos[3], vel[3], revNum, extArr[128])
// [retVar] = ExtEphAddSatFrFile(extEphFile[512])
// [retVar, satNum, satName[8], recName[128], epochDs50UTC, ae, ke, pos[3], vel[3], coordSys, numOfPts, fileLoc[512]] = ExtEphGetAllFields(satKey)
// [retVar, valueStr[512]] = ExtEphGetField(satKey, xf_ExtEph)
// [retVar] = ExtEphSetField(satKey, xf_ExtEph, valueStr[512])
// [retVar, startDs50UTC, endDs50UTC] = ExtEphStartEndTime(satKey)
// [retVar, ds50UTC, pos[3], vel[3], revNum] = ExtEphGetEphemeris(satKey, index)
// [retVar, ds50UTC, pos[3], vel[3], revNum, covMtx[6][6]] = ExtEphGetCovMtx(satKey, index)
// [retVar, ds50UTC, pos[3], vel[3], revNum] = ExtEphMse(satKey, mse)
// [retVar, ds50UTC, pos[3], vel[3], revNum, covMtx[6][6]] = ExtEphMseCovMtx(satKey, mse)
// [retVar, mse, pos[3], vel[3], revNum] = ExtEphDs50UTC(satKey, ds50UTC)
// [retVar, mse, pos[3], vel[3], revNum, covMtx[6][6]] = ExtEphDs50UTCCovMtx(satKey, ds50UTC)
// [retVar, extArr[128]] = ExtEphXten(satKey, xf_getEph, inVal)
// [retVar, line[512]] = ExtEphGetLine(satKey)
// [retVar] = ExtEphGetSatKey(satNum)
// [retVar] = ExtEphFieldsToSatKey(satNum, epochDtg[20])

DEFUN_DLD (LoadExtEphemDll, args, nargout, "Load ExtEphem Library") {
   LoadExtEphemDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeExtEphemDll, args, nargout, "Free ExtEphem Library") {
   FreeExtEphemDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (ExtEphInit, args, nargout, "ExtEphInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = ExtEphInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphGetInfo, args, nargout, "ExtEphGetInfo") {
   char infoStr[128];

   ExtEphGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (ExtEphLoadFile, args, nargout, "ExtEphLoadFile") {
   char* extEphFile = OctToString(args(0), 512);

   int retVar = ExtEphLoadFile(extEphFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphSaveFile, args, nargout, "ExtEphSaveFile") {
   char* extEphFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = ExtEphSaveFile(extEphFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphRemoveSat, args, nargout, "ExtEphRemoveSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = ExtEphRemoveSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphRemoveAllSats, args, nargout, "ExtEphRemoveAllSats") {
   int retVar = ExtEphRemoveAllSats();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphGetCount, args, nargout, "ExtEphGetCount") {
   int retVar = ExtEphGetCount();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphGetLoaded, args, nargout, "ExtEphGetLoaded") {
   int order=OctToInt(args(0));

   int size_satKeys = OctToInt(args(1));
   __int64 satKeys[size_satKeys];

   ExtEphGetLoaded(order, satKeys);

   charMatrix satKeysTemp(dim_vector(size_satKeys,20));
   for (int i = 0; i < size_satKeys; i++) {
      satKeysTemp.insert("                    ",i,0);
      satKeysTemp.insert(Int64ToStr(satKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(satKeysTemp);
   return retval;
}

DEFUN_DLD (ExtEphAddSat, args, nargout, "ExtEphAddSat") {
   int satNum=OctToInt(args(0));

   double epochDs50UTC=OctToDouble(args(1));

   double ae=OctToDouble(args(2));

   double ke=OctToDouble(args(3));

   int coordSys=OctToInt(args(4));

   __int64 retVar = ExtEphAddSat(satNum, epochDs50UTC, ae, ke, coordSys);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (ExtEphAddSatEphem, args, nargout, "ExtEphAddSatEphem") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double pos[3];
   OctToDouble1D(args(2), 3, pos);

   double vel[3];
   OctToDouble1D(args(3), 3, vel);

   int revNum=OctToInt(args(4));

   int retVar = ExtEphAddSatEphem(satKey, ds50UTC, pos, vel, revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphAddSatEphemCovMtx, args, nargout, "ExtEphAddSatEphemCovMtx") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double pos[3];
   OctToDouble1D(args(2), 3, pos);

   double vel[3];
   OctToDouble1D(args(3), 3, vel);

   int revNum=OctToInt(args(4));

   double covUVW[21];
   OctToDouble1D(args(5), 21, covUVW);

   int retVar = ExtEphAddSatEphemCovMtx(satKey, ds50UTC, pos, vel, revNum, covUVW);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphAddSatEphemExt, args, nargout, "ExtEphAddSatEphemExt") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double pos[3];
   OctToDouble1D(args(2), 3, pos);

   double vel[3];
   OctToDouble1D(args(3), 3, vel);

   int revNum=OctToInt(args(4));

   double extArr[128];
   OctToDouble1D(args(5), 128, extArr);

   int retVar = ExtEphAddSatEphemExt(satKey, ds50UTC, pos, vel, revNum, extArr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphAddSatFrFile, args, nargout, "ExtEphAddSatFrFile") {
   char* extEphFile = OctToString(args(0), 512);

   __int64 retVar = ExtEphAddSatFrFile(extEphFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (ExtEphGetAllFields, args, nargout, "ExtEphGetAllFields") {
   __int64 satKey=OctToInt64(args(0));

   int satNum;

   char satName[8];

   char recName[128];

   double epochDs50UTC;

   double ae;

   double ke;

   double pos[3];

   double vel[3];

   int coordSys;

   int numOfPts;

   char fileLoc[512];

   int retVar = ExtEphGetAllFields(satKey, &satNum, satName, recName, &epochDs50UTC, &ae, &ke, pos, vel, &coordSys, &numOfPts, fileLoc);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(satNum);
   retval(2) = octave_value(satName);
   retval(3) = octave_value(recName);
   retval(4) = octave_value(epochDs50UTC);
   retval(5) = octave_value(ae);
   retval(6) = octave_value(ke);
   Double1DToOct(&retval(7), pos);
   Double1DToOct(&retval(8), vel);
   retval(9) = octave_value(coordSys);
   retval(10) = octave_value(numOfPts);
   retval(11) = octave_value(fileLoc);
   return retval;
}

DEFUN_DLD (ExtEphGetField, args, nargout, "ExtEphGetField") {
   __int64 satKey=OctToInt64(args(0));

   int xf_ExtEph=OctToInt(args(1));

   char valueStr[512];

   int retVar = ExtEphGetField(satKey, xf_ExtEph, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(valueStr);
   return retval;
}

DEFUN_DLD (ExtEphSetField, args, nargout, "ExtEphSetField") {
   __int64 satKey=OctToInt64(args(0));

   int xf_ExtEph=OctToInt(args(1));

   char* valueStr = OctToString(args(2), 512);

   int retVar = ExtEphSetField(satKey, xf_ExtEph, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ExtEphStartEndTime, args, nargout, "ExtEphStartEndTime") {
   __int64 satKey=OctToInt64(args(0));

   double startDs50UTC;

   double endDs50UTC;

   int retVar = ExtEphStartEndTime(satKey, &startDs50UTC, &endDs50UTC);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(startDs50UTC);
   retval(2) = octave_value(endDs50UTC);
   return retval;
}

DEFUN_DLD (ExtEphGetEphemeris, args, nargout, "ExtEphGetEphemeris") {
   __int64 satKey=OctToInt64(args(0));

   int index=OctToInt(args(1));

   double ds50UTC;

   double pos[3];

   double vel[3];

   int revNum;

   int retVar = ExtEphGetEphemeris(satKey, index, &ds50UTC, pos, vel, &revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ds50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   retval(4) = octave_value(revNum);
   return retval;
}

DEFUN_DLD (ExtEphGetCovMtx, args, nargout, "ExtEphGetCovMtx") {
   __int64 satKey=OctToInt64(args(0));

   int index=OctToInt(args(1));

   double ds50UTC;

   double pos[3];

   double vel[3];

   int revNum;

   double covMtx[6][6];

   int retVar = ExtEphGetCovMtx(satKey, index, &ds50UTC, pos, vel, &revNum, covMtx);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ds50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   retval(4) = octave_value(revNum);
   Double2DToOct(&retval(5), covMtx);
   return retval;
}

DEFUN_DLD (ExtEphMse, args, nargout, "ExtEphMse") {
   __int64 satKey=OctToInt64(args(0));

   double mse=OctToDouble(args(1));

   double ds50UTC;

   double pos[3];

   double vel[3];

   int revNum;

   int retVar = ExtEphMse(satKey, mse, &ds50UTC, pos, vel, &revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ds50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   retval(4) = octave_value(revNum);
   return retval;
}

DEFUN_DLD (ExtEphMseCovMtx, args, nargout, "ExtEphMseCovMtx") {
   __int64 satKey=OctToInt64(args(0));

   double mse=OctToDouble(args(1));

   double ds50UTC;

   double pos[3];

   double vel[3];

   int revNum;

   double covMtx[6][6];

   int retVar = ExtEphMseCovMtx(satKey, mse, &ds50UTC, pos, vel, &revNum, covMtx);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ds50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   retval(4) = octave_value(revNum);
   Double2DToOct(&retval(5), covMtx);
   return retval;
}

DEFUN_DLD (ExtEphDs50UTC, args, nargout, "ExtEphDs50UTC") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double mse;

   double pos[3];

   double vel[3];

   int revNum;

   int retVar = ExtEphDs50UTC(satKey, ds50UTC, &mse, pos, vel, &revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(mse);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   retval(4) = octave_value(revNum);
   return retval;
}

DEFUN_DLD (ExtEphDs50UTCCovMtx, args, nargout, "ExtEphDs50UTCCovMtx") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double mse;

   double pos[3];

   double vel[3];

   int revNum;

   double covMtx[6][6];

   int retVar = ExtEphDs50UTCCovMtx(satKey, ds50UTC, &mse, pos, vel, &revNum, covMtx);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(mse);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   retval(4) = octave_value(revNum);
   Double2DToOct(&retval(5), covMtx);
   return retval;
}

DEFUN_DLD (ExtEphXten, args, nargout, "ExtEphXten") {
   __int64 satKey=OctToInt64(args(0));

   int xf_getEph=OctToInt(args(1));

   double inVal=OctToDouble(args(2));

   double extArr[128];

   int retVar = ExtEphXten(satKey, xf_getEph, inVal, extArr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), extArr);
   return retval;
}

DEFUN_DLD (ExtEphGetLine, args, nargout, "ExtEphGetLine") {
   __int64 satKey=OctToInt64(args(0));

   char line[512];

   int retVar = ExtEphGetLine(satKey, line);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(line);
   return retval;
}

DEFUN_DLD (ExtEphGetSatKey, args, nargout, "ExtEphGetSatKey") {
   int satNum=OctToInt(args(0));

   __int64 retVar = ExtEphGetSatKey(satNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (ExtEphFieldsToSatKey, args, nargout, "ExtEphFieldsToSatKey") {
   int satNum=OctToInt(args(0));

   char* epochDtg = OctToString(args(1), 20);

   __int64 retVar = ExtEphFieldsToSatKey(satNum, epochDtg);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

// ========================= End of auto generated code ==========================
