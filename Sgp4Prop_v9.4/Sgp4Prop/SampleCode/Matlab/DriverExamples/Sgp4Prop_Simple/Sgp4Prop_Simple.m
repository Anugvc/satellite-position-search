%    Purpose:
%       This program shows how a Matlab program can call the Astrodynamic Standard libraries to propagate
%       satellites to the requested time using SGP4 propagator.
% 
%       The program is simplified to show only the core functionalities of the involved dlls. 
%       File I/O and other output statements are intentionally not included for this purpose.
% 
%       Steps to implement the SGP4 propagator:
%       1. Load TLE(s) (TleAddSatFrLines, TleLoadFile, TleAddSatFrFieldsGP)
%       2. Initialize the loaded TLE(s) (Sgp4InitSat)
%       3. Propagate the initialized TLE(s) to the requested time 
%          (either minutes since epoch: Sgp4PropMse, or specific date: Sgp4PropDs50UTC, Sgp4PropDs50UtcPos, Sgp4PropDs50UtcLLH)
%       4. Deallocate loaded dlls (FreeAstroStdDlls)


function Sgp4Prop_Simple()


   fprintf('Program starts.\n');
   tStart = tic;

   s = pwd;
   ASUTILITIES = [s '/../services'];   % Utilities associated with Astro Standards libraries

   % Add relative paths to header files and Matlab prototype files
   addpath(ASUTILITIES);
   
   asUtils = ASUtilities;
   asUtils.SetupASEnv();

   % Load all Astro Standards libraries needed for SGP4 propagator
   asUtils.LoadAstroStdLibs(["DllMain" "EnvConst" "TimeFunc" "AstroFunc" "Tle" "Sgp4Prop"]);
   
   % Arrays that store propagator output data
   pos = zeros(3, 1);            %Position (km) in TEME of Epoch
   vel = zeros(3, 1);            %Velocity (km/s) in TEME of Epoch
   llh = zeros(3, 1);            % Latitude(deg), Longitude(deg), Height above Geoid (km)
   mse = 0;
   ds50UTC = 0;
   satKey = 0;
   
   posPtr     = libpointer('doublePtr', pos);
   velPtr     = libpointer('doublePtr', vel);
   llhPtr     = libpointer('doublePtr', llh);
   msePtr     = libpointer('doublePtr', mse);
   ds50UTCPtr = libpointer('doublePtr', ds50UTC);
   satKeyPtr  = libpointer('int64Ptr', satKey); 
   
   % note: you can't use any function that returns a 19-digit key directly in
   % Matlab because Matlab seems to truncate the returned 19-digit key.
   % You have to use alternative methods which return the key to the
   % passing parameter. These are especifically designed to work with Matlab 
   % and are designated by "ML" at the end of the function names
   
   % can't use this method since satKey will be truncated
   %satKey = calllib('Tle', 'TleAddSatFrLines', ...
   %                 '1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814', ...
   %                 '2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199');
   
   % ... use this alternative method which is especially designed for Matlab
   % load a TLE using strings (see TLE dll document)
   calllib('Tle', 'TleAddSatFrLinesML', ...
           '1 90021U RELEAS14 00351.47568104 +.00000184 +00000+0 +00000-4 0 0814', ...
           '2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199', satKeyPtr);
   satKey = satKeyPtr.Value;      
   
   % other ways to load TLEs into memory to work with
   %TleLoadFile(fileName);  % load TLEs from a text file
   %TleAddSatFrFieldsGP();  % load a TLE by passing its data fields
   
   
   % initialize the loaded TLE before it can be propagated (see Sgp4Prop dll document)
   % This is important!!!
   errCode = calllib('Sgp4Prop', 'Sgp4InitSat', satKey);
   
   % check to see if initialization was successful
   if (errCode ~= 0)
     return;
   end
   
   % propagate using specific date, days since 1950 UTC (for example using "2000 051.051.47568104" as a start time)
   % convert date time group string "YYDDD.DDDDDDDD" to days since 1950, UTC (see TimeFunc dll document)
   startTime = calllib('TimeFunc', 'DTGToUTC', '00051.47568104'); 
   endTime = startTime + 10;               % from start time propagate for 10 days 
   
   % propagate for 10 days from start time with 0.5 day step size
   for ds50UTC = startTime:0.5:endTime
     % see Sgp4Prop dll document
     errCode = calllib('Sgp4Prop', 'Sgp4PropDs50UTC', satKey, ds50UTC, msePtr, posPtr, velPtr, llhPtr);
     % other available propagation methods
     %Sgp4PropDs50UtcLLH(satKey, ds50UTC, llh);
     %Sgp4PropDs50UtcPos(satKey, ds50UTC, pos);
   end
   
   % propagate using minutes since satellite's epoch
   % propagate for 30 days since satellite's epoch with 1 day (1440 minutes) step size
   for mse = 0:1440:(30 * 1440)
     % propagate the initialized TLE to the specified time in minutes since epoch
     % see Sgp4Prop dll document
     errCode = calllib('Sgp4Prop', 'Sgp4PropMse', satKey, mse, ds50UTCPtr, posPtr, velPtr, llhPtr);
     %pos = posPtr.value;
     %fprintf('%f %f %f\n', pos(1), pos(2), pos(3));
   end 
   
   % Remove loaded satellites if no longer needed
   errCode = calllib('Tle', 'TleRemoveSat', satKey);   % remove loaded TLE from memory
   errCode = calllib('Sgp4Prop', 'Sgp4RemoveSat', satKey);  % remove initialized TLE from memory
   %errCode = calllib('Tle', 'TleRemoveAllSats');   % remove all loaded TLEs from memory
   %errCode = calllib('Sgp4Prop', 'Sgp4RemoveAllSats');  % remove all initialized TLEs from memory
   
   % Free loaded Astro Standards libraries
   asUtils.FreeAstroStdLibs(["DllMain" "EnvConst" "TimeFunc" "AstroFunc" "Tle" "Sgp4Prop"]);
   
   fprintf('Program completed.\n');
   
   tElapsed = toc(tStart);
   
   %Calculate the whole run time
   fprintf('Program completed successfully.\n');
   fprintf('Total run time = %10.2f seconds.\n', tElapsed );

end

