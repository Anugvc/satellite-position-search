package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.util.Date;

import com.sun.jna.Library;
import com.sun.jna.Native;
import com.sun.jna.Platform;
import com.sun.jna.PointerType;
import com.sun.jna.ptr.ByteByReference;
import com.sun.jna.ptr.IntByReference;
import com.sun.jna.ptr.LongByReference;
import com.sun.jna.ptr.DoubleByReference;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;

public class SrvObsOps
{
    /**
     * A nested class containing the Iomod Control parameters and performs additional functions on the control
     * parameters.
     */
    public static class IomodControl
    {
        //Class Variables
        private boolean  printIOHG;
        private boolean  useFirst3Obs;
        private int  satNum;
        private int  sortOrder;
        private String satName;
        private int  runDC;
        private int  runRotas;

        /**
         * Default Constructor
         */
        public IomodControl() {
            double[] extArr = new double[128];
            IntByReference printIOHG = new IntByReference();
            IntByReference useFirst3Obs = new IntByReference();
            IntByReference satNum = new IntByReference();
            IntByReference sortOrder = new IntByReference();
            IntByReference runDC = new IntByReference();
            IntByReference runRotas = new IntByReference();
            byte[] satName = new byte[9];
            JnaObsOps.IomodGetIpAll(printIOHG, useFirst3Obs, satNum, sortOrder, satName, runDC, runRotas, extArr);
            this.printIOHG = printIOHG.getValue() == 1;
            this.useFirst3Obs = useFirst3Obs.getValue() == 1;
            this.satNum = satNum.getValue();
            this.sortOrder = sortOrder.getValue();
            this.satName = Utility.BytesToString(satName);
            this.runDC = runDC.getValue();
            this.runRotas = runRotas.getValue();
        }

        /**
         * Prints the IOMOD Control parameters with additional formatted information
         * @param fpOut         The BufferedWriter object carrying the file to write to
         * @throws IOException
         */
        public void PrintIomodCtrls(BufferedWriter fpOut) throws IOException
        {
            //Sort options(order) :
            //(+/ -)1 = (descending / ascending) time, sensor, obstype, elev
            //(+/ -)2 = (descending / ascending) time, elevation
            //(+/ -)3 = (descending / ascending) time, sensor, otype, el, satno
            //(+/ -)4 = (descending / ascending) sensor, satno, time, elev
            //(+/ -)5 = (descending / ascending) sensor, time, elevation
            //(+/ -)6 = (descending / ascending) sensor, satno, obstype, time, elev
            //(+/ -)7 = (descending / ascending) satno, time, sensor, otype, el
            //(+/ -)8 = (reversed / same)        order of obs were read
            //9 : as is in the tree (fastest sort time)

            String[] obSortOrder = {"time, sensor, obstype, elev",
                "time, elevation",
                "time, sensor, otype, el, satno",
                "sensor, satno, time, elev",
                "sensor, time, elevation",
                "sensor, satno, obstype, time, elev",
                "satno, time, sensor, otype, el",
                "order of obs were read",
                "order of obs stored in the memory"};

            String obsOrderStr;
            int   len;

            if (Math.abs(sortOrder) <= 8)
            {
                if (sortOrder < 0)
                    obsOrderStr = "ascending";
                else
                    obsOrderStr = "descending";
            }
            else if (sortOrder == 8)
                obsOrderStr = "reversed";
            else if (sortOrder == -8)
                obsOrderStr = "same";
            else
                obsOrderStr = "";

            len = 42 - obsOrderStr.length() + obSortOrder[Math.abs(sortOrder) - 1].length();

            fpOut.write("            INITIAL ORBIT (IOMOD) OPTIONS:\n");
            fpOut.write(" ===============================================================================\n");
            fpOut.write(String.format(" |  A.  PRINT IOHG INFORMATION?     %-43s|\n", printIOHG ? "yes" : "no"));
            fpOut.write(String.format(" |  B.  IOHG OB SELECTION METHOD:   %-43s|\n", useFirst3Obs ? "use first 3 obs" : "automatic selection"));
            fpOut.write(String.format(" |  C.  OBSERVATION SORT ORDER:     %s %s%s|\n", obsOrderStr, obSortOrder[Math.abs(sortOrder)-1], len, " "));
            if (satNum != 0)
                fpOut.write(String.format(" |  D.  OUTPUT ELSET SATELLITE NO:  %7d%36s|\n", satNum, " "));
            else
                fpOut.write(String.format(" |  D.  OUTPUT ELSET SATELLITE NO:  %-43s|\n", "(from obs used)"));

            fpOut.write(String.format(" |  E.  OUTPUT ELSET INTL DESIG:    %-43s|\n", satName));
            fpOut.write(String.format(" |  F.  RUN POST-IOMOD DC?          %-43s|\n", runDC == 1 ? "yes" : "no"));
            fpOut.write(String.format(" |  G.  RUN POST-IOMOD ROTAS?       %-43s|\n", runRotas == 1 ? "yes" : "no"));
            fpOut.write(" ===============================================================================\n");

        }

        /**
         * These functions retrieve the various IOMOD Control parameters. They are documented
         * once here instead of individually since the documentation block would be
         * similar for all of them.
         *
         * Return Value
         * the requested data. We express these values as standard Java types, not JNA
         * objects. The type varies depending on the control parameter being retrieved.
         */
        //Getters

        public boolean getPrintIOHG() {
            return printIOHG;
        }

        public boolean getUseFirst3Obs() {
            return useFirst3Obs;
        }

        public int getSatNum() {
            return satNum;
        }

        public int getSortOrder() {
            return sortOrder;
        }

        public String getSatName() {
            return satName;
        }

        public int getRunDC() {
            return runDC;
        }

        public int getRunRotas() {
            return runRotas;
        }
    }
}
