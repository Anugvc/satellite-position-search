function Sgp4Prop_Simple()
  clc
  clear all
  %runs from the Sgp4Prop/SampleCode/Octave directory
  
  %OctFilePath=[pwd,"../../octfiles/lib"]; %autoload likes full paths
  dir=pwd;
  ndx=strfind(dir,"Octave");
  OctFilePath=dir(1:ndx+6);

  if(ispc)
    OctFilePath=[OctFilePath,"octfiles/lib/Windows/"]
  else %ismac and isunix are also options
    OctFilePath=[OctFilePath,"octfiles/lib/Linux/"]
  end
  FuncPath="../../octave_functions/";

  addpath(FuncPath)
  
  LoadAndInit(OctFilePath);
  line1 = "1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814"
  line2 = "2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199"
  satKey=TleAddSatFrLines(line1,line2);
  ierr=Sgp4InitSat(satKey);
  if(ierr!=0)
     msg=GetLastErrMsg()
  endif
  for mse = 0:1440:14400
    [ierr,ds50UTC,pos,vel,llh]=Sgp4PropMse(satKey,mse);
    printf("%6.0f  %12.6f %12.6f %12.6f %12.6f %12.6f %12.6f\n",mse,pos,vel)
    if(ierr!=0)
       msg=GetLastErrMsg()
    endif
  endfor
  
  ierr=TleRemoveSat(satKey);
  if(ierr!=0)
     msg=GetLastErrMsg()
  endif
  FreeLibs();
endfunction

function LoadAndInit(OctFilePath)
  loadDllMain(OctFilePath);
  loadEnvConst(OctFilePath);
  loadTimeFunc(OctFilePath);
  loadAstroFunc(OctFilePath);
  loadTle(OctFilePath);
  loadSgp4Prop(OctFilePath);
endfunction

function FreeLibs()
  freeSgp4Prop();
  freeTle();
  freeAstroFunc();
  freeTimeFunc();
  freeEnvConst();
  freeDllMain();
endfunction
