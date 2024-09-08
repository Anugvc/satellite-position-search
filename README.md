# satellite-position-search
A c++ program to search for satellite positions bounded by a user defined region

This program uses official SGP4 library from space track. 
The python implementation was really slow hance I decided to go with c++. I tried converting vallado's c++ implementation in cuda
to improve performance but couldn't complete it due to time constraints.

The below instructions are for using this program in a windows environment with visual studio: 

This code requires source files and libraries from SGP4 examples. The libraries are located in Windows directory (for windows)
The header and source files are present in the example code directory for c language, inside services/ and wrappers/ directory.
The library files needed to be linked from project settings and also copy the same to where the executable will be located (x64/debug/)
Also. the library directory needs to be added to PATH variable. Add the library directory and library names (.lib) to linker settings
(project settings -> linker -> general -> Additional library directories, and project settings -> linker -> input -> additional dependencies)
Full version of space-track sgp4 can be downloaded from the 
official website: https://www.space-track.org/documentation#/sgp4 (need to login before download)

The cuda code is not complete hence the kernel.cu can be ignored.
