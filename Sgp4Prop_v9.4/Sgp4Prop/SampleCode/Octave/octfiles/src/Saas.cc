// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "SaasDll.h"
   #include "SaasDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadSaasDll( )
// [ ] = FreeSaasDll( )
// [retVar] = SaasInit(apAddr)
// [infoStr[128]] = SaasGetInfo()
// [retVar, xa_satPen[size_xa_satPen][16], xa_saasRet[16]] = SaasGetResults(satKey, xa_saasrun[8], xa_msl[32], xa_ls[8], size_xa_satPen)
// [retVar] = SaasAutoConeSize(satHeight, xa_msl[32])
// [retVar] = SaasMissileFlightTime(satHeight, xa_msl[32])
// [incli, node] = ComputeLnchOrbPlane(xa_lnch[8])
// [retVar, xa_intxn[16]] = FindPlanerIntersection(satKey, xa_plnr[16])

DEFUN_DLD (LoadSaasDll, args, nargout, "Load Saas Library") {
   LoadSaasDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeSaasDll, args, nargout, "Free Saas Library") {
   FreeSaasDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (SaasInit, args, nargout, "SaasInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = SaasInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SaasGetInfo, args, nargout, "SaasGetInfo") {
   char infoStr[128];

   SaasGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (SaasGetResults, args, nargout, "SaasGetResults") {
   __int64 satKey=OctToInt64(args(0));

   double xa_saasrun[8];
   OctToDouble1D(args(1), 8, xa_saasrun);

   double xa_msl[32];
   OctToDouble1D(args(2), 32, xa_msl);

   double xa_ls[8];
   OctToDouble1D(args(3), 8, xa_ls);

   int size_xa_satPen = OctToInt(args(4));
   double xa_satPen[size_xa_satPen][16];

   double xa_saasRet[16];

   int retVar = SaasGetResults(satKey, xa_saasrun, xa_msl, xa_ls, xa_satPen, xa_saasRet);

   NDArray xa_satPenTemp(dim_vector(size_xa_satPen,16 ));
   for (int i = 0; i < size_xa_satPen; i++) {
      for (int j = 0; j < 16; j++) {
         xa_satPenTemp(i,j) = xa_satPen[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(xa_satPenTemp);
   Double1DToOct(&retval(2), xa_saasRet);
   return retval;
}

DEFUN_DLD (SaasAutoConeSize, args, nargout, "SaasAutoConeSize") {
   double satHeight=OctToDouble(args(0));

   double xa_msl[32];
   OctToDouble1D(args(1), 32, xa_msl);

   double retVar = SaasAutoConeSize(satHeight, xa_msl);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SaasMissileFlightTime, args, nargout, "SaasMissileFlightTime") {
   double satHeight=OctToDouble(args(0));

   double xa_msl[32];
   OctToDouble1D(args(1), 32, xa_msl);

   double retVar = SaasMissileFlightTime(satHeight, xa_msl);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ComputeLnchOrbPlane, args, nargout, "ComputeLnchOrbPlane") {
   double xa_lnch[8];
   OctToDouble1D(args(0), 8, xa_lnch);

   double incli;

   double node;

   ComputeLnchOrbPlane(xa_lnch, &incli, &node);

   octave_value_list retval(nargout);
   retval(0) = octave_value(incli);
   retval(1) = octave_value(node);
   return retval;
}

DEFUN_DLD (FindPlanerIntersection, args, nargout, "FindPlanerIntersection") {
   __int64 satKey=OctToInt64(args(0));

   double xa_plnr[16];
   OctToDouble1D(args(1), 16, xa_plnr);

   double xa_intxn[16];

   int retVar = FindPlanerIntersection(satKey, xa_plnr, xa_intxn);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), xa_intxn);
   return retval;
}

// ========================= End of auto generated code ==========================
