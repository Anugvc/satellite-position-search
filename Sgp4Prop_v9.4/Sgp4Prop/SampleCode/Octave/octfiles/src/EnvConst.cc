// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "EnvConstDll.h"
   #include "EnvConstDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadEnvConstDll( )
// [ ] = FreeEnvConstDll( )
// [retVar] = EnvInit(apAddr)
// [infoStr[128]] = EnvGetInfo()
// [retVar] = EnvLoadFile(envFile[512])
// [retVar] = EnvSaveFile(envConstFile[512], saveMode, saveForm)
// [retVar] = EnvGetFkIdx()
// [] = EnvSetFkIdx(xf_FkMod)
// [retVar] = EnvGetGeoIdx()
// [] = EnvSetGeoIdx(xf_GeoMod)
// [geoStr[6]] = EnvGetGeoStr()
// [] = EnvSetGeoStr(geoStr[6])
// [retVar] = EnvGetGeoConst(xf_GeoCon)
// [retVar] = EnvGetFkConst(xf_FkCon)
// [retVar] = EnvGetFkPtr()
// [] = EnvSetEarthShape(earthShape)
// [retVar] = EnvGetEarthShape()

DEFUN_DLD (LoadEnvConstDll, args, nargout, "Load EnvConst Library") {
   LoadEnvConstDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeEnvConstDll, args, nargout, "Free EnvConst Library") {
   FreeEnvConstDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (EnvInit, args, nargout, "EnvInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = EnvInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (EnvGetInfo, args, nargout, "EnvGetInfo") {
   char infoStr[128];

   EnvGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (EnvLoadFile, args, nargout, "EnvLoadFile") {
   char* envFile = OctToString(args(0), 512);

   int retVar = EnvLoadFile(envFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (EnvSaveFile, args, nargout, "EnvSaveFile") {
   char* envConstFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = EnvSaveFile(envConstFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (EnvGetFkIdx, args, nargout, "EnvGetFkIdx") {
   int retVar = EnvGetFkIdx();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (EnvSetFkIdx, args, nargout, "EnvSetFkIdx") {
   int xf_FkMod=OctToInt(args(0));

   EnvSetFkIdx(xf_FkMod);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (EnvGetGeoIdx, args, nargout, "EnvGetGeoIdx") {
   int retVar = EnvGetGeoIdx();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (EnvSetGeoIdx, args, nargout, "EnvSetGeoIdx") {
   int xf_GeoMod=OctToInt(args(0));

   EnvSetGeoIdx(xf_GeoMod);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (EnvGetGeoStr, args, nargout, "EnvGetGeoStr") {
   char geoStr[6];

   EnvGetGeoStr(geoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(geoStr);
   return retval;
}

DEFUN_DLD (EnvSetGeoStr, args, nargout, "EnvSetGeoStr") {
   char* geoStr = OctToString(args(0), 6);

   EnvSetGeoStr(geoStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (EnvGetGeoConst, args, nargout, "EnvGetGeoConst") {
   int xf_GeoCon=OctToInt(args(0));

   double retVar = EnvGetGeoConst(xf_GeoCon);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (EnvGetFkConst, args, nargout, "EnvGetFkConst") {
   int xf_FkCon=OctToInt(args(0));

   double retVar = EnvGetFkConst(xf_FkCon);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (EnvGetFkPtr, args, nargout, "EnvGetFkPtr") {
   __int64 retVar = EnvGetFkPtr();

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (EnvSetEarthShape, args, nargout, "EnvSetEarthShape") {
   int earthShape=OctToInt(args(0));

   EnvSetEarthShape(earthShape);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (EnvGetEarthShape, args, nargout, "EnvGetEarthShape") {
   int retVar = EnvGetEarthShape();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

// ========================= End of auto generated code ==========================
