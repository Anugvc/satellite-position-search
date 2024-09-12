// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "ObsOpsDll.h"
   #include "ObsOpsDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadObsOpsDll( )
// [ ] = FreeObsOpsDll( )
// [retVar] = ObsOpsInit(apAddr)
// [infoStr[128]] = ObsOpsGetInfo()
// [retVar] = IomodLoadFile(iomodInputFile[512])
// [retVar] = IomodLoadFileAll(iomodInputFile[512])
// [retVar] = IomodSaveFile(iomodFile[512], saveMode, saveForm)
// [iomodIPCard[512]] = IomodGetIpCard()
// [printIOHG, useFirst3Obs, satNum, sortOrder, satName[8], runDC, runRotas, extArr[128]] = IomodGetIpAll()
// [] = IomodSetIpAll(printIOHG, useFirst3Obs, satNum, sortOrder, satName[8], runDC, runRotas, extArr[128])
// [retVal[512]] = IomodGetIpField(xf_IP)
// [] = IomodSetIpField(xf_IP, valueStr[512])
// [retVar, timeDs50UTC, pos[3], vel[3], arr3ObsKeys[3]] = ManyObsToPosVel(size_obsKeyArr, obsKeyArr[size_obsKeyArr], arrSize)
// [retVar, timeDs50UTC, pos[3], vel[3]] = ThreeObsToPosVel(arr3ObsKeys[3])
// [retVar, timeDs50UTC, pos[3], vel[3]] = Iomod_OS(xa_senLoc[16], numObs, xa_obsArr[size_xa_obsArr][64])
// [retVar, timeDs50UTC, pos[3], vel[3]] = TwoObsToPosVel(arr2ObsKeys[2])
// [retVar, timeDs50UTC, pos[3], vel[3]] = AnglesOnlyToPosVel(arr3ObsKeys[3], range1, range3, nhrev, ind, maxIt, pdInc, criVal)
// [retVar, trackLength] = FindTrack(size_obsKeyArr, obsKeyArr[size_obsKeyArr], arrSize, startIdx)
// [retVar, timeDs50UTC, pos[3], vel[3], trackObsKeys[3]] = ATrackToPosVel(size_obsKeys, obsKeys[size_obsKeys], trackStartIdx, trackLength)
// [xa_tri[32]] = TriGetDefParams()
// [retVar] = TriComputeToFile(size_obsKeyArr, obsKeyArr[size_obsKeyArr], arrSize, xa_tri[32], toFile[512])
// [retVar, numOvlps, xa_ovlp[size_xa_ovlp][8], numFits, xa_fit[size_xa_fit][32], nGenObs, genObsKeys[size_genObsKeys]] = TriCompute1(size_obsKeyArr, obsKeyArr[size_obsKeyArr], arrSize, xa_tri[32], size_xa_ovlp, size_xa_fit, maxGenObs, size_genObsKeys)
// [retVar, numOvlps, xa_ovlp[size_xa_ovlp][8], numFits, xa_fit[size_xa_fit][32]] = TriCompute2(size_obsKeyArr, obsKeyArr[size_obsKeyArr], arrSize, xa_tri[32], size_xa_ovlp, size_xa_fit)
// [retVar, nGenObs, genObsKeys[size_genObsKeys]] = TriCompute3(size_obsKeyArr, obsKeyArr[size_obsKeyArr], arrSize, xa_tri[32], maxGenObs, size_genObsKeys)
// [retVar] = GetWaterfallAlt()
// [retVar, rho[2], llhs[2][3], numSols] = AnglesOnlyToLLH(obsKey, assumedAltitude)
// [retVar] = LombLengthOut(ofac, hifac, nSample)
// [px[size_px], py[size_py], prob[size_prob], pxmax, pymax, probMax] = Lomb(size_x, x[size_x], size_y, y[size_y], nSample, ofac, hifac, size_px, size_py, size_prob)
// [retVar] = LombFalseProb(py, nout, ofac)
// [retVar] = LombFalseProbInv(prob, nout, ofac)
// [retVar] = LombLengthCoef(nFreq)
// [coeffs[size_coeffs]] = LombWaveFit(size_x, x[size_x], size_y, y[size_y], nSamples, size_freq, freq[size_freq], nfreq, size_coeffs)
// [retVar] = LombCalcValueFromTime(x, size_mags, mags[size_mags], size_freq, freq[size_freq], nfreq)
// [angSep, errCode] = AngleBetweenObs(obsKey1, obsKey2)

DEFUN_DLD (LoadObsOpsDll, args, nargout, "Load ObsOps Library") {
   LoadObsOpsDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeObsOpsDll, args, nargout, "Free ObsOps Library") {
   FreeObsOpsDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (ObsOpsInit, args, nargout, "ObsOpsInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = ObsOpsInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (ObsOpsGetInfo, args, nargout, "ObsOpsGetInfo") {
   char infoStr[128];

   ObsOpsGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (IomodLoadFile, args, nargout, "IomodLoadFile") {
   char* iomodInputFile = OctToString(args(0), 512);

   int retVar = IomodLoadFile(iomodInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (IomodLoadFileAll, args, nargout, "IomodLoadFileAll") {
   char* iomodInputFile = OctToString(args(0), 512);

   int retVar = IomodLoadFileAll(iomodInputFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (IomodSaveFile, args, nargout, "IomodSaveFile") {
   char* iomodFile = OctToString(args(0), 512);

   int saveMode=OctToInt(args(1));

   int saveForm=OctToInt(args(2));

   int retVar = IomodSaveFile(iomodFile, saveMode, saveForm);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (IomodGetIpCard, args, nargout, "IomodGetIpCard") {
   char iomodIPCard[512];

   IomodGetIpCard(iomodIPCard);

   octave_value_list retval(nargout);
   retval(0) = octave_value(iomodIPCard);
   return retval;
}

DEFUN_DLD (IomodGetIpAll, args, nargout, "IomodGetIpAll") {
   int printIOHG;

   int useFirst3Obs;

   int satNum;

   int sortOrder;

   char satName[8];

   int runDC;

   int runRotas;

   double extArr[128];

   IomodGetIpAll(&printIOHG, &useFirst3Obs, &satNum, &sortOrder, satName, &runDC, &runRotas, extArr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(printIOHG);
   retval(1) = octave_value(useFirst3Obs);
   retval(2) = octave_value(satNum);
   retval(3) = octave_value(sortOrder);
   retval(4) = octave_value(satName);
   retval(5) = octave_value(runDC);
   retval(6) = octave_value(runRotas);
   Double1DToOct(&retval(7), extArr);
   return retval;
}

DEFUN_DLD (IomodSetIpAll, args, nargout, "IomodSetIpAll") {
   int printIOHG=OctToInt(args(0));

   int useFirst3Obs=OctToInt(args(1));

   int satNum=OctToInt(args(2));

   int sortOrder=OctToInt(args(3));

   char* satName = OctToString(args(4), 8);

   int runDC=OctToInt(args(5));

   int runRotas=OctToInt(args(6));

   double extArr[128];
   OctToDouble1D(args(7), 128, extArr);

   IomodSetIpAll(printIOHG, useFirst3Obs, satNum, sortOrder, satName, runDC, runRotas, extArr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (IomodGetIpField, args, nargout, "IomodGetIpField") {
   int xf_IP=OctToInt(args(0));

   char retVal[512];

   IomodGetIpField(xf_IP, retVal);

   octave_value_list retval(nargout);
   retval(0) = octave_value(retVal);
   return retval;
}

DEFUN_DLD (IomodSetIpField, args, nargout, "IomodSetIpField") {
   int xf_IP=OctToInt(args(0));

   char* valueStr = OctToString(args(1), 512);

   IomodSetIpField(xf_IP, valueStr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (ManyObsToPosVel, args, nargout, "ManyObsToPosVel") {
   int size_obsKeyArr = OctToInt(args(0));
   __int64 obsKeyArr[size_obsKeyArr];
   OctToLong1D(args(1), size_obsKeyArr, obsKeyArr);

   int arrSize=OctToInt(args(2));

   double timeDs50UTC;

   double pos[3];

   double vel[3];

   __int64 arr3ObsKeys[3];

   int retVar = ManyObsToPosVel(obsKeyArr, arrSize, &timeDs50UTC, pos, vel, arr3ObsKeys);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(timeDs50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   Int641DToOct(&retval(4), arr3ObsKeys);
   return retval;
}

DEFUN_DLD (ThreeObsToPosVel, args, nargout, "ThreeObsToPosVel") {
   __int64 arr3ObsKeys[3];
   OctToLong1D(args(0), 3, arr3ObsKeys);

   double timeDs50UTC;

   double pos[3];

   double vel[3];

   int retVar = ThreeObsToPosVel(arr3ObsKeys, &timeDs50UTC, pos, vel);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(timeDs50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   return retval;
}

DEFUN_DLD (Iomod_OS, args, nargout, "Iomod_OS") {
   double xa_senLoc[16];
   OctToDouble1D(args(0), 16, xa_senLoc);

   int numObs=OctToInt(args(1));

   int size_xa_obsArr = OctToInt(args(2));
   double xa_obsArr[size_xa_obsArr][64];
   NDArray xa_obsArrTemp=args(3).array_value();
   for (int i = 0; i < size_xa_obsArr; i++) {
      for (int j = 0; j < 64; j++) {
         xa_obsArr[i][j]=xa_obsArrTemp(i,j);
      }
   }

   double timeDs50UTC;

   double pos[3];

   double vel[3];

   int retVar = Iomod_OS(xa_senLoc, numObs, xa_obsArr, &timeDs50UTC, pos, vel);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(timeDs50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   return retval;
}

DEFUN_DLD (TwoObsToPosVel, args, nargout, "TwoObsToPosVel") {
   __int64 arr2ObsKeys[2];
   OctToLong1D(args(0), 2, arr2ObsKeys);

   double timeDs50UTC;

   double pos[3];

   double vel[3];

   int retVar = TwoObsToPosVel(arr2ObsKeys, &timeDs50UTC, pos, vel);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(timeDs50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   return retval;
}

DEFUN_DLD (AnglesOnlyToPosVel, args, nargout, "AnglesOnlyToPosVel") {
   __int64 arr3ObsKeys[3];
   OctToLong1D(args(0), 3, arr3ObsKeys);

   double range1=OctToDouble(args(1));

   double range3=OctToDouble(args(2));

   int nhrev=OctToInt(args(3));

   int ind=OctToInt(args(4));

   int maxIt=OctToInt(args(5));

   double pdInc=OctToDouble(args(6));

   double criVal=OctToDouble(args(7));

   double timeDs50UTC;

   double pos[3];

   double vel[3];

   int retVar = AnglesOnlyToPosVel(arr3ObsKeys, range1, range3, nhrev, ind, maxIt, pdInc, criVal, &timeDs50UTC, pos, vel);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(timeDs50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   return retval;
}

DEFUN_DLD (FindTrack, args, nargout, "FindTrack") {
   int size_obsKeyArr = OctToInt(args(0));
   __int64 obsKeyArr[size_obsKeyArr];
   OctToLong1D(args(1), size_obsKeyArr, obsKeyArr);

   int arrSize=OctToInt(args(2));

   int startIdx=OctToInt(args(3));

   int trackLength;

   int retVar = FindTrack(obsKeyArr, arrSize, startIdx, &trackLength);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(trackLength);
   return retval;
}

DEFUN_DLD (ATrackToPosVel, args, nargout, "ATrackToPosVel") {
   int size_obsKeys = OctToInt(args(0));
   __int64 obsKeys[size_obsKeys];
   OctToLong1D(args(1), size_obsKeys, obsKeys);

   int trackStartIdx=OctToInt(args(2));

   int trackLength=OctToInt(args(3));

   double timeDs50UTC;

   double pos[3];

   double vel[3];

   __int64 trackObsKeys[3];

   int retVar = ATrackToPosVel(obsKeys, trackStartIdx, trackLength, &timeDs50UTC, pos, vel, trackObsKeys);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(timeDs50UTC);
   Double1DToOct(&retval(2), pos);
   Double1DToOct(&retval(3), vel);
   Int641DToOct(&retval(4), trackObsKeys);
   return retval;
}

DEFUN_DLD (TriGetDefParams, args, nargout, "TriGetDefParams") {
   double xa_tri[32];

   TriGetDefParams(xa_tri);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_tri);
   return retval;
}

DEFUN_DLD (TriComputeToFile, args, nargout, "TriComputeToFile") {
   int size_obsKeyArr = OctToInt(args(0));
   __int64 obsKeyArr[size_obsKeyArr];
   OctToLong1D(args(1), size_obsKeyArr, obsKeyArr);

   int arrSize=OctToInt(args(2));

   double xa_tri[32];
   OctToDouble1D(args(3), 32, xa_tri);

   char* toFile = OctToString(args(4), 512);

   int retVar = TriComputeToFile(obsKeyArr, arrSize, xa_tri, toFile);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (TriCompute1, args, nargout, "TriCompute1") {
   int size_obsKeyArr = OctToInt(args(0));
   __int64 obsKeyArr[size_obsKeyArr];
   OctToLong1D(args(1), size_obsKeyArr, obsKeyArr);

   int arrSize=OctToInt(args(2));

   double xa_tri[32];
   OctToDouble1D(args(3), 32, xa_tri);

   int numOvlps;

   int size_xa_ovlp = OctToInt(args(4));
   double xa_ovlp[size_xa_ovlp][8];

   int numFits;

   int size_xa_fit = OctToInt(args(5));
   double xa_fit[size_xa_fit][32];

   int maxGenObs=OctToInt(args(6));

   int nGenObs;

   int size_genObsKeys = OctToInt(args(7));
   __int64 genObsKeys[size_genObsKeys];

   int retVar = TriCompute1(obsKeyArr, arrSize, xa_tri, &numOvlps, xa_ovlp, &numFits, xa_fit, maxGenObs, &nGenObs, genObsKeys);

   NDArray xa_ovlpTemp(dim_vector(size_xa_ovlp,8 ));
   for (int i = 0; i < size_xa_ovlp; i++) {
      for (int j = 0; j < 8; j++) {
         xa_ovlpTemp(i,j) = xa_ovlp[i][j];
      }
   }

   NDArray xa_fitTemp(dim_vector(size_xa_fit,32 ));
   for (int i = 0; i < size_xa_fit; i++) {
      for (int j = 0; j < 32; j++) {
         xa_fitTemp(i,j) = xa_fit[i][j];
      }
   }

   charMatrix genObsKeysTemp(dim_vector(size_genObsKeys,20));
   for (int i = 0; i < size_genObsKeys; i++) {
      genObsKeysTemp.insert("                    ",i,0);
      genObsKeysTemp.insert(Int64ToStr(genObsKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(numOvlps);
   retval(2) = octave_value(xa_ovlpTemp);
   retval(3) = octave_value(numFits);
   retval(4) = octave_value(xa_fitTemp);
   retval(5) = octave_value(nGenObs);
   retval(6) = octave_value(genObsKeysTemp);
   return retval;
}

DEFUN_DLD (TriCompute2, args, nargout, "TriCompute2") {
   int size_obsKeyArr = OctToInt(args(0));
   __int64 obsKeyArr[size_obsKeyArr];
   OctToLong1D(args(1), size_obsKeyArr, obsKeyArr);

   int arrSize=OctToInt(args(2));

   double xa_tri[32];
   OctToDouble1D(args(3), 32, xa_tri);

   int numOvlps;

   int size_xa_ovlp = OctToInt(args(4));
   double xa_ovlp[size_xa_ovlp][8];

   int numFits;

   int size_xa_fit = OctToInt(args(5));
   double xa_fit[size_xa_fit][32];

   int retVar = TriCompute2(obsKeyArr, arrSize, xa_tri, &numOvlps, xa_ovlp, &numFits, xa_fit);

   NDArray xa_ovlpTemp(dim_vector(size_xa_ovlp,8 ));
   for (int i = 0; i < size_xa_ovlp; i++) {
      for (int j = 0; j < 8; j++) {
         xa_ovlpTemp(i,j) = xa_ovlp[i][j];
      }
   }

   NDArray xa_fitTemp(dim_vector(size_xa_fit,32 ));
   for (int i = 0; i < size_xa_fit; i++) {
      for (int j = 0; j < 32; j++) {
         xa_fitTemp(i,j) = xa_fit[i][j];
      }
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(numOvlps);
   retval(2) = octave_value(xa_ovlpTemp);
   retval(3) = octave_value(numFits);
   retval(4) = octave_value(xa_fitTemp);
   return retval;
}

DEFUN_DLD (TriCompute3, args, nargout, "TriCompute3") {
   int size_obsKeyArr = OctToInt(args(0));
   __int64 obsKeyArr[size_obsKeyArr];
   OctToLong1D(args(1), size_obsKeyArr, obsKeyArr);

   int arrSize=OctToInt(args(2));

   double xa_tri[32];
   OctToDouble1D(args(3), 32, xa_tri);

   int maxGenObs=OctToInt(args(4));

   int nGenObs;

   int size_genObsKeys = OctToInt(args(5));
   __int64 genObsKeys[size_genObsKeys];

   int retVar = TriCompute3(obsKeyArr, arrSize, xa_tri, maxGenObs, &nGenObs, genObsKeys);

   charMatrix genObsKeysTemp(dim_vector(size_genObsKeys,20));
   for (int i = 0; i < size_genObsKeys; i++) {
      genObsKeysTemp.insert("                    ",i,0);
      genObsKeysTemp.insert(Int64ToStr(genObsKeys[i]),i,0);
   }

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(nGenObs);
   retval(2) = octave_value(genObsKeysTemp);
   return retval;
}

DEFUN_DLD (GetWaterfallAlt, args, nargout, "GetWaterfallAlt") {
   double retVar = GetWaterfallAlt();

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AnglesOnlyToLLH, args, nargout, "AnglesOnlyToLLH") {
   __int64 obsKey=OctToInt64(args(0));

   double assumedAltitude=OctToDouble(args(1));

   double rho[2];

   double llhs[2][3];

   int numSols;

   int retVar = AnglesOnlyToLLH(obsKey, assumedAltitude, rho, llhs, &numSols);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   Double1DToOct(&retval(1), rho);
   Double2DToOct(&retval(2), llhs);
   retval(3) = octave_value(numSols);
   return retval;
}

DEFUN_DLD (LombLengthOut, args, nargout, "LombLengthOut") {
   double ofac=OctToDouble(args(0));

   double hifac=OctToDouble(args(1));

   int nSample=OctToInt(args(2));

   int retVar = LombLengthOut(ofac, hifac, nSample);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (Lomb, args, nargout, "Lomb") {
   int size_x = OctToInt(args(0));
   double x[size_x];
   OctToDouble1D(args(1), size_x, x);

   int size_y = OctToInt(args(2));
   double y[size_y];
   OctToDouble1D(args(3), size_y, y);

   int nSample=OctToInt(args(4));

   double ofac=OctToDouble(args(5));

   double hifac=OctToDouble(args(6));

   int size_px = OctToInt(args(7));
   double px[size_px];

   int size_py = OctToInt(args(8));
   double py[size_py];

   int size_prob = OctToInt(args(9));
   double prob[size_prob];

   double pxmax;

   double pymax;

   double probMax;

   Lomb(x, y, nSample, ofac, hifac, px, py, prob, &pxmax, &pymax, &probMax);

   NDArray pxTemp(dim_vector(1,size_px));
   for (int i = 0; i < size_px; i++) {
      pxTemp(i) = px[i];
   }

   NDArray pyTemp(dim_vector(1,size_py));
   for (int i = 0; i < size_py; i++) {
      pyTemp(i) = py[i];
   }

   NDArray probTemp(dim_vector(1,size_prob));
   for (int i = 0; i < size_prob; i++) {
      probTemp(i) = prob[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(pxTemp);
   retval(1) = octave_value(pyTemp);
   retval(2) = octave_value(probTemp);
   retval(3) = octave_value(pxmax);
   retval(4) = octave_value(pymax);
   retval(5) = octave_value(probMax);
   return retval;
}

DEFUN_DLD (LombFalseProb, args, nargout, "LombFalseProb") {
   double py=OctToDouble(args(0));

   int nout=OctToInt(args(1));

   double ofac=OctToDouble(args(2));

   double retVar = LombFalseProb(py, nout, ofac);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LombFalseProbInv, args, nargout, "LombFalseProbInv") {
   double prob=OctToDouble(args(0));

   int nout=OctToInt(args(1));

   double ofac=OctToDouble(args(2));

   double retVar = LombFalseProbInv(prob, nout, ofac);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LombLengthCoef, args, nargout, "LombLengthCoef") {
   int nFreq=OctToInt(args(0));

   int retVar = LombLengthCoef(nFreq);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (LombWaveFit, args, nargout, "LombWaveFit") {
   int size_x = OctToInt(args(0));
   double x[size_x];
   OctToDouble1D(args(1), size_x, x);

   int size_y = OctToInt(args(2));
   double y[size_y];
   OctToDouble1D(args(3), size_y, y);

   int nSamples=OctToInt(args(4));

   int size_freq = OctToInt(args(5));
   double freq[size_freq];
   OctToDouble1D(args(6), size_freq, freq);

   int nfreq=OctToInt(args(7));

   int size_coeffs = OctToInt(args(8));
   double coeffs[size_coeffs];

   LombWaveFit(x, y, nSamples, freq, nfreq, coeffs);

   NDArray coeffsTemp(dim_vector(1,size_coeffs));
   for (int i = 0; i < size_coeffs; i++) {
      coeffsTemp(i) = coeffs[i];
   }

   octave_value_list retval(nargout);
   retval(0) = octave_value(coeffsTemp);
   return retval;
}

DEFUN_DLD (LombCalcValueFromTime, args, nargout, "LombCalcValueFromTime") {
   double x=OctToDouble(args(0));

   int size_mags = OctToInt(args(1));
   double mags[size_mags];
   OctToDouble1D(args(2), size_mags, mags);

   int size_freq = OctToInt(args(3));
   double freq[size_freq];
   OctToDouble1D(args(4), size_freq, freq);

   int nfreq=OctToInt(args(5));

   double retVar = LombCalcValueFromTime(x, mags, freq, nfreq);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AngleBetweenObs, args, nargout, "AngleBetweenObs") {
   __int64 obsKey1=OctToInt64(args(0));

   __int64 obsKey2=OctToInt64(args(1));

   double angSep;

   int errCode;

   AngleBetweenObs(obsKey1, obsKey2, &angSep, &errCode);

   octave_value_list retval(nargout);
   retval(0) = octave_value(angSep);
   retval(1) = octave_value(errCode);
   return retval;
}

// ========================= End of auto generated code ==========================
