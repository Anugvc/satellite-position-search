// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "Sgp4PropDll.h"
   #include "Sgp4PropDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadSgp4PropDll( )
// [ ] = FreeSgp4PropDll( )
// [retVar] = Sgp4Init(apAddr)
// [infoStr[128]] = Sgp4GetInfo()
// [retVar] = Sgp4LoadFileAll(sgp4InputFile[512])
// [retVar] = Sgp4SaveFile(sgp4File[512], saveMode, saveForm)
// [retVar] = Sgp4InitSat(satKey)
// [retVar] = Sgp4RemoveSat(satKey)
// [retVar] = Sgp4RemoveAllSats()
// [retVar] = Sgp4GetCount()
// [retVar, ds50UTC, pos[3], vel[3], llh[3]] = Sgp4PropMse(satKey, mse)
// [retVar, mse, pos[3], vel[3], llh[3]] = Sgp4PropDs50UTC(satKey, ds50UTC)
// [retVar, pos[3], vel[3]] = Sgp4PropDs50UtcPosVel(satKey, ds50UTC)
// [retVar, llh[3]] = Sgp4PropDs50UtcLLH(satKey, ds50UTC)
// [retVar, pos[3]] = Sgp4PropDs50UtcPos(satKey, ds50UTC)
// [retVar, destArr[size_destArr]] = Sgp4GetPropOut(satKey, xf_Sgp4Out, size_destArr)
// [retVar, xa_Sgp4Out[64]] = Sgp4PropAll(satKey, timeType, timeIn)
// [retVar, posNew[3], velNew[3], xa_kep[6]] = Sgp4PosVelToKep(yr, day, pos[3], vel[3])
// [retVar] = Sgp4PosVelToTleArr(pos[3], vel[3], xa_tle[64])
// [retVar, line1Out[512], line2Out[512]] = Sgp4ReepochTLE(satKey, reEpochDs50UTC)
// [retVar, csvLine[512]] = Sgp4ReepochCsv(satKey, reEpochDs50UTC)
// [] = Sgp4SetLicFilePath(licFilePath[512])
// [licFilePath[512]] = Sgp4GetLicFilePath()
// [retVar, ephemArr[size_ephemArr][7], genEphemPts] = Sgp4GenEphems(satKey, startTime, endTime, stepSize, sgp4_ephem, arrSize, size_ephemArr)
// [retVar, ephemArr[size_ephemArr][7], genEphemPts] = Sgp4GenEphems_OS(xa_tle[64], startTime, endTime, stepSize, sgp4_ephem, arrSize, size_ephemArr)
// [retVar, ephemArr[size_ephemArr][6]] = Sgp4PropAllSats(size_satKeys, satKeys[size_satKeys], numOfSats, ds50UTC, size_ephemArr)
// [retVar, xa_eqnx[6], xa_eqnx_dot[6]] = XpGetNativeElts(satKey, ds50UTC)
// [retVar, csvLine[512], xa_eqnx[6], xa_eqnx_dot[6]] = XpReepochGetNativeElts(satKey, reEpochDs50UTC)

DEFUN_DLD (LoadSgp4PropDll, args, nargout, "Load Sgp4Prop Library") {
   LoadSgp4PropDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeSgp4PropDll, args, nargout, "Free Sgp4Prop Library") {
   FreeSgp4PropDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (Sgp4Init, args, nargout, "Sgp4Init") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = Sgp4Init(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (Sgp4GetInfo, args, nargout, "Sgp4GetInfo") {
   char infoStr[128];

   Sgp4GetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (Sgp4LoadFileAll, args, nargout, "Sgp4LoadFileAll") {
   char* sgp4InputFile = OctToString(args(0), 512);

   int retVar = Sgp4LoadFileAll(sgp4InputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (Sgp4SaveFile, args, nargout, "Sgp4SaveFile") {
   char* sgp4File = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = Sgp4SaveFile(sgp4File, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (Sgp4InitSat, args, nargout, "Sgp4InitSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = Sgp4InitSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (Sgp4RemoveSat, args, nargout, "Sgp4RemoveSat") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = Sgp4RemoveSat(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (Sgp4RemoveAllSats, args, nargout, "Sgp4RemoveAllSats") {
   int retVar = Sgp4RemoveAllSats();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (Sgp4GetCount, args, nargout, "Sgp4GetCount") {
   int retVar = Sgp4GetCount();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (Sgp4PropMse, args, nargout, "Sgp4PropMse") {
   __int64 satKey=OctToInt64(args(0));

   double mse=OctToDouble(args(1));

   double ds50UTC;

   double pos[3];

   double vel[3];

   double llh[3];

   int retVar = Sgp4PropMse(satKey, mse, &ds50UTC, pos, vel, llh);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ds50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   Double1DToOct(&retval(4), llh);
   return retval;
}

DEFUN_DLD (Sgp4PropDs50UTC, args, nargout, "Sgp4PropDs50UTC") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double mse;

   double pos[3];

   double vel[3];

   double llh[3];

   int retVar = Sgp4PropDs50UTC(satKey, ds50UTC, &mse, pos, vel, llh);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(mse);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   Double1DToOct(&retval(4), llh);
   return retval;
}

DEFUN_DLD (Sgp4PropDs50UtcPosVel, args, nargout, "Sgp4PropDs50UtcPosVel") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double pos[3];

   double vel[3];

   int retVar = Sgp4PropDs50UtcPosVel(satKey, ds50UTC, pos, vel);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), pos);
   Double1DToOct(&retval(2), vel);
   return retval;
}

DEFUN_DLD (Sgp4PropDs50UtcLLH, args, nargout, "Sgp4PropDs50UtcLLH") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double llh[3];

   int retVar = Sgp4PropDs50UtcLLH(satKey, ds50UTC, llh);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), llh);
   return retval;
}

DEFUN_DLD (Sgp4PropDs50UtcPos, args, nargout, "Sgp4PropDs50UtcPos") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double pos[3];

   int retVar = Sgp4PropDs50UtcPos(satKey, ds50UTC, pos);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), pos);
   return retval;
}

DEFUN_DLD (Sgp4GetPropOut, args, nargout, "Sgp4GetPropOut") {
   __int64 satKey=OctToInt64(args(0));

   int xf_Sgp4Out=OctToInt(args(1));

   int size_destArr = OctToInt(args(2));
   double destArr[size_destArr];

   int retVar = Sgp4GetPropOut(satKey, xf_Sgp4Out, destArr);

   NDArray destArrTemp(dim_vector(1,size_destArr));
   for (int i = 0; i < size_destArr; i++) {
      destArrTemp(i) = destArr[i];
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(destArrTemp);
   return retval;
}

DEFUN_DLD (Sgp4PropAll, args, nargout, "Sgp4PropAll") {
   __int64 satKey=OctToInt64(args(0));

   int timeType=OctToInt(args(1));

   double timeIn=OctToDouble(args(2));

   double xa_Sgp4Out[64];

   int retVar = Sgp4PropAll(satKey, timeType, timeIn, xa_Sgp4Out);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_Sgp4Out);
   return retval;
}

DEFUN_DLD (Sgp4PosVelToKep, args, nargout, "Sgp4PosVelToKep") {
   int yr=OctToInt(args(0));

   double day=OctToDouble(args(1));

   double pos[3];
   OctToDouble1D(args(2), 3, pos);

   double vel[3];
   OctToDouble1D(args(3), 3, vel);

   double posNew[3];

   double velNew[3];

   double xa_kep[6];

   int retVar = Sgp4PosVelToKep(yr, day, pos, vel, posNew, velNew, xa_kep);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), posNew);
   Double1DToOct(&retval(2), velNew);
   Double1DToOct(&retval(3), xa_kep);
   return retval;
}

DEFUN_DLD (Sgp4PosVelToTleArr, args, nargout, "Sgp4PosVelToTleArr") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double xa_tle[64];
   OctToDouble1D(args(2), 64, xa_tle);

   int retVar = Sgp4PosVelToTleArr(pos, vel, xa_tle);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_tle);
   return retval;
}

DEFUN_DLD (Sgp4ReepochTLE, args, nargout, "Sgp4ReepochTLE") {
   __int64 satKey=OctToInt64(args(0));

   double reEpochDs50UTC=OctToDouble(args(1));

   char line1Out[512];

   char line2Out[512];

   int retVar = Sgp4ReepochTLE(satKey, reEpochDs50UTC, line1Out, line2Out);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(line1Out);
   retval(2) = octave_value(line2Out);
   return retval;
}

DEFUN_DLD (Sgp4ReepochCsv, args, nargout, "Sgp4ReepochCsv") {
   __int64 satKey=OctToInt64(args(0));

   double reEpochDs50UTC=OctToDouble(args(1));

   char csvLine[512];

   int retVar = Sgp4ReepochCsv(satKey, reEpochDs50UTC, csvLine);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(csvLine);
   return retval;
}

DEFUN_DLD (Sgp4SetLicFilePath, args, nargout, "Sgp4SetLicFilePath") {
   char* licFilePath = OctToString(args(0), 512);

   Sgp4SetLicFilePath(licFilePath);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (Sgp4GetLicFilePath, args, nargout, "Sgp4GetLicFilePath") {
   char licFilePath[512];

   Sgp4GetLicFilePath(licFilePath);

   octave_value_list retval(nargout);
   retval(0) = octave_value(licFilePath);
   return retval;
}

DEFUN_DLD (Sgp4GenEphems, args, nargout, "Sgp4GenEphems") {
   __int64 satKey=OctToInt64(args(0));

   double startTime=OctToDouble(args(1));

   double endTime=OctToDouble(args(2));

   double stepSize=OctToDouble(args(3));

   int sgp4_ephem=OctToInt(args(4));

   int arrSize=OctToInt(args(5));

   int size_ephemArr = OctToInt(args(6));
   double ephemArr[size_ephemArr][7];

   int genEphemPts;

   int retVar = Sgp4GenEphems(satKey, startTime, endTime, stepSize, sgp4_ephem, arrSize, ephemArr, &genEphemPts);

   NDArray ephemArrTemp(dim_vector(size_ephemArr,7 ));
   for (int i = 0; i < size_ephemArr; i++) {
      for (int j = 0; j < 7; j++) {
         ephemArrTemp(i,j) = ephemArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ephemArrTemp);
   retval(2) = octave_value(genEphemPts);
   return retval;
}

DEFUN_DLD (Sgp4GenEphems_OS, args, nargout, "Sgp4GenEphems_OS") {
   double xa_tle[64];
   OctToDouble1D(args(0), 64, xa_tle);

   double startTime=OctToDouble(args(1));

   double endTime=OctToDouble(args(2));

   double stepSize=OctToDouble(args(3));

   int sgp4_ephem=OctToInt(args(4));

   int arrSize=OctToInt(args(5));

   int size_ephemArr = OctToInt(args(6));
   double ephemArr[size_ephemArr][7];

   int genEphemPts;

   int retVar = Sgp4GenEphems_OS(xa_tle, startTime, endTime, stepSize, sgp4_ephem, arrSize, ephemArr, &genEphemPts);

   NDArray ephemArrTemp(dim_vector(size_ephemArr,7 ));
   for (int i = 0; i < size_ephemArr; i++) {
      for (int j = 0; j < 7; j++) {
         ephemArrTemp(i,j) = ephemArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ephemArrTemp);
   retval(2) = octave_value(genEphemPts);
   return retval;
}

DEFUN_DLD (Sgp4PropAllSats, args, nargout, "Sgp4PropAllSats") {
   int size_satKeys = OctToInt(args(0));
   __int64 satKeys[size_satKeys];
   OctToLong1D(args(1), size_satKeys, satKeys);

   int numOfSats=OctToInt(args(2));

   double ds50UTC=OctToDouble(args(3));

   int size_ephemArr = OctToInt(args(4));
   double ephemArr[size_ephemArr][6];

   int retVar = Sgp4PropAllSats(satKeys, numOfSats, ds50UTC, ephemArr);

   NDArray ephemArrTemp(dim_vector(size_ephemArr,6 ));
   for (int i = 0; i < size_ephemArr; i++) {
      for (int j = 0; j < 6; j++) {
         ephemArrTemp(i,j) = ephemArr[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(ephemArrTemp);
   return retval;
}

DEFUN_DLD (XpGetNativeElts, args, nargout, "XpGetNativeElts") {
   __int64 satKey=OctToInt64(args(0));

   double ds50UTC=OctToDouble(args(1));

   double xa_eqnx[6];

   double xa_eqnx_dot[6];

   int retVar = XpGetNativeElts(satKey, ds50UTC, xa_eqnx, xa_eqnx_dot);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_eqnx);
   Double1DToOct(&retval(2), xa_eqnx_dot);
   return retval;
}

DEFUN_DLD (XpReepochGetNativeElts, args, nargout, "XpReepochGetNativeElts") {
   __int64 satKey=OctToInt64(args(0));

   double reEpochDs50UTC=OctToDouble(args(1));

   char csvLine[512];

   double xa_eqnx[6];

   double xa_eqnx_dot[6];

   int retVar = XpReepochGetNativeElts(satKey, reEpochDs50UTC, csvLine, xa_eqnx, xa_eqnx_dot);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(csvLine);
   Double1DToOct(&retval(2), xa_eqnx);
   Double1DToOct(&retval(3), xa_eqnx_dot);
   return retval;
}

// ========================= End of auto generated code ==========================
