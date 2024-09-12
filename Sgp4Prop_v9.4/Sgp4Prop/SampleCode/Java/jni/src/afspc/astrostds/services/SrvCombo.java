package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.util.Arrays;
import java.util.Date;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;

public class SrvCombo
{
    // Indexes of LAMOD 7P-card fields
    public static int
        IDX_7P_TIMEFLAG = 1,       // Input time format : 0: Minutes since epoch, 1: UTC
        IDX_7P_BEGTIME = 2,        // Begin time
        IDX_7P_ENDTIME = 3,        // End time
        IDX_7P_RELMINFLG = 4,      // Control flag for computing relative minima
        IDX_7P_ABSMINFLG = 5,      // Control flag for computing absolute minimum
        IDX_7P_EETIMES = 6,        // Control flag for computing periods of close proximity
        IDX_7P_RELEPHFLG = 7,      // Control flag for computing relative ephemeris
        IDX_7P_POCSIGMA = 8,         // Control flag for computing probability of collision
        IDX_7P_RELMINLIM = 9,      // Maximum separation for relative minima
        IDX_7P_ABSMINLIM = 10,     // Close proximity limit
        IDX_7P_RELEPHINT = 11,     // Relative ephemeris sampling interval
        IDX_7P_PRTOPT      = 12,   // Print options
        IDX_7P_PRADIUS     = 13,   // Primary satellite effective radius (m)
        IDX_7P_SRADIUS     = 14;   // Secondary satellite effective radius (m)

    public static int
        CARD_7P_FREPOCH = 0,
        CARD_7P_FRDATE  = 1;

    // Combo print options
    public static int
        PRT_RELGEOONLY = 0,
        PRT_POSVEL     = 1,
        PRT_LLH        = 2,
        PRT_RELPOS     = 3,
        PRT_NOOUTPUT   = 4;


    public static void PrintClosestApproach(BufferedWriter outFile, ComboCtrl comboCtrl, ComboOutput comboOut) throws IOException
    {
        int    priSatNum, secSatNum;
        String   priSatType, secSatType;

        priSatNum = JniElOps.SatNumOf(comboOut.getPriSatKey());
        secSatNum = JniElOps.SatNumOf(comboOut.getSecSatKey());


        // Primary/secondary passes different filters/tests
        if (comboOut.getAbsMinDs50UTC() == 0 || comboOut.getAbsMinDist() > 1.0E10)
        {
            outFile.write(String.format(" ... SECONDARY SATELLITE %5d NO CLOSE APPROACHES FOUND\n", secSatNum));
            return;
        }
        else if(comboOut.getAbsMinDist() < comboCtrl.getCloseProxLim())
        {
            priSatType = SrvSatState.GetRecTypeString(comboOut.getPriSatKey());
            secSatType = SrvSatState.GetRecTypeString(comboOut.getSecSatKey());
            outFile.write(String.format(" PRIMARY SAT %5d (%s) VS SECONDARY SAT %5d (%s):\n",
                    priSatNum, priSatType, secSatNum, secSatType ));
            PrintComboHeader(outFile, priSatNum);
            if (comboCtrl.getAbsMinFlg() == 1 && comboCtrl.getRelMinFlg() == 0)
            {
                byte[] rtnVal = new byte[20];
                JniTimeFunc.UTCToDTG20(comboOut.getAbsMinDs50UTC(), rtnVal);
                outFile.write(String.format("  %5d  %23s%11.3f   ****  ABSL MIN ; PRIM. SAT %5d  ****\n",
                        secSatNum, Utility.BytesToStringTrim(rtnVal), comboOut.getAbsMinDist(), priSatNum));
                outFile.write("___________________________________________________________________________________\n");
                outFile.write("\n");

            }
            else
            {
                PrintRelativeMinima(outFile, comboCtrl, comboOut);
            }
        }
    }

    // Print relative minima if requested
    public static void PrintRelativeMinima(BufferedWriter outFile, ComboCtrl comboCtrl, ComboOutput comboOut) throws IOException
    {
        double[] deltas = new double[100];
        double[] priPos = new double[3];
        double[] priVel = new double[3];
        double[] priLLH = new double[3];
        double[] secPos = new double[3];
        double[] secVel = new double[3];
        double[] secLLH = new double[3];

        byte[] rtnVal = new byte[20];
        double[] mse = new double [1];
        int[]    revNum = new int [1];
        double relMinDs50UTC;
        double ds50UTC;
        double[] startDs50UTC = new double [1];
        double[] stopDs50UTC = new double [1];
        char   atBoundary;

        int k, count;
        int errCode;

        int    priSatNum, secSatNum;

        priSatNum = JniElOps.SatNumOf(comboOut.getPriSatKey());
        secSatNum = JniElOps.SatNumOf(comboOut.getSecSatKey());

        ComputeStartStopDs50UTC(comboCtrl, comboOut.getPriSatKey(), startDs50UTC, stopDs50UTC);

        count = 0; // number of entry/exit times

        // Loop through the array of times of relative minima
        for (k = 0; k < comboOut.getNumOfRelMins(); k++)
        {
            relMinDs50UTC = comboOut.getRelMinDs50UTCs()[k];

            // Compute deltas of primary/secondary at the current relative minima
            errCode = JniSatState.SatStateEphCom(comboOut.getPriSatKey(), comboOut.getSecSatKey(), relMinDs50UTC, 1, deltas);
            if (errCode != 0)
                SrvDllMain.ShowLastErrMsg();

            // Check to see if computing relative minima flag is on
            if(comboCtrl.getRelMinFlg() != 0)
            {
                if(relMinDs50UTC == startDs50UTC[0] || relMinDs50UTC == stopDs50UTC[0])
                    atBoundary = 'B';
                else
                    atBoundary = ' ';

                PrintPriSecDeltas(outFile, secSatNum, relMinDs50UTC, deltas, atBoundary);

                // Add string to indicate the current relative minimum is the absolute minimum
                if(relMinDs50UTC == comboOut.getAbsMinDs50UTC())
                    outFile.write(" ABSL MIN\n");
                else
                    outFile.write("\n");
            }

            if(comboCtrl.getPrtOpt() > 0 && comboCtrl.getPrtOpt() < 4)
            {
                // Compute and print primary/secondary position, velocity
                errCode = JniSatState.SatStateDs50UTC(comboOut.getPriSatKey(), relMinDs50UTC, mse, revNum, priPos, priVel, priLLH);
                errCode = JniSatState.SatStateDs50UTC(comboOut.getSecSatKey(), relMinDs50UTC, mse, revNum, secPos, secVel, secLLH);

                PrintPriSecPosVel(outFile, priPos, priVel, secPos, secVel);

                // Print primary/secondary lat, long, height and relative position
                if(comboCtrl.getPrtOpt() == 2 || comboCtrl.getPrtOpt() == 3)
                {

                    PrintPriSecLLH(outFile, priLLH, secLLH);

                    // Print relative position
                    if (comboCtrl.getPrtOpt() == 3)
                    {
                        PrintPriSecRelPosVel(outFile, deltas);
                    }
                }
            }

            // Check to see if control for computing periods of close proximity flag is on
            if(comboCtrl.getCloseProxFlg() == 1)
            {
                // Note: the entry/exit times could be zeros which indicates that the entry/exit times are not available

                // Find the correct entry/exit times for this relative minimum
                if (((comboOut.getEntryDs50UTCs()[count] != 0 && comboOut.getEntryDs50UTCs()[count] > relMinDs50UTC) ||
                        (comboOut.getExitDs50UTCs()[count] != 0 && relMinDs50UTC > comboOut.getExitDs50UTCs()[count])) &&
                        count < comboOut.getNumOfEntryExits())
                    count++;

                // If the secondary satellite is in sustained relative geometry, there could be
                // multiple relative minima within that same entry/exit times
                if (comboOut.getEntryDs50UTCs()[count] <= relMinDs50UTC && relMinDs50UTC <= comboOut.getExitDs50UTCs()[count] ||
                        comboOut.getEntryDs50UTCs()[count] == 0 || comboOut.getExitDs50UTCs()[count] == 0)
                {
                    // Compute deltas at entry time
                    ds50UTC = comboOut.getEntryDs50UTCs()[count];
                    errCode = JniSatState.SatStateEphCom(comboOut.getPriSatKey(), comboOut.getSecSatKey(), ds50UTC, 1, deltas);
                    if (errCode != 0)
                        SrvDllMain.ShowLastErrMsg();

                    if(comboOut.getEntryDs50UTCs()[count] != 0)
                        JniTimeFunc.UTCToDTG19(comboOut.getEntryDs50UTCs()[count], rtnVal);
                        outFile.write(String.format("%9s%s  %9.3f     ****  ENTRY TIME  ****\n", " ",
                                Utility.BytesToStringTrim(rtnVal), deltas[JniSatState.XA_DELTA_POS]));

                    // Compute deltas at exit time
                    ds50UTC = comboOut.getExitDs50UTCs()[count];
                    errCode = JniSatState.SatStateEphCom(comboOut.getPriSatKey(), comboOut.getSecSatKey(), ds50UTC, 1, deltas);
                    if (errCode != 0)
                        SrvDllMain.ShowLastErrMsg();
                    if(comboOut.getExitDs50UTCs()[count] != 0)
                        JniTimeFunc.UTCToDTG19(comboOut.getExitDs50UTCs()[count], rtnVal);
                        outFile.write(String.format("%9s%s  %9.3f     ****  EXIT  TIME  ****\n", " ",
                                Utility.BytesToStringTrim(rtnVal), deltas[JniSatState.XA_DELTA_POS]));
                }
            }

            // if requesting Probability of Collision, be sure input is compatible
            // Check to see if both primary/secondary satellites are VCMs
            if(comboCtrl.getPocSigma() != 0 && JniSatState.SatStateHasCovMtx(comboOut.getPriSatKey()) == 1 && JniSatState.SatStateHasCovMtx(comboOut.getSecSatKey()) == 1)
                CalcAndPrintPOC(outFile, relMinDs50UTC, comboCtrl, comboOut);
        }

        outFile.write("___________________________________________________________________________________\n");
        outFile.write("\n");

    }

    public static void PrintComboHeader(BufferedWriter outFile, int satNum) throws IOException
    {
        outFile.write(String.format(" %5d            TIME             DISTANCE  REL VEL  DELTA-T  DELTA-BETA  DELTA-HT\n", satNum));
        outFile.write(String.format("  vs     YY DDD HH MM SS.SSSSSSS       km     km/sec   minutes   degrees       km   \n"));
        outFile.write("____________________________________________________________________________________\n");
        outFile.write("\n");
    }

    public static void PrintRelativeEphemPts(BufferedWriter outFile, ComboCtrl comboCtrl, long priSatKey, long secSatKey) throws IOException
    {
        double[] startDs50UTC = new double [1];
        double[] stopDs50UTC = new double [1];
        double currDs50UTC;

        double[] deltas = new double[100];
        double[] priPos = new double[3];
        double[] priVel = new double[3];
        double[] priLLH = new double[3];
        double[] secPos = new double[3];
        double[] secVel = new double[3];
        double[] secLLH = new double[3];
        double[] mse = new double [1];
        int[] revNum = new int [1];


        int errCode;

        // No output
        if(comboCtrl.getPrtOpt() == PRT_NOOUTPUT)
            return;

        ComputeStartStopDs50UTC(comboCtrl, priSatKey, startDs50UTC, stopDs50UTC);

        currDs50UTC = startDs50UTC[0];

        while(true)
        {
            // Compute deltas of primary/secondary at the current relative minima
            errCode = JniSatState.SatStateEphCom(priSatKey, secSatKey, currDs50UTC, 1, deltas);
            if (errCode != 0)
                SrvDllMain.ShowLastErrMsg();

            PrintPriSecDeltas(outFile, JniElOps.SatNumOf(secSatKey), currDs50UTC, deltas, ' ');
            outFile.write("\n");

            // print only relative geometry
            if(comboCtrl.getPrtOpt() != PRT_RELGEOONLY)
            {

                JniSatState.SatStateDs50UTC(priSatKey, currDs50UTC, mse, revNum, priPos, priVel, priLLH);
                JniSatState.SatStateDs50UTC(secSatKey, currDs50UTC, mse, revNum, secPos, secVel, secLLH);

                if(comboCtrl.getPrtOpt() > PRT_RELGEOONLY)
                    PrintPriSecPosVel(outFile, priPos, priVel, secPos, secVel);

                if(comboCtrl.getPrtOpt() > PRT_POSVEL)
                    PrintPriSecLLH(outFile, priLLH, secLLH);

                if(comboCtrl.getPrtOpt() == PRT_RELPOS)
                    PrintPriSecRelPosVel(outFile, deltas);
            }

            if(currDs50UTC < stopDs50UTC[0])
            {
                currDs50UTC += (comboCtrl.getRelEphInterval() /1440.0);
                if(currDs50UTC > stopDs50UTC[0])
                    currDs50UTC = stopDs50UTC[0];
            }
            else
                break;
        }
    }

    // Compute start/stop time span based on the input times and primary satellite data
    public static void ComputeStartStopDs50UTC(ComboCtrl comboCtrl, long priSatKey, double[] startDs50UTC, double[] stopDs50UTC)
    {
        double epochDs50UTC;

        // Compute start/stop time in Ds50UTC
        if(comboCtrl.getTimeFlg() == CARD_7P_FRDATE)
        {
            startDs50UTC[0] = comboCtrl.getStartTime();
            stopDs50UTC[0] = comboCtrl.getStopTime();
        }
        else
        {
            byte[] rtnVal = new byte[512];
            int err = JniSatState.SatStateGetSatDataField(priSatKey, JniSatState.XF_SAT_EPOCH, rtnVal);
            epochDs50UTC = Utility.BytesToDouble(rtnVal);
            startDs50UTC[0] = Utility.MseToDs50UTC(epochDs50UTC, comboCtrl.getStartTime());
            stopDs50UTC[0] = Utility.MseToDs50UTC(epochDs50UTC, comboCtrl.getStopTime());
        }
    }

    // Print primary/secondary deltas
    public static void PrintPriSecDeltas(BufferedWriter outFile, int secSatNum, double currDs50UTC, double[] deltas, char atBoundary) throws IOException
    {
        byte[] rtnVal = new byte[512];
        JniTimeFunc.UTCToDTG20(currDs50UTC, rtnVal);
        String UTCString = Utility.BytesToStringTrim(rtnVal);
        outFile.write(String.format(" %c%5d  %20s%11.3f%8.3f%10.4f%10.4f%13.3f",
                atBoundary, secSatNum, UTCString, deltas[JniSatState.XA_DELTA_POS], deltas[JniSatState.XA_DELTA_VEL],
                deltas[JniSatState.XA_DELTA_TIME] / 60.0, deltas[JniSatState.XA_DELTA_BETA], deltas[JniSatState.XA_DELTA_HEIGHT]));
    }

    // Print primary/secondary relative position
    public static void PrintPriSecRelPosVel(BufferedWriter outFile, double[] deltas) throws IOException
    {
        outFile.write(String.format("%6sREL.POS.(km)     DU=%14.7f  DV=%14.7f  DW=%14.7f\n", " ",
                deltas[JniSatState.XA_DELTA_PRADIAL], deltas[JniSatState.XA_DELTA_PINTRCK], deltas[JniSatState.XA_DELTA_PCRSSTRCK]));
        outFile.write(String.format("%6sREL.VEL.(km/sec) DU=%14.9f  DV=%14.9f  DW=%14.9f\n", " ",
                deltas[JniSatState.XA_DELTA_VRADIAL], deltas[JniSatState.XA_DELTA_VINTRCK], deltas[JniSatState.XA_DELTA_VCRSSTRCK]));
    }

    // Print primary/secondary lat, long, height
    public static void PrintPriSecLLH(BufferedWriter outFile, double[] priLLH, double[] secLLH) throws IOException
    {
        // Print lat, long, height
        outFile.write(String.format("%6sPRI.GRND.TR.     NLT=%13.9f  ELG=%13.9f  HT=%14.7f\n", " ", priLLH[0], priLLH[1], priLLH[2]));
        outFile.write(String.format("%6sSEC.GRND.TR.     NLT=%13.9f  ELG=%13.9f  HT=%14.7f\n", " ", secLLH[0], secLLH[1], secLLH[2]));
    }

    // Print primary/secondary position and velocity
    public static void PrintPriSecPosVel(BufferedWriter outFile, double[] priPos, double[] priVel, double[] secPos, double[] secVel) throws IOException
    {
        outFile.write(String.format("%6sPRI.POS.(km)     X =%14.7f  Y =%14.7f  Z =%14.7f\n", " ", priPos[0], priPos[1], priPos[2]));
        outFile.write(String.format("%6sSEC.POS.(km)     X =%14.7f  Y =%14.7f  Z =%14.7f\n", " ", secPos[0], secPos[1], secPos[2]));
        outFile.write(String.format("%6sPRI.VEL.(km/sec) XD=%14.9f  YD=%14.9f  ZD=%14.9f\n", " ", priVel[0], priVel[1], priVel[2]));
        outFile.write(String.format("%6sSEC.VEL.(km/sec) XD=%14.9f  YD=%14.9f  ZD=%14.9f\n", " ", secVel[0], secVel[1], secVel[2]));
    }

    // Compute and print probability of collision
    public static void CalcAndPrintPOC(BufferedWriter outFile, double relMinDs50UTC, ComboCtrl comboCtrl, ComboOutput comboOut) throws IOException
    {
        int[] revNum = new int [1];       // Revolution number
        double[] mse = new double [1];    // minutes since satellite's epoch
        double[] priPos = new double [3];                   // Position vector (km)
        double[] priVel = new double [3];                   // Velocity vector (km/s)
        double[] secPos = new double [3];                   // Position vector (km)
        double[] secVel = new double [3];                   // Velocity vector (km/s)

        double[][] priCovXYZ = new double [6][6];
        double[][] secCovXYZ = new double [6][6];

        double[][] priCovPosXYZ = new double [3][3];
        double[][] secCovPosXYZ = new double [3][3];

        double[] llh = new double [3];
        double[] pocArr = new double [4];
        double mult_sqr, prob_sqr, mult_cir, prob_cir;
        int errCode;


        // Propagate pri/sec satellites to the time of close approach
        JniSatState.SatStateDs50UTC(comboOut.getPriSatKey(), relMinDs50UTC, mse, revNum, priPos, priVel, llh);
        JniSatState.SatStateDs50UTC(comboOut.getSecSatKey(), relMinDs50UTC, mse, revNum, secPos, secVel, llh);

        // Retrieve XYZ covariance matrix
        JniSpProp.SpGetCovMtx(comboOut.getPriSatKey(), JniSpProp.XF_COVMTX_XYZ_DATE, priCovXYZ);
        JniSpProp.SpGetCovMtx(comboOut.getSecSatKey(), JniSpProp.XF_COVMTX_XYZ_DATE, secCovXYZ);

        // Extract the 3x3 matrix from the 6x6 covariance matrix
        CovMtx3x3(priCovXYZ, priCovPosXYZ);
        CovMtx3x3(secCovXYZ, secCovPosXYZ);

        // Compute probability of collision
        errCode = JniCombo.ComboPOC(priPos, priVel, priCovPosXYZ, comboCtrl.getpRadius(),
                secPos, secVel, secCovPosXYZ, comboCtrl.getsRadius(),
                JniCombo.XF_COVTYPE_ECI, pocArr);
        if (errCode != 0) {
            SrvDllMain.ShowLastErrMsg();
            return;
        }

        mult_sqr = pocArr[0];
        prob_sqr = pocArr[1] * 100.0;
        mult_cir = pocArr[2];
        prob_cir = pocArr[3] * 100.0;

        outFile.write("Probability of Collision:  probability   n-Sigma    P/F\n");
        outFile.write(String.format("                Standard:%13s%10.3f\n", " ", comboCtrl.getPocSigma()));
        outFile.write(String.format("                Circle:  %13.3f%10.3f    %s\n", prob_cir, mult_cir, mult_cir <= comboCtrl.getPocSigma() ? "PASS" : "FAIL"));
        outFile.write(String.format("                Square:  %13.3f%10.3f    %s\n", prob_sqr, mult_sqr, mult_sqr <= comboCtrl.getPocSigma() ? "PASS" : "FAIL"));
        outFile.write("\n");
    }

    // Extract covariance matrix 3x3 from the covariance matrix 6x6
    public static void CovMtx3x3(double[][] covMtx_6x6, double[][] covMtx_3x3)
    {
        int row, col;

        for(row = 0; row < 3; row++)
            for(col = 0; col < 3; col++)
                covMtx_3x3[row][col] = covMtx_6x6[row][col];
    }

    public static class ComboCtrl
    {
        private int     timeFlg;
        private double  startTime;
        private double  stopTime;
        private int     relMinFlg;
        private int     absMinFlg;
        private int     closeProxFlg;
        private int     relEphFlg;
        private double  pocSigma;
        private double  relMinLim;
        private double  closeProxLim;
        private double  relEphInterval;
        private int     prtOpt;
        private double  pRadius;
        private double  sRadius;
        private int errCode;


        // Retrieve COMBO control parameters from the COMBO dll
        public ComboCtrl()
        {
            int[]      timeFlg         = new int [1];
            double[]   startTime       = new double [1];
            double[]   stopTime        = new double [1];
            int[]      relMinFlg       = new int [1];
            int[]      absMinFlg       = new int [1];
            int[]      closeProxFlg    = new int [1];
            int[]      relEphFlg       = new int [1];
            double[]   pocSigma        = new double [1];
            double[]   relMinLim       = new double [1];
            double[]   closeProxLim    = new double [1];
            double[]   relEphInterval  = new double [1];
            int[]      prtOpt          = new int [1];

            JniCombo.ComboGet7pAll(timeFlg, startTime, stopTime, relMinFlg, absMinFlg, closeProxFlg, relEphFlg, pocSigma,
                    relMinLim, closeProxLim, relEphInterval, prtOpt);

            this.timeFlg = timeFlg[0];
            this.startTime = startTime[0];
            this.stopTime = stopTime[0];
            this.relMinFlg = relMinFlg[0];
            this.absMinFlg = absMinFlg[0];
            this.closeProxFlg = closeProxFlg[0];
            this.relEphFlg = relEphFlg[0];
            this.pocSigma = pocSigma[0];
            this.relMinLim = relMinLim[0];
            this.closeProxLim = closeProxLim[0];
            this.relEphInterval = relEphInterval[0];
            this.prtOpt = prtOpt[0];

            byte[] retValue = new byte[512];
            JniCombo.ComboGet7pField(IDX_7P_PRADIUS, retValue);
            this.pRadius = Utility.BytesToDouble(retValue);

            JniCombo.ComboGet7pField(IDX_7P_SRADIUS, retValue);
            this.sRadius = Utility.BytesToDouble(retValue);
        }

        // Print COMBO control paramters
        public void PrintComboCtrls(BufferedWriter outFile) throws IOException
        {
            // control for computing relative minima
            String[] compRelMin = {"no ", "yes"};

            // print options
            String[] prtOptStr = {"relative geometry only                    ",
                                  "rel. geom & position/velocity             ",
                                  "rel. geom, pos/vel, & lat/long/height     ",
                                  "rel. geom, pos/vel, lat/long/ht, rel. pos.",
                                  "none                                      "};

            String dashLine  = "-------------------------------------------------------------------------------";
            String ddashLine = "===============================================================================";


            outFile.write(String.format(" %s\n", ddashLine));
            outFile.write(" |                          C O M B O   O P T I O N S                          |\n");
            outFile.write(String.format(" %s\n", dashLine));

            byte[] rtrnVal = new byte[20];

            if (timeFlg == CARD_7P_FRDATE)
            {
                JniTimeFunc.UTCToDTG20(startTime, rtrnVal);
                outFile.write(String.format(" |  A.  TIME OF INTEREST START, UTC:   %-40s|\n", Utility.BytesToStringTrim(rtrnVal)));
                JniTimeFunc.UTCToDTG20(stopTime, rtrnVal);
                outFile.write(String.format(" |  B.  TIME OF INTEREST END  , UTC:   %-40s|\n", Utility.BytesToStringTrim(rtrnVal)));
            }
            else
            {
                outFile.write(String.format(" |  A.  TIME OF INTEREST START, MSE:   %10.3f%30s|\n", startTime, " "));
                outFile.write(String.format(" |  B.  TIME OF INTEREST END  , MSE:   %10.3f%30s|\n", stopTime, " "));
            }
            outFile.write(String.format(" |  C.  COMPUTE RELATIVE MINIMA?       %-40s|\n", compRelMin[relMinFlg]));
            outFile.write(String.format(" |  D.  COMPUTE ABSOLUTE MINIMUM?      %-40s|\n", absMinFlg == 1 ? "yes" : "no"));
            outFile.write(String.format(" |  E.  FIND PERIODS CLOSE PROX.?      %-40s|\n", closeProxFlg == 1 ? "yes" : "no"));
            outFile.write(String.format(" |  F.  OUTPUT REL. EPHEMERIS PTs?     %-40s|\n", relEphFlg == 1 ? "yes" : "no"));
            outFile.write(String.format(" |  G.  MAX SEPARATION DISTANCE:       %10.3f km%27s|\n", relMinLim, " "));
            outFile.write(String.format(" |  H.  CLOSE PROXIMITY LIMIT:         %10.3f km%27s|\n", closeProxLim, " "));
            outFile.write(String.format(" |  I.  REL EPHEM OUTPUT INTERVAL:     %9.2f min%27s|\n", relEphInterval, " "));
            outFile.write(String.format(" |  J.  PRINTED OUTPUT OPTION:      %-43s|\n", prtOptStr[prtOpt]));
            if(pocSigma == 0)
                outFile.write(String.format(" |  K.  PROBABILITY OF COLLISION:      %-40s|\n", "not requested"));
            else
            {
                outFile.write(String.format(" |  K.  PROBABILITY OF COLLISION:   %6.3f sigma %-30s|\n", pocSigma, " "));
                outFile.write(String.format(" |      PRIMARY EFFECTIVE RADIUS:   %6.1f meters%-30s|\n", pRadius, " "));
                outFile.write(String.format(" |      SECDARY EFFECTIVE RADIUS:   %6.1f meters%-30s|\n", sRadius, " "));
            }
            outFile.write(String.format(" %s\n\n", ddashLine));
        }

        public int getRelMinFlg() {
            return relMinFlg;
        }

        public int getTimeFlg() {
            return timeFlg;
        }

        public double getStartTime() {
            return startTime;
        }

        public double getStopTime() {
            return stopTime;
        }

        public int getAbsMinFlg() {
            return absMinFlg;
        }

        public int getCloseProxFlg() {
            return closeProxFlg;
        }

        public int getRelEphFlg() {
            return relEphFlg;
        }

        public double getPocSigma() {
            return pocSigma;
        }

        public double getRelMinLim() {
            return relMinLim;
        }

        public double getCloseProxLim() {
            return closeProxLim;
        }

        public double getRelEphInterval() {
            return relEphInterval;
        }

        public int getPrtOpt() {
            return prtOpt;
        }

        public double getpRadius() {
            return pRadius;
        }

        public double getsRadius() {
            return sRadius;
        }

        public int getErrCode() {
            return errCode;
        }
    }

    public static class ComboOutput
    {
        private long     priSatKey;              // primary satellite key
        private long     secSatKey;              // secondary satellite key
        private double   absMinDs50UTC;          // time in ds50UTC at absolute minimum
        private double   absMinDist;             // absolute minimum distance in km
        private double[]   relMinDs50UTCs   = new double[1000];   // array of times in ds50UTC of relative minima
        private int      numOfRelMins;           // number of relative minima
        private double[]   entryDs50UTCs    = new double[1000];    // array of entry times in ds50UTC
        private double[]   exitDs50UTCs     = new double[1000];     // array of exit times in ds50UTC
        private int      numOfEntryExits;        // number of entry/exit times
        private int      errCode;                // returned error code


        /*
         * Empty Constructor
         */
        public ComboOutput()
        {
        }

        public void GetComboOutput(long priSatKey, long secSatKey)
        {
            // Populate comboOutput
            this.priSatKey = priSatKey;
            this.secSatKey = secSatKey;

            double[] absMinDs50UTC = new double [1];
            double[] absMinDist = new double [1];
            int[] numOfRelMins = new int [1];
            int[] numOfEntryExits = new int [1];
            // Calling the Combo dll's function to return combo output data
            errCode = JniCombo.ComboCompPriSec(priSatKey, secSatKey, absMinDs50UTC,
                      absMinDist, relMinDs50UTCs, numOfRelMins, entryDs50UTCs,
                      exitDs50UTCs, numOfEntryExits);

            this.absMinDs50UTC = absMinDs50UTC[0];
            this.absMinDist = absMinDist[0];
            this.numOfRelMins = numOfRelMins[0];
            this.numOfEntryExits = numOfEntryExits[0];
        }

        public long getPriSatKey() {
            return priSatKey;
        }

        public long getSecSatKey() {
            return secSatKey;
        }

        public double getAbsMinDs50UTC() {
            return absMinDs50UTC;
        }

        public double getAbsMinDist() {
            return absMinDist;
        }

        public double[] getRelMinDs50UTCs() {
            return relMinDs50UTCs;
        }

        public int getNumOfRelMins() {
            return numOfRelMins;
        }

        public double[] getEntryDs50UTCs() {
            return entryDs50UTCs;
        }

        public double[] getExitDs50UTCs() {
            return exitDs50UTCs;
        }

        public int getNumOfEntryExits() {
            return numOfEntryExits;
        }

        public int getErrCode() {
            return errCode;
        }
    }
}
