// This wrapper file was generated automatically by the GenDllWrappers program.
extern "C" {
   #include "AstroFuncDll.h"
   #include "AstroFuncDll.c"
   #include "DllUtils.h"
   #include "DllUtils.c"
}
#include <string.h>
#include <octave/oct.h>
#include "OctConv.h"
#include "OctConv.cc"


// [ ] = LoadAstroFuncDll( )
// [ ] = FreeAstroFuncDll( )
// [retVar] = AstroFuncInit(apAddr)
// [infoStr[128]] = AstroFuncGetInfo()
// [xa_eqnx[6]] = KepToEqnx(xa_kep[6])
// [pos[3], vel[3]] = KepToPosVel(xa_kep[6])
// [uBar[3], vBar[3], wBar[3]] = KepToUVW(xa_kep[6])
// [xa_eqnx[6]] = ClassToEqnx(xa_cls[6])
// [xa_cls[6]] = EqnxToClass(xa_eqnx[6])
// [xa_kep[6]] = EqnxToKep(xa_eqnx[6])
// [pos[3], vel[3]] = EqnxToPosVel(xa_eqnx[6])
// [xa_eqnx[6]] = PosVelToEqnx(pos[3], vel[3])
// [xa_eqnx[6]] = PosVelMuToEqnx(pos[3], vel[3], mu)
// [xa_kep[6]] = PosVelToKep(pos[3], vel[3])
// [xa_kep[6]] = PosVelMuToKep(pos[3], vel[3], mu)
// [uvec[3], vVec[3], wVec[3]] = PosVelToUUVW(pos[3], vel[3])
// [uvec[3], vVec[3], wVec[3]] = PosVelToPTW(pos[3], vel[3])
// [retVar] = SolveKepEqtn(xa_kep[6])
// [retVar] = CompTrueAnomaly(xa_kep[6])
// [retVar] = NToA(n)
// [retVar] = AToN(a)
// [retVar] = KozaiToBrouwer(eccen, incli, nKozai)
// [retVar] = BrouwerToKozai(eccen, incli, nBrouwer)
// [xa_MeanKep[6]] = KepOscToMean(xa_OscKep[6])
// [metricLLH[3]] = XYZToLLH(thetaG, metricPos[3])
// [metricLLH[3]] = XYZToLLHTime(ds50UTC, metricPos[3])
// [metricXYZ[3]] = LLHToXYZ(thetaG, metricLLH[3])
// [metricXYZ[3]] = LLHToXYZTime(ds50UTC, metricLLH[3])
// [posECI[3], velECI[3]] = EFGToECI(thetaG, posEFG[3], velEFG[3])
// [posECI[3], velECI[3]] = EFGToECITime(ds50UTC, posEFG[3], velEFG[3])
// [posEFG[3], velEFG[3]] = ECIToEFG(thetaG, posECI[3], velECI[3])
// [posEFG[3], velEFG[3]] = ECIToEFGTime(ds50UTC, posECI[3], velECI[3])
// [posEFG[3], velEFG[3]] = ECRToEFG(polarX, polarY, posECR[3], velECR[3])
// [posEFG[3], velEFG[3]] = ECRToEFGTime(ds50UTC, posECR[3], velECR[3])
// [posECR[3], velECR[3]] = EFGToECR(polarX, polarY, posEFG[3], velEFG[3])
// [posECR[3], velECR[3]] = EFGToECRTime(ds50UTC, posEFG[3], velEFG[3])
// [metricLLH[3]] = EFGPosToLLH(posEFG[3])
// [posEFG[3]] = LLHToEFGPos(metricLLH[3])
// [posDate[3], velDate[3]] = RotJ2KToDate(spectr, nutationTerms, ds50TAI, posJ2K[3], velJ2K[3])
// [posJ2K[3], velJ2K[3]] = RotDateToJ2K(spectr, nutationTerms, ds50TAI, posDate[3], velDate[3])
// [uvecSun[3], sunVecMag, uvecMoon[3], moonVecMag] = CompSunMoonPos(ds50ET)
// [uvecSun[3], sunVecMag] = CompSunPos(ds50ET)
// [uvecMoon[3], moonVecMag] = CompMoonPos(ds50ET)
// [toArr[128]] = AstroConvFrTo(xf_Conv, frArr[128])
// [l[3], a_tilde[3], d_tilde[3]] = RADecToLAD(ra, dec)
// [lh[3], ah[3], dh[3]] = AzElToLAD(az, el)
// [xa_topo[10]] = ECIToTopoComps(theta, lat, senPos[3], satPos[3], satVel[3])
// [az, el] = RaDecToAzEl(thetaG, lat, lon, ra, dec)
// [az, el] = RaDecToAzElTime(ds50UTC, lat, lon, ra, dec)
// [ra, dec] = AzElToRaDec(thetaG, lat, lon, az, el)
// [ra, dec] = AzElToRaDecTime(ds50UTC, lat, lon, az, el)
// [satPos[3], satVel[3]] = RAEToECI(theta, astroLat, xa_rae[6], senPos[3])
// [nDot, bstar] = GetInitialDrag(semiMajorAxis, eccen)
// [uvwCovMtx[6][6]] = CovMtxPTWToUVW(pos[3], vel[3], ptwCovMtx[6][6])
// [ptwCovMtx[6][6]] = CovMtxUVWToPTW(pos[3], vel[3], uvwCovMtx[6][6])
// [earthSenLimb, earthSenSat, satEarthSen] = EarthObstructionAngles(earthLimb, satECI[3], senECI[3])
// [retVar] = IsPointSunlit(ds50ET, ptEci[3])
// [raOut, declOut] = RotRADecl(nutationTerms, dir, ds50UTCIn, raIn, declIn, ds50UTCOut)
// [retVar, raOut, declOut] = RotRADec_DateToEqnx(nutationTerms, yrOfEqnx, ds50UTCIn, raIn, declIn)
// [retVar, raOut, declOut] = RotRADec_EqnxToDate(nutationTerms, yrOfEqnx, ds50UTCIn, raIn, declIn)
// [covMtxUVW[6][6]] = CovMtxEqnxToUVW(pos[3], vel[3], covMtxEqnx[6][6])
// [covMtxEqnx[6][6]] = CovMtxUVWToEqnx(pos[3], vel[3], covMtxUVW[6][6])
// [covMtxUVW[6][6]] = CovMtxECIToUVW(pos[3], vel[3], covMtxECI[6][6])
// [covMtxECI[6][6]] = CovMtxUVWToECI(pos[3], vel[3], covMtxUVW[6][6])
// [covEFG[6][6]] = CovMtxECIToEFG(thetaG, covECI[6][6])
// [covECI[6][6]] = CovMtxEFGToECI(thetaG, covEFG[6][6])
// [lta21[21]] = Mtx6x6ToLTA21(symMtx6x6[6][6])
// [symMtx6x6[6][6]] = LTA21ToMtx6x6(lta21[21])
// [lta45[45]] = Mtx9x9ToLTA45(symMtx9x9[9][9])
// [symMtx9x9[9][9]] = LTA45ToMtx9x9(lta45[45])
// [propCov[6][6]] = PropCovFrState(rms, consider, stateArray[54], cov[9][9])
// [covMtxEqnx[9][9]] = CovMtxECIToEqnx(pos[3], vel[3], covMtxECI[9][9])
// [covMtxECI[9][9]] = CovMtxEqnxToECI9x9(pos[3], vel[3], covEqnx[9][9])
// [covMtxUVW[9][9]] = CovMtxEqnxToUVW9x9(pos[3], vel[3], covEqnx[9][9])
// [propCov[6][6]] = CovMtxUpdate(rmsIn, consider, cov[9][9], stateArray[54])
// [raDelta, decDelta] = AberrationAnnual(ra, decl, dS50UTC)
// [raDelta, decDelta] = AberrationDiurnal(ra, decl, dS50UTC, senPos[3])
// [] = JplSetParameters(jplFile[512], ds50Start, ds50Stop)
// [jplFile[512], ds50Start, ds50Stop] = JplGetParameters()
// [] = JplReset()
// [uvecSun[3], sunVecMag, uvecMoon[3], moonVecMag] = JplCompSunMoonVec(ds50UTC)
// [sunVec[3], moonVec[3]] = JplCompSunMoonPos(ds50UTC)
// [] = RemoveJpl()
// [posDate[3], velDate[3]] = TemeEpochToDate(nutationTerms, epochDs50TAI, dateDs50TAI, posEpoch[3], velEpoch[3])

DEFUN_DLD (LoadAstroFuncDll, args, nargout, "Load AstroFunc Library") {
   LoadAstroFuncDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (FreeAstroFuncDll, args, nargout, "Free AstroFunc Library") {
   FreeAstroFuncDll();
   octave_value_list retval(nargout);
   retval(0)=octave_value (Matrix());
   return retval;
}

DEFUN_DLD (AstroFuncInit, args, nargout, "AstroFuncInit") {
   __int64 apAddr=OctToInt64(args(0));

   int retVar = AstroFuncInit(apAddr);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AstroFuncGetInfo, args, nargout, "AstroFuncGetInfo") {
   char infoStr[128];

   AstroFuncGetInfo(infoStr);

   octave_value_list retval(nargout);
   retval(0) = octave_value(infoStr);
   return retval;
}

DEFUN_DLD (KepToEqnx, args, nargout, "KepToEqnx") {
   double xa_kep[6];
   OctToDouble1D(args(0), 6, xa_kep);

   double xa_eqnx[6];

   KepToEqnx(xa_kep, xa_eqnx);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_eqnx);
   return retval;
}

DEFUN_DLD (KepToPosVel, args, nargout, "KepToPosVel") {
   double xa_kep[6];
   OctToDouble1D(args(0), 6, xa_kep);

   double pos[3];

   double vel[3];

   KepToPosVel(xa_kep, pos, vel);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), pos);
   Double1DToOct(&retval(1), vel);
   return retval;
}

DEFUN_DLD (KepToUVW, args, nargout, "KepToUVW") {
   double xa_kep[6];
   OctToDouble1D(args(0), 6, xa_kep);

   double uBar[3];

   double vBar[3];

   double wBar[3];

   KepToUVW(xa_kep, uBar, vBar, wBar);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), uBar);
   Double1DToOct(&retval(1), vBar);
   Double1DToOct(&retval(2), wBar);
   return retval;
}

DEFUN_DLD (ClassToEqnx, args, nargout, "ClassToEqnx") {
   double xa_cls[6];
   OctToDouble1D(args(0), 6, xa_cls);

   double xa_eqnx[6];

   ClassToEqnx(xa_cls, xa_eqnx);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_eqnx);
   return retval;
}

DEFUN_DLD (EqnxToClass, args, nargout, "EqnxToClass") {
   double xa_eqnx[6];
   OctToDouble1D(args(0), 6, xa_eqnx);

   double xa_cls[6];

   EqnxToClass(xa_eqnx, xa_cls);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_cls);
   return retval;
}

DEFUN_DLD (EqnxToKep, args, nargout, "EqnxToKep") {
   double xa_eqnx[6];
   OctToDouble1D(args(0), 6, xa_eqnx);

   double xa_kep[6];

   EqnxToKep(xa_eqnx, xa_kep);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_kep);
   return retval;
}

DEFUN_DLD (EqnxToPosVel, args, nargout, "EqnxToPosVel") {
   double xa_eqnx[6];
   OctToDouble1D(args(0), 6, xa_eqnx);

   double pos[3];

   double vel[3];

   EqnxToPosVel(xa_eqnx, pos, vel);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), pos);
   Double1DToOct(&retval(1), vel);
   return retval;
}

DEFUN_DLD (PosVelToEqnx, args, nargout, "PosVelToEqnx") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double xa_eqnx[6];

   PosVelToEqnx(pos, vel, xa_eqnx);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_eqnx);
   return retval;
}

DEFUN_DLD (PosVelMuToEqnx, args, nargout, "PosVelMuToEqnx") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double mu=OctToDouble(args(2));

   double xa_eqnx[6];

   PosVelMuToEqnx(pos, vel, mu, xa_eqnx);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_eqnx);
   return retval;
}

DEFUN_DLD (PosVelToKep, args, nargout, "PosVelToKep") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double xa_kep[6];

   PosVelToKep(pos, vel, xa_kep);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_kep);
   return retval;
}

DEFUN_DLD (PosVelMuToKep, args, nargout, "PosVelMuToKep") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double mu=OctToDouble(args(2));

   double xa_kep[6];

   PosVelMuToKep(pos, vel, mu, xa_kep);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_kep);
   return retval;
}

DEFUN_DLD (PosVelToUUVW, args, nargout, "PosVelToUUVW") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double uvec[3];

   double vVec[3];

   double wVec[3];

   PosVelToUUVW(pos, vel, uvec, vVec, wVec);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), uvec);
   Double1DToOct(&retval(1), vVec);
   Double1DToOct(&retval(2), wVec);
   return retval;
}

DEFUN_DLD (PosVelToPTW, args, nargout, "PosVelToPTW") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double uvec[3];

   double vVec[3];

   double wVec[3];

   PosVelToPTW(pos, vel, uvec, vVec, wVec);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), uvec);
   Double1DToOct(&retval(1), vVec);
   Double1DToOct(&retval(2), wVec);
   return retval;
}

DEFUN_DLD (SolveKepEqtn, args, nargout, "SolveKepEqtn") {
   double xa_kep[6];
   OctToDouble1D(args(0), 6, xa_kep);

   double retVar = SolveKepEqtn(xa_kep);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (CompTrueAnomaly, args, nargout, "CompTrueAnomaly") {
   double xa_kep[6];
   OctToDouble1D(args(0), 6, xa_kep);

   double retVar = CompTrueAnomaly(xa_kep);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (NToA, args, nargout, "NToA") {
   double n=OctToDouble(args(0));

   double retVar = NToA(n);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (AToN, args, nargout, "AToN") {
   double a=OctToDouble(args(0));

   double retVar = AToN(a);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (KozaiToBrouwer, args, nargout, "KozaiToBrouwer") {
   double eccen=OctToDouble(args(0));

   double incli=OctToDouble(args(1));

   double nKozai=OctToDouble(args(2));

   double retVar = KozaiToBrouwer(eccen, incli, nKozai);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (BrouwerToKozai, args, nargout, "BrouwerToKozai") {
   double eccen=OctToDouble(args(0));

   double incli=OctToDouble(args(1));

   double nBrouwer=OctToDouble(args(2));

   double retVar = BrouwerToKozai(eccen, incli, nBrouwer);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (KepOscToMean, args, nargout, "KepOscToMean") {
   double xa_OscKep[6];
   OctToDouble1D(args(0), 6, xa_OscKep);

   double xa_MeanKep[6];

   KepOscToMean(xa_OscKep, xa_MeanKep);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_MeanKep);
   return retval;
}

DEFUN_DLD (XYZToLLH, args, nargout, "XYZToLLH") {
   double thetaG=OctToDouble(args(0));

   double metricPos[3];
   OctToDouble1D(args(1), 3, metricPos);

   double metricLLH[3];

   XYZToLLH(thetaG, metricPos, metricLLH);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), metricLLH);
   return retval;
}

DEFUN_DLD (XYZToLLHTime, args, nargout, "XYZToLLHTime") {
   double ds50UTC=OctToDouble(args(0));

   double metricPos[3];
   OctToDouble1D(args(1), 3, metricPos);

   double metricLLH[3];

   XYZToLLHTime(ds50UTC, metricPos, metricLLH);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), metricLLH);
   return retval;
}

DEFUN_DLD (LLHToXYZ, args, nargout, "LLHToXYZ") {
   double thetaG=OctToDouble(args(0));

   double metricLLH[3];
   OctToDouble1D(args(1), 3, metricLLH);

   double metricXYZ[3];

   LLHToXYZ(thetaG, metricLLH, metricXYZ);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), metricXYZ);
   return retval;
}

DEFUN_DLD (LLHToXYZTime, args, nargout, "LLHToXYZTime") {
   double ds50UTC=OctToDouble(args(0));

   double metricLLH[3];
   OctToDouble1D(args(1), 3, metricLLH);

   double metricXYZ[3];

   LLHToXYZTime(ds50UTC, metricLLH, metricXYZ);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), metricXYZ);
   return retval;
}

DEFUN_DLD (EFGToECI, args, nargout, "EFGToECI") {
   double thetaG=OctToDouble(args(0));

   double posEFG[3];
   OctToDouble1D(args(1), 3, posEFG);

   double velEFG[3];
   OctToDouble1D(args(2), 3, velEFG);

   double posECI[3];

   double velECI[3];

   EFGToECI(thetaG, posEFG, velEFG, posECI, velECI);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posECI);
   Double1DToOct(&retval(1), velECI);
   return retval;
}

DEFUN_DLD (EFGToECITime, args, nargout, "EFGToECITime") {
   double ds50UTC=OctToDouble(args(0));

   double posEFG[3];
   OctToDouble1D(args(1), 3, posEFG);

   double velEFG[3];
   OctToDouble1D(args(2), 3, velEFG);

   double posECI[3];

   double velECI[3];

   EFGToECITime(ds50UTC, posEFG, velEFG, posECI, velECI);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posECI);
   Double1DToOct(&retval(1), velECI);
   return retval;
}

DEFUN_DLD (ECIToEFG, args, nargout, "ECIToEFG") {
   double thetaG=OctToDouble(args(0));

   double posECI[3];
   OctToDouble1D(args(1), 3, posECI);

   double velECI[3];
   OctToDouble1D(args(2), 3, velECI);

   double posEFG[3];

   double velEFG[3];

   ECIToEFG(thetaG, posECI, velECI, posEFG, velEFG);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posEFG);
   Double1DToOct(&retval(1), velEFG);
   return retval;
}

DEFUN_DLD (ECIToEFGTime, args, nargout, "ECIToEFGTime") {
   double ds50UTC=OctToDouble(args(0));

   double posECI[3];
   OctToDouble1D(args(1), 3, posECI);

   double velECI[3];
   OctToDouble1D(args(2), 3, velECI);

   double posEFG[3];

   double velEFG[3];

   ECIToEFGTime(ds50UTC, posECI, velECI, posEFG, velEFG);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posEFG);
   Double1DToOct(&retval(1), velEFG);
   return retval;
}

DEFUN_DLD (ECRToEFG, args, nargout, "ECRToEFG") {
   double polarX=OctToDouble(args(0));

   double polarY=OctToDouble(args(1));

   double posECR[3];
   OctToDouble1D(args(2), 3, posECR);

   double velECR[3];
   OctToDouble1D(args(3), 3, velECR);

   double posEFG[3];

   double velEFG[3];

   ECRToEFG(polarX, polarY, posECR, velECR, posEFG, velEFG);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posEFG);
   Double1DToOct(&retval(1), velEFG);
   return retval;
}

DEFUN_DLD (ECRToEFGTime, args, nargout, "ECRToEFGTime") {
   double ds50UTC=OctToDouble(args(0));

   double posECR[3];
   OctToDouble1D(args(1), 3, posECR);

   double velECR[3];
   OctToDouble1D(args(2), 3, velECR);

   double posEFG[3];

   double velEFG[3];

   ECRToEFGTime(ds50UTC, posECR, velECR, posEFG, velEFG);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posEFG);
   Double1DToOct(&retval(1), velEFG);
   return retval;
}

DEFUN_DLD (EFGToECR, args, nargout, "EFGToECR") {
   double polarX=OctToDouble(args(0));

   double polarY=OctToDouble(args(1));

   double posEFG[3];
   OctToDouble1D(args(2), 3, posEFG);

   double velEFG[3];
   OctToDouble1D(args(3), 3, velEFG);

   double posECR[3];

   double velECR[3];

   EFGToECR(polarX, polarY, posEFG, velEFG, posECR, velECR);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posECR);
   Double1DToOct(&retval(1), velECR);
   return retval;
}

DEFUN_DLD (EFGToECRTime, args, nargout, "EFGToECRTime") {
   double ds50UTC=OctToDouble(args(0));

   double posEFG[3];
   OctToDouble1D(args(1), 3, posEFG);

   double velEFG[3];
   OctToDouble1D(args(2), 3, velEFG);

   double posECR[3];

   double velECR[3];

   EFGToECRTime(ds50UTC, posEFG, velEFG, posECR, velECR);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posECR);
   Double1DToOct(&retval(1), velECR);
   return retval;
}

DEFUN_DLD (EFGPosToLLH, args, nargout, "EFGPosToLLH") {
   double posEFG[3];
   OctToDouble1D(args(0), 3, posEFG);

   double metricLLH[3];

   EFGPosToLLH(posEFG, metricLLH);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), metricLLH);
   return retval;
}

DEFUN_DLD (LLHToEFGPos, args, nargout, "LLHToEFGPos") {
   double metricLLH[3];
   OctToDouble1D(args(0), 3, metricLLH);

   double posEFG[3];

   LLHToEFGPos(metricLLH, posEFG);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posEFG);
   return retval;
}

DEFUN_DLD (RotJ2KToDate, args, nargout, "RotJ2KToDate") {
   int spectr=OctToInt(args(0));

   int nutationTerms=OctToInt(args(1));

   double ds50TAI=OctToDouble(args(2));

   double posJ2K[3];
   OctToDouble1D(args(3), 3, posJ2K);

   double velJ2K[3];
   OctToDouble1D(args(4), 3, velJ2K);

   double posDate[3];

   double velDate[3];

   RotJ2KToDate(spectr, nutationTerms, ds50TAI, posJ2K, velJ2K, posDate, velDate);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posDate);
   Double1DToOct(&retval(1), velDate);
   return retval;
}

DEFUN_DLD (RotDateToJ2K, args, nargout, "RotDateToJ2K") {
   int spectr=OctToInt(args(0));

   int nutationTerms=OctToInt(args(1));

   double ds50TAI=OctToDouble(args(2));

   double posDate[3];
   OctToDouble1D(args(3), 3, posDate);

   double velDate[3];
   OctToDouble1D(args(4), 3, velDate);

   double posJ2K[3];

   double velJ2K[3];

   RotDateToJ2K(spectr, nutationTerms, ds50TAI, posDate, velDate, posJ2K, velJ2K);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posJ2K);
   Double1DToOct(&retval(1), velJ2K);
   return retval;
}

DEFUN_DLD (CompSunMoonPos, args, nargout, "CompSunMoonPos") {
   double ds50ET=OctToDouble(args(0));

   double uvecSun[3];

   double sunVecMag;

   double uvecMoon[3];

   double moonVecMag;

   CompSunMoonPos(ds50ET, uvecSun, &sunVecMag, uvecMoon, &moonVecMag);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), uvecSun);
   retval(1) = octave_value(sunVecMag);
   Double1DToOct(&retval(2), uvecMoon);
   retval(3) = octave_value(moonVecMag);
   return retval;
}

DEFUN_DLD (CompSunPos, args, nargout, "CompSunPos") {
   double ds50ET=OctToDouble(args(0));

   double uvecSun[3];

   double sunVecMag;

   CompSunPos(ds50ET, uvecSun, &sunVecMag);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), uvecSun);
   retval(1) = octave_value(sunVecMag);
   return retval;
}

DEFUN_DLD (CompMoonPos, args, nargout, "CompMoonPos") {
   double ds50ET=OctToDouble(args(0));

   double uvecMoon[3];

   double moonVecMag;

   CompMoonPos(ds50ET, uvecMoon, &moonVecMag);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), uvecMoon);
   retval(1) = octave_value(moonVecMag);
   return retval;
}

DEFUN_DLD (AstroConvFrTo, args, nargout, "AstroConvFrTo") {
   int xf_Conv=OctToInt(args(0));

   double frArr[128];
   OctToDouble1D(args(1), 128, frArr);

   double toArr[128];

   AstroConvFrTo(xf_Conv, frArr, toArr);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), toArr);
   return retval;
}

DEFUN_DLD (RADecToLAD, args, nargout, "RADecToLAD") {
   double ra=OctToDouble(args(0));

   double dec=OctToDouble(args(1));

   double l[3];

   double a_tilde[3];

   double d_tilde[3];

   RADecToLAD(ra, dec, l, a_tilde, d_tilde);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), l);
   Double1DToOct(&retval(1), a_tilde);
   Double1DToOct(&retval(2), d_tilde);
   return retval;
}

DEFUN_DLD (AzElToLAD, args, nargout, "AzElToLAD") {
   double az=OctToDouble(args(0));

   double el=OctToDouble(args(1));

   double lh[3];

   double ah[3];

   double dh[3];

   AzElToLAD(az, el, lh, ah, dh);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), lh);
   Double1DToOct(&retval(1), ah);
   Double1DToOct(&retval(2), dh);
   return retval;
}

DEFUN_DLD (ECIToTopoComps, args, nargout, "ECIToTopoComps") {
   double theta=OctToDouble(args(0));

   double lat=OctToDouble(args(1));

   double senPos[3];
   OctToDouble1D(args(2), 3, senPos);

   double satPos[3];
   OctToDouble1D(args(3), 3, satPos);

   double satVel[3];
   OctToDouble1D(args(4), 3, satVel);

   double xa_topo[10];

   ECIToTopoComps(theta, lat, senPos, satPos, satVel, xa_topo);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), xa_topo);
   return retval;
}

DEFUN_DLD (RaDecToAzEl, args, nargout, "RaDecToAzEl") {
   double thetaG=OctToDouble(args(0));

   double lat=OctToDouble(args(1));

   double lon=OctToDouble(args(2));

   double ra=OctToDouble(args(3));

   double dec=OctToDouble(args(4));

   double az;

   double el;

   RaDecToAzEl(thetaG, lat, lon, ra, dec, &az, &el);

   octave_value_list retval(nargout);
   retval(0) = octave_value(az);
   retval(1) = octave_value(el);
   return retval;
}

DEFUN_DLD (RaDecToAzElTime, args, nargout, "RaDecToAzElTime") {
   double ds50UTC=OctToDouble(args(0));

   double lat=OctToDouble(args(1));

   double lon=OctToDouble(args(2));

   double ra=OctToDouble(args(3));

   double dec=OctToDouble(args(4));

   double az;

   double el;

   RaDecToAzElTime(ds50UTC, lat, lon, ra, dec, &az, &el);

   octave_value_list retval(nargout);
   retval(0) = octave_value(az);
   retval(1) = octave_value(el);
   return retval;
}

DEFUN_DLD (AzElToRaDec, args, nargout, "AzElToRaDec") {
   double thetaG=OctToDouble(args(0));

   double lat=OctToDouble(args(1));

   double lon=OctToDouble(args(2));

   double az=OctToDouble(args(3));

   double el=OctToDouble(args(4));

   double ra;

   double dec;

   AzElToRaDec(thetaG, lat, lon, az, el, &ra, &dec);

   octave_value_list retval(nargout);
   retval(0) = octave_value(ra);
   retval(1) = octave_value(dec);
   return retval;
}

DEFUN_DLD (AzElToRaDecTime, args, nargout, "AzElToRaDecTime") {
   double ds50UTC=OctToDouble(args(0));

   double lat=OctToDouble(args(1));

   double lon=OctToDouble(args(2));

   double az=OctToDouble(args(3));

   double el=OctToDouble(args(4));

   double ra;

   double dec;

   AzElToRaDecTime(ds50UTC, lat, lon, az, el, &ra, &dec);

   octave_value_list retval(nargout);
   retval(0) = octave_value(ra);
   retval(1) = octave_value(dec);
   return retval;
}

DEFUN_DLD (RAEToECI, args, nargout, "RAEToECI") {
   double theta=OctToDouble(args(0));

   double astroLat=OctToDouble(args(1));

   double xa_rae[6];
   OctToDouble1D(args(2), 6, xa_rae);

   double senPos[3];
   OctToDouble1D(args(3), 3, senPos);

   double satPos[3];

   double satVel[3];

   RAEToECI(theta, astroLat, xa_rae, senPos, satPos, satVel);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), satPos);
   Double1DToOct(&retval(1), satVel);
   return retval;
}

DEFUN_DLD (GetInitialDrag, args, nargout, "GetInitialDrag") {
   double semiMajorAxis=OctToDouble(args(0));

   double eccen=OctToDouble(args(1));

   double nDot;

   double bstar;

   GetInitialDrag(semiMajorAxis, eccen, &nDot, &bstar);

   octave_value_list retval(nargout);
   retval(0) = octave_value(nDot);
   retval(1) = octave_value(bstar);
   return retval;
}

DEFUN_DLD (CovMtxPTWToUVW, args, nargout, "CovMtxPTWToUVW") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double ptwCovMtx[6][6];
   NDArray ptwCovMtxTemp=args(2).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         ptwCovMtx[i][j]=ptwCovMtxTemp(i,j);
      }
   }

   double uvwCovMtx[6][6];

   CovMtxPTWToUVW(pos, vel, ptwCovMtx, uvwCovMtx);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), uvwCovMtx);
   return retval;
}

DEFUN_DLD (CovMtxUVWToPTW, args, nargout, "CovMtxUVWToPTW") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double uvwCovMtx[6][6];
   NDArray uvwCovMtxTemp=args(2).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         uvwCovMtx[i][j]=uvwCovMtxTemp(i,j);
      }
   }

   double ptwCovMtx[6][6];

   CovMtxUVWToPTW(pos, vel, uvwCovMtx, ptwCovMtx);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), ptwCovMtx);
   return retval;
}

DEFUN_DLD (EarthObstructionAngles, args, nargout, "EarthObstructionAngles") {
   double earthLimb=OctToDouble(args(0));

   double satECI[3];
   OctToDouble1D(args(1), 3, satECI);

   double senECI[3];
   OctToDouble1D(args(2), 3, senECI);

   double earthSenLimb;

   double earthSenSat;

   double satEarthSen;

   EarthObstructionAngles(earthLimb, satECI, senECI, &earthSenLimb, &earthSenSat, &satEarthSen);

   octave_value_list retval(nargout);
   retval(0) = octave_value(earthSenLimb);
   retval(1) = octave_value(earthSenSat);
   retval(2) = octave_value(satEarthSen);
   return retval;
}

DEFUN_DLD (IsPointSunlit, args, nargout, "IsPointSunlit") {
   double ds50ET=OctToDouble(args(0));

   double ptEci[3];
   OctToDouble1D(args(1), 3, ptEci);

   int retVar = IsPointSunlit(ds50ET, ptEci);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   return retval;
}

DEFUN_DLD (RotRADecl, args, nargout, "RotRADecl") {
   int nutationTerms=OctToInt(args(0));

   int dir=OctToInt(args(1));

   double ds50UTCIn=OctToDouble(args(2));

   double raIn=OctToDouble(args(3));

   double declIn=OctToDouble(args(4));

   double ds50UTCOut=OctToDouble(args(5));

   double raOut;

   double declOut;

   RotRADecl(nutationTerms, dir, ds50UTCIn, raIn, declIn, ds50UTCOut, &raOut, &declOut);

   octave_value_list retval(nargout);
   retval(0) = octave_value(raOut);
   retval(1) = octave_value(declOut);
   return retval;
}

DEFUN_DLD (RotRADec_DateToEqnx, args, nargout, "RotRADec_DateToEqnx") {
   int nutationTerms=OctToInt(args(0));

   int yrOfEqnx=OctToInt(args(1));

   double ds50UTCIn=OctToDouble(args(2));

   double raIn=OctToDouble(args(3));

   double declIn=OctToDouble(args(4));

   double raOut;

   double declOut;

   int retVar = RotRADec_DateToEqnx(nutationTerms, yrOfEqnx, ds50UTCIn, raIn, declIn, &raOut, &declOut);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(raOut);
   retval(2) = octave_value(declOut);
   return retval;
}

DEFUN_DLD (RotRADec_EqnxToDate, args, nargout, "RotRADec_EqnxToDate") {
   int nutationTerms=OctToInt(args(0));

   int yrOfEqnx=OctToInt(args(1));

   double ds50UTCIn=OctToDouble(args(2));

   double raIn=OctToDouble(args(3));

   double declIn=OctToDouble(args(4));

   double raOut;

   double declOut;

   int retVar = RotRADec_EqnxToDate(nutationTerms, yrOfEqnx, ds50UTCIn, raIn, declIn, &raOut, &declOut);

   octave_value_list retval(nargout);
   retval(0)=octave_value(retVar);
   retval(1) = octave_value(raOut);
   retval(2) = octave_value(declOut);
   return retval;
}

DEFUN_DLD (CovMtxEqnxToUVW, args, nargout, "CovMtxEqnxToUVW") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double covMtxEqnx[6][6];
   NDArray covMtxEqnxTemp=args(2).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         covMtxEqnx[i][j]=covMtxEqnxTemp(i,j);
      }
   }

   double covMtxUVW[6][6];

   CovMtxEqnxToUVW(pos, vel, covMtxEqnx, covMtxUVW);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), covMtxUVW);
   return retval;
}

DEFUN_DLD (CovMtxUVWToEqnx, args, nargout, "CovMtxUVWToEqnx") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double covMtxUVW[6][6];
   NDArray covMtxUVWTemp=args(2).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         covMtxUVW[i][j]=covMtxUVWTemp(i,j);
      }
   }

   double covMtxEqnx[6][6];

   CovMtxUVWToEqnx(pos, vel, covMtxUVW, covMtxEqnx);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), covMtxEqnx);
   return retval;
}

DEFUN_DLD (CovMtxECIToUVW, args, nargout, "CovMtxECIToUVW") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double covMtxECI[6][6];
   NDArray covMtxECITemp=args(2).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         covMtxECI[i][j]=covMtxECITemp(i,j);
      }
   }

   double covMtxUVW[6][6];

   CovMtxECIToUVW(pos, vel, covMtxECI, covMtxUVW);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), covMtxUVW);
   return retval;
}

DEFUN_DLD (CovMtxUVWToECI, args, nargout, "CovMtxUVWToECI") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double covMtxUVW[6][6];
   NDArray covMtxUVWTemp=args(2).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         covMtxUVW[i][j]=covMtxUVWTemp(i,j);
      }
   }

   double covMtxECI[6][6];

   CovMtxUVWToECI(pos, vel, covMtxUVW, covMtxECI);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), covMtxECI);
   return retval;
}

DEFUN_DLD (CovMtxECIToEFG, args, nargout, "CovMtxECIToEFG") {
   double thetaG=OctToDouble(args(0));

   double covECI[6][6];
   NDArray covECITemp=args(1).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         covECI[i][j]=covECITemp(i,j);
      }
   }

   double covEFG[6][6];

   CovMtxECIToEFG(thetaG, covECI, covEFG);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), covEFG);
   return retval;
}

DEFUN_DLD (CovMtxEFGToECI, args, nargout, "CovMtxEFGToECI") {
   double thetaG=OctToDouble(args(0));

   double covEFG[6][6];
   NDArray covEFGTemp=args(1).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         covEFG[i][j]=covEFGTemp(i,j);
      }
   }

   double covECI[6][6];

   CovMtxEFGToECI(thetaG, covEFG, covECI);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), covECI);
   return retval;
}

DEFUN_DLD (Mtx6x6ToLTA21, args, nargout, "Mtx6x6ToLTA21") {
   double symMtx6x6[6][6];
   NDArray symMtx6x6Temp=args(0).array_value();
   for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 6; j++) {
         symMtx6x6[i][j]=symMtx6x6Temp(i,j);
      }
   }

   double lta21[21];

   Mtx6x6ToLTA21(symMtx6x6, lta21);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), lta21);
   return retval;
}

DEFUN_DLD (LTA21ToMtx6x6, args, nargout, "LTA21ToMtx6x6") {
   double lta21[21];
   OctToDouble1D(args(0), 21, lta21);

   double symMtx6x6[6][6];

   LTA21ToMtx6x6(lta21, symMtx6x6);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), symMtx6x6);
   return retval;
}

DEFUN_DLD (Mtx9x9ToLTA45, args, nargout, "Mtx9x9ToLTA45") {
   double symMtx9x9[9][9];
   NDArray symMtx9x9Temp=args(0).array_value();
   for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
         symMtx9x9[i][j]=symMtx9x9Temp(i,j);
      }
   }

   double lta45[45];

   Mtx9x9ToLTA45(symMtx9x9, lta45);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), lta45);
   return retval;
}

DEFUN_DLD (LTA45ToMtx9x9, args, nargout, "LTA45ToMtx9x9") {
   double lta45[45];
   OctToDouble1D(args(0), 45, lta45);

   double symMtx9x9[9][9];

   LTA45ToMtx9x9(lta45, symMtx9x9);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), symMtx9x9);
   return retval;
}

DEFUN_DLD (PropCovFrState, args, nargout, "PropCovFrState") {
   double rms=OctToDouble(args(0));

   double consider=OctToDouble(args(1));

   double stateArray[54];
   OctToDouble1D(args(2), 54, stateArray);

   double cov[9][9];
   NDArray covTemp=args(3).array_value();
   for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
         cov[i][j]=covTemp(i,j);
      }
   }

   double propCov[6][6];

   PropCovFrState(rms, consider, stateArray, cov, propCov);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), propCov);
   return retval;
}

DEFUN_DLD (CovMtxECIToEqnx, args, nargout, "CovMtxECIToEqnx") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double covMtxECI[9][9];
   NDArray covMtxECITemp=args(2).array_value();
   for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
         covMtxECI[i][j]=covMtxECITemp(i,j);
      }
   }

   double covMtxEqnx[9][9];

   CovMtxECIToEqnx(pos, vel, covMtxECI, covMtxEqnx);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), covMtxEqnx);
   return retval;
}

DEFUN_DLD (CovMtxEqnxToECI9x9, args, nargout, "CovMtxEqnxToECI9x9") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double covEqnx[9][9];
   NDArray covEqnxTemp=args(2).array_value();
   for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
         covEqnx[i][j]=covEqnxTemp(i,j);
      }
   }

   double covMtxECI[9][9];

   CovMtxEqnxToECI9x9(pos, vel, covEqnx, covMtxECI);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), covMtxECI);
   return retval;
}

DEFUN_DLD (CovMtxEqnxToUVW9x9, args, nargout, "CovMtxEqnxToUVW9x9") {
   double pos[3];
   OctToDouble1D(args(0), 3, pos);

   double vel[3];
   OctToDouble1D(args(1), 3, vel);

   double covEqnx[9][9];
   NDArray covEqnxTemp=args(2).array_value();
   for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
         covEqnx[i][j]=covEqnxTemp(i,j);
      }
   }

   double covMtxUVW[9][9];

   CovMtxEqnxToUVW9x9(pos, vel, covEqnx, covMtxUVW);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), covMtxUVW);
   return retval;
}

DEFUN_DLD (CovMtxUpdate, args, nargout, "CovMtxUpdate") {
   double rmsIn=OctToDouble(args(0));

   double consider=OctToDouble(args(1));

   double cov[9][9];
   NDArray covTemp=args(2).array_value();
   for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
         cov[i][j]=covTemp(i,j);
      }
   }

   double stateArray[54];
   OctToDouble1D(args(3), 54, stateArray);

   double propCov[6][6];

   CovMtxUpdate(rmsIn, consider, cov, stateArray, propCov);

   octave_value_list retval(nargout);
   Double2DToOct(&retval(0), propCov);
   return retval;
}

DEFUN_DLD (AberrationAnnual, args, nargout, "AberrationAnnual") {
   double ra=OctToDouble(args(0));

   double decl=OctToDouble(args(1));

   double dS50UTC=OctToDouble(args(2));

   double raDelta;

   double decDelta;

   AberrationAnnual(ra, decl, dS50UTC, &raDelta, &decDelta);

   octave_value_list retval(nargout);
   retval(0) = octave_value(raDelta);
   retval(1) = octave_value(decDelta);
   return retval;
}

DEFUN_DLD (AberrationDiurnal, args, nargout, "AberrationDiurnal") {
   double ra=OctToDouble(args(0));

   double decl=OctToDouble(args(1));

   double dS50UTC=OctToDouble(args(2));

   double senPos[3];
   OctToDouble1D(args(3), 3, senPos);

   double raDelta;

   double decDelta;

   AberrationDiurnal(ra, decl, dS50UTC, senPos, &raDelta, &decDelta);

   octave_value_list retval(nargout);
   retval(0) = octave_value(raDelta);
   retval(1) = octave_value(decDelta);
   return retval;
}

DEFUN_DLD (JplSetParameters, args, nargout, "JplSetParameters") {
   char* jplFile = OctToString(args(0), 512);

   double ds50Start=OctToDouble(args(1));

   double ds50Stop=OctToDouble(args(2));

   JplSetParameters(jplFile, ds50Start, ds50Stop);

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (JplGetParameters, args, nargout, "JplGetParameters") {
   char jplFile[512];

   double ds50Start;

   double ds50Stop;

   JplGetParameters(jplFile, &ds50Start, &ds50Stop);

   octave_value_list retval(nargout);
   retval(0) = octave_value(jplFile);
   retval(1) = octave_value(ds50Start);
   retval(2) = octave_value(ds50Stop);
   return retval;
}

DEFUN_DLD (JplReset, args, nargout, "JplReset") {
   JplReset();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (JplCompSunMoonVec, args, nargout, "JplCompSunMoonVec") {
   double ds50UTC=OctToDouble(args(0));

   double uvecSun[3];

   double sunVecMag;

   double uvecMoon[3];

   double moonVecMag;

   JplCompSunMoonVec(ds50UTC, uvecSun, &sunVecMag, uvecMoon, &moonVecMag);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), uvecSun);
   retval(1) = octave_value(sunVecMag);
   Double1DToOct(&retval(2), uvecMoon);
   retval(3) = octave_value(moonVecMag);
   return retval;
}

DEFUN_DLD (JplCompSunMoonPos, args, nargout, "JplCompSunMoonPos") {
   double ds50UTC=OctToDouble(args(0));

   double sunVec[3];

   double moonVec[3];

   JplCompSunMoonPos(ds50UTC, sunVec, moonVec);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), sunVec);
   Double1DToOct(&retval(1), moonVec);
   return retval;
}

DEFUN_DLD (RemoveJpl, args, nargout, "RemoveJpl") {
   RemoveJpl();

   octave_value_list retval(nargout);
   retval(0)=octave_value(Matrix());
   return retval;
}

DEFUN_DLD (TemeEpochToDate, args, nargout, "TemeEpochToDate") {
   int nutationTerms=OctToInt(args(0));

   double epochDs50TAI=OctToDouble(args(1));

   double dateDs50TAI=OctToDouble(args(2));

   double posEpoch[3];
   OctToDouble1D(args(3), 3, posEpoch);

   double velEpoch[3];
   OctToDouble1D(args(4), 3, velEpoch);

   double posDate[3];

   double velDate[3];

   TemeEpochToDate(nutationTerms, epochDs50TAI, dateDs50TAI, posEpoch, velEpoch, posDate, velDate);

   octave_value_list retval(nargout);
   Double1DToOct(&retval(0), posDate);
   Double1DToOct(&retval(1), velDate);
   return retval;
}

// ========================= End of auto generated code ==========================
