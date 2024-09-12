#module AstroInit # for some reason, modules called in modules don't get exported, so this isn't a module for now...

include("../../wrappers/DllMainDll.jl")
include("../../wrappers/TimeFuncDll.jl")
include("../../wrappers/EnvConstDll.jl")
include("../../wrappers/AstroFuncDll.jl")
include("../../wrappers/TleDll.jl")
include("../../wrappers/Sgp4PropDll.jl")
using .DllMainDll
using .TimeFuncDll
using .EnvConstDll
using .AstroFuncDll
using .TleDll
using .Sgp4PropDll

function ShowErrandTerminate()
	println(rstrip(GetLastErrMsg()))
	exit(0)
end

#end
