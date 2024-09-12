# General
- This package contains examples of using the **Astrodynamics Standards (AS)** libraries in Fortran

## Notes:
- Fortran on Windows also need to be linked to *.lib files.
- On Linux, Fortran links directly to the *.so files.
- If you are running OneAPI compilers on Linux, you will need to source the /opt/intel/oneapi/compiler/2021.3.0/env/vars.sh file.
- Fortran is column-major.  To understand what that means, see https://en.wikipedia.org/wiki/Row-_and_column-major_order.
  In addition to this, when specifying 2 dimensional arrays, the number of columns comes first.

