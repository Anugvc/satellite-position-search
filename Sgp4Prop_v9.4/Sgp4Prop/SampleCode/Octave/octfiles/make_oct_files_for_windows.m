function make_oct_files_for_windows
mkoctfile -o ./lib/Windows/Aof.oct -I./src/services/ -I./src/wrappers/ ./src/Aof.cc
mkoctfile -o ./lib/Windows/AstroFunc.oct -I./src/services/ -I./src/wrappers/ ./src/AstroFunc.cc
mkoctfile -o ./lib/Windows/Bam.oct -I./src/services/ -I./src/wrappers/ ./src/Bam.cc
mkoctfile -o ./lib/Windows/BatchDC.oct -I./src/services/ -I./src/wrappers/ ./src/BatchDC.cc
mkoctfile -o ./lib/Windows/Combo.oct -I./src/services/ -I./src/wrappers/ ./src/Combo.cc
mkoctfile -o ./lib/Windows/DllMain.oct -I./src/services/ -I./src/wrappers/ ./src/DllMain.cc
mkoctfile -o ./lib/Windows/ElComp.oct -I./src/services/ -I./src/wrappers/ ./src/ElComp.cc
mkoctfile -o ./lib/Windows/ElOps.oct -I./src/services/ -I./src/wrappers/ ./src/ElOps.cc
mkoctfile -o ./lib/Windows/EnvConst.oct -I./src/services/ -I./src/wrappers/ ./src/EnvConst.cc
mkoctfile -o ./lib/Windows/ExtEphem.oct -I./src/services/ -I./src/wrappers/ ./src/ExtEphem.cc
mkoctfile -o ./lib/Windows/Fov.oct -I./src/services/ -I./src/wrappers/ ./src/Fov.cc
mkoctfile -o ./lib/Windows/Lamod.oct -I./src/services/ -I./src/wrappers/ ./src/Lamod.cc
mkoctfile -o ./lib/Windows/Obs.oct -I./src/services/ -I./src/wrappers/ ./src/Obs.cc
mkoctfile -o ./lib/Windows/ObsOps.oct -I./src/services/ -I./src/wrappers/ ./src/ObsOps.cc
mkoctfile -o ./lib/Windows/Rotas.oct -I./src/services/ -I./src/wrappers/ ./src/Rotas.cc
mkoctfile -o ./lib/Windows/Saas.oct -I./src/services/ -I./src/wrappers/ ./src/Saas.cc
mkoctfile -o ./lib/Windows/SatState.oct -I./src/services/ -I./src/wrappers/ ./src/SatState.cc
mkoctfile -o ./lib/Windows/Sensor.oct -I./src/services/ -I./src/wrappers/ ./src/Sensor.cc
mkoctfile -o ./lib/Windows/Sgp4Prop.oct -I./src/services/ -I./src/wrappers/ ./src/Sgp4Prop.cc
mkoctfile -o ./lib/Windows/SpProp.oct -I./src/services/ -I./src/wrappers/ ./src/SpProp.cc
mkoctfile -o ./lib/Windows/SpVec.oct -I./src/services/ -I./src/wrappers/ ./src/SpVec.cc
mkoctfile -o ./lib/Windows/TimeFunc.oct -I./src/services/ -I./src/wrappers/ ./src/TimeFunc.cc
mkoctfile -o ./lib/Windows/Tle.oct -I./src/services/ -I./src/wrappers/ ./src/Tle.cc
mkoctfile -o ./lib/Windows/Vcm.oct -I./src/services/ -I./src/wrappers/ ./src/Vcm.cc
end
