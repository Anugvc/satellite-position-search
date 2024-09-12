// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "TimeFuncDll.h"
   #include "TimeFuncDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadTimeFuncDll( )
// [ ] = FreeTimeFuncDll( )
// [retVar] = TimeFuncInit(apAddr)
// [infoStr[128]] = TimeFuncGetInfo()
// [retVar] = TConLoadFile(tconFile[512])
// [retVar] = TimeFuncLoadFile(tconFile[512])
// [retVar] = IsTConFileLoaded()
// [retVar] = TConSaveFile(tconFile[512], saveMode, saveForm)
// [retVar] = TConAddARec(refDs50UTC, leapDs50UTC, taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY)
// [retVar] = TConAddOne(refDs50UTC, taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY)
// [taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY] = UTCToTConRec(ds50UTC)
// [retVar] = TConRemoveAll()
// [dtg20[20]] = UTCToDTG20(ds50UTC)
// [dtg19[19]] = UTCToDTG19(ds50UTC)
// [dtg17[17]] = UTCToDTG17(ds50UTC)
// [dtg15[15]] = UTCToDTG15(ds50UTC)
// [retVar] = DTGToUTC(dtg[20])
// [retVar] = UTCToTAI(ds50UTC)
// [retVar] = UTCToUT1(ds50UTC)
// [retVar] = UTCToET(ds50UTC)
// [retVar] = TAIToUTC(ds50TAI)
// [retVar] = TAIToUT1(ds50TAI)
// [retVar] = YrDaysToUTC(year, dayOfYear)
// [year, dayOfYear] = UTCToYrDays(ds50UTC)
// [retVar] = TimeComps1ToUTC(year, dayOfYear, hh, mm, sss)
// [year, dayOfYear, hh, mm, sss] = UTCToTimeComps1(ds50UTC)
// [retVar] = TimeComps2ToUTC(year, mon, dayOfMonth, hh, mm, sss)
// [year, month, dayOfMonth, hh, mm, sss] = UTCToTimeComps2(ds50UTC)
// [retVar] = ThetaGrnwch(ds50UT1, lenvFk)
// [retVar] = ThetaGrnwchFK4(ds50UT1)
// [retVar] = ThetaGrnwchFK5(ds50UT1)
// [toArr[size_toArr]] = TimeConvFrTo(funcIdx, size_frArr, frArr[size_frArr], size_toArr)
// [startFrEpoch, stopFrEpoch, startTime, stopTime, interval] = Get6P()
// [] = Set6P(startFrEpoch, stopFrEpoch, startTime, stopTime, interval)
// [card6PLine[512]] = Get6PCardLine()
// [numOfRecs, frTimeDs50UTC, toTimeDs50UTC] = TConTimeSpan()

DEFUN_DLD (LoadTimeFuncDll, args, nargout, "Load TimeFunc Library") {
   LoadTimeFuncDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeTimeFuncDll, args, nargout, "Free TimeFunc Library") {
   FreeTimeFuncDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (TimeFuncInit, args, nargout, "TimeFuncInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = TimeFuncInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TimeFuncGetInfo, args, nargout, "TimeFuncGetInfo") {
   char infoStr[128];

   TimeFuncGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (TConLoadFile, args, nargout, "TConLoadFile") {
   char* tconFile = OctToString(args(0), 512);

   int retVar = TConLoadFile(tconFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TimeFuncLoadFile, args, nargout, "TimeFuncLoadFile") {
   char* tconFile = OctToString(args(0), 512);

   int retVar = TimeFuncLoadFile(tconFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (IsTConFileLoaded, args, nargout, "IsTConFileLoaded") {
   int retVar = IsTConFileLoaded();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TConSaveFile, args, nargout, "TConSaveFile") {
   char* tconFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = TConSaveFile(tconFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TConAddARec, args, nargout, "TConAddARec") {
   double refDs50UTC=OctToDouble(args(0));

   double leapDs50UTC=OctToDouble(args(1));

   double taiMinusUTC=OctToDouble(args(2));

   double ut1MinusUTC=OctToDouble(args(3));

   double ut1Rate=OctToDouble(args(4));

   double polarX=OctToDouble(args(5));

   double polarY=OctToDouble(args(6));

   int retVar = TConAddARec(refDs50UTC, leapDs50UTC, taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TConAddOne, args, nargout, "TConAddOne") {
   double refDs50UTC=OctToDouble(args(0));

   double taiMinusUTC=OctToDouble(args(1));

   double ut1MinusUTC=OctToDouble(args(2));

   double ut1Rate=OctToDouble(args(3));

   double polarX=OctToDouble(args(4));

   double polarY=OctToDouble(args(5));

   int retVar = TConAddOne(refDs50UTC, taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (UTCToTConRec, args, nargout, "UTCToTConRec") {
   double ds50UTC=OctToDouble(args(0));

   double taiMinusUTC;

   double ut1MinusUTC;

   double ut1Rate;

   double polarX;

   double polarY;

   UTCToTConRec(ds50UTC, &taiMinusUTC, &ut1MinusUTC, &ut1Rate, &polarX, &polarY);

   octave_value_list retval(nargout);
   retval(0) = octave_value(taiMinusUTC);
   retval(1) = octave_value(ut1MinusUTC);
   retval(2) = octave_value(ut1Rate);
   retval(3) = octave_value(polarX);
   retval(4) = octave_value(polarY);
   return retval;
}

DEFUN_DLD (TConRemoveAll, args, nargout, "TConRemoveAll") {
   int retVar = TConRemoveAll();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (UTCToDTG20, args, nargout, "UTCToDTG20") {
   double ds50UTC=OctToDouble(args(0));

   char dtg20[20];

   UTCToDTG20(ds50UTC, dtg20);

   octave_value_list retval(nargout);
   retval(0) = octave_value(dtg20);
   return retval;
}

DEFUN_DLD (UTCToDTG19, args, nargout, "UTCToDTG19") {
   double ds50UTC=OctToDouble(args(0));

   char dtg19[19];

   UTCToDTG19(ds50UTC, dtg19);

   octave_value_list retval(nargout);
   retval(0) = octave_value(dtg19);
   return retval;
}

DEFUN_DLD (UTCToDTG17, args, nargout, "UTCToDTG17") {
   double ds50UTC=OctToDouble(args(0));

   char dtg17[17];

   UTCToDTG17(ds50UTC, dtg17);

   octave_value_list retval(nargout);
   retval(0) = octave_value(dtg17);
   return retval;
}

DEFUN_DLD (UTCToDTG15, args, nargout, "UTCToDTG15") {
   double ds50UTC=OctToDouble(args(0));

   char dtg15[15];

   UTCToDTG15(ds50UTC, dtg15);

   octave_value_list retval(nargout);
   retval(0) = octave_value(dtg15);
   return retval;
}

DEFUN_DLD (DTGToUTC, args, nargout, "DTGToUTC") {
   char* dtg = OctToString(args(0), 20);

   double retVar = DTGToUTC(dtg);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (UTCToTAI, args, nargout, "UTCToTAI") {
   double ds50UTC=OctToDouble(args(0));

   double retVar = UTCToTAI(ds50UTC);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (UTCToUT1, args, nargout, "UTCToUT1") {
   double ds50UTC=OctToDouble(args(0));

   double retVar = UTCToUT1(ds50UTC);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (UTCToET, args, nargout, "UTCToET") {
   double ds50UTC=OctToDouble(args(0));

   double retVar = UTCToET(ds50UTC);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TAIToUTC, args, nargout, "TAIToUTC") {
   double ds50TAI=OctToDouble(args(0));

   double retVar = TAIToUTC(ds50TAI);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TAIToUT1, args, nargout, "TAIToUT1") {
   double ds50TAI=OctToDouble(args(0));

   double retVar = TAIToUT1(ds50TAI);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (YrDaysToUTC, args, nargout, "YrDaysToUTC") {
   int year=OctToInt(args(0));

   double dayOfYear=OctToDouble(args(1));

   double retVar = YrDaysToUTC(year, dayOfYear);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (UTCToYrDays, args, nargout, "UTCToYrDays") {
   double ds50UTC=OctToDouble(args(0));

   int year;

   double dayOfYear;

   UTCToYrDays(ds50UTC, &year, &dayOfYear);

   octave_value_list retval(nargout);
   retval(0) = octave_value(year);
   retval(1) = octave_value(dayOfYear);
   return retval;
}

DEFUN_DLD (TimeComps1ToUTC, args, nargout, "TimeComps1ToUTC") {
   int year=OctToInt(args(0));

   int dayOfYear=OctToInt(args(1));

   int hh=OctToInt(args(2));

   int mm=OctToInt(args(3));

   double sss=OctToDouble(args(4));

   double retVar = TimeComps1ToUTC(year, dayOfYear, hh, mm, sss);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (UTCToTimeComps1, args, nargout, "UTCToTimeComps1") {
   double ds50UTC=OctToDouble(args(0));

   int year;

   int dayOfYear;

   int hh;

   int mm;

   double sss;

   UTCToTimeComps1(ds50UTC, &year, &dayOfYear, &hh, &mm, &sss);

   octave_value_list retval(nargout);
   retval(0) = octave_value(year);
   retval(1) = octave_value(dayOfYear);
   retval(2) = octave_value(hh);
   retval(3) = octave_value(mm);
   retval(4) = octave_value(sss);
   return retval;
}

DEFUN_DLD (TimeComps2ToUTC, args, nargout, "TimeComps2ToUTC") {
   int year=OctToInt(args(0));

   int mon=OctToInt(args(1));

   int dayOfMonth=OctToInt(args(2));

   int hh=OctToInt(args(3));

   int mm=OctToInt(args(4));

   double sss=OctToDouble(args(5));

   double retVar = TimeComps2ToUTC(year, mon, dayOfMonth, hh, mm, sss);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (UTCToTimeComps2, args, nargout, "UTCToTimeComps2") {
   double ds50UTC=OctToDouble(args(0));

   int year;

   int month;

   int dayOfMonth;

   int hh;

   int mm;

   double sss;

   UTCToTimeComps2(ds50UTC, &year, &month, &dayOfMonth, &hh, &mm, &sss);

   octave_value_list retval(nargout);
   retval(0) = octave_value(year);
   retval(1) = octave_value(month);
   retval(2) = octave_value(dayOfMonth);
   retval(3) = octave_value(hh);
   retval(4) = octave_value(mm);
   retval(5) = octave_value(sss);
   return retval;
}

DEFUN_DLD (ThetaGrnwch, args, nargout, "ThetaGrnwch") {
   double ds50UT1=OctToDouble(args(0));

   __int64 lenvFk=OctToInt64(args(1));

   double retVar = ThetaGrnwch(ds50UT1, lenvFk);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ThetaGrnwchFK4, args, nargout, "ThetaGrnwchFK4") {
   double ds50UT1=OctToDouble(args(0));

   double retVar = ThetaGrnwchFK4(ds50UT1);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ThetaGrnwchFK5, args, nargout, "ThetaGrnwchFK5") {
   double ds50UT1=OctToDouble(args(0));

   double retVar = ThetaGrnwchFK5(ds50UT1);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TimeConvFrTo, args, nargout, "TimeConvFrTo") {
   int funcIdx=OctToInt(args(0));

   int size_frArr = OctToInt(args(1));
   double frArr[size_frArr];
   OctToDouble1D(args(2), size_frArr, frArr);

   int size_toArr = OctToInt(args(3));
   double toArr[size_toArr];

   TimeConvFrTo(funcIdx, frArr, toArr);

   NDArray toArrTemp(dim_vector(1,size_toArr));
   for (int i = 0; i < size_toArr; i++) {
      toArrTemp(i) = toArr[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(toArrTemp);
   return retval;
}

DEFUN_DLD (Get6P, args, nargout, "Get6P") {
   int startFrEpoch;

   int stopFrEpoch;

   double startTime;

   double stopTime;

   double interval;

   Get6P(&startFrEpoch, &stopFrEpoch, &startTime, &stopTime, &interval);

   octave_value_list retval(nargout);
   retval(0) = octave_value(startFrEpoch);
   retval(1) = octave_value(stopFrEpoch);
   retval(2) = octave_value(startTime);
   retval(3) = octave_value(stopTime);
   retval(4) = octave_value(interval);
   return retval;
}

DEFUN_DLD (Set6P, args, nargout, "Set6P") {
   int startFrEpoch=OctToInt(args(0));

   int stopFrEpoch=OctToInt(args(1));

   double startTime=OctToDouble(args(2));

   double stopTime=OctToDouble(args(3));

   double interval=OctToDouble(args(4));

   Set6P(startFrEpoch, stopFrEpoch, startTime, stopTime, interval);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (Get6PCardLine, args, nargout, "Get6PCardLine") {
   char card6PLine[512];

   Get6PCardLine(card6PLine);

   octave_value_list retval(nargout);
   retval(0) = octave_value(card6PLine);
   return retval;
}

DEFUN_DLD (TConTimeSpan, args, nargout, "TConTimeSpan") {
   int numOfRecs;

   double frTimeDs50UTC;

   double toTimeDs50UTC;

   TConTimeSpan(&numOfRecs, &frTimeDs50UTC, &toTimeDs50UTC);

   octave_value_list retval(nargout);
   retval(0) = octave_value(numOfRecs);
   retval(1) = octave_value(frTimeDs50UTC);
   retval(2) = octave_value(toTimeDs50UTC);
   return retval;
}

// ========================= End of auto generated code ==========================
