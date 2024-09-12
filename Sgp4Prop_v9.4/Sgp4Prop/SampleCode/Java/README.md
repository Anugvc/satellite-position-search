# General
- This package contains examples of using the **Astrodynamics Standards (AstroStds)** libraries in Java

## Preparing to Run:
- Set the **JAVA_HOME** environment variable to the path of your JDK.  It needs to be the JDK, not JRE to compile the source code.
- JDK version 1.8.x was used to build and test the Java driver examples.  All source code for the driver examples and wrappers is provided.  Later versions of the JDK should work, since no advanced constructs, such as generics, auto-boxing, streams, or lambda expressions were used.  Even earlier versions of the JDK should work.
- If you are using JNA, then your CLASSPATH must include the jna*.jar file (i.e.. See jna-5.7.0.jar under the jna\lib subdirectory)
- If you are using JNI, then your PATH environment variable needs to include the path to the "C" libraries.  These libraries are already built for you in the "c_jni_export/lib" subdirectory.  If you wish, you can also use the c_jni_export.sln file to build the libraries yourself using Microsoft Visual Studio, or the Makefile on Linux.

## Folders:
- There are 2 ways to access the AstroStds libraries in Java:
  - **JNA**: Java Native Access.
    - Pure Java
	- Requires jna*.jar in the CLASSPATH.  This jar file is located in the "**lib**" subdirectory.
    - JNA does not allow 2-dimensional arrays.  When a method requires a 2-dimensional array, the wrapper will accept a 1-dimensional array.  There's methods 
  provided in the Utilities class to convert between 1-to-2 and 2-to-1 dimensional arrays. 
	- Usually slower than JNI, except for 2D array handling.
    - When using pass-by-reference, you will need to use XXXByReference classes (i.e.. DoubleByReference, IntegerByReference, LongByReference, etc.)
  - **JNI**: Java Native Interface.
    - Requires code written in C.
	- C source code is provided, under **jni/c_jni_export/\<component\>/src** folders.
	- Library already compiled will be in **jni/c_jni_export/lib** folder.
	- Requires C libraries to be in the PATH environment variable on Windows or LD_LIBRARY_PATH on Linux.
	- "**dependent_libs**" subfolder contains libraries that are needed by the Operating System.  Currently, only on Windows, and must be in your PATH environment variable.
	- 2D arrays are handled normally.  No conversion to 1D arrays required.
    - When using pass-by-reference, you will need to allocate at least an array of 1 (i.e.. new double [1], new int [1], new long [1], etc.)
	
- In either "jna" or "jni" directories, you will see the following subdirectories:
	- **src**: 
	  - This directory contains Java source files that you need to build any AstroStds application.  
	  - These source files include auto-generated "wrapper" classes that provide an Application Programming Interface (API) in Java.  
	  - The runExample scripts copy these source files into the local "src" directory before compiling.

	- **DriverExamples**: Contains the example source code.


## Notes:
- JNI will be slower than JNA for any method that uses 2 dimensional arrays.  It may not be noticeable for small data sets and/or small number of iterations.
  This is a known issue and is due to JNI methods available.  To make it faster, methods ending in "...2Das1D" were created.  You need to pass it 1D arrays instead, then convert the result into 2D arrays.
- Each example contains a ***runExample*** script that copies the "src" directory contents, compiles the source code, then runs the example.
- The ***runExample*** script sets the "path" environment variable with the location of the AstroStds libraries.  This is required to run applications using the AstroStds libraries.
- AstroStds libraries are broken down by Windows and Linux, and 32 or 64 bit.  The ***runExample*** script will automatically choose the appropriate library.
- The ***runExample.bat*** is for Windows.  The ***runExample.sh*** is for Linux.
- Java handles all the library dependencies for you, so no special coding required.


## Troubleshooting Tips:

**If you see this exception, then your path to the DLL/SO is incorrect**:
```
Exception in thread "main" java.lang.UnsatisfiedLinkError: Unable to load library 'DllMain': The specified module could not be found.

        at com.sun.jna.NativeLibrary.loadLibrary(NativeLibrary.java:169)
        at com.sun.jna.NativeLibrary.getInstance(NativeLibrary.java:242)
        at com.sun.jna.NativeLibrary.getInstance(NativeLibrary.java:205)
        at com.sun.jna.Native.register(Native.java:1033)
        at jnaDllMain.<clinit>(jnaDllMain.java:20)
        at SpProp.<clinit>(SpProp.java:52)
```
**Possible Reasons**:
- You are missing the license file (**SGP4_Open_License.txt**), which should be in the same directory as the DLL/SO files.
- Your path to the DLL/SO files is incorrect
- You are using mismatched bit size Java VM and DLL/SO files.  i.e.. if you are using 32-bit DLLs, you need to be using a 32-bit java VM.
- If you are using JNI, you might be missing a dependent library in your Windows OS.  Add the Win32 or Win64 under the "jni/dependent_libs" directory in your PATH environment variable.  Or, you might be missing the c_jni_export/lib in your PATH/LD_LIBRARY_PATH environment variable.
