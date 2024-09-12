// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "BamDll.h"
   #include "BamDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadBamDll( )
// [ ] = FreeBamDll( )
// [retVar] = BamInit(apAddr)
// [infoStr[128]] = BamGetInfo()
// [retVar] = BamCompNumTSs(startDs50UTC, stopDs50UTC, stepSizeMin)
// [avgSDs[size_avgSDs], avgMDs[size_avgMDs], extBamArr[64], errCode] = BamCompute(size_satKeys, satKeys[size_satKeys], numSats, startDs50UTC, stopDs50UTC, stepSizeMin, size_avgSDs, size_avgMDs)
// [bamArr[size_bamArr]] = BamGetResults(xf_bam, size_bamArr)

DEFUN_DLD (LoadBamDll, args, nargout, "Load Bam Library") {
   LoadBamDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeBamDll, args, nargout, "Free Bam Library") {
   FreeBamDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (BamInit, args, nargout, "BamInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = BamInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BamGetInfo, args, nargout, "BamGetInfo") {
   char infoStr[128];

   BamGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (BamCompNumTSs, args, nargout, "BamCompNumTSs") {
   double startDs50UTC=OctToDouble(args(0));

   double stopDs50UTC=OctToDouble(args(1));

   double stepSizeMin=OctToDouble(args(2));

   int retVar = BamCompNumTSs(startDs50UTC, stopDs50UTC, stepSizeMin);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BamCompute, args, nargout, "BamCompute") {
   int size_satKeys = OctToInt(args(0));
   __int64 satKeys[size_satKeys];
   OctToLong1D(args(1), size_satKeys, satKeys);

   int numSats=OctToInt(args(2));

   double startDs50UTC=OctToDouble(args(3));

   double stopDs50UTC=OctToDouble(args(4));

   double stepSizeMin=OctToDouble(args(5));

   int size_avgSDs = OctToInt(args(6));
   double avgSDs[size_avgSDs];

   int size_avgMDs = OctToInt(args(7));
   double avgMDs[size_avgMDs];

   double extBamArr[64];

   int errCode;

   BamCompute(satKeys, numSats, startDs50UTC, stopDs50UTC, stepSizeMin, avgSDs, avgMDs, extBamArr, &errCode);

   NDArray avgSDsTemp(dim_vector(1,size_avgSDs));
   for (int i = 0; i < size_avgSDs; i++) {
      avgSDsTemp(i) = avgSDs[i];
   }

   NDArray avgMDsTemp(dim_vector(1,size_avgMDs));
   for (int i = 0; i < size_avgMDs; i++) {
      avgMDsTemp(i) = avgMDs[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(avgSDsTemp);
   retval(1) = octave_value(avgMDsTemp);
   Double1DToOct(&retval(2), extBamArr);
   retval(3) = octave_value(errCode);
   return retval;
}

DEFUN_DLD (BamGetResults, args, nargout, "BamGetResults") {
   int xf_bam=OctToInt(args(0));

   int size_bamArr = OctToInt(args(1));
   double bamArr[size_bamArr];

   BamGetResults(xf_bam, bamArr);

   NDArray bamArrTemp(dim_vector(1,size_bamArr));
   for (int i = 0; i < size_bamArr; i++) {
      bamArrTemp(i) = bamArr[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(bamArrTemp);
   return retval;
}

// ========================= End of auto generated code ==========================
