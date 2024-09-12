import java.io.FileWriter;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.*;
import com.sun.jna.ptr.DoubleByReference;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.services.*;

/**
 * This thread uses a different satellite number in the TLE for each thread.
 */
public class PropagatorThreadTester2 implements Runnable {
    private static int nThreads = 5;
    private static double nDays = 10;
    private static final CyclicBarrier cyclicBarrier = new CyclicBarrier(nThreads+1);
    private FileWriter fileWriter;
    private String filename;
    private String satno;
    private String hash;
    private boolean useFile = false;

    public PropagatorThreadTester2(String filename, String satno) {
        this.filename = filename;
        this.satno = satno;

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

        int     errCode;
        long    satKey;

        // Arrays that store propagation data
        double[] pos = new double[3];   // Position (km) in TEME of Epoch
        double[] vel = new double[3];   // Velocity (km/s) in TEME of Epoch
        double[] llh = new double[3];   // Latitude(deg), Longitude(deg), Height above Geoid (km)

        // load a TLE using strings (see TLE dll document)
        //System.out.println("satno=" + satno);
        String line1 = "1 " + satno + "U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814";
        String line2 = "2 " + satno + "   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199";
        satKey = JnaTle.TleAddSatFrLines(line1, line2);

        //System.out.println( "filename=" + filename + " satKey=" + satKey);

        // initialize the loaded TLE before it can be propagated (see Sgp4Prop dll document)
        // This is important!!!
        errCode = JnaSgp4Prop.Sgp4InitSat(satKey);

        // check to see if initialization was successful
        if (errCode != 0)
            return;

        // propagate using specific date, days since 1950 UTC (for example using "2000 051.051.47568104" as a start time)
        double startTime = JnaTimeFunc.DTGToUTC("00051.47568104"); // convert date time group string "YYDDD.DDDDDDDD" to days since 1950, UTC (see TimeFunc dll document)
        double endTime = startTime + nDays;               // from start time propagate for nDays

        // propagate for 10 days from start time with 0.5 day step size
        StringBuffer sbuf = new StringBuffer();
        for (double ds50UTC = startTime; ds50UTC < endTime; ds50UTC += 0.5)
        {
            DoubleByReference mse = new DoubleByReference();

            int error = JnaSgp4Prop.Sgp4PropDs50UTC(satKey, ds50UTC, mse, pos, vel, llh); // see Sgp4Prop dll document
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

        // Remove loaded satellites if no longer needed
        JnaTle.TleRemoveSat(satKey);   // remove loaded TLE from memory
        JnaSgp4Prop.Sgp4RemoveSat(satKey);  // remove initialized TLE from memory
    }

    public String getHash() {
        return hash;
    }

    public String getSatno() {
        return satno;
    }

    public static void main(String[] args) throws BrokenBarrierException, InterruptedException {
        JnaDllMain.SetElsetKeyMode(JnaDllMain.ELSET_KEYMODE_DMA);

        long start = (new Date()).getTime();
        ExecutorService executorService = Executors.newCachedThreadPool();
        List<PropagatorThreadTester2> testers = new ArrayList<>();
        for( int ii=1; ii<nThreads+1; ii++ ) {
            String satno = String.format("%05d", ii);
            String filename = "File-" + ii + ".txt";
            PropagatorThreadTester2 tester = new PropagatorThreadTester2(filename, satno);
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
			if ( firstHash == null ) {
				System.out.println("firstHash is null");
			}
			if ( testers == null ) {
				System.out.println("testers is null");
			} else {
				if ( testers.get(ii) == null ) {
					System.out.println("testers.get(ii) is null, ii=" + ii);
				}
			}
            if (!firstHash.equals(testers.get(ii).getHash())) {
                diffFound = true;
                System.out.println("Found different propagation results: satno=" + testers.get(ii).getSatno());
            }
        }
        if (diffFound) {
            System.exit(-1);
        }
    }
}
