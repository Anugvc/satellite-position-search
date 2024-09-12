// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "SpVecDll.h"
   #include "SpVecDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadSpVecDll( )
// [ ] = FreeSpVecDll( )
// [retVar] = SpVecInit(apAddr)
// [infoStr[128]] = SpVecGetInfo()
// [retVar] = SpVecLoadFile(spVecFile[512])
// [retVar] = SpVecSaveFile(spVecFile[512], saveMode, saveForm)
// [retVar] = SpVecRemoveSat(satKey)
// [retVar] = SpVecRemoveAllSats()
// [retVar] = SpVecGetCount()
// [satKeys[size_satKeys]] = SpVecGetLoaded(order, size_satKeys)
// [retVar] = SpVecAddSatFrLines(line1[512], line2[512])
// [satKey] = SpVecAddSatFrLinesML(line1[512], line2[512])
// [retVar] = SpVecAddSatFrFields(pos[3], vel[3], secClass, satNum, satName[8], epochDtg[17], revNum, elsetNum, bterm, agom, ogParm, coordSys[5])
// [satKey] = SpVecAddSatFrFieldsML(pos[3], vel[3], secClass, satNum, satName[8], epochDtg[17], revNum, elsetNum, bterm, agom, ogParm, coordSys[5])
// [retVar] = SpVecUpdateSatFrFields(satKey, pos[3], vel[3], secClass, satName[8], revNum, elsetNum, bterm, agom, ogParm, coordSys[5])
// [retVar, valueStr[512]] = SpVecGetField(satKey, xf_SpVec)
// [retVar] = SpVecSetField(satKey, xf_SpVec, valueStr[512])
// [retVar, pos[3], vel[3], secClass, satNum, satName[8], epochDtg[17], revNum, elsetNum, bterm, agom, ogParm, coordSys[5]] = SpVecGetAllFields(satKey)
// [retVar, pos[3], vel[3], secClass, satNum, satName[8], epochDtg[17], revNum, elsetNum, bterm, agom, ogParm, coordSys[5]] = SpVecParse(line1[512], line2[512])
// [retVar, xa_spVec[512], xs_spVec[512]] = SpVecLinesToArray(line1[512], line2[512])
// [retVar, line1[512], line2[512]] = SpVecGetLines(satKey)
// [line1[512], line2[512]] = SpVecFieldsToLines(pos[3], vel[3], secClass, satNum, satName[8], epochDtg[17], revNum, elsetNum, bterm, agom, ogParm, coordSys[5])
// [line1[512], line2[512]] = SpVecArrayToLines(xa_spVec[512], xs_spVec[512])
// [retVar] = SpVecGetSatKey(satNum)
// [satKey] = SpVecGetSatKeyML(satNum)
// [retVar] = SpVecFieldsToSatKey(satNum, epochDtg[20])
// [satKey] = SpVecFieldsToSatKeyML(satNum, epochDtg[20])
// [retVar] = SpVecAddSatFrArray(xa_spVec[512], xs_spVec[512])
// [satKey] = SpVecAddSatFrArrayML(xa_spVec[512], xs_spVec[512])
// [retVar] = SpVecUpdateSatFrArray(satKey, xa_spVec[512], xs_spVec[512])
// [retVar, xa_spVec[512], xs_spVec[512]] = SpVecDataToArray(satKey)

DEFUN_DLD (LoadSpVecDll, args, nargout, "Load SpVec Library") {
   LoadSpVecDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeSpVecDll, args, nargout, "Free SpVec Library") {
   FreeSpVecDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (SpVecInit, args, nargout, "SpVecInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = SpVecInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpVecGetInfo, args, nargout, "SpVecGetInfo") {
   char infoStr[128];

   SpVecGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (SpVecLoadFile, args, nargout, "SpVecLoadFile") {
   char* spVecFile = OctToString(args(0), 512);

   int retVar = SpVecLoadFile(spVecFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpVecSaveFile, args, nargout, "SpVecSaveFile") {
   char* spVecFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = SpVecSaveFile(spVecFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpVecRemoveSat, args, nargout, "SpVecRemoveSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = SpVecRemoveSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpVecRemoveAllSats, args, nargout, "SpVecRemoveAllSats") {
   int retVar = SpVecRemoveAllSats();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpVecGetCount, args, nargout, "SpVecGetCount") {
   int retVar = SpVecGetCount();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpVecGetLoaded, args, nargout, "SpVecGetLoaded") {
   int order=OctToInt(args(0));

   int size_satKeys = OctToInt(args(1));
   __int64 satKeys[size_satKeys];

   SpVecGetLoaded(order, satKeys);

   charMatrix satKeysTemp(dim_vector(size_satKeys,20));
   for (int i = 0; i < size_satKeys; i++) {
      satKeysTemp.insert("                    ",i,0);
      satKeysTemp.insert(Int64ToStr(satKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(satKeysTemp);
   return retval;
}

DEFUN_DLD (SpVecAddSatFrLines, args, nargout, "SpVecAddSatFrLines") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   __int64 retVar = SpVecAddSatFrLines(line1, line2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (SpVecAddSatFrLinesML, args, nargout, "SpVecAddSatFrLinesML") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   __int64 satKey;

   SpVecAddSatFrLinesML(line1, line2, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (SpVecAddSatFrFields, args, nargout, "SpVecAddSatFrFields") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   char secClass=OctToChar(args(2));

   int satNum=OctToInt(args(3));

   char* satName = OctToString(args(4), 8);

   char* epochDtg = OctToString(args(5), 17);

   int revNum=OctToInt(args(6));

   int elsetNum=OctToInt(args(7));

   double bterm=OctToDouble(args(8));

   double agom=OctToDouble(args(9));

   double ogParm=OctToDouble(args(10));

   char* coordSys = OctToString(args(11), 5);

   __int64 retVar = SpVecAddSatFrFields(pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (SpVecAddSatFrFieldsML, args, nargout, "SpVecAddSatFrFieldsML") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   char secClass=OctToChar(args(2));

   int satNum=OctToInt(args(3));

   char* satName = OctToString(args(4), 8);

   char* epochDtg = OctToString(args(5), 17);

   int revNum=OctToInt(args(6));

   int elsetNum=OctToInt(args(7));

   double bterm=OctToDouble(args(8));

   double agom=OctToDouble(args(9));

   double ogParm=OctToDouble(args(10));

   char* coordSys = OctToString(args(11), 5);

   __int64 satKey;

   SpVecAddSatFrFieldsML(pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (SpVecUpdateSatFrFields, args, nargout, "SpVecUpdateSatFrFields") {
   __int64 satKey=OctToInt64(args(0));

   double pos[3];
   OctToDouble1D(args(1), 3, pos);

   double vel[3];
   OctToDouble1D(args(2), 3, vel);

   char secClass=OctToChar(args(3));

   char* satName = OctToString(args(4), 8);

   int revNum=OctToInt(args(5));

   int elsetNum=OctToInt(args(6));

   double bterm=OctToDouble(args(7));

   double agom=OctToDouble(args(8));

   double ogParm=OctToDouble(args(9));

   char* coordSys = OctToString(args(10), 5);

   int retVar = SpVecUpdateSatFrFields(satKey, pos, vel, secClass, satName, revNum, elsetNum, bterm, agom, ogParm, coordSys);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpVecGetField, args, nargout, "SpVecGetField") {
   __int64 satKey=OctToInt64(args(0));

   int xf_SpVec=OctToInt(args(1));

   char valueStr[512];

   int retVar = SpVecGetField(satKey, xf_SpVec, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(valueStr);
   return retval;
}

DEFUN_DLD (SpVecSetField, args, nargout, "SpVecSetField") {
   __int64 satKey=OctToInt64(args(0));

   int xf_SpVec=OctToInt(args(1));

   char* valueStr = OctToString(args(2), 512);

   int retVar = SpVecSetField(satKey, xf_SpVec, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpVecGetAllFields, args, nargout, "SpVecGetAllFields") {
   __int64 satKey=OctToInt64(args(0));

   double pos[3];

   double vel[3];

   char secClass;

   int satNum;

   char satName[8];

   char epochDtg[17];

   int revNum;

   int elsetNum;

   double bterm;

   double agom;

   double ogParm;

   char coordSys[5];

   int retVar = SpVecGetAllFields(satKey, pos, vel, &secClass, &satNum, satName, epochDtg, &revNum, &elsetNum, &bterm, &agom, &ogParm, coordSys);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), pos);
   Double1DToOct(&retval(2), vel);
   retval(3) = octave_value(secClass);
   retval(4) = octave_value(satNum);
   retval(5) = octave_value(satName);
   retval(6) = octave_value(epochDtg);
   retval(7) = octave_value(revNum);
   retval(8) = octave_value(elsetNum);
   retval(9) = octave_value(bterm);
   retval(10) = octave_value(agom);
   retval(11) = octave_value(ogParm);
   retval(12) = octave_value(coordSys);
   return retval;
}

DEFUN_DLD (SpVecParse, args, nargout, "SpVecParse") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   double pos[3];

   double vel[3];

   char secClass;

   int satNum;

   char satName[8];

   char epochDtg[17];

   int revNum;

   int elsetNum;

   double bterm;

   double agom;

   double ogParm;

   char coordSys[5];

   int retVar = SpVecParse(line1, line2, pos, vel, &secClass, &satNum, satName, epochDtg, &revNum, &elsetNum, &bterm, &agom, &ogParm, coordSys);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), pos);
   Double1DToOct(&retval(2), vel);
   retval(3) = octave_value(secClass);
   retval(4) = octave_value(satNum);
   retval(5) = octave_value(satName);
   retval(6) = octave_value(epochDtg);
   retval(7) = octave_value(revNum);
   retval(8) = octave_value(elsetNum);
   retval(9) = octave_value(bterm);
   retval(10) = octave_value(agom);
   retval(11) = octave_value(ogParm);
   retval(12) = octave_value(coordSys);
   return retval;
}

DEFUN_DLD (SpVecLinesToArray, args, nargout, "SpVecLinesToArray") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   double xa_spVec[512];

   char xs_spVec[512];

   int retVar = SpVecLinesToArray(line1, line2, xa_spVec, xs_spVec);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_spVec);
   retval(2) = octave_value(xs_spVec);
   return retval;
}

DEFUN_DLD (SpVecGetLines, args, nargout, "SpVecGetLines") {
   __int64 satKey=OctToInt64(args(0));

   char line1[512];

   char line2[512];

   int retVar = SpVecGetLines(satKey, line1, line2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(line1);
   retval(2) = octave_value(line2);
   return retval;
}

DEFUN_DLD (SpVecFieldsToLines, args, nargout, "SpVecFieldsToLines") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   char secClass=OctToChar(args(2));

   int satNum=OctToInt(args(3));

   char* satName = OctToString(args(4), 8);

   char* epochDtg = OctToString(args(5), 17);

   int revNum=OctToInt(args(6));

   int elsetNum=OctToInt(args(7));

   double bterm=OctToDouble(args(8));

   double agom=OctToDouble(args(9));

   double ogParm=OctToDouble(args(10));

   char* coordSys = OctToString(args(11), 5);

   char line1[512];

   char line2[512];

   SpVecFieldsToLines(pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys, line1, line2);

   octave_value_list retval(nargout);
   retval(0) = octave_value(line1);
   retval(1) = octave_value(line2);
   return retval;
}

DEFUN_DLD (SpVecArrayToLines, args, nargout, "SpVecArrayToLines") {
   double xa_spVec[512];
   OctToDouble1D(args(0), 512, xa_spVec);

   char* xs_spVec = OctToString(args(1), 512);

   char line1[512];

   char line2[512];

   SpVecArrayToLines(xa_spVec, xs_spVec, line1, line2);

   octave_value_list retval(nargout);
   retval(0) = octave_value(line1);
   retval(1) = octave_value(line2);
   return retval;
}

DEFUN_DLD (SpVecGetSatKey, args, nargout, "SpVecGetSatKey") {
   int satNum=OctToInt(args(0));

   __int64 retVar = SpVecGetSatKey(satNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (SpVecGetSatKeyML, args, nargout, "SpVecGetSatKeyML") {
   int satNum=OctToInt(args(0));

   __int64 satKey;

   SpVecGetSatKeyML(satNum, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (SpVecFieldsToSatKey, args, nargout, "SpVecFieldsToSatKey") {
   int satNum=OctToInt(args(0));

   char* epochDtg = OctToString(args(1), 20);

   __int64 retVar = SpVecFieldsToSatKey(satNum, epochDtg);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (SpVecFieldsToSatKeyML, args, nargout, "SpVecFieldsToSatKeyML") {
   int satNum=OctToInt(args(0));

   char* epochDtg = OctToString(args(1), 20);

   __int64 satKey;

   SpVecFieldsToSatKeyML(satNum, epochDtg, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (SpVecAddSatFrArray, args, nargout, "SpVecAddSatFrArray") {
   double xa_spVec[512];
   OctToDouble1D(args(0), 512, xa_spVec);

   char* xs_spVec = OctToString(args(1), 512);

   __int64 retVar = SpVecAddSatFrArray(xa_spVec, xs_spVec);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (SpVecAddSatFrArrayML, args, nargout, "SpVecAddSatFrArrayML") {
   double xa_spVec[512];
   OctToDouble1D(args(0), 512, xa_spVec);

   char* xs_spVec = OctToString(args(1), 512);

   __int64 satKey;

   SpVecAddSatFrArrayML(xa_spVec, xs_spVec, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (SpVecUpdateSatFrArray, args, nargout, "SpVecUpdateSatFrArray") {
   __int64 satKey=OctToInt64(args(0));

   double xa_spVec[512];
   OctToDouble1D(args(1), 512, xa_spVec);

   char* xs_spVec = OctToString(args(2), 512);

   int retVar = SpVecUpdateSatFrArray(satKey, xa_spVec, xs_spVec);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SpVecDataToArray, args, nargout, "SpVecDataToArray") {
   __int64 satKey=OctToInt64(args(0));

   double xa_spVec[512];

   char xs_spVec[512];

   int retVar = SpVecDataToArray(satKey, xa_spVec, xs_spVec);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_spVec);
   retval(2) = octave_value(xs_spVec);
   return retval;
}

// ========================= End of auto generated code ==========================
