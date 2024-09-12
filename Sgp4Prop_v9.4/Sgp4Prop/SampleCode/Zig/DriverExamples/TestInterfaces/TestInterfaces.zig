const std = @import("std");
const mem = @import("std").mem;
const stdout = std.io.getStdOut().writer();

const DllMain = @cImport({
  @cInclude("DllMainDll.h");
});

pub fn main() !void {
    var   infoStr: [DllMain.LOGMSGLEN]u8 = undefined;

    DllMain.DllMainGetInfo(&infoStr);
    try stdout.print("{s}\n", .{infoStr});

    try stdout.print("Testing {s}\n", .{"TestInterface"});
    const cIn: u8 = 'Z';
    var   cOut: [1]u8 = undefined;
    const intIn: i32 = 42;
    var   intOut: i32 = 0;
    const longIn: i64 = 42;
    var   longOut: i64 = 0;
    const realIn: f64 = 42.0;
    var   realOut: f64 = 0;
    var   strIn: [512]u8 = undefined;
    strIn[0] = 'I';
    strIn[1] = ' ';
    strIn[2] = 'a';
    strIn[3] = 'm';
    strIn[4] = ' ';
    strIn[5] = 'B';
    strIn[6] = 'a';
    strIn[7] = 't';
    strIn[8] = 'm';
    strIn[9] = 'a';
    strIn[10] = 'n';
    var   strOut: [512]u8 = undefined;
    var int1DIn = [3]i32{1, 2, 3};
    var int1DOut: [3]i32 = undefined;
    var long1DIn = [3]i64{1234567890123456789, 2, 3};
    var long1DOut: [3]i64 = undefined;
    var real1DIn = [3]f64{123.45, 2.0, 3.0};
    var real1DOut: [3]f64 = undefined;
    var int2DIn = [2][3]i32{ [3]i32{1, 2, 3} , [3]i32{4, 5, 6}};
    var int2DOut: [2][3]i32 = undefined;
    var long2DIn = [2][3]i64{ [3]i64{1234567890123456789, 2, 3} , [3]i64{4, 5, 6}};
    var long2DOut: [2][3]i64 = undefined;
    var real2DIn = [2][3]f64{ [3]f64{123.45, 2, 3} , [3]f64{4, 5, 6}};
    var real2DOut: [2][3]f64 = undefined;
    DllMain.TestInterface(cIn, &cOut, intIn, &intOut, longIn, &longOut, realIn, &realOut, &strIn, &strOut, &int1DIn, &int1DOut, &long1DIn, &long1DOut, &real1DIn, &real1DOut, &int2DIn, &int2DOut, &long2DIn, &long2DOut, &real2DIn, &real2DOut);
    try stdout.print("{s}\n", .{cOut});
    try stdout.print("{d}\n", .{intOut});
    try stdout.print("{d}\n", .{longOut});
    try stdout.print("{d}\n", .{realOut});
    try stdout.print("{s}\n", .{mem.trim(u8, &strOut, " ")});
    try stdout.print("{d} {d} {d}\n", .{int1DOut[0], int1DOut[1], int1DOut[2]});
    try stdout.print("{d} {d} {d}\n", .{long1DOut[0], long1DOut[1], long1DOut[2]});
    try stdout.print("{d} {d} {d}\n", .{real1DOut[0], real1DOut[1], real1DOut[2]});
    try stdout.print("{d} {d} {d}\n", .{int2DOut[0][0], int2DOut[0][1], int2DOut[0][2]});
    try stdout.print("{d} {d} {d}\n", .{int2DOut[1][0], int2DOut[1][1], int2DOut[1][2]});
    try stdout.print("{d} {d} {d}\n", .{long2DOut[0][0], long2DOut[0][1], long2DOut[0][2]});
    try stdout.print("{d} {d} {d}\n", .{long2DOut[1][0], long2DOut[1][1], long2DOut[1][2]});
    try stdout.print("{d} {d} {d}\n", .{real2DOut[0][0], real2DOut[0][1], real2DOut[0][2]});
    try stdout.print("{d} {d} {d}\n\n", .{real2DOut[1][0], real2DOut[1][1], real2DOut[1][2]});

    try stdout.print("Testing {s}\n", .{"TestInterface2"});
    var cInOut = [_]u8{'A'};
    var intInOut = intIn;
    var longInOut = longIn;
    var realInOut = realIn;
    var strInOut = strIn;
    var int1DInOut = int1DIn;
    var long1DInOut = long1DIn;
    var real1DInOut = real1DIn;
    var int2DInOut = int2DIn;
    var long2DInOut = long2DIn;
    var real2DInOut = real2DIn;
    DllMain.TestInterface2(&cInOut, &intInOut, &longInOut, &realInOut, &strInOut, &int1DInOut, &long1DInOut, &real1DInOut, &int2DInOut, &long2DInOut, &real2DInOut);
    try stdout.print("{s}\n", .{cInOut});
    try stdout.print("{d}\n", .{intInOut});
    try stdout.print("{d}\n", .{longInOut});
    try stdout.print("{d}\n", .{realInOut});
    try stdout.print("{s}\n", .{mem.trim(u8, &strInOut, " ")});
    try stdout.print("{d} {d} {d}\n", .{int1DInOut[0], int1DInOut[1], int1DInOut[2]});
    try stdout.print("{d} {d} {d}\n", .{long1DInOut[0], long1DInOut[1], long1DInOut[2]});
    try stdout.print("{d} {d} {d}\n", .{real1DInOut[0], real1DInOut[1], real1DInOut[2]});
    try stdout.print("{d} {d} {d}\n", .{int2DInOut[0][0], int2DInOut[0][1], int2DInOut[0][2]});
    try stdout.print("{d} {d} {d}\n", .{int2DInOut[1][0], int2DInOut[1][1], int2DInOut[1][2]});
    try stdout.print("{d} {d} {d}\n", .{long2DInOut[0][0], long2DInOut[0][1], long2DInOut[0][2]});
    try stdout.print("{d} {d} {d}\n", .{long2DInOut[1][0], long2DInOut[1][1], long2DInOut[1][2]});
    try stdout.print("{d} {d} {d}\n", .{real2DInOut[0][0], real2DInOut[0][1], real2DInOut[0][2]});
    try stdout.print("{d} {d} {d}\n\n", .{real2DInOut[1][0], real2DInOut[1][1], real2DInOut[1][2]});

    try stdout.print("Testing {s}\n", .{"TestInterface3"});
   //integer, intent(in)  :: Unk1DIn(*)  ! Unknown dimension should be length (3)
   //integer, intent(out) :: Unk1DOut(*) ! Unknown dimension should be length (3), Unk1DOut should return same as Unk1DIn * 4
   //integer, intent(in)  :: Unk2DIn(3,*)  ! Unknown dimension should be length (2) 
   //integer, intent(out) :: Unk2DOut(3,*) ! Unknown dimension should be length (2), Unk2DOut should return same as Unk2DIn * 5
    var Unk1DIn = [_]i32{1, 2, 3};
    var Unk1DOut: [3]i32 = undefined; 
    var Unk2DIn = [_][3]i32{ [3]i32{1, 2, 3} , [3]i32{4, 5, 6}};
    var Unk2DOut: [2][3]i32 = undefined;
    DllMain.TestInterface3(&Unk1DIn, &Unk1DOut, &Unk2DIn, &Unk2DOut);
    try stdout.print("{d} {d} {d}\n", .{Unk1DOut[0], Unk1DOut[1], Unk1DOut[2]});
    try stdout.print("{d} {d} {d}\n", .{Unk2DOut[0][0], Unk2DOut[0][1], Unk2DOut[0][2]});
    try stdout.print("{d} {d} {d}\n\n", .{Unk2DOut[1][0], Unk2DOut[1][1], Unk2DOut[1][2]});


    // Sample of functions with outputs
    try stdout.print("Testing {s}\n", .{"Functions with Outputs"});
    var ierr: i64 = 0;
    var Mode: i32 = 0;
    ierr = DllMain.SetElsetKeyMode(1);
    Mode = DllMain.GetElsetKeyMode();
    try stdout.print("{d}\n", .{ierr});
    try stdout.print("{d}\n", .{Mode});
    
    try stdout.print("{d}\n", .{DllMain.LOGMSGLEN});
}
