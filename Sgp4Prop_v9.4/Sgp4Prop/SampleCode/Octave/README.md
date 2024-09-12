# **Integrating Astrodynamics Standards Libraries with Octave**

## **Quick Guide for Users**

If you just want to get to the point, here is a quick guide.
  1.	Open octave (Gui or command line both work)
  2.	cd to the octfiles directory under the SampleCode/Octave folder
  3.	Run the **Oct_make_oct** from Octave.  This will make all of the .oct files needed to interface with the Astro Standards libraries
  4.	cd up one level to the SampleCode/Octave folder
  5.	You should now be able to run the **testTest** and **SGP4_Simple** scripts

This assumes that you are running from the distribution and the libraries are in their proper place relative to the SampleCode/Octave folder.  If you moved the libraries or Octave folder, you’ll need to change the setenv lines for either Windows or Linux depending on your OS.  They are near the top of the scripts.  These scripts should give the user an idea of how to use the libraries.

To see the available functions and how to use them, open the .cc file for that library and view the comments near the top of the file.

To use libraries other than the libraries in the scripts, add the load(lib) and (lib)Init to the **LoadAndInit** functions and free(lib) to the **FreeLibs** function.

## **Background**

Octave is a free alternative to MatLab that has 99% compatibility.  Unfortunately, loading shared libraries (dll, so) is in the other 1%.  MatLab has two ways of using shared libraries.  The method we’ve done in AstroStandards is “autoload”.  This is a relatively easy method.  Octave doesn’t have this capability.  MatLab’s other method is through the use of precompiled Mex files.  Mex files allow the user to interface with the shared libraries in C.  The Mex files are then loaded into MatLab.  Octave can use Mex files, but has a performance drop when compared to MatLab. 

Octave has another alternative called Oct files.  Similar to Mex files, Oct files are written in C++, precompiled, and then loaded into Octave.  Since we already had a method for Matlab, we decided to opt for the Oct files.  Needless to say, it very painful.  To alleviate this pain for the user, we’ve made all the Oct files and provided the .cc source.  We’ve also made a couple of drivers as a guide to using the Oct files.

## **Creating Oct files**

The Oct files are just compiled C++ files.  These C++ files (with the .cc extension) are compiled with the **mkoctfile** command.  **Mkoctfile** somewhat simplifies the compilation process.  **Mkoctfile** is available in the standard package on Windows, but needs the liboctave-dev package on Linux.  It uses a default C++ compiler that can be changed.  To change on Linux, **export** GXX=’compiler_name’.  I was able to get it working in gcc with a little tweaking.  On Windows I used g++ which was the default.  To compile with the C wrappers and services in the default package location, run:

**mkoctfile** –I../wrappers -I../services (lib_name).cc

For example:

**mkoctfile** –I../wrappers -I../services DllMain.cc

OctConv.cc was created to allow most of the conversions to be done in one line except for going from octave values to 2D arrays.  A conversion can be done, but it took many lines.  To make it easier on the user, we made an Octave script called **Oct_make_oct.m**.  Just run the script and it will make the .oct files for all the libraries.

## **Makeup of Oct files**

The online Octave documentation left a little to be desired in respect to Oct files.  Hopefully, the users will not need to experience the pain of making Oct files from scratch, but just in case of some unforeseen circumstances, here is a quick and dirty guide from our experience.

As with most C/C++ files, the .cc files start with a bunch of #include statements.  To make the C files compatible with C++ the include statements for the C headers and files were wrapped in an extern “C” block.  The .c files were also included along with the .h files.  This seems to be frowned upon in the C community, but I could not find a way around it. 

```
DEFUN_DLD (Function_Name, args, nargout, "Function Description") {
   Function Block
}
```

All functions interfaced with Octave are declared as DEFUN_DLD.  The first argument is the Function_Name.  All the function arguments will be crammed into the second argument, arg, as a list.  Nargout is the number of output arguments.  The last argument is the Function Description.  The only arguments we care about are the Function name and the arguments.  Here is a sample function from the EnvConsDll.cc Oct File

```
DEFUN_DLD (EnvInit, args, nargout, "Initialize DllMain")
{
   __int64 apPtr=OctToInt64(args(0));
   int ierr=EnvInit(apPtr);
   octave_value_list retval(nargout);
   retval(0)=octave_value (ierr);
   return retval;
}
```

The function **EnvInit** has one input argument and one output argument.  The input arguments must be converted from Octave type to C types for interfacing with the libraries.  Similarly, the output arguments must be converted back to type octave_value and put into a list for return to Octave.  Even functions of type void will need to have a return.  We have made functions to do most of this in the OctConv.cc file.  The passing of 2D arrays in C++ is very painful, so there aren’t a function for those.

To simplify this whole process for everyone involved, we wrapped the C wrappers, services, and Utils in C++ to create the Oct files.  In the Octfiles, there should be a function for every C interface, one function for loading the library and setting the function pointers, and one for freeing the library.

## **Problems with int64 Variables**

Octave and MatLab both have bugs with respect to int64 (long long int) variables.  This is due to both languages treating all numbers as type double.  Octave cannot pass int64 as inputs without clobbering them.  MatLab cannot pass int64 variables as return arguments.  To get around this for MatLab, we created _ML functions to allow the variable to be returned as input.  For Octave, we require all int64 variables to be input and returned as strings.  For a 2D array, this was unable to be fixed.  Luckily, we don’t have any int64 2D array variables other than the test interface, so only that function will have clobbered output.

## **Interfacing with Octave**

Once the Oct files are created, they need to be loaded into Octave.  This is done with the **autoload** function, whose usage is autoload(“function”,”octfile”).  The octfile will give a warning if the whole path isn’t included.  It doesn’t like relative paths either.  Once all the processing is done, the commands can be freed with the clear command.  The variables may need to be cleared done prior to rerunning **mkoctfile** command.  To make things easier for the users, load and free function files have for each library.  The load function runs **autoload** for each command and loads the library.  The free function clears the commands and unloads the library.  The load function needs to be run for each library in the correct order before the functions can be used.

These **autoload** commands are all in the load(libname).m scripts in the octave_functions folder.  This file also sets variables to make interfacing with Astro Standards easier.  When the users are done with the functions they can be freed with the clear command.  There are functions called free(libname) to free the functions and variables specific to the library.

## **Running Library Functions**

The newly loaded functions can then be run just like any other Octave function:

```
Out1, out2, out3, etc = function(in1, in2, in3, etc);
```

Users will need to check the C header files to see the usage for each function.  Since Octave treats all numbers as doubles, the conversions happen in the Oct files.  The user only needs to worry about strings and correctly applying the dimensions of arrays. Check the .cc files in the octfiles directory to get a list of functions and their arguments.

## **Known issues**

Octave currently has issues with int64 variables.  A workaround was created for scalar and 1D arrays, but 2D arrays were not fixed.  Even if Octave fixes this bug, we may keep the workaround for users with older versions of Octave.

## Notes:
- Octave is column-major.  To understand what that means, see https://en.wikipedia.org/wiki/Row-_and_column-major_order.
  However, when specifying 2 dimensional arrays, the number of rows comes first.

