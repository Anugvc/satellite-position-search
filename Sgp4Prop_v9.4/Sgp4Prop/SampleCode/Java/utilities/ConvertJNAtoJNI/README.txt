This application iterates thru a given directory and attempts to covert any "*.java" file 
with JNA syntax to JNI syntax.

To fix instantiations:
It captures the variable assigned to "new IntByReference()" and replaces it with "new int [1]"
It captures the variable assigned to "new DoubleByReference()" and replaces it with "new double [1]"
It captures the variable assigned to "new LongByReference()" and replaces it with "new long [1]"
It captures the variable assigned to "new ByteByReference()" and replaces it with "new byte [1]"

To fix types passed to methods:
Replaces "IntByReference" with "int[]"
Replaces "DoubleByReference" with "double[]"
Replaces "LongByReference" with "long[]"
Replaces "ByteByReference" with "byte[]"

To fix static library references:
Replaces "Jna" with "Jni"

To fix comments:
Replaces "JNA" with "JNI"

To fix getValue() getter method:
For each variable captured from above that have ".getValue()" appended, replace ".getValue()" with "[0]".

To fix setValue() setter method:
For each variable captured from above that have ".setValue(<arg>)" appended, replace ".setValue(<arg>)" with "[0] = <arg>".

To fix imports:
Deletes all lines starting with "import com.sun.jna"

This script DOES NOT fix logic to fix all 2D-to-1D and 1D-to-2D logic.  Since JNA cannot handle 2D arrays, but JNI can.
