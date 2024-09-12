# **Integrating Astro Standards Libraries with TCL/TK**

## **Getting Started:**

1.	Go to the SampleCode/Tcl
    a.  The DriverExamples directory shows examples with runExample scripts
	    that you can run.
	b.  If something is required, the script will tell you.
2.  The examples use Tcl libraries in the lib_tcl/lib folder.   They are already
    built for you, but if you need to build them again, there is a MakeAll.sh
	script for Linux.
3.  This Tcl infrastructure assumes Tcl is installed in /opt/tcl on Linux or
    C:\ActiveTcl on Windows.


## **Background:**

TCL/TK is used by few people but is used heavily in 18SPCS and NSDC.  It is one of the simplest languages to interface with TK and can make some great GUIs.  Similar to Octave, JNI, and R, the interfaces need to be written in C and loaded into TCL.  Currently, this release is only tested on Linux.  These examples were built off of the existing C drivers, so the wrappers and services will need to be included when building the shared objects.  This methodology should work with TCL versions 8.4 and newer.  It was tested on TCL version 8.6.  You may need to install the "tcl..-dev" package first.  On Ubuntu based languages: sudo apt-get install tcl8.6-dev.  Or you can get a complete installer from ActiveState/ActiveTcl.


## **Registering Functions:**

The first function will be an initialization function and it looks like:

```
int Dllmain_tcl_Init(Tcl_Interp *interp) {
   //Register Commands in the package
   Tcl_CreateObjCommand(interp, "LoadDllMainDll_tcl", LoadDllMainDll_tcl, (ClientData)NULL, (Tcl_CmdDeleteProc *)NULL);
   Tcl_CreateObjCommand(interp, "FreeDllMainDll_tcl", FreeDllMainDll_tcl, (ClientData)NULL, (Tcl_CmdDeleteProc *)NULL);
   Tcl_CreateObjCommand(interp, "DllMainInit_tcl", DllMainInit_tcl, (ClientData)NULL, (Tcl_CmdDeleteProc *)NULL);
   Tcl_CreateObjCommand(interp, "GetLastErrMsg_tcl", GetLastErrMsg_tcl, (ClientData)NULL, (Tcl_CmdDeleteProc *)NULL);
   Tcl_CreateObjCommand(interp, "TestInterface_tcl", TestInterface_tcl, (ClientData)NULL, (Tcl_CmdDeleteProc *)NULL);
   return TCL_OK;
}
```

The first letter is capitalized and the rest is lowercase.  The function ends with "_Init".  There may be a problem with the names SGP4 Sgp4Prop due to the numbers in the name.  The name was changed to Sgp_Init.  What this does is creates and registers the TCL functions in the quotation marks and pairs it with the C function after.  To register commands, the **Tcl_CreateObjCommand** is used:

```
Tcl_CreateObjCommand(interp, "TCL_COMMAND", C_COMMAND, (ClientData)NULL, (Tcl_CmdDeleteProc *)NULL);
```

Afterwards, the Init function returns TCL_OK to let TCL know that everything was loaded correctly.  Each C function needs to be contained in a header file before it can be used in the Tcl_Init function. 

The C functions have the form:

```
int GetLastErrMsg_tcl(ClientData clientData, Tcl_Interp *interp, int objc, Tcl_Obj *CONST objv[]) {
   char lastErrMsg[512];    strncpy( lastErrMsg, " ", sizeof( lastErrMsg ) ); //clear the buffer variable, Needed if more than one long out
   GetLastErrMsg(lastErrMsg);
   
   Tcl_Obj *returnObj;
   returnObj=Tcl_NewListObj(0,NULL);
   if(Tcl_ListObjAppendElement(interp, returnObj, Tcl_NewStringObj(lastErrMsg,512) ) != TCL_OK) return TCL_ERROR;
   Tcl_SetObjResult(interp, returnObj);
   
   return TCL_OK;   
}
```


## **Data Types:**

The C function handles the conversion between TCL and C inputs and outputs.  Tcl_conv.c has been made to assist handling conversions.  As usual, 2D array inputs need to be done manually.

## **Inputs and Output Arguments:**

The objv[] argument is the list of input arguments.  The Tcl_Obj *returnObj variable is the returned object in list form.  **Tcl_ListObjAppendElement** will append any list object to the return list and can be used as many times as needed.  TCL treats everything as a list.  2D arrays are just lists of lists.  Any element of a list can contain another list.


## **Compiling:**

When finished, the .c file will be compiled into a shared object, like so:

```
gcc DllMain_tcl.c -fPIC -shared -I/usr/include/tcl8.6/ -I../services –I../wrappers -o libdllmain_tcl.so
```

The MakeAll.sh script does this for all libraries.  (Note: The carriage return may need to be removed from the end of the lines with a sed command first: sed -i s/’\r$’//g MakeAll.sh)


## **Loading into TCL:**

On the TCL side, the shared objects need to loaded:

#load the tcl interfaces, create tcl commands
```
switch $tcl_platform(platform) {
   windows {
      load [file join [pwd] "lib_tcl" dllmain_tcl.dll]
   }
   unix {
      load [file join [pwd] "lib_tcl" libdllmain_tcl[info sharedlibextension]]
   }
}
```

This loads the new commands into TCL, then they can be used like any other procedure.

```
proc loadlibs {} {
   set err [LoadDllMainDll_tcl]
   set output [DllMainInit_tcl]
   puts $output
}
```

This "proc" loads the library in C and then runs DllMainInit.  For safety, all the new functions were named "(funcname)_tcl".

For a sample of how it all works together, check out the testInterface API to see how each data type is handled.  Test.tcl is the driver for this API.  It has been made to work within the directory tree of the Sgp4Prop package.
