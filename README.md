# satellite-position-search - Updated with sgp4 multi-threading

A c++ program to search for satellite positions bounded by a user defined region

This program uses official SGP4 library from space track. 
The python implementation was really slow hence I decided to go with c++. I tried converting vallado's c++ implementation in cuda
to improve performance but couldn't complete it due to time constraints.

The below instructions are for using this program in a windows environment with visual studio: 

1. Extract files from Sgp4Prop_v9.4 archive 
2. Include header files from Sgp4Prop/SampleCodes/C/DriverExamples/services 
    and Sgp4Prop/SampleCodes/C/DriverExamples/wrappers

3. Add above mentioned header file directory to 
Include the header files inside sgp4 project properties -> C/C++ -> General -> additional include directories

4. Add lib directory (Sgp4Prop/Lib/Windows ) to project properties -> linker -> General -> additional linker directories

5. Mention the .lib file names in the linker field in project properties -> linker -> input ->Additional dependencies

6. The code expects library in the executable path. Hence copy all the library files to the executable path (x64/Debug)

7. Change the input file path inside the program to path of the sats.txt

8. There are two testcases inside the program. Comment one and uncomment one to check the result of test case

9. Comment both test case and uncomment console read part to take input from user

10. When compiling, select the build only option instead of build + intellisense


The code uses multi-threading for fast performance. There are 32 threads each, Each performing operations on 32 satellites simultaneously,
Thereby improving speed by up to 32x times compared to sequential execution.

Each thread loops through the total mse (1440 minutes in a day) and for each minute, a batch of 32 satellites are propogated
and stored inside sat_positions - global variable of sat_pos_st structure type (Declared inside common_include.h).
The reading and propogation for 8451 satellites provided in the 30000sats.txt took less than 2 seconds (~1.8). 
The searching of positions inside a region and writing the results took ~2 seconds. 

The results are stored in a file named Positions.txt


Below are the console output for testcase2 (Testcase1 will give 0 as output)

![alt text](https://github.com/Anugvc/satellite-position-search/blob/main/image-1.png?raw=true)

![alt text](https://github.com/Anugvc/satellite-position-search/blob/main/image-2.png?raw=true)


Also. the library directory  (Lib/Windows/) needs to be added to PATH variable and system reboot required. 

official website: https://www.space-track.org/documentation#/sgp4 (need to login before download)

