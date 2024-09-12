import Foundation                                   // for Date ..

///    This program shows how a Swift program can call the Astrodynamic Standard libraries to propagate
///    satellites to the requested time using the SGP4 method.
///
///    The program reads in user's input and output files. The program generates an
///    ephemeris of position and velocity for each satellite read in. In addition, the program
///    also generates other sets of orbital elements such as osculating Keplerian elements,
///    mean Keplerian elements, latitude/longitude/height/pos, and nodal period/apogee/perigee/pos.
///    Totally, the program prints results to five different output files.
///
///    Usage: Command line format
///    Sgp4Prop inFile outFile [logfile]
///    inFile   : File contains TLEs and 6P-Card (which controls start, stop times and step size)
///    outFile  : Base name for five output files
///    logFile  : Optional logFile to enable writing debug data to the specified file
@main
public struct Sgp4Prop {

    public static func main() {

        let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)

        let commandArgs = CommandLine.arguments                     // Get input parameters from the command line

        let inFile = commandArgs.count > 1 ? commandArgs[1] : ""                // input file
        let inFileURL = selectFile(inFile, inside: currentDirectoryURL).path    // ..

        let outDir = commandArgs.count > 2 ? commandArgs[2] : ""                // output directory
        let outDirURL = createFile(outDir, inside: currentDirectoryURL)         // ..


        // Record diagnostic information in a log file. This is optional
        // -------------------------------------------------------------
        if commandArgs.count > 3 {                                  // if there is a third argument ..
            let logFile = commandArgs[3]
            guard 0 == openLogFile(createFile(logFile, inside: currentDirectoryURL).path) else {
                fatalError("Fatal Error: Cannot open (missing?) log file \"\(logFile)\" - Program will now exit.")
            }
        }

        let OSC_STATE       = "_OscStateOut.txt"                        // name output files ..
        let OSC_ELEM        = "_OscElemOut.txt"
        let MEAN_ELEM       = "_MeanElemOut.txt"
        let LLH_ELEM        = "_LatLonHeightOut.txt"
        let NODAL_AP_PER    = "_NodalApPerOut.txt"

        let OSC_STATE_URL = createFile(OSC_STATE, inside: outDirURL)    // .. and create them
        let OSC_ELEM_URL = createFile(OSC_ELEM, inside: outDirURL)
        let MEAN_ELEM_URL = createFile(MEAN_ELEM, inside: outDirURL)
        let LLH_ELEM_URL = createFile(LLH_ELEM, inside: outDirURL)
        let NODAL_AP_PER_URL = createFile(NODAL_AP_PER, inside: outDirURL)

        var   errCode: Int
        var   numSats: Int

        var mse: Double = 0.0
        var meanMotion: Double

        // Arrays that store propagator output data

        var pos: [Double] = [0.0, 0.0, 0.0]                         // Position (km)
        var vel: [Double] = [0.0, 0.0, 0.0]                         // Velocity (km/s)
        var llh: [Double] = [0.0, 0.0, 0.0]                         // Lat, Long (deg), Height above Geoid (km)
        var meanKep: [Double] = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]      // Mean Keplerian elements
        var oscKep: [Double] = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]       // Osculating Keplerian elements
        var nodalApPer: [Double] = [0.0, 0.0, 0.0]                  // Nodal period, apogee, perigee

        print("## Sgp4Prop starts ..\n")
        let startInstant = Date().timeIntervalSince1970

        loadAllDlls()                                               // Load all the dlls being used

        print(sgp4GetInfo())                                        // Get information about the current DLL

        guard 0 == SetElsetKeyMode(Int32(ELSET_KEYMODE_DMA)) else { fatalError("Fatal Error: SetElsetKeyMode failure - Program will now exit.") }
        guard 0 == tleLoadFile(inFileURL) else { fatalError("Fatal Error: Cannot open input file \"\(commandArgs[1])\" - Program will now exit.") }

        numSats = tleGetCount()                                     // Count number of satellites currently loaded in memory

        if (numSats == 0) {
            print("No TLEs were found in the input file")
            exit(1)
        } else {
            print("\(numSats) satellites found in input file")
        }

        var pSatKeys = Array(repeating: Int64(0), count: numSats)   // for static array
        TleGetLoaded(Int32(IDX_ORDER_READ), &pSatKeys)              // Get all the satellites' keys from memory and store them in the local array

        printHeader(OSC_STATE_URL, sgp4GetInfo(), inFileURL)
        writeString("      TSINCE (MIN)           X (KM)           Y (KM)           Z (KM)      XDOT (KM/S)       YDOT(KM/S)    ZDOT (KM/SEC)", toURL: OSC_STATE_URL)

        printHeader(OSC_ELEM_URL, sgp4GetInfo(), inFileURL)
        writeString("      TSINCE (MIN)           A (KM)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)   TRUE ANOM(DEG)", toURL: OSC_ELEM_URL)

        printHeader(MEAN_ELEM_URL, sgp4GetInfo(), inFileURL)
        writeString("      TSINCE (MIN)     N (REVS/DAY)          ECC (-)        INC (DEG)       NODE (DEG)      OMEGA (DEG)         MA (DEG)", toURL: MEAN_ELEM_URL)

        printHeader(LLH_ELEM_URL, sgp4GetInfo(), inFileURL)
        writeString("      TSINCE (MIN)         LAT(DEG)        LON (DEG)          HT (KM)           X (KM)           Y (KM)           Z (KM)", toURL: LLH_ELEM_URL)

        printHeader(NODAL_AP_PER_URL, sgp4GetInfo(), inFileURL)
        writeString("      TSINCE (MIN)   NODAL PER(MIN)1/NODAL(REVS/DAY)       N(REVS/DY)    ANOM PER(MIN)      APOGEE (KM)      PERIGEE(KM)", toURL: NODAL_AP_PER_URL)

        for i in 0..<numSats {                                      // Loop through all the TLEs in the input file

            var line1 = ""                                          // prepare the first hundred lobsters ..
            var line2 = ""                                          // ..

            guard 0 == tleGetLines(pSatKeys[i], &line1, &line2) else {  // Return the two TLE lines: line1 line2
                fatalError("TleGetLines failed on satellite \(i)")
            }

            let tleLines = "\n \(line1)\n \(line2)\n"
            writeString(tleLines, toURL: OSC_STATE_URL)
            writeString(tleLines, toURL: OSC_ELEM_URL)
            writeString(tleLines, toURL: MEAN_ELEM_URL)
            writeString(tleLines, toURL: LLH_ELEM_URL)
            writeString(tleLines, toURL: NODAL_AP_PER_URL)

            guard 0 == sgp4InitSat(pSatKeys[i]) else {                              // Initialize the satellite before propagating it
                fatalError("Sgp4InitSat failed on satellite \(i)")
            }

            let epoch = dtgToUTC(tleGetField(pSatKeys[i], XF_TLE_EPOCH)!)
            for ds50 in stride(from: epoch,
                               through: epoch + 0.25, by: 5.0/1440.0) {

                errCode = sgp4PropDs50UTC(pSatKeys[i], ds50, &mse, &pos, &vel, &llh)

                if (errCode != 0) {
                    let lastErrorMessage = getLastErrMsg()

                    print(lastErrorMessage)

                    writeString(lastErrorMessage, toURL: OSC_STATE_URL)
                    writeString(lastErrorMessage, toURL: OSC_ELEM_URL)
                    writeString(lastErrorMessage, toURL: MEAN_ELEM_URL)
                    writeString(lastErrorMessage, toURL: LLH_ELEM_URL)
                    writeString(lastErrorMessage, toURL: NODAL_AP_PER_URL)

                    break
                }

                //Compute/Retrieve other propagator output data
                //----------------------------------------------------------------
                nodalApPer = [0.0, 0.0, 0.0]
                _ = sgp4GetPropOut(pSatKeys[i], Int(XF_SGP4OUT_NODAL_AP_PER), &nodalApPer)   // 2 [3]
                meanKep = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
                _ = sgp4GetPropOut(pSatKeys[i], Int(XF_SGP4OUT_MEAN_KEP), &meanKep)          // 3 [6]
                oscKep = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
                _ = sgp4GetPropOut(pSatKeys[i], Int(XF_SGP4OUT_OSC_KEP), &oscKep)            // 4 [6]


                writeString(String(
                    format: " %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f",              // Print position and velocity
                    mse, pos[0], pos[1], pos[2], vel[0],
                    vel[1], vel[2]), toURL: OSC_STATE_URL)                             // fpOscState

                writeString(String(
                    format: " %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f",              // Print lat lon height and position
                    mse, llh[0], llh[1], llh[2],
                    pos[0], pos[1], pos[2]), toURL: LLH_ELEM_URL)                      // fpLLH

                let trueAnomaly = CompTrueAnomaly(&oscKep)
                writeString(String(
                    format: " %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f",              // Print osculating Keplerian elements
                    mse, oscKep[0], oscKep[1], oscKep[2],
                    oscKep[4], oscKep[5], trueAnomaly), toURL: OSC_ELEM_URL)           // fpOscElem

                meanMotion = AToN(meanKep[0])
                writeString(String(
                    format: " %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f",
                    mse, meanMotion, meanKep[1], meanKep[2], meanKep[4],
                    meanKep[5], meanKep[3]), toURL: MEAN_ELEM_URL)                     // fpMeanElem

                meanMotion = AToN(meanKep[0])
                writeString(String(
                    format: " %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f",              // Print nodal period, apogee, perigee, and others
                    mse, nodalApPer[0], (1440.0 / nodalApPer[0]),
                    meanMotion, 1440.0 / meanMotion,
                    nodalApPer[1], nodalApPer[2]), toURL: NODAL_AP_PER_URL)            // fpnodalApPer

                // Height is below 100km - Skip the satellite
                if (llh[2] < 100.0) {
                    var lastErrorMessage = String(format: "Warning: Height is low. HT (Km) = %10.3lf", llh[2])
                    if (llh[2] < 0) {
                        lastErrorMessage = String(format: "Warning: Decay condition. Distance from the Geoid (Km) = %10.3lf", llh[2])
                    }

                    writeString(lastErrorMessage, toURL: OSC_STATE_URL)                // Write error message to files
                    writeString(lastErrorMessage, toURL: OSC_ELEM_URL)
                    writeString(lastErrorMessage, toURL: MEAN_ELEM_URL)
                    writeString(lastErrorMessage, toURL: LLH_ELEM_URL)
                    writeString(lastErrorMessage, toURL: NODAL_AP_PER_URL)

                    break // Move to the next satellite
                }

            }

            guard 0 == Sgp4RemoveSat(pSatKeys[i]) else {
                fatalError("Fatal Error: Cannot remove satellite \(i) from memory.")   // Remove this satellite if no longer needed
            }
        }
        //-------------------------------------------------------------------------

        let _ = Sgp4RemoveAllSats()
        let _ = TleRemoveAllSats()
        print("\(tleGetCount()) satellites remaining in memory")

        //  Close all output files
        //        fclose(fpOscState);
        //        fclose(fpOscElem);
        //        fclose(fpMeanElem);
        //        fclose(fpLLH);
        //        fclose(fpnodalApPer);

        // Close log file if needed
        closeLogFile()

        //  Free loaded AstroStd dlls
        //        FreeAstroStdDlls();
        //

        let stopInstant = Date().timeIntervalSince1970
        print("\n## Sgp4Prop finishes ..\n")

        print(String(format: "Total run time = %3.2lf seconds.\n", stopInstant - startInstant))

    }

}

func printHeader(_ file: URL, _ info: String, _ filePath: String) {

    writeString("\(info)\n\n", toURL: file)

    writeString(" EPHEMERIS GENERATED BY SGP4 USING THE WGS-72 EARTH MODEL", toURL: file)
    writeString(" COORDINATE FRAME=TRUE EQUATOR AND MEAN EQUINOX OF EPOCH", toURL: file)
    writeString(" USING THE FK5 MEAN OF J2000 TIME AND REFERENCE FRAME", toURL: file)
    writeString(" INPUT FILE = \(filePath)\n\n", toURL: file)

}
