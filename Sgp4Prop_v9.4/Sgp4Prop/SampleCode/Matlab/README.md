# General
- This package contains examples of using the **Astrodynamics Standards (AS)** libraries in Matlab

## Notes:
- Users now have 2 ways to build MatLab applications with Astro Standards:
	- Using thunk files:
		- A "protos" directory is provided in the Astro Standards distribution.
		- The protos directory has *thunk* files and "prototype" files (*.m).
		- The driver examples that come with Astro Standards will automatically use these files 
		  by detecting if this "protos" directory exists.
		- Using these files have shown to improve performance by 10-20 times faster.
		- CreateProtoFiles.bat (Windows) and CreateProtoFiles.sh (Linux) scripts were provided if you
          wish to create these files yourself.
		- C compiler and Astro Standards wrappers (*.h files) are no longer required to build
		  or run the driver examples.  But to build the thunk files, you will still need the C
		  compiler and wrappers.
	- Using regular old way:
		- Requires the Astro Standards wrappers (*.h files).
		- Requires C compiler
- The AstroStandards libraries depend on some of the same Intel libraries that Matlab depends on:

     - libifcoremd.dll
	 - libiomp5md.dll
	 - libmmd.dll
	 
  The above libraries are specific to Windows.  Assuming you are running on Windows, specifically
  64-bit Windows, and assuming your Intel libraries in you Matlab installation are older than the
  libraries in Astro Standards, then follow these instructions:
  
  1.  Make a backup copy of the Intel libraries in your Matlab installation directory.
      These libraries are most likely in your <MATLAB>\<release>\bin\win64 directory.
  2.  Copy the above libraries from <Astro Standards installation>\Lib\Win64 to the directory
      where your Intel libraries were, in your Matlab installation.
  3.  If you still have issues, then restore the libraries from your backup, and contact the
      Astro Standards team for further assistance.
  
- Some versions of Matlab have a bug that truncates Int64 return variables.  We created
  Matlab versions of some functions to get around this.
  
- Output variables must be initialized to 0's before calling functions.
- Output variables must be declared as pointers.

- You will need to write code to the load all the dependent libraries.  See the examples
  to show how to do this.
  
- Matlab is column-major.  To understand what that means, see https://en.wikipedia.org/wiki/Row-_and_column-major_order.
  However, when specifying 2 dimensional arrays, the number of rows comes first.

- We have not tested MatLab on Linux, but one user did this to get it working.  From their email:

Below is a summary of the required steps to get the libraries to load.

1.	Modify .h files to include definition of __int64
```
	//Directives for Windows PC and UNIX platforms
	#ifdef _WIN32
		#include <windows.h>
		//#define STDCALL __stdcall // Remember to use this __stdcall in VC++ 6.0
		#define STDCALL __cdecl   // Remember to select this __cdecl in VS 2008
		// windows platforms has __int64 type - 64-bit integer
	#else
		#include <dlfcn.h>
		#define STDCALL 
		// unix-family platforms doesn't support __int64, therefore need to define it here
		typedef long long __int64;
	#endif

	// Use 64-bit integer for fortran addresses
	typedef __int64 fAddr;
```

2.	Prior to executing MATLAB, define LD_LIBRARY_PATH. Appending this path once MATLAB is running doesn’t work.
export LD_LIBRARY_PATH=/opt/mts/MTS_SDK/Main/Matlab/Lib64 %User put the Astro Standards Libraries in this folder.

3.	In MATLAB, add paths for Lib64 and Include directories
```
folderName = fullfile(pwd,'Matlab');
addpath(fullfile(folderName,'Lib64'));
addpath(fullfile(folderName,'Include'));   
```

4.	In MATLAB, Load Library with option to generate prototype file. MATLAB will write both the prototype file and thunk file in the local directory. Without this option, the thunk file is written to /tmp which has the noexec option set.
```
[notfound,warnings]=loadlibrary('libastrofunc','M_AstroFuncDll.h',’mfilename’,’libastrofuncproto’)
```

This results in creation of libastrofuncproto.m and libastrofunc_thunk_glxa64.so and the library being loaded into MATLAB.
	
5.	Move prototype file and thunk file to Prototypes directory. In MATLAB add path for Prototypes directory.
addpath(fullfile(folderName,'Prototypes'));

6.	For future executions, MATLAB can load the library using the prototype file. For compatibility with existing code, an alias for the library needs to be defined.
```
[notfound,warnings]=loadlibrary('libastrofunc',@libastrofunc,’alias’,’AstroFunc’)
```
At this point, the .h files are no longer required. The prototype and thunk files are required. And presumably a compiler would no longer be required.

On a side note, I think I discovered why MATLAB requires a compiler when loading a shared library with a .h file. The process of generating the prototype and thunk files is done via Perl script, which requires a .i file as input. This .i file is generated when the compiler preprocesses the .h file. When using loadlibrary, MATLAB needs a thunk file to interface with the shared library. If the thunk file does not exist, MATLAB loadlibrary will generate a thunk file in the temporary directory. The prototype.pl Perl script first generates C code for the thunk file, which is then compiled into a shared library (.dll, .so, or .dylib depending on the OS).
