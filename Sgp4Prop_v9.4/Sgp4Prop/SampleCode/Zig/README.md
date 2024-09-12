# General
- This package contains examples of using the **Astrodynamics Standards (AS)** libraries in Zig

## Preparing to Run:
- Ensure Zig can run on your box
- The DriverExamples/wrappers folder contains the Zig wrappers which are a copy of the Go wrappers.  The Go wrappers are just simple C wrappers.  
- The run.sh in TestInterface will show proper setup.  

Run Steps:
- export LD_LIBRARY_PATH (Linux/Mac) or PATH(Windows)
- Compile the driver.  You may need to set the path to zig
- Zig requires linking the individual libraries with the -l option.
   - The -L option sets the path to the linked libraries.
   - The -I option sets the path to the wrappers.
- Run the driver.

Some funny business
- Zig doesn't allow using variables to intialize arrays.  That must be done with slices (See Sgp4Prop_Simple.zig for details).  
- Zig requires slice size to be of type usize, so I used an intcast after getting the number of sats.  
- To use the slice in AstroStandards I had to point to the first element of the slice (See the line with the WTF comment).
- All together, these look like:
   var nsats = @intCast(usize,Tle.TleGetCount());
   try stdout.print("Number of Sats to Process: {d}\n", .{nsats});
   var satKeys = try allocator.alloc(c_long, nsats);
   Tle.TleGetLoaded(-1, &satKeys[0]); //WTF
   
- As with most languages, interfacing strings with libraries really sucks (See the TestInterface examples for details).  If there's a better way to do it, let us know.
