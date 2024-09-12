import Foundation        	// makes available URL, FileManager, Date, CharacterSet

/// Purpose:
///   This program is to convert osculating state vectors to SGP4 mean Keplerian elements and then
///   to TLEs
///
///   The program reads in user specified file which stores data in this format:
///   yyDDD.dddddddd X Y Z XDot YDot ZDot
///
///   and then convert these osculating vectors in the file to SGP4/TLEs and store these TLEs in
///   the output file
///
///
/// Usage: Command line format
///   OscVecToTLE inFile outFile
///   inFile   : Input file contains state vector
///   outFile  : Output file containing converted TLEs
///
/// Note:
///   To see this program correctly in Visual Studio set the tab size to 3 and check
///   insert spaces in Tools/Options/Tabs
///
/// Input file format
///   YY  DDD.dddddddddd   X                 Y                  Z         XDot                 YDot                ZDot
///   11  181.9041666666   -41941.78440      4382.32521         0.51060   -0.32335347          -3.08741884         0.00012461
@main
public struct OscVecToTLE {

    public static func main() {

        let commandArgs = CommandLine.arguments		// Get input parameters from the command line
        if (commandArgs.count != 3) {

            print("\nError in number of parameters passed. Please see the usage.\n");
            print("Usage    : OscVecToTLE inFile outFile\n");
            print("   inFile   : Input file containing osculating vector");
            print("   outFile  : Output file containing converted TLEs");
            exit(1);

        }

        let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)

        let inFile = commandArgs.count > 1 ? commandArgs[1] : ""            // input file
        let inFileURL = selectFile(inFile, inside: currentDirectoryURL)     // input URL

        let outFile = commandArgs.count > 2 ? commandArgs[2] : ""           // output file
        let outFileURL = createFile(outFile, inside: currentDirectoryURL)   // output URL

        print("## OscVecToTLE starts ..")
        let startInstant = Date().timeIntervalSince1970

        loadAllDlls()

        print("\n\(sgp4GetInfo())\n");

        let inputText = try! String(contentsOf: inFileURL)
        let lines = inputText.split(separator: "\n")

        for line in lines {

            //
            // this 'parse' is very rough .. things have to be just right !
            //
            let bits = line.trimmingCharacters(in: CharacterSet.newlines).split(separator: " ")

            //
            // this assumes that file's lines all match expected
            //
            let yr = Int(bits[0])!
            let day = Double(bits[1])!
            var pos: [Double] = [Double(bits[2])!, Double(bits[3])!, Double(bits[4])!]
            var vel: [Double] = [Double(bits[5])!, Double(bits[6])!, Double(bits[7])!]

            writeString((String(format: "%2d%.10f %14.5f %14.5f %14.5f %14.8f %14.8f %14.8f",
                                yr, day, pos[0], pos[1], pos[2],
                                vel[0], vel[1], vel[2])),
                        toURL: outFileURL)

            var  kozaiN: Double = 0.0
            var  ecc: Double = 0.0
            var  incl: Double = 0.0
            var  node: Double = 0.0
            var  MA: Double = 0.0
            var  omega: Double = 0.0
            var  ndot: Double = 0.0
            var  bstar: Double = 0.0

            var posNew: [Double] = [0.0, 0.0, 0.0]
            var velNew: [Double] = [0.0, 0.0, 0.0]

            xyz2sgp4(yr, day, &pos, &vel,
                     &kozaiN, &ecc, &incl, &node, &MA, &omega,
                     &posNew, &velNew);

            writeString((String(format: "%2d%.10f %14.5f %14.5f %14.5f %14.8f %14.8f %14.8f",
                                yr, day, posNew[0], posNew[1], posNew[2],
                                velNew[0], velNew[1], velNew[2])),
                        toURL: outFileURL)

            GetInitialDrag(NToA(kozaiN), ecc, &ndot, &bstar);

            var line1 = ""
            var line2 = ""

            tleGPFieldsToLines(99999, "U", "MySat", yr, day, ndot, 0.0, bstar, 0, 0, incl, node,
                               ecc, omega, MA, kozaiN, 0, &line1, &line2);
            writeString("\n\(line1)\n\(line2)\n", toURL: outFileURL)

            let deltaPos = sqrt(pos[0]*pos[0] + pos[1]*pos[1] + pos[2]*pos[2])
                         - sqrt(posNew[0]*posNew[0] + posNew[1]*posNew[1] + posNew[2]*posNew[2])
            let deltaVel = sqrt(vel[0]*vel[0] + vel[1]*vel[1] + vel[2]*vel[2])
                         - sqrt(velNew[0]*velNew[0] + velNew[1]*velNew[1] + velNew[2]*velNew[2])

            // Compute deltas on each component
            let deltaPosX = pos[0] - posNew[0]
            let deltaPosY = pos[1] - posNew[1]
            let deltaPosZ = pos[2] - posNew[2]

            let deltaVelX = vel[0] - velNew[0]
            let deltaVelY = vel[1] - velNew[1]
            let deltaVelZ = vel[2] - velNew[2]

            let deltaPos1 = sqrt((deltaPosX * deltaPosX) + (deltaPosY * deltaPosY) + (deltaPosZ * deltaPosZ))
            let deltaVel1 = sqrt((deltaVelX * deltaVelX) + (deltaVelY * deltaVelY) + (deltaVelZ * deltaVelZ))

            writeString((String(format: "delta pos (m) = %E, delta vel (m/sec) = %E",
                                deltaPos * 1000,  deltaVel * 1000)), toURL: outFileURL)
            writeString((String(format: "delta pos (m) = %E, delta vel (m/sec) = %E",
                                deltaPos1 * 1000, deltaVel1 * 1000)), toURL: outFileURL)

            let stopInstant = Date().timeIntervalSince1970
            print("## OscVecToTLE finishes ..\n")

            print(String(format: "Total run time = %3.2lf seconds.\n", stopInstant - startInstant))

        }
    }
}

func xyz2sgp4(_ yr: Int,                                        // <-- in
              _ days: Double,                                   // <-- in
              _ posIn: UnsafeMutablePointer<Double>,            // [Double, Double, Double]
              _ velIn: UnsafeMutablePointer<Double>,            // [Double, Double, Double]
              _ n: inout Double,
              _ ecc: inout Double,
              _ incl: inout Double,
              _ node: inout Double,
              _ MA: inout Double,
              _ omega: inout Double,
              _ posOut: UnsafeMutablePointer<Double>,           // [Double, Double, Double]
              _ velOut: UnsafeMutablePointer<Double>) {         // [Double, Double, Double]

    var _posOut = [0.0, 0.0, 0.0]
    var _velOut = [0.0, 0.0, 0.0]
    var sgp4MeanKep = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

    _ = Sgp4PosVelToKep(Int32(yr), days, posIn, velIn,          // Convert osculating vectors pos, vel to sgp4MeanKep
                        &_posOut, &_velOut, &sgp4MeanKep);

    posOut[0] = _posOut[0]
    posOut[1] = _posOut[1]
    posOut[2] = _posOut[2]
    velOut[0] = _velOut[0]
    velOut[1] = _velOut[1]
    velOut[2] = _velOut[2]

    n     = BrouwerToKozai(sgp4MeanKep[Int(XA_KEP_E)],      // Convert Brouwer mean motion to Kozai mean motion
                           sgp4MeanKep[Int(XA_KEP_INCLI)],
                           AToN(sgp4MeanKep[Int(XA_KEP_A)]))
    ecc   = sgp4MeanKep[Int(XA_KEP_E)]
    incl  = sgp4MeanKep[Int(XA_KEP_INCLI)]
    node  = sgp4MeanKep[Int(XA_KEP_NODE)]
    MA    = sgp4MeanKep[Int(XA_KEP_MA)]
    omega = sgp4MeanKep[Int(XA_KEP_OMEGA)]
}
