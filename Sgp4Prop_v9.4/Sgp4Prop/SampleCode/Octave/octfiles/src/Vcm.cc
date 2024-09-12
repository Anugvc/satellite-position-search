// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "VcmDll.h"
   #include "VcmDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadVcmDll( )
// [ ] = FreeVcmDll( )
// [retVar] = VcmInit(apAddr)
// [infoStr[128]] = VcmGetInfo()
// [retVar] = VcmLoadFile(vcmFile[512])
// [retVar] = VcmSaveFile(vcmFile[512], saveMode, saveForm)
// [retVar] = VcmRemoveSat(satKey)
// [retVar] = VcmRemoveAllSats()
// [retVar] = VcmGetCount()
// [satKeys[size_satKeys]] = VcmGetLoaded(order, size_satKeys)
// [retVar] = VcmAddSatFrLines(vcmString[4000])
// [satKey] = VcmAddSatFrLinesML(vcmString[4000])
// [retVar] = VcmAddSatFrFields(xs_vcm[512], xa_vcm[512])
// [satKey] = VcmAddSatFrFieldsML(xs_vcm[512], xa_vcm[512])
// [retVar, xs_vcm[512], xa_vcm[512]] = VcmRetrieveAllData(satKey)
// [retVar] = VcmUpdateSatFrFields(satKey, xs_vcm[512], xa_vcm[512])
// [retVar, valueStr[512]] = VcmGetField(satKey, xf_Vcm)
// [retVar] = VcmSetField(satKey, xf_Vcm, valueStr[512])
// [retVar, satNum, satName[8], epochDtg[17], revNum, posECI[3], velECI[3], geoName[6], geoZonals, geoTesserals, dragModel[12], lunarSolar[3], radPress[3], earthTides[3], intrackThrust[3], bTerm, agom, ogParm, cmOffset, f10, f10Avg, apAvg, tconRec[5], nTerms, leapYrDtg[17], integMode[6], partials[8], stepMode[4], fixStep[3], stepSelection[6], initStepSize, errCtrl, rms] = VcmGetAllFields(satKey)
// [retVar, vcmLines[4000]] = VcmGetLines(satKey)
// [retVar, vcmLines[4000]] = Vcm1LineToMultiLine(vcm1Line[1500])
// [retVar, vcm1Line[1500]] = VcmMultiLineTo1Line(vcmLines[4000])
// [retVar] = VcmGetSatKey(satNum)
// [satKey] = VcmGetSatKeyML(satNum)
// [retVar] = VcmFieldsToSatKey(satNum, epochDtg[20])
// [satKey] = VcmFieldsToSatKeyML(satNum, epochDtg[20])
// [vcmLines[4000]] = VcmArrayToVcmLines(xa_vcm[512], xs_vcm[512])
// [vcm1Line[1500]] = VcmArrayToVcm1Line(xa_vcm[512], xs_vcm[512])
// [retVar, xa_vcm[512], xs_vcm[512]] = VcmStringToArray(vcmString[4000])

DEFUN_DLD (LoadVcmDll, args, nargout, "Load Vcm Library") {
   LoadVcmDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeVcmDll, args, nargout, "Free Vcm Library") {
   FreeVcmDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (VcmInit, args, nargout, "VcmInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = VcmInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (VcmGetInfo, args, nargout, "VcmGetInfo") {
   char infoStr[128];

   VcmGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (VcmLoadFile, args, nargout, "VcmLoadFile") {
   char* vcmFile = OctToString(args(0), 512);

   int retVar = VcmLoadFile(vcmFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (VcmSaveFile, args, nargout, "VcmSaveFile") {
   char* vcmFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = VcmSaveFile(vcmFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (VcmRemoveSat, args, nargout, "VcmRemoveSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = VcmRemoveSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (VcmRemoveAllSats, args, nargout, "VcmRemoveAllSats") {
   int retVar = VcmRemoveAllSats();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (VcmGetCount, args, nargout, "VcmGetCount") {
   int retVar = VcmGetCount();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (VcmGetLoaded, args, nargout, "VcmGetLoaded") {
   int order=OctToInt(args(0));

   int size_satKeys = OctToInt(args(1));
   __int64 satKeys[size_satKeys];

   VcmGetLoaded(order, satKeys);

   charMatrix satKeysTemp(dim_vector(size_satKeys,20));
   for (int i = 0; i < size_satKeys; i++) {
      satKeysTemp.insert("                    ",i,0);
      satKeysTemp.insert(Int64ToStr(satKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(satKeysTemp);
   return retval;
}

DEFUN_DLD (VcmAddSatFrLines, args, nargout, "VcmAddSatFrLines") {
   char* vcmString = OctToString(args(0), 4000);

   __int64 retVar = VcmAddSatFrLines(vcmString);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (VcmAddSatFrLinesML, args, nargout, "VcmAddSatFrLinesML") {
   char* vcmString = OctToString(args(0), 4000);

   __int64 satKey;

   VcmAddSatFrLinesML(vcmString, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (VcmAddSatFrFields, args, nargout, "VcmAddSatFrFields") {
   char* xs_vcm = OctToString(args(0), 512);

   double xa_vcm[512];
   OctToDouble1D(args(1), 512, xa_vcm);

   __int64 retVar = VcmAddSatFrFields(xs_vcm, xa_vcm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (VcmAddSatFrFieldsML, args, nargout, "VcmAddSatFrFieldsML") {
   char* xs_vcm = OctToString(args(0), 512);

   double xa_vcm[512];
   OctToDouble1D(args(1), 512, xa_vcm);

   __int64 satKey;

   VcmAddSatFrFieldsML(xs_vcm, xa_vcm, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (VcmRetrieveAllData, args, nargout, "VcmRetrieveAllData") {
   __int64 satKey=OctToInt64(args(0));

   char xs_vcm[512];

   double xa_vcm[512];

   int retVar = VcmRetrieveAllData(satKey, xs_vcm, xa_vcm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(xs_vcm);
   Double1DToOct(&retval(2), xa_vcm);
   return retval;
}

DEFUN_DLD (VcmUpdateSatFrFields, args, nargout, "VcmUpdateSatFrFields") {
   __int64 satKey=OctToInt64(args(0));

   char* xs_vcm = OctToString(args(1), 512);

   double xa_vcm[512];
   OctToDouble1D(args(2), 512, xa_vcm);

   int retVar = VcmUpdateSatFrFields(satKey, xs_vcm, xa_vcm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (VcmGetField, args, nargout, "VcmGetField") {
   __int64 satKey=OctToInt64(args(0));

   int xf_Vcm=OctToInt(args(1));

   char valueStr[512];

   int retVar = VcmGetField(satKey, xf_Vcm, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(valueStr);
   return retval;
}

DEFUN_DLD (VcmSetField, args, nargout, "VcmSetField") {
   __int64 satKey=OctToInt64(args(0));

   int xf_Vcm=OctToInt(args(1));

   char* valueStr = OctToString(args(2), 512);

   int retVar = VcmSetField(satKey, xf_Vcm, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (VcmGetAllFields, args, nargout, "VcmGetAllFields") {
   __int64 satKey=OctToInt64(args(0));

   int satNum;

   char satName[8];

   char epochDtg[17];

   int revNum;

   double posECI[3];

   double velECI[3];

   char geoName[6];

   int geoZonals;

   int geoTesserals;

   char dragModel[12];

   char lunarSolar[3];

   char radPress[3];

   char earthTides[3];

   char intrackThrust[3];

   double bTerm;

   double agom;

   double ogParm;

   double cmOffset;

   int f10;

   int f10Avg;

   double apAvg;

   double tconRec[5];

   int nTerms;

   char leapYrDtg[17];

   char integMode[6];

   char partials[8];

   char stepMode[4];

   char fixStep[3];

   char stepSelection[6];

   double initStepSize;

   double errCtrl;

   double rms;

   int retVar = VcmGetAllFields(satKey, &satNum, satName, epochDtg, &revNum, posECI, velECI, geoName, &geoZonals, &geoTesserals, dragModel, lunarSolar, radPress, earthTides, intrackThrust, &bTerm, &agom, &ogParm, &cmOffset, &f10, &f10Avg, &apAvg, tconRec, &nTerms, leapYrDtg, integMode, partials, stepMode, fixStep, stepSelection, &initStepSize, &errCtrl, &rms);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(satNum);
   retval(2) = octave_value(satName);
   retval(3) = octave_value(epochDtg);
   retval(4) = octave_value(revNum);
   Double1DToOct(&retval(5), posECI);
   Double1DToOct(&retval(6), velECI);
   retval(7) = octave_value(geoName);
   retval(8) = octave_value(geoZonals);
   retval(9) = octave_value(geoTesserals);
   retval(10) = octave_value(dragModel);
   retval(11) = octave_value(lunarSolar);
   retval(12) = octave_value(radPress);
   retval(13) = octave_value(earthTides);
   retval(14) = octave_value(intrackThrust);
   retval(15) = octave_value(bTerm);
   retval(16) = octave_value(agom);
   retval(17) = octave_value(ogParm);
   retval(18) = octave_value(cmOffset);
   retval(19) = octave_value(f10);
   retval(20) = octave_value(f10Avg);
   retval(21) = octave_value(apAvg);
   Double1DToOct(&retval(22), tconRec);
   retval(23) = octave_value(nTerms);
   retval(24) = octave_value(leapYrDtg);
   retval(25) = octave_value(integMode);
   retval(26) = octave_value(partials);
   retval(27) = octave_value(stepMode);
   retval(28) = octave_value(fixStep);
   retval(29) = octave_value(stepSelection);
   retval(30) = octave_value(initStepSize);
   retval(31) = octave_value(errCtrl);
   retval(32) = octave_value(rms);
   return retval;
}

DEFUN_DLD (VcmGetLines, args, nargout, "VcmGetLines") {
   __int64 satKey=OctToInt64(args(0));

   char vcmLines[4000];

   int retVar = VcmGetLines(satKey, vcmLines);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(vcmLines);
   return retval;
}

DEFUN_DLD (Vcm1LineToMultiLine, args, nargout, "Vcm1LineToMultiLine") {
   char* vcm1Line = OctToString(args(0), 1500);

   char vcmLines[4000];

   int retVar = Vcm1LineToMultiLine(vcm1Line, vcmLines);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(vcmLines);
   return retval;
}

DEFUN_DLD (VcmMultiLineTo1Line, args, nargout, "VcmMultiLineTo1Line") {
   char* vcmLines = OctToString(args(0), 4000);

   char vcm1Line[1500];

   int retVar = VcmMultiLineTo1Line(vcmLines, vcm1Line);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(vcm1Line);
   return retval;
}

DEFUN_DLD (VcmGetSatKey, args, nargout, "VcmGetSatKey") {
   int satNum=OctToInt(args(0));

   __int64 retVar = VcmGetSatKey(satNum);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (VcmGetSatKeyML, args, nargout, "VcmGetSatKeyML") {
   int satNum=OctToInt(args(0));

   __int64 satKey;

   VcmGetSatKeyML(satNum, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (VcmFieldsToSatKey, args, nargout, "VcmFieldsToSatKey") {
   int satNum=OctToInt(args(0));

   char* epochDtg = OctToString(args(1), 20);

   __int64 retVar = VcmFieldsToSatKey(satNum, epochDtg);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (VcmFieldsToSatKeyML, args, nargout, "VcmFieldsToSatKeyML") {
   int satNum=OctToInt(args(0));

   char* epochDtg = OctToString(args(1), 20);

   __int64 satKey;

   VcmFieldsToSatKeyML(satNum, epochDtg, &satKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(satKey));
   return retval;
}

DEFUN_DLD (VcmArrayToVcmLines, args, nargout, "VcmArrayToVcmLines") {
   double xa_vcm[512];
   OctToDouble1D(args(0), 512, xa_vcm);

   char* xs_vcm = OctToString(args(1), 512);

   char vcmLines[4000];

   VcmArrayToVcmLines(xa_vcm, xs_vcm, vcmLines);

   octave_value_list retval(nargout);
   retval(0) = octave_value(vcmLines);
   return retval;
}

DEFUN_DLD (VcmArrayToVcm1Line, args, nargout, "VcmArrayToVcm1Line") {
   double xa_vcm[512];
   OctToDouble1D(args(0), 512, xa_vcm);

   char* xs_vcm = OctToString(args(1), 512);

   char vcm1Line[1500];

   VcmArrayToVcm1Line(xa_vcm, xs_vcm, vcm1Line);

   octave_value_list retval(nargout);
   retval(0) = octave_value(vcm1Line);
   return retval;
}

DEFUN_DLD (VcmStringToArray, args, nargout, "VcmStringToArray") {
   char* vcmString = OctToString(args(0), 4000);

   double xa_vcm[512];

   char xs_vcm[512];

   int retVar = VcmStringToArray(vcmString, xa_vcm, xs_vcm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_vcm);
   retval(2) = octave_value(xs_vcm);
   return retval;
}

// ========================= End of auto generated code ==========================
