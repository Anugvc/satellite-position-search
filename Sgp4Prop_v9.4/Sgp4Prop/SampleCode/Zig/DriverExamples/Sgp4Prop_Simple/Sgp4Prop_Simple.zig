const std = @import("std");
const mem = @import("std").mem;
const stdout = std.io.getStdOut().writer();
var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const allocator = gpa.allocator();


const DllMain = @cImport({
  @cInclude("DllMainDll.h");
});
const Tle = @cImport({
  @cInclude("TleDll.h");
});
const Sgp4 = @cImport({
  @cInclude("Sgp4PropDll.h");
});

pub fn main() !void {
   var   tleFile: [512]u8 = undefined;
   tleFile[0] = 't';
   tleFile[1] = 'l';
   tleFile[2] = 'e';
   tleFile[3] = '.';
   tleFile[4] = 'i';
   tleFile[5] = 'n';
   tleFile[6] = 'p';

   var ierr: i32 = Tle.TleLoadFile(&tleFile);
   if (ierr != 0) ShowErrMsgAndExit();
   
   const nsats: usize = @intCast(Tle.TleGetCount());
   try stdout.print("Number of Sats to Process: {d}\n", .{nsats});
   var satKeys = try allocator.alloc(c_long, nsats);
   Tle.TleGetLoaded(-1, &satKeys[0]); //WTF
   
   var mse: f64 = undefined;
   var ds50UTC: f64 = undefined;
   var pos: [3]f64 = undefined;
   var vel: [3]f64 = undefined;
   var llh: [3]f64 = undefined;
   
   for (satKeys) |satKey| {
      try stdout.print("{d}\n", .{satKey});
      ierr = Sgp4.Sgp4InitSat(satKey);
      if (ierr != 0) ShowErrMsgAndExit();
      mse = 0.0;
      while (mse <= 14400.0) {
         ierr = Sgp4.Sgp4PropMse(satKey, mse, &ds50UTC, &pos, &vel, &llh);
         if (ierr != 0) ShowErrMsgAndExit();
         try stdout.print("{d} {d} {d} {d} {d} {d} {d}\n", .{mse, pos[0], pos[1], pos[2], vel[0], vel[1], vel[2]});
         mse += 1440.0;
      }
      ierr=Sgp4.Sgp4RemoveSat(satKey);
   }
}

fn ShowErrMsgAndExit() void 
{
   var msg: [512]u8 = undefined;
   DllMain.GetLastErrMsg(&msg);
   std.debug.print("{s}\n", .{mem.trim(u8, &msg, " ")});
   std.os.exit(1);
}
