// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "SensorDll.h"
   #include "SensorDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadSensorDll( )
// [ ] = FreeSensorDll( )
// [retVar] = SensorInit(apAddr)
// [infoStr[128]] = SensorGetInfo()
// [retVar] = SensorLoadFile(senFile[512])
// [retVar] = SensorLoadCard(card[512])
// [retVar] = SensorSaveFile(sensorFile[512], saveMode, saveForm)
// [retVar] = SensorRemove(senKey)
// [retVar] = SensorRemoveAll()
// [retVar] = SensorGetCount()
// [senKeys[size_senKeys]] = SensorGetLoaded(order, size_senKeys)
// [retVar, astroLat, astroLon, senPos[3], senDesc[24], orbSatNum, secClass] = SensorGetLocAll(senKey)
// [retVar] = SensorSetLocAll(senKey, astroLat, astroLon, senPos[3], senDesc[24], orbSatNum, secClass)
// [retVar, strValue[512]] = SensorGetLocField(senKey, xf_SenLoc)
// [retVar] = SensorSetLocField(senKey, xf_SenLoc, strValue[512])
// [retVar, viewType, obsType, rngUnits, maxRngLim, boresight1, elLim1, elLim2, azLim1, azLim2, interval, visFlg, rngLimFlg, maxPPP, minRngLim, plntryRes, rrLim] = SensorGet1L(senKey)
// [retVar] = SensorSet1L(senKey, viewType, obsType, rngUnits, maxRngLim, boresight1, elLim1, elLim2, azLim1, azLim2, interval, visFlg, rngLimFlg, maxPPP, minRngLim, plntryRes, rrLim)
// [retVar, boresight2, elLim3, elLim4, azLim3, azLim4, earthBckgrnd, earthLimb, solarXAngle, lunarXAngle, minIllum, twilit] = SensorGet2L(senKey)
// [retVar] = SensorSet2L(senKey, boresight2, elLim3, elLim4, azLim3, azLim4, earthBckgrnd, earthLimb, solarXAngle, lunarXAngle, minIllum, twilit)
// [retVar, strValue[512]] = SensorGetLimField(senKey, xf_SenLim)
// [retVar] = SensorSetLimField(senKey, xf_SenLim, strValue[512])
// [retVar, xaf_senbs[16]] = SensorGetBS(senKey)
// [retVar] = SensorSetBS(senKey, xaf_senbs[16])
// [retVar, strValue[512]] = SensorGetBSField(senKey, xaf_senbs)
// [retVar] = SensorSetBSField(senKey, xaf_senbs, strValue[512])
// [retVar, sCard[512], l1Card[512], l2Card[512]] = SensorGetLines(senKey)
// [retVar, orbSatKey] = SensorGetOrbSatKey(senKey)
// [retVar] = SensorSetOrbSatKey(senKey, orbSatKey)
// [retVar] = SensorLoadAzElTable(senKey, azElTableFile[512])
// [retVar] = SensorAddSegment(senKey, segType, xa_seg[16])
// [retVar, segType, xa_seg[16]] = SensorGetSegment(senKey, segNum)
// [retVar] = SetSenKeyMode(sen_keyMode)
// [retVar] = GetSenKeyMode()
// [retVar] = SenNumOf(senKey)
// [retVar] = SensorGetSenKey(senNum)
// [senKey] = SensorGetSenKeyML(senNum)
// [retVar] = SensorAddFrArray(xa_sen[128], xs_sen[512])
// [retVar, xa_sen[128], xs_sen[512]] = SensorDataToArray(senKey)

DEFUN_DLD (LoadSensorDll, args, nargout, "Load Sensor Library") {
   LoadSensorDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeSensorDll, args, nargout, "Free Sensor Library") {
   FreeSensorDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (SensorInit, args, nargout, "SensorInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = SensorInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetInfo, args, nargout, "SensorGetInfo") {
   char infoStr[128];

   SensorGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (SensorLoadFile, args, nargout, "SensorLoadFile") {
   char* senFile = OctToString(args(0), 512);

   int retVar = SensorLoadFile(senFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorLoadCard, args, nargout, "SensorLoadCard") {
   char* card = OctToString(args(0), 512);

   int retVar = SensorLoadCard(card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorSaveFile, args, nargout, "SensorSaveFile") {
   char* sensorFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = SensorSaveFile(sensorFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorRemove, args, nargout, "SensorRemove") {
   __int64 senKey=OctToInt64(args(0));

   int retVar = SensorRemove(senKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorRemoveAll, args, nargout, "SensorRemoveAll") {
   int retVar = SensorRemoveAll();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetCount, args, nargout, "SensorGetCount") {
   int retVar = SensorGetCount();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetLoaded, args, nargout, "SensorGetLoaded") {
   int order=OctToInt(args(0));

   int size_senKeys = OctToInt(args(1));
   __int64 senKeys[size_senKeys];

   SensorGetLoaded(order, senKeys);

   charMatrix senKeysTemp(dim_vector(size_senKeys,20));
   for (int i = 0; i < size_senKeys; i++) {
      senKeysTemp.insert("                    ",i,0);
      senKeysTemp.insert(Int64ToStr(senKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(senKeysTemp);
   return retval;
}

DEFUN_DLD (SensorGetLocAll, args, nargout, "SensorGetLocAll") {
   __int64 senKey=OctToInt64(args(0));

   double astroLat;

   double astroLon;

   double senPos[3];

   char senDesc[24];

   int orbSatNum;

   char secClass;

   int retVar = SensorGetLocAll(senKey, &astroLat, &astroLon, senPos, senDesc, &orbSatNum, &secClass);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(astroLat);
   retval(2) = octave_value(astroLon);
   Double1DToOct(&retval(3), senPos);
   retval(4) = octave_value(senDesc);
   retval(5) = octave_value(orbSatNum);
   retval(6) = octave_value(secClass);
   return retval;
}

DEFUN_DLD (SensorSetLocAll, args, nargout, "SensorSetLocAll") {
   __int64 senKey=OctToInt64(args(0));

   double astroLat=OctToDouble(args(1));

   double astroLon=OctToDouble(args(2));

   double senPos[3];
   OctToDouble1D(args(3), 3, senPos);

   char* senDesc = OctToString(args(4), 24);

   int orbSatNum=OctToInt(args(5));

   char secClass=OctToChar(args(6));

   int retVar = SensorSetLocAll(senKey, astroLat, astroLon, senPos, senDesc, orbSatNum, secClass);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetLocField, args, nargout, "SensorGetLocField") {
   __int64 senKey=OctToInt64(args(0));

   int xf_SenLoc=OctToInt(args(1));

   char strValue[512];

   int retVar = SensorGetLocField(senKey, xf_SenLoc, strValue);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(strValue);
   return retval;
}

DEFUN_DLD (SensorSetLocField, args, nargout, "SensorSetLocField") {
   __int64 senKey=OctToInt64(args(0));

   int xf_SenLoc=OctToInt(args(1));

   char* strValue = OctToString(args(2), 512);

   int retVar = SensorSetLocField(senKey, xf_SenLoc, strValue);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGet1L, args, nargout, "SensorGet1L") {
   __int64 senKey=OctToInt64(args(0));

   char viewType;

   char obsType;

   int rngUnits;

   double maxRngLim;

   char boresight1;

   double elLim1;

   double elLim2;

   double azLim1;

   double azLim2;

   double interval;

   int visFlg;

   int rngLimFlg;

   int maxPPP;

   double minRngLim;

   int plntryRes;

   double rrLim;

   int retVar = SensorGet1L(senKey, &viewType, &obsType, &rngUnits, &maxRngLim, &boresight1, &elLim1, &elLim2, &azLim1, &azLim2, &interval, &visFlg, &rngLimFlg, &maxPPP, &minRngLim, &plntryRes, &rrLim);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(viewType);
   retval(2) = octave_value(obsType);
   retval(3) = octave_value(rngUnits);
   retval(4) = octave_value(maxRngLim);
   retval(5) = octave_value(boresight1);
   retval(6) = octave_value(elLim1);
   retval(7) = octave_value(elLim2);
   retval(8) = octave_value(azLim1);
   retval(9) = octave_value(azLim2);
   retval(10) = octave_value(interval);
   retval(11) = octave_value(visFlg);
   retval(12) = octave_value(rngLimFlg);
   retval(13) = octave_value(maxPPP);
   retval(14) = octave_value(minRngLim);
   retval(15) = octave_value(plntryRes);
   retval(16) = octave_value(rrLim);
   return retval;
}

DEFUN_DLD (SensorSet1L, args, nargout, "SensorSet1L") {
   __int64 senKey=OctToInt64(args(0));

   char viewType=OctToChar(args(1));

   char obsType=OctToChar(args(2));

   int rngUnits=OctToInt(args(3));

   double maxRngLim=OctToDouble(args(4));

   char boresight1=OctToChar(args(5));

   double elLim1=OctToDouble(args(6));

   double elLim2=OctToDouble(args(7));

   double azLim1=OctToDouble(args(8));

   double azLim2=OctToDouble(args(9));

   double interval=OctToDouble(args(10));

   int visFlg=OctToInt(args(11));

   int rngLimFlg=OctToInt(args(12));

   int maxPPP=OctToInt(args(13));

   double minRngLim=OctToDouble(args(14));

   int plntryRes=OctToInt(args(15));

   double rrLim=OctToDouble(args(16));

   int retVar = SensorSet1L(senKey, viewType, obsType, rngUnits, maxRngLim, boresight1, elLim1, elLim2, azLim1, azLim2, interval, visFlg, rngLimFlg, maxPPP, minRngLim, plntryRes, rrLim);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGet2L, args, nargout, "SensorGet2L") {
   __int64 senKey=OctToInt64(args(0));

   char boresight2;

   double elLim3;

   double elLim4;

   double azLim3;

   double azLim4;

   int earthBckgrnd;

   double earthLimb;

   double solarXAngle;

   double lunarXAngle;

   double minIllum;

   double twilit;

   int retVar = SensorGet2L(senKey, &boresight2, &elLim3, &elLim4, &azLim3, &azLim4, &earthBckgrnd, &earthLimb, &solarXAngle, &lunarXAngle, &minIllum, &twilit);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(boresight2);
   retval(2) = octave_value(elLim3);
   retval(3) = octave_value(elLim4);
   retval(4) = octave_value(azLim3);
   retval(5) = octave_value(azLim4);
   retval(6) = octave_value(earthBckgrnd);
   retval(7) = octave_value(earthLimb);
   retval(8) = octave_value(solarXAngle);
   retval(9) = octave_value(lunarXAngle);
   retval(10) = octave_value(minIllum);
   retval(11) = octave_value(twilit);
   return retval;
}

DEFUN_DLD (SensorSet2L, args, nargout, "SensorSet2L") {
   __int64 senKey=OctToInt64(args(0));

   char boresight2=OctToChar(args(1));

   double elLim3=OctToDouble(args(2));

   double elLim4=OctToDouble(args(3));

   double azLim3=OctToDouble(args(4));

   double azLim4=OctToDouble(args(5));

   int earthBckgrnd=OctToInt(args(6));

   double earthLimb=OctToDouble(args(7));

   double solarXAngle=OctToDouble(args(8));

   double lunarXAngle=OctToDouble(args(9));

   double minIllum=OctToDouble(args(10));

   double twilit=OctToDouble(args(11));

   int retVar = SensorSet2L(senKey, boresight2, elLim3, elLim4, azLim3, azLim4, earthBckgrnd, earthLimb, solarXAngle, lunarXAngle, minIllum, twilit);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetLimField, args, nargout, "SensorGetLimField") {
   __int64 senKey=OctToInt64(args(0));

   int xf_SenLim=OctToInt(args(1));

   char strValue[512];

   int retVar = SensorGetLimField(senKey, xf_SenLim, strValue);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(strValue);
   return retval;
}

DEFUN_DLD (SensorSetLimField, args, nargout, "SensorSetLimField") {
   __int64 senKey=OctToInt64(args(0));

   int xf_SenLim=OctToInt(args(1));

   char* strValue = OctToString(args(2), 512);

   int retVar = SensorSetLimField(senKey, xf_SenLim, strValue);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetBS, args, nargout, "SensorGetBS") {
   __int64 senKey=OctToInt64(args(0));

   double xaf_senbs[16];

   int retVar = SensorGetBS(senKey, xaf_senbs);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xaf_senbs);
   return retval;
}

DEFUN_DLD (SensorSetBS, args, nargout, "SensorSetBS") {
   __int64 senKey=OctToInt64(args(0));

   double xaf_senbs[16];
   OctToDouble1D(args(1), 16, xaf_senbs);

   int retVar = SensorSetBS(senKey, xaf_senbs);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetBSField, args, nargout, "SensorGetBSField") {
   __int64 senKey=OctToInt64(args(0));

   int xaf_senbs=OctToInt(args(1));

   char strValue[512];

   int retVar = SensorGetBSField(senKey, xaf_senbs, strValue);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(strValue);
   return retval;
}

DEFUN_DLD (SensorSetBSField, args, nargout, "SensorSetBSField") {
   __int64 senKey=OctToInt64(args(0));

   int xaf_senbs=OctToInt(args(1));

   char* strValue = OctToString(args(2), 512);

   int retVar = SensorSetBSField(senKey, xaf_senbs, strValue);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetLines, args, nargout, "SensorGetLines") {
   __int64 senKey=OctToInt64(args(0));

   char sCard[512];

   char l1Card[512];

   char l2Card[512];

   int retVar = SensorGetLines(senKey, sCard, l1Card, l2Card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(sCard);
   retval(2) = octave_value(l1Card);
   retval(3) = octave_value(l2Card);
   return retval;
}

DEFUN_DLD (SensorGetOrbSatKey, args, nargout, "SensorGetOrbSatKey") {
   __int64 senKey=OctToInt64(args(0));

   __int64 orbSatKey;

   int retVar = SensorGetOrbSatKey(senKey, &orbSatKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(std::to_string(orbSatKey));
   return retval;
}

DEFUN_DLD (SensorSetOrbSatKey, args, nargout, "SensorSetOrbSatKey") {
   __int64 senKey=OctToInt64(args(0));

   __int64 orbSatKey=OctToInt64(args(1));

   int retVar = SensorSetOrbSatKey(senKey, orbSatKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorLoadAzElTable, args, nargout, "SensorLoadAzElTable") {
   __int64 senKey=OctToInt64(args(0));

   char* azElTableFile = OctToString(args(1), 512);

   int retVar = SensorLoadAzElTable(senKey, azElTableFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorAddSegment, args, nargout, "SensorAddSegment") {
   __int64 senKey=OctToInt64(args(0));

   int segType=OctToInt(args(1));

   double xa_seg[16];
   OctToDouble1D(args(2), 16, xa_seg);

   int retVar = SensorAddSegment(senKey, segType, xa_seg);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetSegment, args, nargout, "SensorGetSegment") {
   __int64 senKey=OctToInt64(args(0));

   int segNum=OctToInt(args(1));

   int segType;

   double xa_seg[16];

   int retVar = SensorGetSegment(senKey, segNum, &segType, xa_seg);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(segType);
   Double1DToOct(&retval(2), xa_seg);
   return retval;
}

DEFUN_DLD (SetSenKeyMode, args, nargout, "SetSenKeyMode") {
   int sen_keyMode=OctToInt(args(0));

   int retVar = SetSenKeyMode(sen_keyMode);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (GetSenKeyMode, args, nargout, "GetSenKeyMode") {
   int retVar = GetSenKeyMode();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SenNumOf, args, nargout, "SenNumOf") {
   __int64 senKey=OctToInt64(args(0));

   int retVar = SenNumOf(senKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SensorGetSenKey, args, nargout, "SensorGetSenKey") {
   int senNum=OctToInt(args(0));

   __int64 retVar = SensorGetSenKey(senNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (SensorGetSenKeyML, args, nargout, "SensorGetSenKeyML") {
   int senNum=OctToInt(args(0));

   __int64 senKey;

   SensorGetSenKeyML(senNum, &senKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(senKey));
   return retval;
}

DEFUN_DLD (SensorAddFrArray, args, nargout, "SensorAddFrArray") {
   double xa_sen[128];
   OctToDouble1D(args(0), 128, xa_sen);

   char* xs_sen = OctToString(args(1), 512);

   __int64 retVar = SensorAddFrArray(xa_sen, xs_sen);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (SensorDataToArray, args, nargout, "SensorDataToArray") {
   __int64 senKey=OctToInt64(args(0));

   double xa_sen[128];

   char xs_sen[512];

   int retVar = SensorDataToArray(senKey, xa_sen, xs_sen);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_sen);
   retval(2) = octave_value(xs_sen);
   return retval;
}

// ========================= End of auto generated code ==========================
