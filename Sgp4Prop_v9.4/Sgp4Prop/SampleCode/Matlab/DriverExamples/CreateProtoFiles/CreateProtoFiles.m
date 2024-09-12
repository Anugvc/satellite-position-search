% Example too run this application: >>CreateProtoFiles('../../../../Lib/Windows')
% Create Matlab prototype files and trunk files for all Astro Standards libraries
function CreateProtoFiles(asLibPath)
   fprintf('Current Astro Standards library folder = %s\n', asLibPath);

   if ispc
      sysPath = getenv('PATH');
      setenv('PATH', [asLibPath ';' sysPath]);
   elseif isunix
      sysPath = getenv('LD_LIBRARY_PATH');
      setenv('LD_LIBRARY_PATH', [asLibPath ';' sysPath]);
   end   

   % Get current folder
   s = pwd;

   % Add relative paths to header files and Matlab prototype files
   addpath([s '/../wrappers'])

   loadlibrary('Aof',         'M_AofDll.h',        'mfilename', 'mAof')
   loadlibrary('AstroFunc',   'M_AstroFuncDll.h',  'mfilename', 'mAstroFunc')
   loadlibrary('Bam',         'M_BamDll.h',        'mfilename', 'mBam')
   loadlibrary('BatchDC',     'M_BatchDCDll.h',    'mfilename', 'mBatchDC')
   loadlibrary('Combo',       'M_ComboDll.h',      'mfilename', 'mCombo')
   loadlibrary('DllMain',     'M_DllMainDll.h',    'mfilename', 'mDllMain')
   loadlibrary('ElComp',      'M_ElCompDll.h',     'mfilename', 'mElComp')
   loadlibrary('ElOps',       'M_ElOpsDll.h',      'mfilename', 'mElOps')
   loadlibrary('EnvConst',    'M_EnvConstDll.h',   'mfilename', 'mEnvConst')
   loadlibrary('ExtEphem',    'M_ExtEphemDll.h',   'mfilename', 'mExtEphem')
   loadlibrary('Fov',         'M_FovDll.h',        'mfilename', 'mFov')
   loadlibrary('Lamod',       'M_LamodDll.h',      'mfilename', 'mLamod')
   loadlibrary('Obs',         'M_ObsDll.h',        'mfilename', 'mObs')
   loadlibrary('ObsOps',      'M_ObsOpsDll.h',     'mfilename', 'mObsOps')
   loadlibrary('Rotas',       'M_RotasDll.h',      'mfilename', 'mRotas')
   loadlibrary('Saas',        'M_SaasDll.h',       'mfilename', 'mSaas')
   loadlibrary('SatState',    'M_SatStateDll.h',   'mfilename', 'mSatState')
   loadlibrary('Sensor',      'M_SensorDll.h',     'mfilename', 'mSensor')
   loadlibrary('Sgp4Prop',    'M_Sgp4PropDll.h',   'mfilename', 'mSgp4Prop')
   loadlibrary('SpProp',      'M_SpPropDll.h',     'mfilename', 'mSpProp')
   loadlibrary('SpVec',       'M_SpVecDll.h',      'mfilename', 'mSpVec')
   loadlibrary('TimeFunc',    'M_TimeFuncDll.h',   'mfilename', 'mTimeFunc')
   loadlibrary('Tle',         'M_TleDll.h',        'mfilename', 'mTle')
   loadlibrary('Vcm',         'M_VcmDll.h',        'mfilename', 'mVcm')
end