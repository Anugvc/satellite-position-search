// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "ElCompDll.h"
   #include "ElCompDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadElCompDll( )
// [ ] = FreeElCompDll( )
// [retVar] = ElCompInit(apAddr)
// [infoStr[128]] = ElCompGetInfo()
// [] = ElCompSetCriteria(xa_ecdiff[32])
// [xa_ecdiff[32]] = ElCompGetCriteria()
// [retVar, xa_elcom_pri[16], xa_elcom_sec[16], xa_elcom_deltas[16], elcom_astat] = ElCompGetResults(priSatKey, secSatKey, checkDeltaTime)
// [retVar, xa_elcom_pri[16], xa_elcom_sec[16], xa_elcom_deltas[16], elcom_astat] = ElCompGetResults_MT(xa_ecdiff[32], priSatKey, secSatKey, checkDeltaTime)
// [xa_elcom_deltas[16], elcom_astat] = ElCompFrElData(checkDeltaTime, xa_elcom_pri[16], xa_elcom_sec[16])
// [xa_elcom_deltas[16], elcom_astat] = ElCompFrElData_MT(xa_ecdiff[32], checkDeltaTime, xa_elcom_pri[16], xa_elcom_sec[16])
// [] = ElCompResetCriteria()
// [] = CocoSetCriteria(xa_ecdiff[32])
// [xa_ecdiff[32]] = CocoGetCriteria()
// [retVar, xa_satData_pri[16], xa_satData_sec[16], xa_coco[16], coco_astat] = CocoGetResults(priSatKey, secSatKey)
// [retVar, xa_satData_pri[16], xa_satData_sec[16], xa_coco[16], coco_astat] = CocoGetResults_MT(xa_ecdiff[32], priSatKey, secSatKey)
// [retVar, xa_satData_pri[16], xa_satData_sec[16], xa_coco[16]] = CocoGetResultsWOA(priSatKey, secSatKey)
// [xa_coco[16], coco_astat] = CocoFrElData(xa_satData_pri[16], xa_satData_sec[16])
// [xa_coco[16], coco_astat] = CocoFrElData_MT(xa_ecdiff[32], xa_satData_pri[16], xa_satData_sec[16])
// [xa_coco[16]] = CocoFrElDataWOA(xa_satData_pri[16], xa_satData_sec[16])
// [] = CocoResetCriteria()

DEFUN_DLD (LoadElCompDll, args, nargout, "Load ElComp Library") {
   LoadElCompDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeElCompDll, args, nargout, "Free ElComp Library") {
   FreeElCompDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (ElCompInit, args, nargout, "ElCompInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = ElCompInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ElCompGetInfo, args, nargout, "ElCompGetInfo") {
   char infoStr[128];

   ElCompGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (ElCompSetCriteria, args, nargout, "ElCompSetCriteria") {
   double xa_ecdiff[32];
   OctToDouble1D(args(0), 32, xa_ecdiff);

   ElCompSetCriteria(xa_ecdiff);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (ElCompGetCriteria, args, nargout, "ElCompGetCriteria") {
   double xa_ecdiff[32];

   ElCompGetCriteria(xa_ecdiff);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_ecdiff);
   return retval;
}

DEFUN_DLD (ElCompGetResults, args, nargout, "ElCompGetResults") {
   __int64 priSatKey=OctToInt64(args(0));

   __int64 secSatKey=OctToInt64(args(1));

   int checkDeltaTime=OctToInt(args(2));

   double xa_elcom_pri[16];

   double xa_elcom_sec[16];

   double xa_elcom_deltas[16];

   int elcom_astat;

   int retVar = ElCompGetResults(priSatKey, secSatKey, checkDeltaTime, xa_elcom_pri, xa_elcom_sec, xa_elcom_deltas, &elcom_astat);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_elcom_pri);
   Double1DToOct(&retval(2), xa_elcom_sec);
   Double1DToOct(&retval(3), xa_elcom_deltas);
   retval(4) = octave_value(elcom_astat);
   return retval;
}

DEFUN_DLD (ElCompGetResults_MT, args, nargout, "ElCompGetResults_MT") {
   double xa_ecdiff[32];
   OctToDouble1D(args(0), 32, xa_ecdiff);

   __int64 priSatKey=OctToInt64(args(1));

   __int64 secSatKey=OctToInt64(args(2));

   int checkDeltaTime=OctToInt(args(3));

   double xa_elcom_pri[16];

   double xa_elcom_sec[16];

   double xa_elcom_deltas[16];

   int elcom_astat;

   int retVar = ElCompGetResults_MT(xa_ecdiff, priSatKey, secSatKey, checkDeltaTime, xa_elcom_pri, xa_elcom_sec, xa_elcom_deltas, &elcom_astat);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_elcom_pri);
   Double1DToOct(&retval(2), xa_elcom_sec);
   Double1DToOct(&retval(3), xa_elcom_deltas);
   retval(4) = octave_value(elcom_astat);
   return retval;
}

DEFUN_DLD (ElCompFrElData, args, nargout, "ElCompFrElData") {
   int checkDeltaTime=OctToInt(args(0));

   double xa_elcom_pri[16];
   OctToDouble1D(args(1), 16, xa_elcom_pri);

   double xa_elcom_sec[16];
   OctToDouble1D(args(2), 16, xa_elcom_sec);

   double xa_elcom_deltas[16];

   int elcom_astat;

   ElCompFrElData(checkDeltaTime, xa_elcom_pri, xa_elcom_sec, xa_elcom_deltas, &elcom_astat);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_elcom_deltas);
   retval(1) = octave_value(elcom_astat);
   return retval;
}

DEFUN_DLD (ElCompFrElData_MT, args, nargout, "ElCompFrElData_MT") {
   double xa_ecdiff[32];
   OctToDouble1D(args(0), 32, xa_ecdiff);

   int checkDeltaTime=OctToInt(args(1));

   double xa_elcom_pri[16];
   OctToDouble1D(args(2), 16, xa_elcom_pri);

   double xa_elcom_sec[16];
   OctToDouble1D(args(3), 16, xa_elcom_sec);

   double xa_elcom_deltas[16];

   int elcom_astat;

   ElCompFrElData_MT(xa_ecdiff, checkDeltaTime, xa_elcom_pri, xa_elcom_sec, xa_elcom_deltas, &elcom_astat);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_elcom_deltas);
   retval(1) = octave_value(elcom_astat);
   return retval;
}

DEFUN_DLD (ElCompResetCriteria, args, nargout, "ElCompResetCriteria") {
   ElCompResetCriteria();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (CocoSetCriteria, args, nargout, "CocoSetCriteria") {
   double xa_ecdiff[32];
   OctToDouble1D(args(0), 32, xa_ecdiff);

   CocoSetCriteria(xa_ecdiff);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (CocoGetCriteria, args, nargout, "CocoGetCriteria") {
   double xa_ecdiff[32];

   CocoGetCriteria(xa_ecdiff);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_ecdiff);
   return retval;
}

DEFUN_DLD (CocoGetResults, args, nargout, "CocoGetResults") {
   __int64 priSatKey=OctToInt64(args(0));

   __int64 secSatKey=OctToInt64(args(1));

   double xa_satData_pri[16];

   double xa_satData_sec[16];

   double xa_coco[16];

   int coco_astat;

   int retVar = CocoGetResults(priSatKey, secSatKey, xa_satData_pri, xa_satData_sec, xa_coco, &coco_astat);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_satData_pri);
   Double1DToOct(&retval(2), xa_satData_sec);
   Double1DToOct(&retval(3), xa_coco);
   retval(4) = octave_value(coco_astat);
   return retval;
}

DEFUN_DLD (CocoGetResults_MT, args, nargout, "CocoGetResults_MT") {
   double xa_ecdiff[32];
   OctToDouble1D(args(0), 32, xa_ecdiff);

   __int64 priSatKey=OctToInt64(args(1));

   __int64 secSatKey=OctToInt64(args(2));

   double xa_satData_pri[16];

   double xa_satData_sec[16];

   double xa_coco[16];

   int coco_astat;

   int retVar = CocoGetResults_MT(xa_ecdiff, priSatKey, secSatKey, xa_satData_pri, xa_satData_sec, xa_coco, &coco_astat);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_satData_pri);
   Double1DToOct(&retval(2), xa_satData_sec);
   Double1DToOct(&retval(3), xa_coco);
   retval(4) = octave_value(coco_astat);
   return retval;
}

DEFUN_DLD (CocoGetResultsWOA, args, nargout, "CocoGetResultsWOA") {
   __int64 priSatKey=OctToInt64(args(0));

   __int64 secSatKey=OctToInt64(args(1));

   double xa_satData_pri[16];

   double xa_satData_sec[16];

   double xa_coco[16];

   int retVar = CocoGetResultsWOA(priSatKey, secSatKey, xa_satData_pri, xa_satData_sec, xa_coco);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_satData_pri);
   Double1DToOct(&retval(2), xa_satData_sec);
   Double1DToOct(&retval(3), xa_coco);
   return retval;
}

DEFUN_DLD (CocoFrElData, args, nargout, "CocoFrElData") {
   double xa_satData_pri[16];
   OctToDouble1D(args(0), 16, xa_satData_pri);

   double xa_satData_sec[16];
   OctToDouble1D(args(1), 16, xa_satData_sec);

   double xa_coco[16];

   int coco_astat;

   CocoFrElData(xa_satData_pri, xa_satData_sec, xa_coco, &coco_astat);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_coco);
   retval(1) = octave_value(coco_astat);
   return retval;
}

DEFUN_DLD (CocoFrElData_MT, args, nargout, "CocoFrElData_MT") {
   double xa_ecdiff[32];
   OctToDouble1D(args(0), 32, xa_ecdiff);

   double xa_satData_pri[16];
   OctToDouble1D(args(1), 16, xa_satData_pri);

   double xa_satData_sec[16];
   OctToDouble1D(args(2), 16, xa_satData_sec);

   double xa_coco[16];

   int coco_astat;

   CocoFrElData_MT(xa_ecdiff, xa_satData_pri, xa_satData_sec, xa_coco, &coco_astat);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_coco);
   retval(1) = octave_value(coco_astat);
   return retval;
}

DEFUN_DLD (CocoFrElDataWOA, args, nargout, "CocoFrElDataWOA") {
   double xa_satData_pri[16];
   OctToDouble1D(args(0), 16, xa_satData_pri);

   double xa_satData_sec[16];
   OctToDouble1D(args(1), 16, xa_satData_sec);

   double xa_coco[16];

   CocoFrElDataWOA(xa_satData_pri, xa_satData_sec, xa_coco);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_coco);
   return retval;
}

DEFUN_DLD (CocoResetCriteria, args, nargout, "CocoResetCriteria") {
   CocoResetCriteria();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

// ========================= End of auto generated code ==========================
