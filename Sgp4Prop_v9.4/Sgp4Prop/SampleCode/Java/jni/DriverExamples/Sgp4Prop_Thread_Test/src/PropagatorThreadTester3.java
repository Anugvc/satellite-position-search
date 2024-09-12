import java.io.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.*;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.services.*;

/**
 * This test uses a single TLE initialized inside the propagation, but uses
 * the JniDllMain.SetElsetKeyMode( JniDllMain.ELSET_KEYMODE_DMA ) to allow duplicate
 * satkeys.  Each thread uses a unique satkey.
 */
public class PropagatorThreadTester3 implements Runnable {
    private static int nThreads = 5;
    private static double nDays = 10;
    private static final CyclicBarrier cyclicBarrier = new CyclicBarrier(nThreads+1);
    private FileWriter fileWriter;
    private String filename;
    private String hash;
    private boolean useFile = false;

    public PropagatorThreadTester3(String filename) {
        this.filename = filename;

        if (useFile) {
            try {
                fileWriter = new FileWriter(filename);
            } catch (IOException e) {
                e.printStackTrace();
                System.exit(-1);
            }
        }
    }

    @Override
    public void run() {
        try {
            cyclicBarrier.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
            System.exit(-1);
        } catch (BrokenBarrierException e) {
            e.printStackTrace();
            System.exit(-1);
        }

        // Arrays that store propagation data
        double[] pos = new double[3];   // Position (km) in TEME of Epoch
        double[] vel = new double[3];   // Velocity (km/s) in TEME of Epoch
        double[] llh = new double[3];   // Latitude(deg), Longitude(deg), Height above Geoid (km)

        String line1 = "1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814";
        String line2 = "2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199";
        long satKey = JniTle.TleAddSatFrLines( line1, line2 );
        int errCode = JniSgp4Prop.Sgp4InitSat(satKey);
        if (errCode != 0) {
            SrvDllMain.ShowLastErrMsg();
            return;
        }

        //System.out.println( "filename=" + filename + " satKey=" + satKey);

        // propagate using specific date, days since 1950 UTC (for example using "2000 051.051.47568104" as a start time)
        double startTime = JniTimeFunc.DTGToUTC("00051.47568104"); // convert date time group string "YYDDD.DDDDDDDD" to days since 1950, UTC (see TimeFunc dll document)
        double endTime = startTime + nDays;               // from start time propagate for nDays

        // propagate for 10 days from start time with 0.5 day step size
        StringBuffer sbuf = new StringBuffer();
        for (double ds50UTC = startTime; ds50UTC < endTime; ds50UTC += 0.5)
        {
            double[] mse = new double [1];

            int error = JniSgp4Prop.Sgp4PropDs50UTC(satKey, ds50UTC, mse, pos, vel, llh); // see Sgp4Prop dll document
            if ( error != 0 ) {
                System.out.println("error=" + error + " filename=" + filename);
                SrvDllMain.ShowLastErrMsg();
                break;
            }

            String data = String.format("%15.3f %15.3f %15.3f %15.3f\n", ds50UTC, pos[0], pos[1], pos[2]);
//            if ( filename.equals("File-5.txt") ) {
//                data += "***Forced difference***";
//            }
            sbuf.append(data);
            if (useFile) {
                try {
                    fileWriter.write(data);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(sbuf.toString().getBytes());
            hash = new String(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        if (useFile) {
            try {
                fileWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public String getHash() {
        return hash;
    }

    public String getFilename() {
        return filename;
    }

    public static void main(String[] args) throws BrokenBarrierException, InterruptedException {
        JniDllMain.SetElsetKeyMode(JniDllMain.ELSET_KEYMODE_DMA);

        long start = (new Date()).getTime();
        ExecutorService executorService = Executors.newCachedThreadPool();
        List<PropagatorThreadTester3> testers = new ArrayList<>();
        for( int ii=0; ii<nThreads; ii++ ) {
            PropagatorThreadTester3 tester = new PropagatorThreadTester3("File-" + ii + ".txt");
            testers.add(tester);
            Thread tt = new Thread(tester);
            executorService.execute(tt);
            //tt.start();
        }

        cyclicBarrier.await();
        System.out.println("All threads started");

        executorService.shutdown();
        boolean finished = executorService.awaitTermination(10, TimeUnit.MINUTES);
        System.out.println("All threads complete");
        System.out.println("nThreads=" + nThreads + " nDays=" + nDays + " time=" + ((new Date()).getTime() - start) + " milliseconds");
        String firstHash = testers.get(0).getHash();
        boolean diffFound = false;
        for( int ii=0; ii<nThreads; ii++ ) {
            if (!firstHash.equals(testers.get(ii).getHash())) {
                diffFound = true;
                System.out.println("Found different propagation results: filename=" + testers.get(ii).getFilename());
            }
        }
        if (diffFound) {
            System.exit(-1);
        }
    }
}
