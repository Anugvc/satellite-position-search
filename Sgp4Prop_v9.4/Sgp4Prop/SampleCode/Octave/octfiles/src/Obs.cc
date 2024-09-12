// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "ObsDll.h"
   #include "ObsDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadObsDll( )
// [ ] = FreeObsDll( )
// [retVar] = ObsInit(apAddr)
// [infoStr[128]] = ObsGetInfo()
// [] = ObsSetTTYYear(ttyYear)
// [retVar] = ObsLoadFile(obsFile[512])
// [retVar] = ObsSaveFile(obsFile[512], saveMode, obsForm)
// [retVar] = ObsRemove(obsKey)
// [retVar] = ObsRemoveAll()
// [retVar] = ObsGetCount()
// [obsKeys[size_obsKeys]] = ObsGetLoaded(order, size_obsKeys)
// [retVar] = ObsLoadCard(card[512])
// [retVar] = ObsLoadTwoCards(card1[512], card2[512])
// [retVar] = ObsAddFrB3Card(card[512])
// [obsKey] = ObsAddFrB3CardML(card[512])
// [retVar, csvLine[512]] = ObsB3ToCsv(card[512])
// [retVar, card[512]] = ObsCsvToB3(csvLine[512], newSatno)
// [retVar] = ObsAddFrTTYCards(card1[512], card2[512])
// [obsKey] = ObsAddFrTTYCardsML(card1[512], card2[512])
// [retVar, csvLine[512]] = ObsTTYToCsv(card1[512], card2[512])
// [retVar, card1[512], card2[512]] = ObsCsvToTTY(csvLine[512], newSatno)
// [retVar] = ObsAddFrCsv(csvLine[512])
// [obsKey] = ObsAddFrCsvML(csvLine[512])
// [retVar] = ObsAddFrFields(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos[3], vel[3], extArr[128])
// [obsKey] = ObsAddFrFieldsML(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos[3], vel[3], extArr[128])
// [retVar] = ObsAddFrArray(xa_obs[64])
// [obsKey] = ObsAddFrArrayML(xa_obs[64])
// [retVar, secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos[3], vel[3], extArr[128]] = ObsGetAllFields(obsKey)
// [retVar, xa_obs[64]] = ObsDataToArray(obsKey)
// [retVar] = ObsUpdateFrFields(obsKey, secClass, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos[3], vel[3], extArr[128])
// [retVar, strValue[512]] = ObsGetField(obsKey, xf_Obs)
// [retVar] = ObsSetField(obsKey, xf_Obs, strValue[512])
// [retVar, b3Card[512]] = ObsGetB3Card(obsKey)
// [retVar, ttyCard1[512], ttyCard2[512]] = ObsGetTTYCard(obsKey)
// [retVar, csvline[512]] = ObsGetCsv(obsKey)
// [b3Card[512]] = ObsFieldsToB3Card(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos[3])
// [csvLine[512]] = ObsFieldsToCsv(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos[3])
// [ttyCard1[512], ttyCard2[512]] = ObsFieldsToTTYCard(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, pos[3])
// [retVar] = ObsFieldsToObsKey(satNum, senNum, obsTimeDs50utc)
// [obsKey] = ObsFieldsToObsKeyML(satNum, senNum, obsTimeDs50utc)
// [retVar, secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos[3]] = ObsB3Parse(b3ObsCard[512])
// [retVar, xa_obs[64]] = ObsParse(line1[512], line2[512])
// [retVar] = ObsLoadFileGID(obsFile[512], gid)
// [retVar] = ObsSaveFileGID(obsFile[512], gid, saveMode, obsForm)
// [retVar] = ObsRemoveGID(gid)
// [retVar] = ObsGetCountGID(gid)
// [obsKeys[size_obsKeys]] = ObsGetLoadedGID(gid, order, size_obsKeys)
// [retVar] = ObsTypeCToI(obsTypeChar)
// [retVar] = ObsTypeIToC(obsTypeInt)
// [] = ObsResetSelObs()
// [retVar, xa_obState[64]] = ObsGetStates(obsKey, range_km)
// [retVar, xa_obState[64]] = ObsDataToStates(xa_obs[64])
// [retVar, line1[512], line2[512]] = ObsArrToLines(xa_obs[64], obsForm)
// [retVar] = SetObsKeyMode(obs_keyMode)
// [retVar] = GetObsKeyMode()
// [retVar] = SatNumFrObsKey(obsKey)
// [retVar] = SenNumFrObsKey(obsKey)
// [numMatchedObss, obsKeys[size_obsKeys]] = ObsGetSelected(xa_selob[128], order, size_obsKeys)

DEFUN_DLD (LoadObsDll, args, nargout, "Load Obs Library") {
   LoadObsDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeObsDll, args, nargout, "Free Obs Library") {
   FreeObsDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (ObsInit, args, nargout, "ObsInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = ObsInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsGetInfo, args, nargout, "ObsGetInfo") {
   char infoStr[128];

   ObsGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (ObsSetTTYYear, args, nargout, "ObsSetTTYYear") {
   int ttyYear=OctToInt(args(0));

   ObsSetTTYYear(ttyYear);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (ObsLoadFile, args, nargout, "ObsLoadFile") {
   char* obsFile = OctToString(args(0), 512);

   int retVar = ObsLoadFile(obsFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsSaveFile, args, nargout, "ObsSaveFile") {
   char* obsFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int obsForm=OctToInt(args(2));

   int retVar = ObsSaveFile(obsFile, saveMode, obsForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsRemove, args, nargout, "ObsRemove") {
   __int64 obsKey=OctToInt64(args(0));

   int retVar = ObsRemove(obsKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsRemoveAll, args, nargout, "ObsRemoveAll") {
   int retVar = ObsRemoveAll();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsGetCount, args, nargout, "ObsGetCount") {
   int retVar = ObsGetCount();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsGetLoaded, args, nargout, "ObsGetLoaded") {
   int order=OctToInt(args(0));

   int size_obsKeys = OctToInt(args(1));
   __int64 obsKeys[size_obsKeys];

   ObsGetLoaded(order, obsKeys);

   charMatrix obsKeysTemp(dim_vector(size_obsKeys,20));
   for (int i = 0; i < size_obsKeys; i++) {
      obsKeysTemp.insert("                    ",i,0);
      obsKeysTemp.insert(Int64ToStr(obsKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(obsKeysTemp);
   return retval;
}

DEFUN_DLD (ObsLoadCard, args, nargout, "ObsLoadCard") {
   char* card = OctToString(args(0), 512);

   int retVar = ObsLoadCard(card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsLoadTwoCards, args, nargout, "ObsLoadTwoCards") {
   char* card1 = OctToString(args(0), 512);

   char* card2 = OctToString(args(1), 512);

   int retVar = ObsLoadTwoCards(card1, card2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsAddFrB3Card, args, nargout, "ObsAddFrB3Card") {
   char* card = OctToString(args(0), 512);

   __int64 retVar = ObsAddFrB3Card(card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (ObsAddFrB3CardML, args, nargout, "ObsAddFrB3CardML") {
   char* card = OctToString(args(0), 512);

   __int64 obsKey;

   ObsAddFrB3CardML(card, &obsKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(obsKey));
   return retval;
}

DEFUN_DLD (ObsB3ToCsv, args, nargout, "ObsB3ToCsv") {
   char* card = OctToString(args(0), 512);

   char csvLine[512];

   int retVar = ObsB3ToCsv(card, csvLine);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(csvLine);
   return retval;
}

DEFUN_DLD (ObsCsvToB3, args, nargout, "ObsCsvToB3") {
   char* csvLine = OctToString(args(0), 512);

   int newSatno=OctToInt(args(1));

   char card[512];

   int retVar = ObsCsvToB3(csvLine, newSatno, card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(card);
   return retval;
}

DEFUN_DLD (ObsAddFrTTYCards, args, nargout, "ObsAddFrTTYCards") {
   char* card1 = OctToString(args(0), 512);

   char* card2 = OctToString(args(1), 512);

   __int64 retVar = ObsAddFrTTYCards(card1, card2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (ObsAddFrTTYCardsML, args, nargout, "ObsAddFrTTYCardsML") {
   char* card1 = OctToString(args(0), 512);

   char* card2 = OctToString(args(1), 512);

   __int64 obsKey;

   ObsAddFrTTYCardsML(card1, card2, &obsKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(obsKey));
   return retval;
}

DEFUN_DLD (ObsTTYToCsv, args, nargout, "ObsTTYToCsv") {
   char* card1 = OctToString(args(0), 512);

   char* card2 = OctToString(args(1), 512);

   char csvLine[512];

   int retVar = ObsTTYToCsv(card1, card2, csvLine);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(csvLine);
   return retval;
}

DEFUN_DLD (ObsCsvToTTY, args, nargout, "ObsCsvToTTY") {
   char* csvLine = OctToString(args(0), 512);

   int newSatno=OctToInt(args(1));

   char card1[512];

   char card2[512];

   int retVar = ObsCsvToTTY(csvLine, newSatno, card1, card2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(card1);
   retval(2) = octave_value(card2);
   return retval;
}

DEFUN_DLD (ObsAddFrCsv, args, nargout, "ObsAddFrCsv") {
   char* csvLine = OctToString(args(0), 512);

   __int64 retVar = ObsAddFrCsv(csvLine);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (ObsAddFrCsvML, args, nargout, "ObsAddFrCsvML") {
   char* csvLine = OctToString(args(0), 512);

   __int64 obsKey;

   ObsAddFrCsvML(csvLine, &obsKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(obsKey));
   return retval;
}

DEFUN_DLD (ObsAddFrFields, args, nargout, "ObsAddFrFields") {
   char secClass=OctToChar(args(0));

   int satNum=OctToInt(args(1));

   int senNum=OctToInt(args(2));

   double obsTimeDs50utc=OctToDouble(args(3));

   double elOrDec=OctToDouble(args(4));

   double azOrRA=OctToDouble(args(5));

   double range=OctToDouble(args(6));

   double rangeRate=OctToDouble(args(7));

   double elRate=OctToDouble(args(8));

   double azRate=OctToDouble(args(9));

   double rangeAccel=OctToDouble(args(10));

   char obsType=OctToChar(args(11));

   int trackInd=OctToInt(args(12));

   int astat=OctToInt(args(13));

   int siteTag=OctToInt(args(14));

   int spadocTag=OctToInt(args(15));

   double pos[3];
   OctToDouble1D(args(16), 3, pos);

   double vel[3];
   OctToDouble1D(args(17), 3, vel);

   double extArr[128];
   OctToDouble1D(args(18), 128, extArr);

   __int64 retVar = ObsAddFrFields(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, vel, extArr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (ObsAddFrFieldsML, args, nargout, "ObsAddFrFieldsML") {
   char secClass=OctToChar(args(0));

   int satNum=OctToInt(args(1));

   int senNum=OctToInt(args(2));

   double obsTimeDs50utc=OctToDouble(args(3));

   double elOrDec=OctToDouble(args(4));

   double azOrRA=OctToDouble(args(5));

   double range=OctToDouble(args(6));

   double rangeRate=OctToDouble(args(7));

   double elRate=OctToDouble(args(8));

   double azRate=OctToDouble(args(9));

   double rangeAccel=OctToDouble(args(10));

   char obsType=OctToChar(args(11));

   int trackInd=OctToInt(args(12));

   int astat=OctToInt(args(13));

   int siteTag=OctToInt(args(14));

   int spadocTag=OctToInt(args(15));

   double pos[3];
   OctToDouble1D(args(16), 3, pos);

   double vel[3];
   OctToDouble1D(args(17), 3, vel);

   double extArr[128];
   OctToDouble1D(args(18), 128, extArr);

   __int64 obsKey;

   ObsAddFrFieldsML(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, vel, extArr, &obsKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(obsKey));
   return retval;
}

DEFUN_DLD (ObsAddFrArray, args, nargout, "ObsAddFrArray") {
   double xa_obs[64];
   OctToDouble1D(args(0), 64, xa_obs);

   __int64 retVar = ObsAddFrArray(xa_obs);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (ObsAddFrArrayML, args, nargout, "ObsAddFrArrayML") {
   double xa_obs[64];
   OctToDouble1D(args(0), 64, xa_obs);

   __int64 obsKey;

   ObsAddFrArrayML(xa_obs, &obsKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(obsKey));
   return retval;
}

DEFUN_DLD (ObsGetAllFields, args, nargout, "ObsGetAllFields") {
   __int64 obsKey=OctToInt64(args(0));

   char secClass;

   int satNum;

   int senNum;

   double obsTimeDs50utc;

   double elOrDec;

   double azOrRA;

   double range;

   double rangeRate;

   double elRate;

   double azRate;

   double rangeAccel;

   char obsType;

   int trackInd;

   int astat;

   int siteTag;

   int spadocTag;

   double pos[3];

   double vel[3];

   double extArr[128];

   int retVar = ObsGetAllFields(obsKey, &secClass, &satNum, &senNum, &obsTimeDs50utc, &elOrDec, &azOrRA, &range, &rangeRate, &elRate, &azRate, &rangeAccel, &obsType, &trackInd, &astat, &siteTag, &spadocTag, pos, vel, extArr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(secClass);
   retval(2) = octave_value(satNum);
   retval(3) = octave_value(senNum);
   retval(4) = octave_value(obsTimeDs50utc);
   retval(5) = octave_value(elOrDec);
   retval(6) = octave_value(azOrRA);
   retval(7) = octave_value(range);
   retval(8) = octave_value(rangeRate);
   retval(9) = octave_value(elRate);
   retval(10) = octave_value(azRate);
   retval(11) = octave_value(rangeAccel);
   retval(12) = octave_value(obsType);
   retval(13) = octave_value(trackInd);
   retval(14) = octave_value(astat);
   retval(15) = octave_value(siteTag);
   retval(16) = octave_value(spadocTag);
   Double1DToOct(&retval(17), pos);
   Double1DToOct(&retval(18), vel);
   Double1DToOct(&retval(19), extArr);
   return retval;
}

DEFUN_DLD (ObsDataToArray, args, nargout, "ObsDataToArray") {
   __int64 obsKey=OctToInt64(args(0));

   double xa_obs[64];

   int retVar = ObsDataToArray(obsKey, xa_obs);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_obs);
   return retval;
}

DEFUN_DLD (ObsUpdateFrFields, args, nargout, "ObsUpdateFrFields") {
   __int64 obsKey=OctToInt64(args(0));

   char secClass=OctToChar(args(1));

   double elOrDec=OctToDouble(args(2));

   double azOrRA=OctToDouble(args(3));

   double range=OctToDouble(args(4));

   double rangeRate=OctToDouble(args(5));

   double elRate=OctToDouble(args(6));

   double azRate=OctToDouble(args(7));

   double rangeAccel=OctToDouble(args(8));

   char obsType=OctToChar(args(9));

   int trackInd=OctToInt(args(10));

   int astat=OctToInt(args(11));

   int siteTag=OctToInt(args(12));

   int spadocTag=OctToInt(args(13));

   double pos[3];
   OctToDouble1D(args(14), 3, pos);

   double vel[3];
   OctToDouble1D(args(15), 3, vel);

   double extArr[128];
   OctToDouble1D(args(16), 128, extArr);

   int retVar = ObsUpdateFrFields(obsKey, secClass, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, vel, extArr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsGetField, args, nargout, "ObsGetField") {
   __int64 obsKey=OctToInt64(args(0));

   int xf_Obs=OctToInt(args(1));

   char strValue[512];

   int retVar = ObsGetField(obsKey, xf_Obs, strValue);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(strValue);
   return retval;
}

DEFUN_DLD (ObsSetField, args, nargout, "ObsSetField") {
   __int64 obsKey=OctToInt64(args(0));

   int xf_Obs=OctToInt(args(1));

   char* strValue = OctToString(args(2), 512);

   int retVar = ObsSetField(obsKey, xf_Obs, strValue);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsGetB3Card, args, nargout, "ObsGetB3Card") {
   __int64 obsKey=OctToInt64(args(0));

   char b3Card[512];

   int retVar = ObsGetB3Card(obsKey, b3Card);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(b3Card);
   return retval;
}

DEFUN_DLD (ObsGetTTYCard, args, nargout, "ObsGetTTYCard") {
   __int64 obsKey=OctToInt64(args(0));

   char ttyCard1[512];

   char ttyCard2[512];

   int retVar = ObsGetTTYCard(obsKey, ttyCard1, ttyCard2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ttyCard1);
   retval(2) = octave_value(ttyCard2);
   return retval;
}

DEFUN_DLD (ObsGetCsv, args, nargout, "ObsGetCsv") {
   __int64 obsKey=OctToInt64(args(0));

   char csvline[512];

   int retVar = ObsGetCsv(obsKey, csvline);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(csvline);
   return retval;
}

DEFUN_DLD (ObsFieldsToB3Card, args, nargout, "ObsFieldsToB3Card") {
   char secClass=OctToChar(args(0));

   int satNum=OctToInt(args(1));

   int senNum=OctToInt(args(2));

   double obsTimeDs50utc=OctToDouble(args(3));

   double elOrDec=OctToDouble(args(4));

   double azOrRA=OctToDouble(args(5));

   double range=OctToDouble(args(6));

   double rangeRate=OctToDouble(args(7));

   double elRate=OctToDouble(args(8));

   double azRate=OctToDouble(args(9));

   double rangeAccel=OctToDouble(args(10));

   char obsType=OctToChar(args(11));

   int trackInd=OctToInt(args(12));

   int astat=OctToInt(args(13));

   int siteTag=OctToInt(args(14));

   int spadocTag=OctToInt(args(15));

   double pos[3];
   OctToDouble1D(args(16), 3, pos);

   char b3Card[512];

   ObsFieldsToB3Card(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, b3Card);

   octave_value_list retval(nargout);
   retval(0) = octave_value(b3Card);
   return retval;
}

DEFUN_DLD (ObsFieldsToCsv, args, nargout, "ObsFieldsToCsv") {
   char secClass=OctToChar(args(0));

   int satNum=OctToInt(args(1));

   int senNum=OctToInt(args(2));

   double obsTimeDs50utc=OctToDouble(args(3));

   double elOrDec=OctToDouble(args(4));

   double azOrRA=OctToDouble(args(5));

   double range=OctToDouble(args(6));

   double rangeRate=OctToDouble(args(7));

   double elRate=OctToDouble(args(8));

   double azRate=OctToDouble(args(9));

   double rangeAccel=OctToDouble(args(10));

   char obsType=OctToChar(args(11));

   int trackInd=OctToInt(args(12));

   int astat=OctToInt(args(13));

   int siteTag=OctToInt(args(14));

   int spadocTag=OctToInt(args(15));

   double pos[3];
   OctToDouble1D(args(16), 3, pos);

   char csvLine[512];

   ObsFieldsToCsv(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, csvLine);

   octave_value_list retval(nargout);
   retval(0) = octave_value(csvLine);
   return retval;
}

DEFUN_DLD (ObsFieldsToTTYCard, args, nargout, "ObsFieldsToTTYCard") {
   char secClass=OctToChar(args(0));

   int satNum=OctToInt(args(1));

   int senNum=OctToInt(args(2));

   double obsTimeDs50utc=OctToDouble(args(3));

   double elOrDec=OctToDouble(args(4));

   double azOrRA=OctToDouble(args(5));

   double range=OctToDouble(args(6));

   double rangeRate=OctToDouble(args(7));

   double elRate=OctToDouble(args(8));

   double azRate=OctToDouble(args(9));

   double rangeAccel=OctToDouble(args(10));

   char obsType=OctToChar(args(11));

   double pos[3];
   OctToDouble1D(args(12), 3, pos);

   char ttyCard1[512];

   char ttyCard2[512];

   ObsFieldsToTTYCard(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, pos, ttyCard1, ttyCard2);

   octave_value_list retval(nargout);
   retval(0) = octave_value(ttyCard1);
   retval(1) = octave_value(ttyCard2);
   return retval;
}

DEFUN_DLD (ObsFieldsToObsKey, args, nargout, "ObsFieldsToObsKey") {
   int satNum=OctToInt(args(0));

   int senNum=OctToInt(args(1));

   double obsTimeDs50utc=OctToDouble(args(2));

   __int64 retVar = ObsFieldsToObsKey(satNum, senNum, obsTimeDs50utc);

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (ObsFieldsToObsKeyML, args, nargout, "ObsFieldsToObsKeyML") {
   int satNum=OctToInt(args(0));

   int senNum=OctToInt(args(1));

   double obsTimeDs50utc=OctToDouble(args(2));

   __int64 obsKey;

   ObsFieldsToObsKeyML(satNum, senNum, obsTimeDs50utc, &obsKey);

   octave_value_list retval(nargout);
   retval(0) = octave_value(std::to_string(obsKey));
   return retval;
}

DEFUN_DLD (ObsB3Parse, args, nargout, "ObsB3Parse") {
   char* b3ObsCard = OctToString(args(0), 512);

   char secClass;

   int satNum;

   int senNum;

   double obsTimeDs50utc;

   double elOrDec;

   double azOrRA;

   double range;

   double rangeRate;

   double elRate;

   double azRate;

   double rangeAccel;

   char obsType;

   int trackInd;

   int astat;

   int siteTag;

   int spadocTag;

   double pos[3];

   int retVar = ObsB3Parse(b3ObsCard, &secClass, &satNum, &senNum, &obsTimeDs50utc, &elOrDec, &azOrRA, &range, &rangeRate, &elRate, &azRate, &rangeAccel, &obsType, &trackInd, &astat, &siteTag, &spadocTag, pos);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(secClass);
   retval(2) = octave_value(satNum);
   retval(3) = octave_value(senNum);
   retval(4) = octave_value(obsTimeDs50utc);
   retval(5) = octave_value(elOrDec);
   retval(6) = octave_value(azOrRA);
   retval(7) = octave_value(range);
   retval(8) = octave_value(rangeRate);
   retval(9) = octave_value(elRate);
   retval(10) = octave_value(azRate);
   retval(11) = octave_value(rangeAccel);
   retval(12) = octave_value(obsType);
   retval(13) = octave_value(trackInd);
   retval(14) = octave_value(astat);
   retval(15) = octave_value(siteTag);
   retval(16) = octave_value(spadocTag);
   Double1DToOct(&retval(17), pos);
   return retval;
}

DEFUN_DLD (ObsParse, args, nargout, "ObsParse") {
   char* line1 = OctToString(args(0), 512);

   char* line2 = OctToString(args(1), 512);

   double xa_obs[64];

   int retVar = ObsParse(line1, line2, xa_obs);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_obs);
   return retval;
}

DEFUN_DLD (ObsLoadFileGID, args, nargout, "ObsLoadFileGID") {
   char* obsFile = OctToString(args(0), 512);

   int gid=OctToInt(args(1));

   int retVar = ObsLoadFileGID(obsFile, gid);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsSaveFileGID, args, nargout, "ObsSaveFileGID") {
   char* obsFile = OctToString(args(0), 512);

   int gid=OctToInt(args(1));

   int saveMode=OctToInt(args(2));

   int obsForm=OctToInt(args(3));

   int retVar = ObsSaveFileGID(obsFile, gid, saveMode, obsForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsRemoveGID, args, nargout, "ObsRemoveGID") {
   int gid=OctToInt(args(0));

   int retVar = ObsRemoveGID(gid);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsGetCountGID, args, nargout, "ObsGetCountGID") {
   int gid=OctToInt(args(0));

   int retVar = ObsGetCountGID(gid);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsGetLoadedGID, args, nargout, "ObsGetLoadedGID") {
   int gid=OctToInt(args(0));

   int order=OctToInt(args(1));

   int size_obsKeys = OctToInt(args(2));
   __int64 obsKeys[size_obsKeys];

   ObsGetLoadedGID(gid, order, obsKeys);

   charMatrix obsKeysTemp(dim_vector(size_obsKeys,20));
   for (int i = 0; i < size_obsKeys; i++) {
      obsKeysTemp.insert("                    ",i,0);
      obsKeysTemp.insert(Int64ToStr(obsKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(obsKeysTemp);
   return retval;
}

DEFUN_DLD (ObsTypeCToI, args, nargout, "ObsTypeCToI") {
   char obsTypeChar=OctToChar(args(0));

   int retVar = ObsTypeCToI(obsTypeChar);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsTypeIToC, args, nargout, "ObsTypeIToC") {
   int obsTypeInt=OctToInt(args(0));

   char retVar = ObsTypeIToC(obsTypeInt);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsResetSelObs, args, nargout, "ObsResetSelObs") {
   ObsResetSelObs();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (ObsGetStates, args, nargout, "ObsGetStates") {
   __int64 obsKey=OctToInt64(args(0));

   double range_km=OctToDouble(args(1));

   double xa_obState[64];

   int retVar = ObsGetStates(obsKey, range_km, xa_obState);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_obState);
   return retval;
}

DEFUN_DLD (ObsDataToStates, args, nargout, "ObsDataToStates") {
   double xa_obs[64];
   OctToDouble1D(args(0), 64, xa_obs);

   double xa_obState[64];

   int retVar = ObsDataToStates(xa_obs, xa_obState);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_obState);
   return retval;
}

DEFUN_DLD (ObsArrToLines, args, nargout, "ObsArrToLines") {
   double xa_obs[64];
   OctToDouble1D(args(0), 64, xa_obs);

   int obsForm=OctToInt(args(1));

   char line1[512];

   char line2[512];

   int retVar = ObsArrToLines(xa_obs, obsForm, line1, line2);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(line1);
   retval(2) = octave_value(line2);
   return retval;
}

DEFUN_DLD (SetObsKeyMode, args, nargout, "SetObsKeyMode") {
   int obs_keyMode=OctToInt(args(0));

   int retVar = SetObsKeyMode(obs_keyMode);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (GetObsKeyMode, args, nargout, "GetObsKeyMode") {
   int retVar = GetObsKeyMode();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SatNumFrObsKey, args, nargout, "SatNumFrObsKey") {
   __int64 obsKey=OctToInt64(args(0));

   int retVar = SatNumFrObsKey(obsKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SenNumFrObsKey, args, nargout, "SenNumFrObsKey") {
   __int64 obsKey=OctToInt64(args(0));

   int retVar = SenNumFrObsKey(obsKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsGetSelected, args, nargout, "ObsGetSelected") {
   double xa_selob[128];
   OctToDouble1D(args(0), 128, xa_selob);

   int order=OctToInt(args(1));

   int numMatchedObss;

   int size_obsKeys = OctToInt(args(2));
   __int64 obsKeys[size_obsKeys];

   ObsGetSelected(xa_selob, order, &numMatchedObss, obsKeys);

   charMatrix obsKeysTemp(dim_vector(size_obsKeys,20));
   for (int i = 0; i < size_obsKeys; i++) {
      obsKeysTemp.insert("                    ",i,0);
      obsKeysTemp.insert(Int64ToStr(obsKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(numMatchedObss);
   retval(1) = octave_value(obsKeysTemp);
   return retval;
}

// ========================= End of auto generated code ==========================
