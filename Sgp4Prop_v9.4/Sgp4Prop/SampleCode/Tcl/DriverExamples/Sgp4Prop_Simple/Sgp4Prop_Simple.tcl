
proc ShowErrAndExit {} {
   set errMsg [GetLastErrMsg_tcl]
   puts [string trim [lindex $errMsg 0]]
   freelibs
   exit
}

#load and initialize the libraries
proc loadlibs {} {
   LoadDllMainDll_tcl
   LoadEnvConstDll_tcl
   LoadTimeFuncDll_tcl
   LoadAstroFuncDll_tcl
   LoadTleDll_tcl
   LoadSgp4PropDll_tcl
}

#free the libraries
proc freelibs {} {
   FreeSgp4PropDll_tcl
   FreeTleDll_tcl
   FreeAstroFuncDll_tcl
   FreeTimeFuncDll_tcl
   FreeEnvConstDll_tcl
   FreeDllMainDll_tcl
}

#do the propagations
proc propit {} {
   set line1 "1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814"
   set line2 "2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199"
   set satKey [TleAddSatFrLines_tcl $line1 $line2]
   set err [Sgp4InitSat_tcl $satKey]
   if {$err != 0} { ShowErrAndExit}
   for {set mse 0} {$mse<=14400} {set mse [expr {$mse+1440}]} {
      set Output [Sgp4PropMse_tcl $satKey $mse]
      set err [lindex $Output 0]
      if {$err != 0} { ShowErrAndExit}
      set pos [lindex $Output 2]
      set vel [lindex $Output 3]
      puts [format "%6d %16.8f %16.8f %16.8f %12.8f %12.8f %12.8f" $mse [lindex $pos 0] [lindex $pos 1] [lindex $pos 2] [lindex $vel 0] [lindex $vel 1] [lindex $vel 2] ]
      #puts [format "%6d %-9.*f %-9.*f %-9.*f %-9.*f %-9.*f %-9.*f" $mse [lindex $pos 0] [lindex $pos 1] [lindex $pos 2] [lindex $vel 0] [lindex $vel 1] [lindex $vel 2] ]
   }
   
   set err [Sgp4RemoveSat_tcl $satKey]
   if {$err != 0} { ShowErrAndExit}
   set err [TleRemoveSat_tcl $satKey]
   if {$err != 0} { ShowErrAndExit}
}

#load the tcl interfaces, create tcl commands
switch $tcl_platform(platform) {
   windows {
      set libdir "../../lib_tcl/lib/Windows"
      load [file join [pwd] "$libdir" dllmain_tcl.dll]
      load [file join [pwd] "$libdir" envconst_tcl.dll]
      load [file join [pwd] "$libdir" timefunc_tcl.dll]
      load [file join [pwd] "$libdir" tle_tcl.dll]
      load [file join [pwd] "$libdir" sgp4prop_tcl.dll]
   }
   unix {
      set libdir "../../lib_tcl/lib/Linux"
      load [file join [pwd] "$libdir" libdllmain_tcl[info sharedlibextension]]
      load [file join [pwd] "$libdir" libenvconst_tcl[info sharedlibextension]]
      load [file join [pwd] "$libdir" libtimefunc_tcl[info sharedlibextension]]
      load [file join [pwd] "$libdir" libastrofunc_tcl[info sharedlibextension]]
      load [file join [pwd] "$libdir" libtle_tcl[info sharedlibextension]]
      load [file join [pwd] "$libdir" libsgp4prop_tcl[info sharedlibextension]]
   }
}

#frame .f
#button .f.b -text "Propagate Satellite" -command {loadlibs; propit; freelibs}
#pack .f.b
#pack .f

loadlibs; propit; freelibs
exit
