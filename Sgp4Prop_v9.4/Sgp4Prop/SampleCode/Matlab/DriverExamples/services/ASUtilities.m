classdef ASUtilities
   properties (Access=private)
      % Astro Standards libraries 
      ASLIBRARIES = ["DllMain" "EnvConst" "TimeFunc" "AstroFunc" "Tle" "SpVec" "Vcm" ...
                     "ExtEphem" "ElComp" "ElOps" "Sgp4Prop" "SpProp" "SatState" "Sensor" "Obs" ...
                     "ElOps" "Saas" "Bam" "Lamod" "Aof" "Fov" "Combo" "Rotas" "BatchDC"];
   end
   methods
      % Setup Astro Standards working environment
      function SetupASEnv(obj)
         % Add Astro Standards library folder to search path
         fprintf('Please specify the correct path to the Astro Standards library by modifying the default ASLIBPATH\n');
         if ispc
           ASLIBPATH = '..\..\..\..\Lib\Windows'; 
           % use default relative path to AS libraries 
           fprintf('Current Astro Standards library folder = %s\n', ASLIBPATH);
           sysPath = getenv('PATH');
           setenv('PATH', [ASLIBPATH ';' sysPath]);
         elseif isunix
           ASLIBPATH = '..\..\..\..\Lib\Linux';
           % use default relative path to AS libraries 
           fprintf('Current Astro Standards library folder = %s\n', ASLIBPATH);
           sysPath = getenv('LD_LIBRARY_PATH');
           setenv('LD_LIBRARY_PATH', [ASLIBPATH ';' sysPath]);
         end
         
         s = pwd;
         ASWRAPPERS = [s '/../wrappers'];    % Matlab header files
         ASPROTOS = [s '/../protos/Windows'];        % Matlab proto and thunk files 
      
         % Add relative paths to header files and Matlab prototype files
         addpath(ASWRAPPERS, ASPROTOS);

      end

      % Load all the libraries that will be used in the program
      % Pass a list of Astro Standards libraries that need to be loaded
      % For example, pass this list ["DllMain" "EnvConst" "AstroFunc"]
      function LoadAstroStdLibs(obj, libs)
         for i = 1:length(libs)
            mProto = "m" + libs(i);
            mHeader = "M_" + libs(i) + "Dll.h";
            mHandle = eval("@m" + libs(i));

            % this library hasn't been loaded yet
            if ~libisloaded(libs(i))
               % check to see if prototype file is available (much faster)
               if exist(mProto, 'file') == 2
                  loadlibrary(libs(i), mHandle)
               else % if prototype isn't available then use header file instead (much slower)
                  loadlibrary(libs(i), mHeader)
               end 
            end 
         end
      end

      function LoadAllAstroStdLibs(obj)
         LoadAstroStdLibs(obj, obj.ASLIBRARIES);
      end      

      % Free the Astro Standards libraries that were loaded in the program
      function FreeAstroStdLibs(obj, libs)
         for i = 1:length(libs)
            if libisloaded(libs(i))
               unloadlibrary(libs(i))
            end 
         end
      end

      % Free the Astro Standards libraries that were loaded in the program
      function FreeAllAstroStdLibs(obj)
         FreeAstroStdLibs(obj, obj.ASLIBRARIES);
      end

      function errMsg=ShowErrMsg(obj)
         errMsg = blanks(128);
         errMsg = calllib('DllMain', 'GetLastErrMsg', errMsg);
         fprintf('%s\n', errMsg);
      end
      
      function ShowMsgAndTerminate(obj)
         errMsg = ShowErrMsg(obj);
         error(errMsg);
      end      
   end
end