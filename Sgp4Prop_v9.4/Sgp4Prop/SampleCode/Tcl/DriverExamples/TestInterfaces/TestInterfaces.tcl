#Can do here if want to define once and use globals
#uncomment for methods 1 and two of globals
#source "../../global_tcl/DllMain_globals.tcl"

proc PrintGlobals {} {
   #uncomment for method 1
   #global LOGMSGLEN FILEPATHLEN GETSETSTRLEN INFOSTRLEN INPUTCARDLEN ELTTYPE_TLE_SGP ELTTYPE_TLE_SGP4
   #global ELTTYPE_TLE_SP ELTTYPE_SPVEC_B1P ELTTYPE_VCM ELTTYPE_EXTEPH ELTTYPE_TLE_XP 
   #global PROPTYPE_GP PROPTYPE_SP PROPTYPE_X PROPTYPE_UK
   #global BADSATKEY DUPSATKEY IDX_ORDER_ASC IDX_ORDER_DES IDX_ORDER_READ IDX_ORDER_QUICK


   #uncomment for method 2
   #upvar #0 LOGMSGLEN LOGMSGLEN
   #upvar #0 FILEPATHLEN FILEPATHLEN
   #upvar #0 GETSETSTRLEN GETSETSTRLEN
   #upvar #0 INFOSTRLEN   INFOSTRLEN
   #upvar #0 INPUTCARDLEN   INPUTCARDLEN
   #upvar #0   ELTTYPE_TLE_SGP    ELTTYPE_TLE_SGP
   #upvar #0   ELTTYPE_TLE_SGP4   ELTTYPE_TLE_SGP4
   #upvar #0   ELTTYPE_TLE_SP     ELTTYPE_TLE_SP
   #upvar #0   ELTTYPE_SPVEC_B1P  ELTTYPE_SPVEC_B1P
   #upvar #0   ELTTYPE_VCM        ELTTYPE_VCM
   #upvar #0   ELTTYPE_EXTEPH     ELTTYPE_EXTEPH
   #upvar #0   ELTTYPE_TLE_XP     ELTTYPE_TLE_XP
   #upvar #0   PROPTYPE_GP  PROPTYPE_GP
   #upvar #0   PROPTYPE_SP  PROPTYPE_SP
   #upvar #0   PROPTYPE_X   PROPTYPE_X
   #upvar #0   PROPTYPE_UK  PROPTYPE_UK
   #upvar #0   BADSATKEY BADSATKEY
   #upvar #0   DUPSATKEY DUPSATKEY
   #upvar #0   IDX_ORDER_ASC    IDX_ORDER_ASC
   #upvar #0   IDX_ORDER_DES    IDX_ORDER_DES
   #upvar #0   IDX_ORDER_READ   IDX_ORDER_READ
   #upvar #0   IDX_ORDER_QUICK  IDX_ORDER_QUICK 
   
   #uncomment for method 3
   source "../../global_tcl/DllMain_globals.tcl"
   
   puts "LOGMSGLEN $LOGMSGLEN"
   puts "FILEPATHLEN $FILEPATHLEN"
   puts "GETSETSTRLEN $GETSETSTRLEN"
   puts "INFOSTRLEN   $INFOSTRLEN"
   puts "INPUTCARDLEN   $INPUTCARDLEN"
   puts "ELTTYPE_TLE_SGP    $ELTTYPE_TLE_SGP"
   puts "ELTTYPE_TLE_SGP4   $ELTTYPE_TLE_SGP4"
   puts "ELTTYPE_TLE_SP     $ELTTYPE_TLE_SP"
   puts "ELTTYPE_SPVEC_B1P  $ELTTYPE_SPVEC_B1P"
   puts "ELTTYPE_VCM        $ELTTYPE_VCM"
   puts "ELTTYPE_EXTEPH     $ELTTYPE_EXTEPH"
   puts "ELTTYPE_TLE_XP     $ELTTYPE_TLE_XP"
   puts "PROPTYPE_GP  $PROPTYPE_GP"
   puts "PROPTYPE_SP  $PROPTYPE_SP"
   puts "PROPTYPE_X   $PROPTYPE_X"
   puts "PROPTYPE_UK  $PROPTYPE_UK"
   puts "BADSATKEY $BADSATKEY"
   puts "DUPSATKEY $DUPSATKEY"
   puts "IDX_ORDER_ASC    $IDX_ORDER_ASC"
   puts "IDX_ORDER_DES    $IDX_ORDER_DES"
   puts "IDX_ORDER_READ   $IDX_ORDER_READ"
   puts "IDX_ORDER_QUICK  $IDX_ORDER_QUICK "  
}

#load and initialize the libraries
proc loadlibs {} {
   LoadDllMainDll_tcl
   set output [DllMainInit_tcl]
   puts $output
}

#free the libraries
proc freelibs {} {
   set err [FreeDllMainDll_tcl]
}

#do the propagations
proc runTest {} {
   source "../../global_tcl/DllMain_globals.tcl"
   puts $LOGMSGLEN

   set cIn "Z"
   set intIn 42
   set longIn 1234567890123456789
   set realIn 123.456
   set strIn "I am Batman"
   set int1DIn [list 1 2 3]
   set long1DIn [list 1234567890123456789 2345678901234567890 3]
   set real1DIn [list 7.0 8.0 9.0]
   
   set int2DIn [list [list 1 2 3] [list 4 5 6]]
   set long2DIn [list [list 1234567890123456789 2 3] [list 4 5 6]]
   set real2DIn [list [list 1.0 2.0 3.0] [list 4.0 5.0 6.0]]
   
   #run the dang 'o thang man
   set output [TestInterface_tcl $cIn $intIn $longIn $realIn $strIn $int1DIn $long1DIn $real1DIn $int2DIn $long2DIn $real2DIn]
   
   puts [lindex $output 0]
   puts [lindex $output 1]
   puts [lindex $output 2]
   puts [lindex $output 3]
   puts [string trim [lindex $output 4]]
   puts [lindex $output 5]
   puts [lindex $output 6]
   puts [lindex $output 7]
   puts [lindex $output 8]
   puts [lindex $output 9]
   puts [lindex $output 10]
   puts ""
   
   #TestInterface2
   set cInOut "A"
   set intInOut 42
   set longInOut 1234567890123456789
   set realInOut 123.456
   set strInOut "I am Batman"
   set int1DInOut [list 1 2 3]
   set long1DInOut [list 1234567890123456789 2345678901234567890 3]
   set real1DInOut [list 7.0 8.0 9.0]
   
   set int2DInOut [list [list 1 2 3] [list 4 5 6]]
   set long2DInOut [list [list 1234567890123456789 2 3] [list 4 5 6]]
   set real2DInOut [list [list 1.0 2.0 3.0] [list 4.0 5.0 6.0]]
   
   set output [TestInterface2_tcl $cInOut $intInOut $longInOut $realInOut $strInOut $int1DInOut $long1DInOut $real1DInOut $int2DInOut $long2DInOut $real2DInOut]
   
   puts [lindex $output 0]
   puts [lindex $output 1]
   puts [lindex $output 2]
   puts [lindex $output 3]
   puts [string trim [lindex $output 4]]
   puts [lindex $output 5]
   puts [lindex $output 6]
   puts [lindex $output 7]
   puts [lindex $output 8]
   puts [lindex $output 9]
   puts [lindex $output 10]
   puts ""
   
   #TestInterface3
   set size_Unk1DIn 3
   set Unk1DIn [list 1 2 3]
   set size_Unk1DOut 3
   set size_Unk2DIn 2
   set Unk2DIn [list [list 1 2 3] [list 4 5 6]]
   set size_Unk2DOut 2
   
   set output [TestInterface3_tcl  $size_Unk1DIn $Unk1DIn $size_Unk1DOut $size_Unk2DIn $Unk2DIn $size_Unk2DOut]
   
   puts [lindex $output 0]
   puts [lindex $output 1]
}

#load the tcl interfaces, create tcl commands
switch $tcl_platform(platform) {
   windows {
      set libdir ../../lib_tcl/lib/Windows
      load [file join [pwd] "$libdir" dllmain_tcl.dll]
   }
   unix {
      set libdir ../../lib_tcl/lib/Linux
      load [file join [pwd] "$libdir" libdllmain_tcl[info sharedlibextension]]
   }
}

#frame .f
#button .f.b -text "Run Test Interface" -command {loadlibs; runTest; freelibs}
#button .f.p -text "Print Globals" -command PrintGlobals
#pack .f.b .f.p -padx 10 -side left
#pack .f

PrintGlobals

loadlibs; runTest; freelibs

exit
