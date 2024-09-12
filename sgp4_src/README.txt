This document describes the material that comes with the Astrodynamics Standards (AstroStds) package 
and a general guide on how to get started.

To understand how to use this package, you should have a basic understanding of the following:
- How to build a software application in your language of choice (e.g.. Java, Python, C, etc).  
  (You should be able to compile and run a simple application on your system.)
- How to set an environment variable for your operating system.
- The concepts of 
    -- Using a library
        -- Dynamic Link Library (*.dll) for Windows
        -- Shared Object (*.so) for Linux
		-- Dynamic Library (*.dylib) for Mac
    -- Functions (also known as subroutines, methods, or procedures).
    -- Passing parameters by reference.
    -- Basics of astrodynamics.
    -- Application Programming Interface (API).
 

Below is a summary of the files/directory structure in a package (see directorytree.txt for a full list):
- Documentation
    -- APIDocs:                   HTML files that show all the API functions available 
                                  in the libraries.  Open "APIDocs\index.html"  or
								  "ShowAPIDocs.html" in a browser.
    -- Architecture\*.jpg:        Component architecture diagram
    -- JIRAs\*.html:              Issues tracked
    -- librarydocuments\*.pdf:    Documents on the Astrodynamics concepts built into the libraries.
    -- ReleaseNotes\*.pdf:        Release notes
    -- verdict\*.pdf:             Documents that describe the Verdict executable.  
	                              (The Verdict executable verifies everything delivered works as stated.)
    -- KnownIssues.pdf:           Any known issues
    -- ProgrammersGuide.pdf:      Programmer's Guide
- Lib
    -- Linux:   All the AstroStds libraries for 64-bit Linux operating systems. For gfortran and Intel compilers.
    -- MacOS:   All the AstroStds libraries for 64-bit Mac operating systems. For gfortran and/or Intel compilers
	            for Intel and M1 based Macs.
    -- Windows: All the AstroStds libraries for 64-bit Windows operating systems.
- SampleCode (See README.md file under each programming language for special considerations.)
    -- ASCII_API_Files
    -- C
    -- C#
    -- Fortran
    -- Go
    -- Java (both JNA and JNI)
    -- Julia
    -- Matlab
    -- Octave
    -- Python (for Python 2 or Python 3)
    -- Rust
    -- Swift
    -- Tcl
    -- VB
    -- Zig
- UnitTests (See README.txt)
- Verify (Files used to verify distribution is correct. See documents under Documentation/verdict for further information)


How to get started:
0.  For Linux users, the "astestpreparation.sh" script may need to run to correct
    Windows to Linux issues.  Please run the following commands:
    a.  sed -i 's/\r$//g' ./Verify/Scripts/astestpreparation.sh
    b.  ./Verify/Scripts/astestpreparation.sh

1.  Assuming you want to write a program using one of the languages provided in the "SampleCode" directory:
    a.  Open a command prompt, and go to the directory for the language you are most familiar with.
    b.  Go to the "DriverExamples" sub-directory.
    c.  Go to one of the package types sub-directory (e.g.. "Sgp4Prop").
    d.  Run the "runExample.bat" script if you are on Windows, or "runExample.sh" script if you are on Linux
	    or Mac.  The "C", "C#", "Fortran", and "VB" examples on Windows, use MS Visual Studio's "devenv.com"
  		command.  You will need to edit the script for your specific compiler.
    e.  The runExample script will prompt you for whatever you may be missing.  Usually, it will be an 
        environment variable that you must set.  The prompt will tell you the name of the environment 
        variable and provide an example on how to set it.
    f.  You can then look at the source code under the "src" directory, and see how the AstroStds
        functions are called.
    g.  From here, you can open a browser to the Documentation->APIDocs->index.html file and see all  
        the APIs available.  This webpage will show function names, the parameters required, whether the
        parameter is an input or output, size of arrays, etc.

2.  If you want to write a program, but don't use one of the languages provided:
    a.  Assuming you have a basic understanding of software development, you can look at the 
        "C" examples and/or "UnitTests" to understand how to use the libraries.
    b.  Contact us to see if we might be able to add examples in the programming language that you use.

3.  If you want to just run an executable that's already  built:
    a.  You can use the executables under SampleCode->C->DriverExamples-><package>->bin
        (e.g.. SampleCode/C/DriverExamples/Sgp4Prop/bin)
    b.  Choose the executable appropriate for your operating system (e.g.. Sgp4Prop.exe or
        for Windows, or Sgp4Prop for Linux).
        Note: Only 64-bit executables are now provided.
    c.  To run them, 
        i.  open a command prompt
        ii.  Set the PATH or LD_LIBRARY_PATH environment variable to include the AstroStds libraries.
        ii.  Run the chosen executable.  If the executable requires arguments, it will inform you
             of what is needed.
    d.  Note: There are many more capabilities in the AstroStds libraries than executables provided
        in the package.

4.  See Documentation/ProgrammersGuide.pdf for further information.

Notes:
- Windows, Linux, and Mac are currently the only operating systems supported.  The libraries are tested
  on RedHat 7.x, Windows 10, Windows Server 2019, and Intel/M1 based Mac Monterery.  Whether the libraries 
  work on other flavors of Windows, Linux, or Mac is unknown.

- The runExample scripts should run out-of-the-box.  If not, please let us know.

- Not all examples contain sample code of all the algorithms provided by AstroStds.  Most, if not all, 
  examples contain, at least, sample code for Sgp4Prop (SGP4 Propagator).

- All API functions use primitives (i.e.. character, byte, integer, long, double).  These are the
  only types used because they are available in all programming languages.

- Only a few of the most popular programming languages are under the "SampleCode" directory.
  This does not mean these are the only languages you can use.  The libraries are in Dynamic Link 
  Library (DLL) format for Windows, Shared Object (*.so) format for Linux, and Dynamic Library (*.dylib)
  for Mac.  Any programming language that is capable of using DLL/SO/DYLIB libraries should be capable 
  of using the AstroStds libraries.

- All output from functions are from output parameters (i.e..  pass-by-reference).  Function return
  values are only used as error codes.

- All output parameters must not be NULL and must be allocated prior to calling a function.

- All memory management is handled outside of the libraries.  i.e.. if you allocate a large array
  and pass it to a function, it is your responsibility to de-allocate the array if necessary.

- Functions in the API that use arrays will not be more than 2-dimensional.  Be aware if your language
  supports row-major or column-major 2D arrays.

- "Driver" is the terminology used for the examples in the "SampleCode" directory.

- "Wrapper" is the terminology used to reference a file generated by AstroStds in the various 
  languages that contain all the AstroStds' APIs.  There is a "wrapper" for each package 
  (i.e.. Aof, BatchDC, Fov, Sgp4Prop, etc).

- There are unique characteristics for each programming language used.  See the README.md file 
  under each language specific directory under SampleCode for specific information.

