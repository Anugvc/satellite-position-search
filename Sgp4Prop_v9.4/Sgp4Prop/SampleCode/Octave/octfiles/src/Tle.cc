// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "TleDll.h"
   #include "TleDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadTleDll( )
// [ ] = FreeTleDll( )
// [retVar] = TleInit(apAddr)
// [infoStr[128]] = TleGetInfo()
// [retVar] = TleLoadFile(tleFile[512])
// [retVar] = TleSaveFile(tleFile[512], saveMode, xf_tleForm)
// [retVar] = TleRemoveSat(satKey)
// [retVar] = TleRemoveAllSats()
// [retVar] = TleGetCount()
// [satKeys[size_satKeys]] = TleGetLoaded(order, size_satKeys)
// [retVar] = TleAddSatFrLines(line1[512], line2[512])
// [satKey] = TleAddSatFrLinesML(line1[512], line2[512])
// [retVar] = TleAddSatFrCsv(csvLine[512])
// [satKey] = TleAddSatFrCsvML(csvLine[512])
// [retVar] = TleAddSatFrFieldsGP(satNum, secClass, satName[8], epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
// [retVar] = TleAddSatFrFieldsGP2(satNum, secClass, satName[8], epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6)
// [satKey] = TleAddSatFrFieldsGP2ML(satNum, secClass, satName[8], epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6)
// [retVar] = TleUpdateSatFrFieldsGP(satKey, secClass, satName[8], bstar, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
// [retVar] = TleUpdateSatFrFieldsGP2(satKey, secClass, satName[8], bstar, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6)
// [retVar] = TleAddSatFrFieldsSP(satNum, secClass, satName[8], epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
// [satKey] = TleAddSatFrFieldsSPML(satNum, secClass, satName[8], epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
// [retVar] = TleUpdateSatFrFieldsSP(satKey, secClass, satName[8], bterm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
// [retVar] = TleSetField(satKey, xf_Tle, valueStr[512])
// [retVar, valueStr[512]] = TleGetField(satKey, xf_Tle)
// [retVar, satNum, secClass, satName[8], epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum] = TleGetAllFieldsGP(satKey)
// [retVar, satNum, secClass, satName[8], epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6] = TleGetAllFieldsGP2(satKey)
// [retVar, satNum, secClass, satName[8], epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum] = TleGetAllFieldsSP(satKey)
// [retVar, satNum, secClass, satName[8], epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum] = TleParseGP(line1[512], line2[512])
// [retVar, xa_tle[64], xs_tle[512]] = TleLinesToArray(line1[512], line2[512])
// [retVar, satNum, secClass, satName[8], epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum] = TleParseSP(line1[512], line2[512])
// [retVar, line1[512], line2[512]] = TleGetLines(satKey)
// [retVar, csvLine[512]] = TleGetCsv(satKey)
// [line1[512], line2[512]] = TleGPFieldsToLines(satNum, secClass, satName[8], epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
// [csvLine[512]] = TleGPFieldsToCsv(satNum, secClass, satName[8], epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
// [line1[512], line2[512]] = TleGPArrayToLines(xa_tle[64], xs_tle[512])
// [csvline[512]] = TleGPArrayToCsv(xa_tle[64], xs_tle[512])
// [line1[512], line2[512]] = TleSPFieldsToLines(satNum, secClass, satName[8], epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum)
// [retVar] = TleGetSatKey(satNum)
// [satKey] = TleGetSatKeyML(satNum)
// [retVar] = TleFieldsToSatKey(satNum, epochYr, epochDays, ephType)
// [satKey] = TleFieldsToSatKeyML(satNum, epochYr, epochDays, ephType)
// [retVar] = TleAddSatFrArray(xa_tle[64], xs_tle[512])
// [satKey] = TleAddSatFrArrayML(xa_tle[64], xs_tle[512])
// [retVar] = TleUpdateSatFrArray(satKey, xa_tle[64], xs_tle[512])
// [retVar, xa_tle[64], xs_tle[512]] = TleDataToArray(satKey)
// [retVar, csvline[512]] = TleLinesToCsv(line1[512], line2[512])
// [retVar, line1[512], line2[512]] = TleCsvToLines(csvLine[512], newSatno)
// [retVar] = SetTleKeyMode(tle_keyMode)
// [retVar] = GetTleKeyMode()
// [chkSum1, chkSum2, errCode] = GetCheckSums(line1[512], line2[512])

DEFUN_DLD (LoadTleDll, args, nargout, "Load Tle Library") {
   LoadTleDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeTleDll, args, nargout, "Free Tle Library") {
   FreeTleDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (TleInit, args, nargout, "TleInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = TleInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleGetInfo, args, nargout, "TleGetInfo") {
   char infoStr[128];

   TleGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (TleLoadFile, args, nargout, "TleLoadFile") {
   char* tleFile = OctToString(args(0), 512);

   int retVar = TleLoadFile(tleFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleSaveFile, args, nargout, "TleSaveFile") {
   char* tleFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int xf_tleForm=OctToInt(args(2));

   int retVar = TleSaveFile(tleFile, saveMode, xf_tleForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleRemoveSat, args, nargout, "TleRemoveSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = TleRemoveSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleRemoveAllSats, args, nargout, "TleRemoveAllSats") {
   int retVar = TleRemoveAllSats();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleGetCount, args, nargout, "TleGetCount") {
   int retVar = TleGetCount();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleGetLoaded, args, nargout, "TleGetLoaded") {
   int order=OctToInt(args(0));

   int size_satKeys = OctToInt(args(1));
   __int64 satKeys[size_satKeys];

   TleGetLoaded(order, satKeys);

   charMatrix satKeysTemp(dim_vector(size_satKeys,20));
   for (int i = 0; i < size_satKeys; i++) {
      satKeysTemp.insert("                    ",i,0);
      satKeysTemp.insert(Int64ToStr(satKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(satKeysTemp);
   return retval;
}

DEFUN_DLD (TleAddSatFrLines, args, nargout, "TleAddSatFrLines") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   __int64 retVar = TleAddSatFrLines(line1, line2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (TleAddSatFrLinesML, args, nargout, "TleAddSatFrLinesML") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   __int64 satKey;

   TleAddSatFrLinesML(line1, line2, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (TleAddSatFrCsv, args, nargout, "TleAddSatFrCsv") {
   char* csvLine = OctToString(args(0), 512);

   __int64 retVar = TleAddSatFrCsv(csvLine);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (TleAddSatFrCsvML, args, nargout, "TleAddSatFrCsvML") {
   char* csvLine = OctToString(args(0), 512);

   __int64 satKey;

   TleAddSatFrCsvML(csvLine, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (TleAddSatFrFieldsGP, args, nargout, "TleAddSatFrFieldsGP") {
   int satNum=OctToInt(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   int epochYr=OctToInt(args(3));

   double epochDays=OctToDouble(args(4));

   double bstar=OctToDouble(args(5));

   int ephType=OctToInt(args(6));

   int elsetNum=OctToInt(args(7));

   double incli=OctToDouble(args(8));

   double node=OctToDouble(args(9));

   double eccen=OctToDouble(args(10));

   double omega=OctToDouble(args(11));

   double mnAnomaly=OctToDouble(args(12));

   double mnMotion=OctToDouble(args(13));

   int revNum=OctToInt(args(14));

   __int64 retVar = TleAddSatFrFieldsGP(satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (TleAddSatFrFieldsGP2, args, nargout, "TleAddSatFrFieldsGP2") {
   int satNum=OctToInt(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   int epochYr=OctToInt(args(3));

   double epochDays=OctToDouble(args(4));

   double bstar=OctToDouble(args(5));

   int ephType=OctToInt(args(6));

   int elsetNum=OctToInt(args(7));

   double incli=OctToDouble(args(8));

   double node=OctToDouble(args(9));

   double eccen=OctToDouble(args(10));

   double omega=OctToDouble(args(11));

   double mnAnomaly=OctToDouble(args(12));

   double mnMotion=OctToDouble(args(13));

   int revNum=OctToInt(args(14));

   double nDotO2=OctToDouble(args(15));

   double n2DotO6=OctToDouble(args(16));

   __int64 retVar = TleAddSatFrFieldsGP2(satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (TleAddSatFrFieldsGP2ML, args, nargout, "TleAddSatFrFieldsGP2ML") {
   int satNum=OctToInt(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   int epochYr=OctToInt(args(3));

   double epochDays=OctToDouble(args(4));

   double bstar=OctToDouble(args(5));

   int ephType=OctToInt(args(6));

   int elsetNum=OctToInt(args(7));

   double incli=OctToDouble(args(8));

   double node=OctToDouble(args(9));

   double eccen=OctToDouble(args(10));

   double omega=OctToDouble(args(11));

   double mnAnomaly=OctToDouble(args(12));

   double mnMotion=OctToDouble(args(13));

   int revNum=OctToInt(args(14));

   double nDotO2=OctToDouble(args(15));

   double n2DotO6=OctToDouble(args(16));

   __int64 satKey;

   TleAddSatFrFieldsGP2ML(satNum, secClass, satName, epochYr, epochDays, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (TleUpdateSatFrFieldsGP, args, nargout, "TleUpdateSatFrFieldsGP") {
   __int64 satKey=OctToInt64(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   double bstar=OctToDouble(args(3));

   int elsetNum=OctToInt(args(4));

   double incli=OctToDouble(args(5));

   double node=OctToDouble(args(6));

   double eccen=OctToDouble(args(7));

   double omega=OctToDouble(args(8));

   double mnAnomaly=OctToDouble(args(9));

   double mnMotion=OctToDouble(args(10));

   int revNum=OctToInt(args(11));

   int retVar = TleUpdateSatFrFieldsGP(satKey, secClass, satName, bstar, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleUpdateSatFrFieldsGP2, args, nargout, "TleUpdateSatFrFieldsGP2") {
   __int64 satKey=OctToInt64(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   double bstar=OctToDouble(args(3));

   int elsetNum=OctToInt(args(4));

   double incli=OctToDouble(args(5));

   double node=OctToDouble(args(6));

   double eccen=OctToDouble(args(7));

   double omega=OctToDouble(args(8));

   double mnAnomaly=OctToDouble(args(9));

   double mnMotion=OctToDouble(args(10));

   int revNum=OctToInt(args(11));

   double nDotO2=OctToDouble(args(12));

   double n2DotO6=OctToDouble(args(13));

   int retVar = TleUpdateSatFrFieldsGP2(satKey, secClass, satName, bstar, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, nDotO2, n2DotO6);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleAddSatFrFieldsSP, args, nargout, "TleAddSatFrFieldsSP") {
   int satNum=OctToInt(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   int epochYr=OctToInt(args(3));

   double epochDays=OctToDouble(args(4));

   double bTerm=OctToDouble(args(5));

   double ogParm=OctToDouble(args(6));

   double agom=OctToDouble(args(7));

   int elsetNum=OctToInt(args(8));

   double incli=OctToDouble(args(9));

   double node=OctToDouble(args(10));

   double eccen=OctToDouble(args(11));

   double omega=OctToDouble(args(12));

   double mnAnomaly=OctToDouble(args(13));

   double mnMotion=OctToDouble(args(14));

   int revNum=OctToInt(args(15));

   __int64 retVar = TleAddSatFrFieldsSP(satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (TleAddSatFrFieldsSPML, args, nargout, "TleAddSatFrFieldsSPML") {
   int satNum=OctToInt(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   int epochYr=OctToInt(args(3));

   double epochDays=OctToDouble(args(4));

   double bTerm=OctToDouble(args(5));

   double ogParm=OctToDouble(args(6));

   double agom=OctToDouble(args(7));

   int elsetNum=OctToInt(args(8));

   double incli=OctToDouble(args(9));

   double node=OctToDouble(args(10));

   double eccen=OctToDouble(args(11));

   double omega=OctToDouble(args(12));

   double mnAnomaly=OctToDouble(args(13));

   double mnMotion=OctToDouble(args(14));

   int revNum=OctToInt(args(15));

   __int64 satKey;

   TleAddSatFrFieldsSPML(satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (TleUpdateSatFrFieldsSP, args, nargout, "TleUpdateSatFrFieldsSP") {
   __int64 satKey=OctToInt64(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   double bterm=OctToDouble(args(3));

   double ogParm=OctToDouble(args(4));

   double agom=OctToDouble(args(5));

   int elsetNum=OctToInt(args(6));

   double incli=OctToDouble(args(7));

   double node=OctToDouble(args(8));

   double eccen=OctToDouble(args(9));

   double omega=OctToDouble(args(10));

   double mnAnomaly=OctToDouble(args(11));

   double mnMotion=OctToDouble(args(12));

   int revNum=OctToInt(args(13));

   int retVar = TleUpdateSatFrFieldsSP(satKey, secClass, satName, bterm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleSetField, args, nargout, "TleSetField") {
   __int64 satKey=OctToInt64(args(0));

   int xf_Tle=OctToInt(args(1));

   char* valueStr = OctToString(args(2), 512);

   int retVar = TleSetField(satKey, xf_Tle, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleGetField, args, nargout, "TleGetField") {
   __int64 satKey=OctToInt64(args(0));

   int xf_Tle=OctToInt(args(1));

   char valueStr[512];

   int retVar = TleGetField(satKey, xf_Tle, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(valueStr);
   return retval;
}

DEFUN_DLD (TleGetAllFieldsGP, args, nargout, "TleGetAllFieldsGP") {
   __int64 satKey=OctToInt64(args(0));

   int satNum;

   char secClass;

   char satName[8];

   int epochYr;

   double epochDays;

   double bstar;

   int ephType;

   int elsetNum;

   double incli;

   double node;

   double eccen;

   double omega;

   double mnAnomaly;

   double mnMotion;

   int revNum;

   int retVar = TleGetAllFieldsGP(satKey, &satNum, &secClass, satName, &epochYr, &epochDays, &bstar, &ephType, &elsetNum, &incli, &node, &eccen, &omega, &mnAnomaly, &mnMotion, &revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(satNum);
   retval(2) = octave_value(secClass);
   retval(3) = octave_value(satName);
   retval(4) = octave_value(epochYr);
   retval(5) = octave_value(epochDays);
   retval(6) = octave_value(bstar);
   retval(7) = octave_value(ephType);
   retval(8) = octave_value(elsetNum);
   retval(9) = octave_value(incli);
   retval(10) = octave_value(node);
   retval(11) = octave_value(eccen);
   retval(12) = octave_value(omega);
   retval(13) = octave_value(mnAnomaly);
   retval(14) = octave_value(mnMotion);
   retval(15) = octave_value(revNum);
   return retval;
}

DEFUN_DLD (TleGetAllFieldsGP2, args, nargout, "TleGetAllFieldsGP2") {
   __int64 satKey=OctToInt64(args(0));

   int satNum;

   char secClass;

   char satName[8];

   int epochYr;

   double epochDays;

   double bstar;

   int ephType;

   int elsetNum;

   double incli;

   double node;

   double eccen;

   double omega;

   double mnAnomaly;

   double mnMotion;

   int revNum;

   double nDotO2;

   double n2DotO6;

   int retVar = TleGetAllFieldsGP2(satKey, &satNum, &secClass, satName, &epochYr, &epochDays, &bstar, &ephType, &elsetNum, &incli, &node, &eccen, &omega, &mnAnomaly, &mnMotion, &revNum, &nDotO2, &n2DotO6);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(satNum);
   retval(2) = octave_value(secClass);
   retval(3) = octave_value(satName);
   retval(4) = octave_value(epochYr);
   retval(5) = octave_value(epochDays);
   retval(6) = octave_value(bstar);
   retval(7) = octave_value(ephType);
   retval(8) = octave_value(elsetNum);
   retval(9) = octave_value(incli);
   retval(10) = octave_value(node);
   retval(11) = octave_value(eccen);
   retval(12) = octave_value(omega);
   retval(13) = octave_value(mnAnomaly);
   retval(14) = octave_value(mnMotion);
   retval(15) = octave_value(revNum);
   retval(16) = octave_value(nDotO2);
   retval(17) = octave_value(n2DotO6);
   return retval;
}

DEFUN_DLD (TleGetAllFieldsSP, args, nargout, "TleGetAllFieldsSP") {
   __int64 satKey=OctToInt64(args(0));

   int satNum;

   char secClass;

   char satName[8];

   int epochYr;

   double epochDays;

   double bTerm;

   double ogParm;

   double agom;

   int elsetNum;

   double incli;

   double node;

   double eccen;

   double omega;

   double mnAnomaly;

   double mnMotion;

   int revNum;

   int retVar = TleGetAllFieldsSP(satKey, &satNum, &secClass, satName, &epochYr, &epochDays, &bTerm, &ogParm, &agom, &elsetNum, &incli, &node, &eccen, &omega, &mnAnomaly, &mnMotion, &revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(satNum);
   retval(2) = octave_value(secClass);
   retval(3) = octave_value(satName);
   retval(4) = octave_value(epochYr);
   retval(5) = octave_value(epochDays);
   retval(6) = octave_value(bTerm);
   retval(7) = octave_value(ogParm);
   retval(8) = octave_value(agom);
   retval(9) = octave_value(elsetNum);
   retval(10) = octave_value(incli);
   retval(11) = octave_value(node);
   retval(12) = octave_value(eccen);
   retval(13) = octave_value(omega);
   retval(14) = octave_value(mnAnomaly);
   retval(15) = octave_value(mnMotion);
   retval(16) = octave_value(revNum);
   return retval;
}

DEFUN_DLD (TleParseGP, args, nargout, "TleParseGP") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   int satNum;

   char secClass;

   char satName[8];

   int epochYr;

   double epochDays;

   double nDotO2;

   double n2DotO6;

   double bstar;

   int ephType;

   int elsetNum;

   double incli;

   double node;

   double eccen;

   double omega;

   double mnAnomaly;

   double mnMotion;

   int revNum;

   int retVar = TleParseGP(line1, line2, &satNum, &secClass, satName, &epochYr, &epochDays, &nDotO2, &n2DotO6, &bstar, &ephType, &elsetNum, &incli, &node, &eccen, &omega, &mnAnomaly, &mnMotion, &revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(satNum);
   retval(2) = octave_value(secClass);
   retval(3) = octave_value(satName);
   retval(4) = octave_value(epochYr);
   retval(5) = octave_value(epochDays);
   retval(6) = octave_value(nDotO2);
   retval(7) = octave_value(n2DotO6);
   retval(8) = octave_value(bstar);
   retval(9) = octave_value(ephType);
   retval(10) = octave_value(elsetNum);
   retval(11) = octave_value(incli);
   retval(12) = octave_value(node);
   retval(13) = octave_value(eccen);
   retval(14) = octave_value(omega);
   retval(15) = octave_value(mnAnomaly);
   retval(16) = octave_value(mnMotion);
   retval(17) = octave_value(revNum);
   return retval;
}

DEFUN_DLD (TleLinesToArray, args, nargout, "TleLinesToArray") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   double xa_tle[64];

   char xs_tle[512];

   int retVar = TleLinesToArray(line1, line2, xa_tle, xs_tle);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_tle);
   retval(2) = octave_value(xs_tle);
   return retval;
}

DEFUN_DLD (TleParseSP, args, nargout, "TleParseSP") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   int satNum;

   char secClass;

   char satName[8];

   int epochYr;

   double epochDays;

   double bTerm;

   double ogParm;

   double agom;

   int elsetNum;

   double incli;

   double node;

   double eccen;

   double omega;

   double mnAnomaly;

   double mnMotion;

   int revNum;

   int retVar = TleParseSP(line1, line2, &satNum, &secClass, satName, &epochYr, &epochDays, &bTerm, &ogParm, &agom, &elsetNum, &incli, &node, &eccen, &omega, &mnAnomaly, &mnMotion, &revNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(satNum);
   retval(2) = octave_value(secClass);
   retval(3) = octave_value(satName);
   retval(4) = octave_value(epochYr);
   retval(5) = octave_value(epochDays);
   retval(6) = octave_value(bTerm);
   retval(7) = octave_value(ogParm);
   retval(8) = octave_value(agom);
   retval(9) = octave_value(elsetNum);
   retval(10) = octave_value(incli);
   retval(11) = octave_value(node);
   retval(12) = octave_value(eccen);
   retval(13) = octave_value(omega);
   retval(14) = octave_value(mnAnomaly);
   retval(15) = octave_value(mnMotion);
   retval(16) = octave_value(revNum);
   return retval;
}

DEFUN_DLD (TleGetLines, args, nargout, "TleGetLines") {
   __int64 satKey=OctToInt64(args(0));

   char line1[512];

   char line2[512];

   int retVar = TleGetLines(satKey, line1, line2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(line1);
   retval(2) = octave_value(line2);
   return retval;
}

DEFUN_DLD (TleGetCsv, args, nargout, "TleGetCsv") {
   __int64 satKey=OctToInt64(args(0));

   char csvLine[512];

   int retVar = TleGetCsv(satKey, csvLine);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(csvLine);
   return retval;
}

DEFUN_DLD (TleGPFieldsToLines, args, nargout, "TleGPFieldsToLines") {
   int satNum=OctToInt(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   int epochYr=OctToInt(args(3));

   double epochDays=OctToDouble(args(4));

   double nDotO2=OctToDouble(args(5));

   double n2DotO6=OctToDouble(args(6));

   double bstar=OctToDouble(args(7));

   int ephType=OctToInt(args(8));

   int elsetNum=OctToInt(args(9));

   double incli=OctToDouble(args(10));

   double node=OctToDouble(args(11));

   double eccen=OctToDouble(args(12));

   double omega=OctToDouble(args(13));

   double mnAnomaly=OctToDouble(args(14));

   double mnMotion=OctToDouble(args(15));

   int revNum=OctToInt(args(16));

   char line1[512];

   char line2[512];

   TleGPFieldsToLines(satNum, secClass, satName, epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, line1, line2);

   octave_value_list retval(nargout);
   retval(0) = octave_value(line1);
   retval(1) = octave_value(line2);
   return retval;
}

DEFUN_DLD (TleGPFieldsToCsv, args, nargout, "TleGPFieldsToCsv") {
   int satNum=OctToInt(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   int epochYr=OctToInt(args(3));

   double epochDays=OctToDouble(args(4));

   double nDotO2=OctToDouble(args(5));

   double n2DotO6=OctToDouble(args(6));

   double bstar=OctToDouble(args(7));

   int ephType=OctToInt(args(8));

   int elsetNum=OctToInt(args(9));

   double incli=OctToDouble(args(10));

   double node=OctToDouble(args(11));

   double eccen=OctToDouble(args(12));

   double omega=OctToDouble(args(13));

   double mnAnomaly=OctToDouble(args(14));

   double mnMotion=OctToDouble(args(15));

   int revNum=OctToInt(args(16));

   char csvLine[512];

   TleGPFieldsToCsv(satNum, secClass, satName, epochYr, epochDays, nDotO2, n2DotO6, bstar, ephType, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, csvLine);

   octave_value_list retval(nargout);
   retval(0) = octave_value(csvLine);
   return retval;
}

DEFUN_DLD (TleGPArrayToLines, args, nargout, "TleGPArrayToLines") {
   double xa_tle[64];
   OctToDouble1D(args(0), 64, xa_tle);

   char* xs_tle = OctToString(args(1), 512);

   char line1[512];

   char line2[512];

   TleGPArrayToLines(xa_tle, xs_tle, line1, line2);

   octave_value_list retval(nargout);
   retval(0) = octave_value(line1);
   retval(1) = octave_value(line2);
   return retval;
}

DEFUN_DLD (TleGPArrayToCsv, args, nargout, "TleGPArrayToCsv") {
   double xa_tle[64];
   OctToDouble1D(args(0), 64, xa_tle);

   char* xs_tle = OctToString(args(1), 512);

   char csvline[512];

   TleGPArrayToCsv(xa_tle, xs_tle, csvline);

   octave_value_list retval(nargout);
   retval(0) = octave_value(csvline);
   return retval;
}

DEFUN_DLD (TleSPFieldsToLines, args, nargout, "TleSPFieldsToLines") {
   int satNum=OctToInt(args(0));

   char secClass=OctToChar(args(1));

   char* satName = OctToString(args(2), 8);

   int epochYr=OctToInt(args(3));

   double epochDays=OctToDouble(args(4));

   double bTerm=OctToDouble(args(5));

   double ogParm=OctToDouble(args(6));

   double agom=OctToDouble(args(7));

   int elsetNum=OctToInt(args(8));

   double incli=OctToDouble(args(9));

   double node=OctToDouble(args(10));

   double eccen=OctToDouble(args(11));

   double omega=OctToDouble(args(12));

   double mnAnomaly=OctToDouble(args(13));

   double mnMotion=OctToDouble(args(14));

   int revNum=OctToInt(args(15));

   char line1[512];

   char line2[512];

   TleSPFieldsToLines(satNum, secClass, satName, epochYr, epochDays, bTerm, ogParm, agom, elsetNum, incli, node, eccen, omega, mnAnomaly, mnMotion, revNum, line1, line2);

   octave_value_list retval(nargout);
   retval(0) = octave_value(line1);
   retval(1) = octave_value(line2);
   return retval;
}

DEFUN_DLD (TleGetSatKey, args, nargout, "TleGetSatKey") {
   int satNum=OctToInt(args(0));

   __int64 retVar = TleGetSatKey(satNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (TleGetSatKeyML, args, nargout, "TleGetSatKeyML") {
   int satNum=OctToInt(args(0));

   __int64 satKey;

   TleGetSatKeyML(satNum, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (TleFieldsToSatKey, args, nargout, "TleFieldsToSatKey") {
   int satNum=OctToInt(args(0));

   int epochYr=OctToInt(args(1));

   double epochDays=OctToDouble(args(2));

   int ephType=OctToInt(args(3));

   __int64 retVar = TleFieldsToSatKey(satNum, epochYr, epochDays, ephType);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (TleFieldsToSatKeyML, args, nargout, "TleFieldsToSatKeyML") {
   int satNum=OctToInt(args(0));

   int epochYr=OctToInt(args(1));

   double epochDays=OctToDouble(args(2));

   int ephType=OctToInt(args(3));

   __int64 satKey;

   TleFieldsToSatKeyML(satNum, epochYr, epochDays, ephType, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (TleAddSatFrArray, args, nargout, "TleAddSatFrArray") {
   double xa_tle[64];
   OctToDouble1D(args(0), 64, xa_tle);

   char* xs_tle = OctToString(args(1), 512);

   __int64 retVar = TleAddSatFrArray(xa_tle, xs_tle);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (TleAddSatFrArrayML, args, nargout, "TleAddSatFrArrayML") {
   double xa_tle[64];
   OctToDouble1D(args(0), 64, xa_tle);

   char* xs_tle = OctToString(args(1), 512);

   __int64 satKey;

   TleAddSatFrArrayML(xa_tle, xs_tle, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (TleUpdateSatFrArray, args, nargout, "TleUpdateSatFrArray") {
   __int64 satKey=OctToInt64(args(0));

   double xa_tle[64];
   OctToDouble1D(args(1), 64, xa_tle);

   char* xs_tle = OctToString(args(2), 512);

   int retVar = TleUpdateSatFrArray(satKey, xa_tle, xs_tle);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TleDataToArray, args, nargout, "TleDataToArray") {
   __int64 satKey=OctToInt64(args(0));

   double xa_tle[64];

   char xs_tle[512];

   int retVar = TleDataToArray(satKey, xa_tle, xs_tle);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_tle);
   retval(2) = octave_value(xs_tle);
   return retval;
}

DEFUN_DLD (TleLinesToCsv, args, nargout, "TleLinesToCsv") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   char csvline[512];

   int retVar = TleLinesToCsv(line1, line2, csvline);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(csvline);
   return retval;
}

DEFUN_DLD (TleCsvToLines, args, nargout, "TleCsvToLines") {
   char* csvLine = OctToString(args(0), 512);

   int newSatno=OctToInt(args(1));

   char line1[512];

   char line2[512];

   int retVar = TleCsvToLines(csvLine, newSatno, line1, line2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(line1);
   retval(2) = octave_value(line2);
   return retval;
}

DEFUN_DLD (SetTleKeyMode, args, nargout, "SetTleKeyMode") {
   int tle_keyMode=OctToInt(args(0));

   int retVar = SetTleKeyMode(tle_keyMode);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (GetTleKeyMode, args, nargout, "GetTleKeyMode") {
   int retVar = GetTleKeyMode();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (GetCheckSums, args, nargout, "GetCheckSums") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   int chkSum1;

   int chkSum2;

   int errCode;

   GetCheckSums(line1, line2, &chkSum1, &chkSum2, &errCode);

   octave_value_list retval(nargout);
   retval(0) = octave_value(chkSum1);
   retval(1) = octave_value(chkSum2);
   retval(2) = octave_value(errCode);
   return retval;
}

// ========================= End of auto generated code ==========================
