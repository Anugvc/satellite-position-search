// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "ElOpsDll.h"
   #include "ElOpsDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadElOpsDll( )
// [ ] = FreeElOpsDll( )
// [retVar] = ElOpsInit(apAddr)
// [infoStr[128]] = ElOpsGetInfo()
// [retVar] = IsGeoOrbit(incli, period)
// [retVar] = CompLonEastSubPt(ds50UTC, node, omega, mnAnomaly)
// [retVar, decayDs50UTC] = FindSatDecayTime(satKey, f10Avg)
// [retVar, xa_satparm[32]] = GetSatParameters(satKey)
// [retVar] = SatNumOf(satKey)
// [retVar] = AddManeuverVPStr(satKey, vpString[512])
// [retVar] = AddManeuverVPArr(satKey, xa_vp[16])

DEFUN_DLD (LoadElOpsDll, args, nargout, "Load ElOps Library") {
   LoadElOpsDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeElOpsDll, args, nargout, "Free ElOps Library") {
   FreeElOpsDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (ElOpsInit, args, nargout, "ElOpsInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = ElOpsInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ElOpsGetInfo, args, nargout, "ElOpsGetInfo") {
   char infoStr[128];

   ElOpsGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (IsGeoOrbit, args, nargout, "IsGeoOrbit") {
   double incli=OctToDouble(args(0));

   double period=OctToDouble(args(1));

   int retVar = IsGeoOrbit(incli, period);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (CompLonEastSubPt, args, nargout, "CompLonEastSubPt") {
   double ds50UTC=OctToDouble(args(0));

   double node=OctToDouble(args(1));

   double omega=OctToDouble(args(2));

   double mnAnomaly=OctToDouble(args(3));

   double retVar = CompLonEastSubPt(ds50UTC, node, omega, mnAnomaly);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (FindSatDecayTime, args, nargout, "FindSatDecayTime") {
   __int64 satKey=OctToInt64(args(0));

   double f10Avg=OctToDouble(args(1));

   double decayDs50UTC;

   int retVar = FindSatDecayTime(satKey, f10Avg, &decayDs50UTC);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(decayDs50UTC);
   return retval;
}

DEFUN_DLD (GetSatParameters, args, nargout, "GetSatParameters") {
   __int64 satKey=OctToInt64(args(0));

   double xa_satparm[32];

   int retVar = GetSatParameters(satKey, xa_satparm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_satparm);
   return retval;
}

DEFUN_DLD (SatNumOf, args, nargout, "SatNumOf") {
   __int64 satKey=OctToInt64(args(0));

   int retVar = SatNumOf(satKey);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AddManeuverVPStr, args, nargout, "AddManeuverVPStr") {
   __int64 satKey=OctToInt64(args(0));

   char* vpString = OctToString(args(1), 512);

   int retVar = AddManeuverVPStr(satKey, vpString);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AddManeuverVPArr, args, nargout, "AddManeuverVPArr") {
   __int64 satKey=OctToInt64(args(0));

   double xa_vp[16];
   OctToDouble1D(args(1), 16, xa_vp);

   int retVar = AddManeuverVPArr(satKey, xa_vp);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

// ========================= End of auto generated code ==========================
