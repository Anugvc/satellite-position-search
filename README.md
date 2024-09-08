# satellite-position-search
A c++ program to search for satellite positions bounded by a user defined region

This program uses official SGP4 library from space track. 
The python implementation was really slow hance I decided to go with c++. I tried converting vallado's c++ implementation in cuda
to improve performance but couldn't complete it due to time constraints.

The below instructions are for using this code in a windows environment: 
This code requires source files and libraries from SGP4 examples. The libraries are located in lib/Windows directory (for windows)
The header and source files are present in the example code directory for c language, inside services/ and wrappers/ directory.
The library files needed to be linked from project settings and also copy the same to where the executable will be located (x64/debug/)
Also. the library directory needs to be added to PATH variable.
The cuda code is not complete hence the kernel.cu can be ignored.
