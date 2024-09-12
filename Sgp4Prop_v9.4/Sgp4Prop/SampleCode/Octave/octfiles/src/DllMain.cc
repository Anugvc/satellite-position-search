// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "DllMainDll.h"
   #include "DllMainDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadDllMainDll( )
// [ ] = FreeDllMainDll( )
// [retVar] = DllMainInit()
// [infoStr[128]] = DllMainGetInfo()
// [retVar] = DllMainLoadFile(dllMainFile[512])
// [retVar] = OpenLogFile(fileName[512])
// [] = CloseLogFile()
// [] = LogMessage(msgStr[128])
// [lastErrMsg[128]] = GetLastErrMsg()
// [lastInfoMsg[128]] = GetLastInfoMsg()
// [initDllNames[512]] = GetInitDllNames()
// [cOut, intOut, longOut, realOut, strOut[512], int1DOut[3], long1DOut[3], real1DOut[3], int2DOut[2][3], long2DOut[2][3], real2DOut[2][3]] = TestInterface(cIn, intIn, longIn, realIn, strIn[512], int1DIn[3], long1DIn[3], real1DIn[3], int2DIn[2][3], long2DIn[2][3], real2DIn[2][3])
// [] = TestInterface2(cInOut, intInOut, longInOut, realInOut, strInOut[512], int1DInOut[3], long1DInOut[3], real1DInOut[3], int2DInOut[2][3], long2DInOut[2][3], real2DInOut[2][3])
// [unk1DOut[size_unk1DOut], unk2DOut[size_unk2DOut][3]] = TestInterface3(size_unk1DIn, unk1DIn[size_unk1DIn], size_unk1DOut, unk2DIn[size_unk2DIn][3], size_unk2DOut)
// [xa_moic[size_xa_moic]] = GetMOICData(arrSize, size_xa_moic)
// [retVar] = SetElsetKeyMode(elset_keyMode)
// [retVar] = GetElsetKeyMode()
// [retVar] = SetAllKeyMode(all_keyMode)
// [retVar] = GetAllKeyMode()
// [] = ResetAllKeyMode()
// [retVar] = SetDupKeyMode(dupKeyMode)
// [retVar] = GetDupKeyMode()

DEFUN_DLD (LoadDllMainDll, args, nargout, "Load DllMain Library") {
   LoadDllMainDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeDllMainDll, args, nargout, "Free DllMain Library") {
   FreeDllMainDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (DllMainInit, args, nargout, "DllMainInit") {
   __int64 retVar = DllMainInit();

   octave_value_list retval(nargout);
   retval(0)=octave_value(std::to_string(retVar));
   return retval;
}

DEFUN_DLD (DllMainGetInfo, args, nargout, "DllMainGetInfo") {
   char infoStr[128];

   DllMainGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (DllMainLoadFile, args, nargout, "DllMainLoadFile") {
   char* dllMainFile = OctToString(args(0), 512);

   int retVar = DllMainLoadFile(dllMainFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (OpenLogFile, args, nargout, "OpenLogFile") {
   char* fileName = OctToString(args(0), 512);

   int retVar = OpenLogFile(fileName);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (CloseLogFile, args, nargout, "CloseLogFile") {
   CloseLogFile();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (LogMessage, args, nargout, "LogMessage") {
   char* msgStr = OctToString(args(0), 128);

   LogMessage(msgStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (GetLastErrMsg, args, nargout, "GetLastErrMsg") {
   char lastErrMsg[128];

   GetLastErrMsg(lastErrMsg);

   octave_value_list retval(nargout);
   retval(0) = octave_value(lastErrMsg);
   return retval;
}

DEFUN_DLD (GetLastInfoMsg, args, nargout, "GetLastInfoMsg") {
   char lastInfoMsg[128];

   GetLastInfoMsg(lastInfoMsg);

   octave_value_list retval(nargout);
   retval(0) = octave_value(lastInfoMsg);
   return retval;
}

DEFUN_DLD (GetInitDllNames, args, nargout, "GetInitDllNames") {
   char initDllNames[512];

   GetInitDllNames(initDllNames);

   octave_value_list retval(nargout);
   retval(0) = octave_value(initDllNames);
   return retval;
}

DEFUN_DLD (TestInterface, args, nargout, "TestInterface") {
   char cIn=OctToChar(args(0));

   char cOut;

   int intIn=OctToInt(args(1));

   int intOut;

   __int64 longIn=OctToInt64(args(2));

   __int64 longOut;

   double realIn=OctToDouble(args(3));

   double realOut;

   char* strIn = OctToString(args(4), 512);

   char strOut[512];

   int int1DIn[3];
   OctToInt1D(args(5), 3, int1DIn);

   int int1DOut[3];

   __int64 long1DIn[3];
   OctToLong1D(args(6), 3, long1DIn);

   __int64 long1DOut[3];

   double real1DIn[3];
   OctToDouble1D(args(7), 3, real1DIn);

   double real1DOut[3];

   int int2DIn[2][3];
   int32NDArray int2DInTemp=args(8).int32_array_value();
   for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 3; j++) {
         int2DIn[i][j]=int2DInTemp(i,j);
      }
   }

   int int2DOut[2][3];

   __int64 long2DIn[2][3];
   int64NDArray long2DInTemp=args(9).int64_array_value();
   for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 3; j++) {
         long2DIn[i][j]=long2DInTemp(i,j);
      }
   }

   __int64 long2DOut[2][3];

   double real2DIn[2][3];
   NDArray real2DInTemp=args(10).array_value();
   for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 3; j++) {
         real2DIn[i][j]=real2DInTemp(i,j);
      }
   }

   double real2DOut[2][3];

   TestInterface(cIn, &cOut, intIn, &intOut, longIn, &longOut, realIn, &realOut, strIn, strOut, int1DIn, int1DOut, long1DIn, long1DOut, real1DIn, real1DOut, int2DIn, int2DOut, long2DIn, long2DOut, real2DIn, real2DOut);

   octave_value_list retval(nargout);
   retval(0) = octave_value(cOut);
   retval(1) = octave_value(intOut);
   retval(2) = octave_value(std::to_string(longOut));
   retval(3) = octave_value(realOut);
   retval(4) = octave_value(strOut);
   Int1DToOct(&retval(5), int1DOut);
   Int641DToOct(&retval(6), long1DOut);
   Double1DToOct(&retval(7), real1DOut);
   Int2DToOct(&retval(8), int2DOut);
   Int642DToOct(&retval(9), long2DOut);
   Double2DToOct(&retval(10), real2DOut);
   return retval;
}

DEFUN_DLD (TestInterface2, args, nargout, "TestInterface2") {
   char cInOut=OctToChar(args(0));

   int intInOut=OctToInt(args(1));

   __int64 longInOut=OctToInt64(args(2));

   double realInOut=OctToDouble(args(3));

   char* strInOut = OctToString(args(4), 512);

   int int1DInOut[3];
   OctToInt1D(args(5), 3, int1DInOut);

   __int64 long1DInOut[3];
   OctToLong1D(args(6), 3, long1DInOut);

   double real1DInOut[3];
   OctToDouble1D(args(7), 3, real1DInOut);

   int int2DInOut[2][3];
   int32NDArray int2DInOutTemp=args(8).int32_array_value();
   for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 3; j++) {
         int2DInOut[i][j]=int2DInOutTemp(i,j);
      }
   }

   __int64 long2DInOut[2][3];
   int64NDArray long2DInOutTemp=args(9).int64_array_value();
   for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 3; j++) {
         long2DInOut[i][j]=long2DInOutTemp(i,j);
      }
   }

   double real2DInOut[2][3];
   NDArray real2DInOutTemp=args(10).array_value();
   for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 3; j++) {
         real2DInOut[i][j]=real2DInOutTemp(i,j);
      }
   }

   TestInterface2(&cInOut, &intInOut, &longInOut, &realInOut, strInOut, int1DInOut, long1DInOut, real1DInOut, int2DInOut, long2DInOut, real2DInOut);

   octave_value_list retval(nargout);
   retval(0) = octave_value(cInOut);
   retval(1) = octave_value(intInOut);
   retval(2) = octave_value(std::to_string(longInOut));
   retval(3) = octave_value(realInOut);
   retval(4) = octave_value(strInOut);
   Int1DToOct(&retval(5), int1DInOut);
   Int641DToOct(&retval(6), long1DInOut);
   Double1DToOct(&retval(7), real1DInOut);
   Int2DToOct(&retval(8), int2DInOut);
   Int642DToOct(&retval(9), long2DInOut);
   Double2DToOct(&retval(10), real2DInOut);
   return retval;
}

DEFUN_DLD (TestInterface3, args, nargout, "TestInterface3") {
   int size_unk1DIn = OctToInt(args(0));
   int unk1DIn[size_unk1DIn];
   OctToInt1D(args(1), size_unk1DIn, unk1DIn);

   int size_unk1DOut = OctToInt(args(2));
   int unk1DOut[size_unk1DOut];

   int size_unk2DIn = OctToInt(args(3));
   int unk2DIn[size_unk2DIn][3];
   int32NDArray unk2DInTemp=args(4).int32_array_value();
   for (int i = 0; i < size_unk2DIn; i++) {
      for (int j = 0; j < 3; j++) {
         unk2DIn[i][j]=unk2DInTemp(i,j);
      }
   }

   int size_unk2DOut = OctToInt(args(5));
   int unk2DOut[size_unk2DOut][3];

   TestInterface3(unk1DIn, unk1DOut, unk2DIn, unk2DOut);

   int32NDArray unk1DOutTemp(dim_vector(1,size_unk1DOut));
   for (int i = 0; i < size_unk1DOut; i++) {
      unk1DOutTemp(i) = unk1DOut[i];
   }

   int32NDArray unk2DOutTemp(dim_vector(size_unk2DOut,3 ));
   for (int i = 0; i < size_unk2DOut; i++) {
      for (int j = 0; j < 3; j++) {
         unk2DOutTemp(i,j) = unk2DOut[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(unk1DOutTemp);
   retval(1) = octave_value(unk2DOutTemp);
   return retval;
}

DEFUN_DLD (GetMOICData, args, nargout, "GetMOICData") {
   int arrSize=OctToInt(args(0));

   int size_xa_moic = OctToInt(args(1));
   double xa_moic[size_xa_moic];

   GetMOICData(arrSize, xa_moic);

   NDArray xa_moicTemp(dim_vector(1,size_xa_moic));
   for (int i = 0; i < size_xa_moic; i++) {
      xa_moicTemp(i) = xa_moic[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(xa_moicTemp);
   return retval;
}

DEFUN_DLD (SetElsetKeyMode, args, nargout, "SetElsetKeyMode") {
   int elset_keyMode=OctToInt(args(0));

   int retVar = SetElsetKeyMode(elset_keyMode);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (GetElsetKeyMode, args, nargout, "GetElsetKeyMode") {
   int retVar = GetElsetKeyMode();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (SetAllKeyMode, args, nargout, "SetAllKeyMode") {
   int all_keyMode=OctToInt(args(0));

   int retVar = SetAllKeyMode(all_keyMode);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (GetAllKeyMode, args, nargout, "GetAllKeyMode") {
   int retVar = GetAllKeyMode();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ResetAllKeyMode, args, nargout, "ResetAllKeyMode") {
   ResetAllKeyMode();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (SetDupKeyMode, args, nargout, "SetDupKeyMode") {
   int dupKeyMode=OctToInt(args(0));

   int retVar = SetDupKeyMode(dupKeyMode);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (GetDupKeyMode, args, nargout, "GetDupKeyMode") {
   int retVar = GetDupKeyMode();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

// ========================= End of auto generated code ==========================
