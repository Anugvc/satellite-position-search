#To run, add !#(path to julia) on the first line or run 
#(path to julia) ./julia_test.jl 

include("./AstroInit.jl")
using Printf

line1 = "1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814"
line2 = "2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199"

satKey=TleAddSatFrLines(line1, line2)
println(satKey)

iErrCode=Sgp4InitSat(satKey)

for mse in 0.0:2700.0:43200.0
	iErr, ds50UTC, pos, vel, llh=Sgp4PropMse(satKey, mse)
	yr,day=UTCToYrDays(ds50UTC)
        iErr, posNew, velNew, sgp4MeanKep=Sgp4PosVelToKep(yr,day,pos,vel)
	@printf " %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f\n" mse pos[1] pos[2] pos[3] vel[1] vel[2] vel[3]
        @printf " %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f\n" sgp4MeanKep[1] sgp4MeanKep[2] sgp4MeanKep[3] sgp4MeanKep[4] sgp4MeanKep[5] sgp4MeanKep[6]
end

#infoStr=TimeFuncGetInfo()

#println(rstrip(infoStr))

#infomsg=GetLastInfoMsg()
#println(rstrip(infomsg))

