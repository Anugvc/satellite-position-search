import Foundation                                   // for Date ..

/// This program shows how a Fortran program can call the Astrodynamic Standard
/// libraries to reepoch the input TLEs to a new epoch.
///
/// Usage: Command line format
/// TleReepoch inFile outFile newEpoch
/// inFile   : The name of an input file that contains the input TLEs
/// outFile  : The name of an output file that stores the newly reepoched TLEs
/// newEpoch : The new epoch time in YYDDDHHMMSS.SSS or YYYY/DDD.DDDDDDD
@main
public struct TleReepoch {

    public static func main() {

        let commandArgs = CommandLine.arguments                     // Get input parameters from the command line

        if commandArgs.count < 4 {

            print("Error in number of parameters passed. Please see the usage.\n\n")
            print("Usage  : TleReepoch inFile outFile newEpoch\n")
            print("      inFile : The name of an input file that contains the input TLEs")
            print("     outFile : The name of an output file that stores the newly reepoched TLEs")
            print("    newEpoch : The new epoch time in YYDDDHHMMSS.SSS or YYYY/DDD.DDDDDDD\n")
            print("Example: TleReepoch input/oldtles.txt output/newtles.txt 2014/001.0000000")
            exit(1)

        }

        print("## TleReepoch starts ..\n")
        let startInstant = Date().timeIntervalSince1970

        let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)

        let inFile = commandArgs[1]                                         // input file
        let inFileURL = selectFile(inFile, inside: currentDirectoryURL)     // input URL

        let outFile = commandArgs[2]                                        // output file
        let outFileURL = createFile(outFile, inside: currentDirectoryURL)   // output URL

        let newEpochDTG = commandArgs[3]                                    // new epoch

        loadAllDlls()                                                       // Load all the dlls

        guard 0 == openLogFile(createFile("log.txt", inside: currentDirectoryURL).path) else {
            fatalError("Fatal Error: Cannot open (missing?) log file - Program will now exit.")
        }

        guard 0 == tleLoadFile(inFileURL.path) else {
            print("## TleReepoch: \(getLastErrMsg()) (after tleLoadFile)")
            fatalError("Fatal Error: Cannot open input file \"\(commandArgs[1])\" - Program will now exit.")
        }

        let numSats = Int(tleGetCount())                            // Count satellites currently in memory

        if (numSats == 0) {
            print("No TLEs were found in the input file")
            exit(1)
        } else {
            print("\(numSats) satellites found in input file")
        }

        let pSatKeys = tleGetLoaded(Int(IDX_ORDER_READ))!                   // Get satellites' keys into a local array

        for i in 0..<numSats {                                              // Loop through all the TLEs

            guard 0 == sgp4InitSat(pSatKeys[i]) else {                      // Init the satellite for propagation
                print("## TleReepoch: \(getLastErrMsg()) (after sgp4InitSat)")
                fatalError("Sgp4InitSat failed on satellite \(i)")
            }

            var line1 = ""                                                  // prepare the first hundred lobsters ..
            var line2 = ""                                                  // ..

            if 0 == sgp4ReepochTLE(pSatKeys[i], dtgToUTC(newEpochDTG),
                                   &line1, &line2) {
                writeString("\(line1)\n\(line2)", toURL: outFileURL)
            } else {
                print("## TleReepoch: \(getLastErrMsg()) (after sgp4ReepochTLE)")
            }

        }

        let stopInstant = Date().timeIntervalSince1970
        print("\n## TleReepoch finishes ..\n")

        print(String(format: "Total run time = %3.2lf seconds.\n", stopInstant - startInstant))
    }

}
