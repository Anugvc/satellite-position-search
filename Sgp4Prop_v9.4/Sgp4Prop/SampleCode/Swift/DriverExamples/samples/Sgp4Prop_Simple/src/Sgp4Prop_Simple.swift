import Foundation                                   // for Date ..

/// This program shows how a Swift program can call the Astrodynamic Standard libraries to propagate
/// satellites to the requested time using the SGP4 propagator.
///
/// The program is simplified to show only the core functionalities of the involved libraries.
/// File I/O and other output statements are intentionally not included for this purpose.
///
/// Steps to implement the SGP4 propagator:
/// 1. Load all the required libraries  (LoadAstroStdDlls)
/// 2. Load TLE(s) (TleAddSatFrLines, TleLoadFile, TleAddSatFrFieldsGP)
/// 3. Initialize the loaded TLE(s) (Sgp4InitSat)
/// 4. Propagate the initialized TLE(s) to the requested time
/// (either minutes since epoch: Sgp4PropMse, or specific date:
/// Sgp4PropDs50UTC, Sgp4PropDs50UtcPos, Sgp4PropDs50UtcLLH)
/// 5. Deallocate loaded libraries (FreeAstroStdDlls)
@main
public struct Sgp4Prop_Simple {
    
    public static func main() {
        
        loadAllDlls()
        verifyDLLs()        // and verify by printing their Info strings
        
        // load a TLE using strings (see TLE dll document)

        let satKey = tleAddSatFrLines("1 00694U 63047A   22346.21636301 +.00001226  00000 0  14598-3 0 0999",
                                      "2 00694  30.3563 289.0742 0579612 154.2031 208.8696 14.0412882996468")

        print("## Sgp4Prop_Simple starts ..\n")
        let startInstant = Date().timeIntervalSince1970
        
        // .. other ways to load TLEs into memory to work with
        //      TleLoadFile(fileName)       // load TLEs from a text file
        //      TleAddSatFrFieldsGP()       // load a TLE by passing its data fields
        
        // .. initialize the loaded TLE before it can be propagated (see Sgp4Prop dll document)
        //      This is important!!!
        guard 0 == sgp4InitSat(satKey) else {
            fatalError("## \(getLastErrMsg()) (after sgp4InitSat)")
        }
        
        // .. propagate using specific date, days since 1950 UTC
        //      (for example using "2000 051.051.47568104" as a start time)
        let startTime = dtgToUTC("00051.47568104")      // convert date time group string "YYDDD.DDDDDDDD" to days since 1950, UTC
        let endTime = startTime + 10                    // end time is 10 days after start time
        
        var pos: [Double] = [0.0, 0.0, 0.0]             // prepare an array to catch position
        var vel: [Double] = [0.0, 0.0, 0.0]             // prepare an array to catch velocity
        var llh: [Double] = [0.0, 0.0, 0.0]             // prepare an array to catch lat/long/height
        var mse: Double = 0.0                           // prepare to catch minutes from epoch
        
        // .. propagate for 10 days from start time with 0.5 day step size
        for ds50UTC in stride(from: startTime, through: endTime, by: 0.5) {

            guard 0 == sgp4PropDs50UTC(satKey, ds50UTC, &mse, &pos, &vel, &llh) else {
                fatalError("## \(getLastErrMsg()) (after sgp4PropDs50UTC)")
            }
            // .. other available propagation methods
            //      Sgp4PropDs50UtcLLH(satKey, ds50UTC, llh)
            //      Sgp4PropDs50UtcPos(satKey, ds50UTC, pos)
        }
        
        // .. propagate using minutes since satellite's epoch
        //      propagate for 30 days since satellite's epoch with 1 day (1440 minutes) step size
        var ds50UTC: Double = 0.0
        for mse: Double in stride(from: 0, through: 30 * 1440, by: 1440) {

            guard 0 == Sgp4PropMse(satKey, mse, &ds50UTC, &pos, &vel, &llh) else {
                fatalError("## \(getLastErrMsg()) (after sgp4PropDs50UTC)")
            }
            
            print(String(format: "pos (x,y,z): %+f %+f %+f", pos[0], pos[1], pos[2]))
        }
        
        // .. remove loaded satellites if no longer needed
        guard 0 == tleRemoveSat(satKey) else {  // remove loaded TLE from memory
            fatalError("## \(getLastErrMsg()) (after tleRemoveSat)")
        }
        
        guard 0 == sgp4RemoveSat(satKey) else { // remove all initialized TLEs from memory
            fatalError("## \(getLastErrMsg()) (after sgp4RemoveSat)")
        }

        freeAllDlls()           // Deallocate loaded AstroStd dlls
        
        let stopInstant = Date().timeIntervalSince1970
        print("## Sgp4Prop_Simple finishes ..\n")
        
        print(String(format: "Total run time = %3.2lf seconds.\n", stopInstant - startInstant))

    }
    
}
