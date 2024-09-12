// This wrapper file was generated automatically by the GenDllWrappers program.

#include <memory.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include <jni.h>

// Compiler directive that allows C++ code to use the C header files
// Begin
#ifdef __cplusplus
extern "C"
{
#endif

#include "../../services/DllUtils.h"
#include "../../wrappers/DllMainDll.h"
#include "../../wrappers/DllMainDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_LoadDllMainDll(JNIEnv* env, jclass jc)
{
    LoadDllMainDll();
}

JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniDllMain_DllMainInit(JNIEnv* env, jclass jc)
{
    LoadDllMainDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = DllMainInit();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_DllMainGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to DllMainGetInfo");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *infoStr_outArray = (jbyte *)((*env)->GetByteArrayElements(env, infoStr_out, NULL));
    if (infoStr_outArray == NULL) {
        printf("Failed to get elements for infoStr array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    DllMainGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniDllMain_DllMainLoadFile(JNIEnv* env, jclass jc, jstring dllMainFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (dllMainFile_in == 0) {
        printf("Got NULL parameter passed to DllMainLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *dllMainFile_inArray = (char *)((*env)->GetStringUTFChars(env, dllMainFile_in, NULL));
    if (dllMainFile_inArray == NULL) {
        printf("Failed to get elements for dllMainFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = DllMainLoadFile(dllMainFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniDllMain_OpenLogFile(JNIEnv* env, jclass jc, jstring fileName_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (fileName_in == 0) {
        printf("Got NULL parameter passed to OpenLogFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *fileName_inArray = (char *)((*env)->GetStringUTFChars(env, fileName_in, NULL));
    if (fileName_inArray == NULL) {
        printf("Failed to get elements for fileName array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = OpenLogFile(fileName_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_CloseLogFile(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CloseLogFile();

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_LogMessage(JNIEnv* env, jclass jc, jstring msgStr_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (msgStr_in == 0) {
        printf("Got NULL parameter passed to LogMessage");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *msgStr_inArray = (char *)((*env)->GetStringUTFChars(env, msgStr_in, NULL));
    if (msgStr_inArray == NULL) {
        printf("Failed to get elements for msgStr array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    LogMessage(msgStr_inArray);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_GetLastErrMsg(JNIEnv* env, jclass jc, jbyteArray lastErrMsg_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (lastErrMsg_out == 0) {
        printf("Got NULL parameter passed to GetLastErrMsg");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *lastErrMsg_outArray = (jbyte *)((*env)->GetByteArrayElements(env, lastErrMsg_out, NULL));
    if (lastErrMsg_outArray == NULL) {
        printf("Failed to get elements for lastErrMsg array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    GetLastErrMsg(lastErrMsg_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, lastErrMsg_out, lastErrMsg_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_GetLastInfoMsg(JNIEnv* env, jclass jc, jbyteArray lastInfoMsg_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (lastInfoMsg_out == 0) {
        printf("Got NULL parameter passed to GetLastInfoMsg");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *lastInfoMsg_outArray = (jbyte *)((*env)->GetByteArrayElements(env, lastInfoMsg_out, NULL));
    if (lastInfoMsg_outArray == NULL) {
        printf("Failed to get elements for lastInfoMsg array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    GetLastInfoMsg(lastInfoMsg_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, lastInfoMsg_out, lastInfoMsg_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_GetInitDllNames(JNIEnv* env, jclass jc, jbyteArray initDllNames_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (initDllNames_out == 0) {
        printf("Got NULL parameter passed to GetInitDllNames");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *initDllNames_outArray = (jbyte *)((*env)->GetByteArrayElements(env, initDllNames_out, NULL));
    if (initDllNames_outArray == NULL) {
        printf("Failed to get elements for initDllNames array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    GetInitDllNames(initDllNames_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, initDllNames_out, initDllNames_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_TestInterface(JNIEnv* env, jclass jc, jbyte cIn_in, jbyteArray cOut_out, jint intIn_in, jintArray intOut_out, jlong longIn_in, jlongArray longOut_out, jdouble realIn_in, jdoubleArray realOut_out, jstring strIn_in, jbyteArray strOut_out, jintArray int1DIn_in, jintArray int1DOut_out, jlongArray long1DIn_in, jlongArray long1DOut_out, jdoubleArray real1DIn_in, jdoubleArray real1DOut_out, jobjectArray int2DIn_in, jobjectArray int2DOut_out, jobjectArray long2DIn_in, jobjectArray long2DOut_out, jobjectArray real2DIn_in, jobjectArray real2DOut_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (cOut_out == 0 || intOut_out == 0 || longOut_out == 0 || realOut_out == 0 || strIn_in == 0 || strOut_out == 0 || int1DIn_in == 0 || int1DOut_out == 0 || long1DIn_in == 0 || long1DOut_out == 0 || real1DIn_in == 0 || real1DOut_out == 0 || int2DIn_in == 0 || int2DOut_out == 0 || long2DIn_in == 0 || long2DOut_out == 0 || real2DIn_in == 0 || real2DOut_out == 0) {
        printf("Got NULL parameter passed to TestInterface");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int intOut_len = (*env)->GetArrayLength(env, intOut_out);
    if (intOut_len < 1) {
        printf("intOut parameter passed in TestInterface is too small.");
        return;
    }

    int longOut_len = (*env)->GetArrayLength(env, longOut_out);
    if (longOut_len < 1) {
        printf("longOut parameter passed in TestInterface is too small.");
        return;
    }


    int realOut_len = (*env)->GetArrayLength(env, realOut_out);
    if (realOut_len < 1) {
        printf("realOut parameter passed in TestInterface is too small.");
        return;
    }

    int int1DIn_len = (*env)->GetArrayLength(env, int1DIn_in);
    if (int1DIn_len < 3) {
        printf("int1DIn parameter passed in TestInterface is too small.");
        return;
    }

    int int1DOut_len = (*env)->GetArrayLength(env, int1DOut_out);
    if (int1DOut_len < 3) {
        printf("int1DOut parameter passed in TestInterface is too small.");
        return;
    }

    int long1DIn_len = (*env)->GetArrayLength(env, long1DIn_in);
    if (long1DIn_len < 3) {
        printf("long1DIn parameter passed in TestInterface is too small.");
        return;
    }


    int long1DOut_len = (*env)->GetArrayLength(env, long1DOut_out);
    if (long1DOut_len < 3) {
        printf("long1DOut parameter passed in TestInterface is too small.");
        return;
    }


    int real1DIn_len = (*env)->GetArrayLength(env, real1DIn_in);
    if (real1DIn_len < 3) {
        printf("real1DIn parameter passed in TestInterface is too small.");
        return;
    }

    int real1DOut_len = (*env)->GetArrayLength(env, real1DOut_out);
    if (real1DOut_len < 3) {
        printf("real1DOut parameter passed in TestInterface is too small.");
        return;
    }

    int int2DIn_nRows = (*env)->GetArrayLength(env, int2DIn_in);
    if (int2DIn_nRows < 2) {
        printf("int2DIn parameter passed in TestInterface is too small.");
        return;
    }

    jintArray int2DIn_rowArray = (*env)->GetObjectArrayElement(env, int2DIn_in, 0);
    int int2DIn_nCols = (*env)->GetArrayLength(env, int2DIn_rowArray);
    if (int2DIn_nCols < 3) {
        return;
    }

    int int2DOut_nRows = (*env)->GetArrayLength(env, int2DOut_out);
    if (int2DOut_nRows < 2) {
        printf("int2DOut parameter passed in TestInterface is too small.");
        return;
    }

    jintArray int2DOut_rowArray = (*env)->GetObjectArrayElement(env, int2DOut_out, 0);
    int int2DOut_nCols = (*env)->GetArrayLength(env, int2DOut_rowArray);
    if (int2DOut_nCols < 3) {
        return;
    }

    int long2DIn_nRows = (*env)->GetArrayLength(env, long2DIn_in);
    if (long2DIn_nRows < 2) {
        printf("long2DIn parameter passed in TestInterface is too small.");
        return;
    }

    jlongArray long2DIn_rowArray = (*env)->GetObjectArrayElement(env, long2DIn_in, 0);
    int long2DIn_nCols = (*env)->GetArrayLength(env, long2DIn_rowArray);
    if (long2DIn_nCols < 3) {
        return;
    }

    int long2DOut_nRows = (*env)->GetArrayLength(env, long2DOut_out);
    if (long2DOut_nRows < 2) {
        printf("long2DOut parameter passed in TestInterface is too small.");
        return;
    }

    jlongArray long2DOut_rowArray = (*env)->GetObjectArrayElement(env, long2DOut_out, 0);
    int long2DOut_nCols = (*env)->GetArrayLength(env, long2DOut_rowArray);
    if (long2DOut_nCols < 3) {
        return;
    }

    int real2DIn_nRows = (*env)->GetArrayLength(env, real2DIn_in);
    if (real2DIn_nRows < 2) {
        printf("real2DIn parameter passed in TestInterface is too small.");
        return;
    }

    jdoubleArray real2DIn_rowArray = (*env)->GetObjectArrayElement(env, real2DIn_in, 0);
    int real2DIn_nCols = (*env)->GetArrayLength(env, real2DIn_rowArray);
    if (real2DIn_nCols < 3) {
        return;
    }

    int real2DOut_nRows = (*env)->GetArrayLength(env, real2DOut_out);
    if (real2DOut_nRows < 2) {
        printf("real2DOut parameter passed in TestInterface is too small.");
        return;
    }

    jdoubleArray real2DOut_rowArray = (*env)->GetObjectArrayElement(env, real2DOut_out, 0);
    int real2DOut_nCols = (*env)->GetArrayLength(env, real2DOut_rowArray);
    if (real2DOut_nCols < 3) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *cOut_outArray = (jbyte *)((*env)->GetByteArrayElements(env, cOut_out, NULL));
    if (cOut_outArray == NULL) {
        printf("Failed to get elements for cOut array.");
        return;
    }

    jint *intOut_outArray = (jint *)((*env)->GetIntArrayElements(env, intOut_out, NULL));
    if (intOut_outArray == NULL) {
        printf("Failed to get elements for intOut array.");
        return;
    }

    jlong *longOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, longOut_out, NULL));
    if (longOut_outArray == NULL) {
        printf("Failed to get elements for longOut array.");
        return;
    }

    jdouble *realOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, realOut_out, NULL));
    if (realOut_outArray == NULL) {
        printf("Failed to get elements for realOut array.");
        return;
    }

    char *strIn_inArray = (char *)((*env)->GetStringUTFChars(env, strIn_in, NULL));
    if (strIn_inArray == NULL) {
        printf("Failed to get elements for strIn array.");
        return;
    }

    jbyte *strOut_outArray = (jbyte *)((*env)->GetByteArrayElements(env, strOut_out, NULL));
    if (strOut_outArray == NULL) {
        printf("Failed to get elements for strOut array.");
        return;
    }

    jint *int1DIn_inArray = (jint *)((*env)->GetIntArrayElements(env, int1DIn_in, NULL));
    if (int1DIn_inArray == NULL) {
        printf("Failed to get elements for int1DIn array.");
        return;
    }

    jint *int1DOut_outArray = (jint *)((*env)->GetIntArrayElements(env, int1DOut_out, NULL));
    if (int1DOut_outArray == NULL) {
        printf("Failed to get elements for int1DOut array.");
        return;
    }

    jlong *long1DIn_inArray = (jlong *)((*env)->GetLongArrayElements(env, long1DIn_in, NULL));
    if (long1DIn_inArray == NULL) {
        printf("Failed to get elements for long1DIn array.");
        return;
    }

    jlong *long1DOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, long1DOut_out, NULL));
    if (long1DOut_outArray == NULL) {
        printf("Failed to get elements for long1DOut array.");
        return;
    }

    jdouble *real1DIn_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real1DIn_in, NULL));
    if (real1DIn_inArray == NULL) {
        printf("Failed to get elements for real1DIn array.");
        return;
    }

    jdouble *real1DOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real1DOut_out, NULL));
    if (real1DOut_outArray == NULL) {
        printf("Failed to get elements for real1DOut array.");
        return;
    }

    jint *int2DIn_inArray = (jint *)((*env)->GetIntArrayElements(env, int2DIn_in, NULL));
    if (int2DIn_inArray == NULL) {
        printf("Failed to get elements for int2DIn array.");
        return;
    }

    jint *int2DOut_outArray = (jint *)((*env)->GetIntArrayElements(env, int2DOut_out, NULL));
    if (int2DOut_outArray == NULL) {
        printf("Failed to get elements for int2DOut array.");
        return;
    }

    jlong *long2DIn_inArray = (jlong *)((*env)->GetLongArrayElements(env, long2DIn_in, NULL));
    if (long2DIn_inArray == NULL) {
        printf("Failed to get elements for long2DIn array.");
        return;
    }

    jlong *long2DOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, long2DOut_out, NULL));
    if (long2DOut_outArray == NULL) {
        printf("Failed to get elements for long2DOut array.");
        return;
    }

    jdouble *real2DIn_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real2DIn_in, NULL));
    if (real2DIn_inArray == NULL) {
        printf("Failed to get elements for real2DIn array.");
        return;
    }

    jdouble *real2DOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real2DOut_out, NULL));
    if (real2DOut_outArray == NULL) {
        printf("Failed to get elements for real2DOut array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    int int2DIn_array[2][3];
    for (row = 0; row < 2; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, int2DIn_in, row);

        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            int2DIn_array[row][col] = elements[col];
        }
    }

    int int2DOut_array[2][3];
    __int64 long2DIn_array[2][3];
    for (row = 0; row < 2; row++) {
        jlongArray rowArray = (*env)->GetObjectArrayElement(env, long2DIn_in, row);

        jlong* elements = (*env)->GetLongArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            long2DIn_array[row][col] = elements[col];
        }
    }

    __int64 long2DOut_array[2][3];
    double real2DIn_array[2][3];
    for (row = 0; row < 2; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, real2DIn_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            real2DIn_array[row][col] = elements[col];
        }
    }

    double real2DOut_array[2][3];

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 longOut_longOutArray[1];
    __int64 long1DIn_longInArray[3];
    for (ii = 0; ii < 3; ii++) {
        long1DIn_longInArray[ii] = long1DIn_inArray[ii];
    }

    __int64 long1DOut_longOutArray[3];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TestInterface(cIn_in, cOut_outArray, intIn_in, intOut_outArray, longIn_in, longOut_longOutArray, realIn_in, realOut_outArray, strIn_inArray, strOut_outArray, int1DIn_inArray, int1DOut_outArray, long1DIn_longInArray, long1DOut_longOutArray, real1DIn_inArray, real1DOut_outArray, int2DIn_array, int2DOut_array, long2DIn_array, long2DOut_array, real2DIn_array, real2DOut_array);

    for (row = 0; row < int2DOut_nRows; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, int2DOut_out, row);
        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);
        for (col = 0; col < int2DOut_nCols; col++) {
            elements[col] = int2DOut_array[row][col];
        }
        (*env)->ReleaseIntArrayElements(env, rowArray, elements, 0);
    }

    for (row = 0; row < long2DOut_nRows; row++) {
        jlongArray rowArray = (*env)->GetObjectArrayElement(env, long2DOut_out, row);
        jlong* elements = (*env)->GetLongArrayElements(env, rowArray, NULL);
        for (col = 0; col < long2DOut_nCols; col++) {
            elements[col] = long2DOut_array[row][col];
        }
        (*env)->ReleaseLongArrayElements(env, rowArray, elements, 0);
    }

    for (row = 0; row < real2DOut_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, real2DOut_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < real2DOut_nCols; col++) {
            elements[col] = real2DOut_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

    for (ii = 0; ii < longOut_len; ii++) {
        longOut_outArray[ii] = longOut_longOutArray[ii];
    }

    for (ii = 0; ii < long1DOut_len; ii++) {
        long1DOut_outArray[ii] = long1DOut_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, cOut_out, cOut_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, intOut_out, intOut_outArray, 0);
    (*env)->ReleaseLongArrayElements(env, longOut_out, longOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, realOut_out, realOut_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, strOut_out, strOut_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, int1DOut_out, int1DOut_outArray, 0);
    (*env)->ReleaseLongArrayElements(env, long1DOut_out, long1DOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, real1DOut_out, real1DOut_outArray, 0);

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_TestInterface2Das1D(JNIEnv* env, jclass jc, jbyte cIn_in, jbyteArray cOut_out, jint intIn_in, jintArray intOut_out, jlong longIn_in, jlongArray longOut_out, jdouble realIn_in, jdoubleArray realOut_out, jstring strIn_in, jbyteArray strOut_out, jintArray int1DIn_in, jintArray int1DOut_out, jlongArray long1DIn_in, jlongArray long1DOut_out, jdoubleArray real1DIn_in, jdoubleArray real1DOut_out, jobjectArray int2DIn_in, jobjectArray int2DOut_out, jobjectArray long2DIn_in, jobjectArray long2DOut_out, jobjectArray real2DIn_in, jdoubleArray real2DOut_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (cOut_out == 0 || intOut_out == 0 || longOut_out == 0 || realOut_out == 0 || strIn_in == 0 || strOut_out == 0 || int1DIn_in == 0 || int1DOut_out == 0 || long1DIn_in == 0 || long1DOut_out == 0 || real1DIn_in == 0 || real1DOut_out == 0 || int2DIn_in == 0 || int2DOut_out == 0 || long2DIn_in == 0 || long2DOut_out == 0 || real2DIn_in == 0 || real2DOut_out == 0) {
        printf("Got NULL parameter passed to TestInterface");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int intOut_len = (*env)->GetArrayLength(env, intOut_out);
    if (intOut_len < 1) {
        printf("intOut parameter passed in TestInterface is too small.");
        return;
    }

    int longOut_len = (*env)->GetArrayLength(env, longOut_out);
    if (longOut_len < 1) {
        printf("longOut parameter passed in TestInterface is too small.");
        return;
    }


    int realOut_len = (*env)->GetArrayLength(env, realOut_out);
    if (realOut_len < 1) {
        printf("realOut parameter passed in TestInterface is too small.");
        return;
    }

    int int1DIn_len = (*env)->GetArrayLength(env, int1DIn_in);
    if (int1DIn_len < 3) {
        printf("int1DIn parameter passed in TestInterface is too small.");
        return;
    }

    int int1DOut_len = (*env)->GetArrayLength(env, int1DOut_out);
    if (int1DOut_len < 3) {
        printf("int1DOut parameter passed in TestInterface is too small.");
        return;
    }

    int long1DIn_len = (*env)->GetArrayLength(env, long1DIn_in);
    if (long1DIn_len < 3) {
        printf("long1DIn parameter passed in TestInterface is too small.");
        return;
    }


    int long1DOut_len = (*env)->GetArrayLength(env, long1DOut_out);
    if (long1DOut_len < 3) {
        printf("long1DOut parameter passed in TestInterface is too small.");
        return;
    }


    int real1DIn_len = (*env)->GetArrayLength(env, real1DIn_in);
    if (real1DIn_len < 3) {
        printf("real1DIn parameter passed in TestInterface is too small.");
        return;
    }

    int real1DOut_len = (*env)->GetArrayLength(env, real1DOut_out);
    if (real1DOut_len < 3) {
        printf("real1DOut parameter passed in TestInterface is too small.");
        return;
    }

    int int2DIn_nRows = (*env)->GetArrayLength(env, int2DIn_in);
    if (int2DIn_nRows < 2) {
        printf("int2DIn parameter passed in TestInterface is too small.");
        return;
    }

    jintArray int2DIn_rowArray = (*env)->GetObjectArrayElement(env, int2DIn_in, 0);
    int int2DIn_nCols = (*env)->GetArrayLength(env, int2DIn_rowArray);
    if (int2DIn_nCols < 3) {
        return;
    }

    int int2DOut_nRows = (*env)->GetArrayLength(env, int2DOut_out);
    if (int2DOut_nRows < 2) {
        printf("int2DOut parameter passed in TestInterface is too small.");
        return;
    }

    jintArray int2DOut_rowArray = (*env)->GetObjectArrayElement(env, int2DOut_out, 0);
    int int2DOut_nCols = (*env)->GetArrayLength(env, int2DOut_rowArray);
    if (int2DOut_nCols < 3) {
        return;
    }

    int long2DIn_nRows = (*env)->GetArrayLength(env, long2DIn_in);
    if (long2DIn_nRows < 2) {
        printf("long2DIn parameter passed in TestInterface is too small.");
        return;
    }

    jlongArray long2DIn_rowArray = (*env)->GetObjectArrayElement(env, long2DIn_in, 0);
    int long2DIn_nCols = (*env)->GetArrayLength(env, long2DIn_rowArray);
    if (long2DIn_nCols < 3) {
        return;
    }

    int long2DOut_nRows = (*env)->GetArrayLength(env, long2DOut_out);
    if (long2DOut_nRows < 2) {
        printf("long2DOut parameter passed in TestInterface is too small.");
        return;
    }

    jlongArray long2DOut_rowArray = (*env)->GetObjectArrayElement(env, long2DOut_out, 0);
    int long2DOut_nCols = (*env)->GetArrayLength(env, long2DOut_rowArray);
    if (long2DOut_nCols < 3) {
        return;
    }

    int real2DIn_nRows = (*env)->GetArrayLength(env, real2DIn_in);
    if (real2DIn_nRows < 2) {
        printf("real2DIn parameter passed in TestInterface is too small.");
        return;
    }

    jdoubleArray real2DIn_rowArray = (*env)->GetObjectArrayElement(env, real2DIn_in, 0);
    int real2DIn_nCols = (*env)->GetArrayLength(env, real2DIn_rowArray);
    if (real2DIn_nCols < 3) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *cOut_outArray = (jbyte *)((*env)->GetByteArrayElements(env, cOut_out, NULL));
    if (cOut_outArray == NULL) {
        printf("Failed to get elements for cOut array.");
        return;
    }

    jint *intOut_outArray = (jint *)((*env)->GetIntArrayElements(env, intOut_out, NULL));
    if (intOut_outArray == NULL) {
        printf("Failed to get elements for intOut array.");
        return;
    }

    jlong *longOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, longOut_out, NULL));
    if (longOut_outArray == NULL) {
        printf("Failed to get elements for longOut array.");
        return;
    }

    jdouble *realOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, realOut_out, NULL));
    if (realOut_outArray == NULL) {
        printf("Failed to get elements for realOut array.");
        return;
    }

    char *strIn_inArray = (char *)((*env)->GetStringUTFChars(env, strIn_in, NULL));
    if (strIn_inArray == NULL) {
        printf("Failed to get elements for strIn array.");
        return;
    }

    jbyte *strOut_outArray = (jbyte *)((*env)->GetByteArrayElements(env, strOut_out, NULL));
    if (strOut_outArray == NULL) {
        printf("Failed to get elements for strOut array.");
        return;
    }

    jint *int1DIn_inArray = (jint *)((*env)->GetIntArrayElements(env, int1DIn_in, NULL));
    if (int1DIn_inArray == NULL) {
        printf("Failed to get elements for int1DIn array.");
        return;
    }

    jint *int1DOut_outArray = (jint *)((*env)->GetIntArrayElements(env, int1DOut_out, NULL));
    if (int1DOut_outArray == NULL) {
        printf("Failed to get elements for int1DOut array.");
        return;
    }

    jlong *long1DIn_inArray = (jlong *)((*env)->GetLongArrayElements(env, long1DIn_in, NULL));
    if (long1DIn_inArray == NULL) {
        printf("Failed to get elements for long1DIn array.");
        return;
    }

    jlong *long1DOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, long1DOut_out, NULL));
    if (long1DOut_outArray == NULL) {
        printf("Failed to get elements for long1DOut array.");
        return;
    }

    jdouble *real1DIn_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real1DIn_in, NULL));
    if (real1DIn_inArray == NULL) {
        printf("Failed to get elements for real1DIn array.");
        return;
    }

    jdouble *real1DOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real1DOut_out, NULL));
    if (real1DOut_outArray == NULL) {
        printf("Failed to get elements for real1DOut array.");
        return;
    }

    jint *int2DIn_inArray = (jint *)((*env)->GetIntArrayElements(env, int2DIn_in, NULL));
    if (int2DIn_inArray == NULL) {
        printf("Failed to get elements for int2DIn array.");
        return;
    }

    jint *int2DOut_outArray = (jint *)((*env)->GetIntArrayElements(env, int2DOut_out, NULL));
    if (int2DOut_outArray == NULL) {
        printf("Failed to get elements for int2DOut array.");
        return;
    }

    jlong *long2DIn_inArray = (jlong *)((*env)->GetLongArrayElements(env, long2DIn_in, NULL));
    if (long2DIn_inArray == NULL) {
        printf("Failed to get elements for long2DIn array.");
        return;
    }

    jlong *long2DOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, long2DOut_out, NULL));
    if (long2DOut_outArray == NULL) {
        printf("Failed to get elements for long2DOut array.");
        return;
    }

    jdouble *real2DIn_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real2DIn_in, NULL));
    if (real2DIn_inArray == NULL) {
        printf("Failed to get elements for real2DIn array.");
        return;
    }

    jdouble *real2DOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real2DOut_out, NULL));
    if (real2DOut_outArray == NULL) {
        printf("Failed to get elements for real2DOut array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    int int2DIn_array[2][3];
    for (row = 0; row < 2; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, int2DIn_in, row);

        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            int2DIn_array[row][col] = elements[col];
        }
    }

    int int2DOut_array[2][3];
    __int64 long2DIn_array[2][3];
    for (row = 0; row < 2; row++) {
        jlongArray rowArray = (*env)->GetObjectArrayElement(env, long2DIn_in, row);

        jlong* elements = (*env)->GetLongArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            long2DIn_array[row][col] = elements[col];
        }
    }

    __int64 long2DOut_array[2][3];
    double real2DIn_array[2][3];
    for (row = 0; row < 2; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, real2DIn_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            real2DIn_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 longOut_longOutArray[1];
    __int64 long1DIn_longInArray[3];
    for (ii = 0; ii < 3; ii++) {
        long1DIn_longInArray[ii] = long1DIn_inArray[ii];
    }

    __int64 long1DOut_longOutArray[3];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TestInterface(cIn_in, cOut_outArray, intIn_in, intOut_outArray, longIn_in, longOut_longOutArray, realIn_in, realOut_outArray, strIn_inArray, strOut_outArray, int1DIn_inArray, int1DOut_outArray, long1DIn_longInArray, long1DOut_longOutArray, real1DIn_inArray, real1DOut_outArray, int2DIn_array, int2DOut_array, long2DIn_array, long2DOut_array, real2DIn_array, real2DOut_outArray);

    for (row = 0; row < int2DOut_nRows; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, int2DOut_out, row);
        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);
        for (col = 0; col < int2DOut_nCols; col++) {
            elements[col] = int2DOut_array[row][col];
        }
        (*env)->ReleaseIntArrayElements(env, rowArray, elements, 0);
    }

    for (row = 0; row < long2DOut_nRows; row++) {
        jlongArray rowArray = (*env)->GetObjectArrayElement(env, long2DOut_out, row);
        jlong* elements = (*env)->GetLongArrayElements(env, rowArray, NULL);
        for (col = 0; col < long2DOut_nCols; col++) {
            elements[col] = long2DOut_array[row][col];
        }
        (*env)->ReleaseLongArrayElements(env, rowArray, elements, 0);
    }

    for (ii = 0; ii < longOut_len; ii++) {
        longOut_outArray[ii] = longOut_longOutArray[ii];
    }

    for (ii = 0; ii < long1DOut_len; ii++) {
        long1DOut_outArray[ii] = long1DOut_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, cOut_out, cOut_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, intOut_out, intOut_outArray, 0);
    (*env)->ReleaseLongArrayElements(env, longOut_out, longOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, realOut_out, realOut_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, strOut_out, strOut_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, int1DOut_out, int1DOut_outArray, 0);
    (*env)->ReleaseLongArrayElements(env, long1DOut_out, long1DOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, real1DOut_out, real1DOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, real2DOut_out, real2DOut_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_TestInterface2(JNIEnv* env, jclass jc, jbyteArray cInOut_out, jintArray intInOut_out, jlongArray longInOut_out, jdoubleArray realInOut_out, jbyteArray strInOut_out, jintArray int1DInOut_out, jlongArray long1DInOut_out, jdoubleArray real1DInOut_out, jobjectArray int2DInOut_out, jobjectArray long2DInOut_out, jobjectArray real2DInOut_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (cInOut_out == 0 || intInOut_out == 0 || longInOut_out == 0 || realInOut_out == 0 || strInOut_out == 0 || int1DInOut_out == 0 || long1DInOut_out == 0 || real1DInOut_out == 0 || int2DInOut_out == 0 || long2DInOut_out == 0 || real2DInOut_out == 0) {
        printf("Got NULL parameter passed to TestInterface2");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int intInOut_len = (*env)->GetArrayLength(env, intInOut_out);
    if (intInOut_len < 1) {
        printf("intInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    int longInOut_len = (*env)->GetArrayLength(env, longInOut_out);
    if (longInOut_len < 1) {
        printf("longInOut parameter passed in TestInterface2 is too small.");
        return;
    }


    int realInOut_len = (*env)->GetArrayLength(env, realInOut_out);
    if (realInOut_len < 1) {
        printf("realInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    int int1DInOut_len = (*env)->GetArrayLength(env, int1DInOut_out);
    if (int1DInOut_len < 3) {
        printf("int1DInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    int long1DInOut_len = (*env)->GetArrayLength(env, long1DInOut_out);
    if (long1DInOut_len < 3) {
        printf("long1DInOut parameter passed in TestInterface2 is too small.");
        return;
    }


    int real1DInOut_len = (*env)->GetArrayLength(env, real1DInOut_out);
    if (real1DInOut_len < 3) {
        printf("real1DInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    int int2DInOut_nRows = (*env)->GetArrayLength(env, int2DInOut_out);
    if (int2DInOut_nRows < 2) {
        printf("int2DInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    jintArray int2DInOut_rowArray = (*env)->GetObjectArrayElement(env, int2DInOut_out, 0);
    int int2DInOut_nCols = (*env)->GetArrayLength(env, int2DInOut_rowArray);
    if (int2DInOut_nCols < 3) {
        return;
    }

    int long2DInOut_nRows = (*env)->GetArrayLength(env, long2DInOut_out);
    if (long2DInOut_nRows < 2) {
        printf("long2DInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    jlongArray long2DInOut_rowArray = (*env)->GetObjectArrayElement(env, long2DInOut_out, 0);
    int long2DInOut_nCols = (*env)->GetArrayLength(env, long2DInOut_rowArray);
    if (long2DInOut_nCols < 3) {
        return;
    }

    int real2DInOut_nRows = (*env)->GetArrayLength(env, real2DInOut_out);
    if (real2DInOut_nRows < 2) {
        printf("real2DInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    jdoubleArray real2DInOut_rowArray = (*env)->GetObjectArrayElement(env, real2DInOut_out, 0);
    int real2DInOut_nCols = (*env)->GetArrayLength(env, real2DInOut_rowArray);
    if (real2DInOut_nCols < 3) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *cInOut_outArray = (jbyte *)((*env)->GetByteArrayElements(env, cInOut_out, NULL));
    if (cInOut_outArray == NULL) {
        printf("Failed to get elements for cInOut array.");
        return;
    }

    jint *intInOut_outArray = (jint *)((*env)->GetIntArrayElements(env, intInOut_out, NULL));
    if (intInOut_outArray == NULL) {
        printf("Failed to get elements for intInOut array.");
        return;
    }

    jlong *longInOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, longInOut_out, NULL));
    if (longInOut_outArray == NULL) {
        printf("Failed to get elements for longInOut array.");
        return;
    }

    jdouble *realInOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, realInOut_out, NULL));
    if (realInOut_outArray == NULL) {
        printf("Failed to get elements for realInOut array.");
        return;
    }

    jbyte *strInOut_outArray = (jbyte *)((*env)->GetByteArrayElements(env, strInOut_out, NULL));
    if (strInOut_outArray == NULL) {
        printf("Failed to get elements for strInOut array.");
        return;
    }

    jint *int1DInOut_outArray = (jint *)((*env)->GetIntArrayElements(env, int1DInOut_out, NULL));
    if (int1DInOut_outArray == NULL) {
        printf("Failed to get elements for int1DInOut array.");
        return;
    }

    jlong *long1DInOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, long1DInOut_out, NULL));
    if (long1DInOut_outArray == NULL) {
        printf("Failed to get elements for long1DInOut array.");
        return;
    }

    jdouble *real1DInOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real1DInOut_out, NULL));
    if (real1DInOut_outArray == NULL) {
        printf("Failed to get elements for real1DInOut array.");
        return;
    }

    jint *int2DInOut_outArray = (jint *)((*env)->GetIntArrayElements(env, int2DInOut_out, NULL));
    if (int2DInOut_outArray == NULL) {
        printf("Failed to get elements for int2DInOut array.");
        return;
    }

    jlong *long2DInOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, long2DInOut_out, NULL));
    if (long2DInOut_outArray == NULL) {
        printf("Failed to get elements for long2DInOut array.");
        return;
    }

    jdouble *real2DInOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real2DInOut_out, NULL));
    if (real2DInOut_outArray == NULL) {
        printf("Failed to get elements for real2DInOut array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    int int2DInOut_array[2][3];
    for (row = 0; row < 2; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, int2DInOut_out, row);

        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            int2DInOut_array[row][col] = elements[col];
        }
    }

    __int64 long2DInOut_array[2][3];
    for (row = 0; row < 2; row++) {
        jlongArray rowArray = (*env)->GetObjectArrayElement(env, long2DInOut_out, row);

        jlong* elements = (*env)->GetLongArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            long2DInOut_array[row][col] = elements[col];
        }
    }

    double real2DInOut_array[2][3];
    for (row = 0; row < 2; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, real2DInOut_out, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            real2DInOut_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 longInOut_longOutArray[1];
    __int64 long1DInOut_longOutArray[3];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TestInterface2(cInOut_outArray, intInOut_outArray, longInOut_longOutArray, realInOut_outArray, strInOut_outArray, int1DInOut_outArray, long1DInOut_longOutArray, real1DInOut_outArray, int2DInOut_array, long2DInOut_array, real2DInOut_array);

    for (row = 0; row < int2DInOut_nRows; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, int2DInOut_out, row);
        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);
        for (col = 0; col < int2DInOut_nCols; col++) {
            elements[col] = int2DInOut_array[row][col];
        }
        (*env)->ReleaseIntArrayElements(env, rowArray, elements, 0);
    }

    for (row = 0; row < long2DInOut_nRows; row++) {
        jlongArray rowArray = (*env)->GetObjectArrayElement(env, long2DInOut_out, row);
        jlong* elements = (*env)->GetLongArrayElements(env, rowArray, NULL);
        for (col = 0; col < long2DInOut_nCols; col++) {
            elements[col] = long2DInOut_array[row][col];
        }
        (*env)->ReleaseLongArrayElements(env, rowArray, elements, 0);
    }

    for (row = 0; row < real2DInOut_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, real2DInOut_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < real2DInOut_nCols; col++) {
            elements[col] = real2DInOut_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

    for (ii = 0; ii < longInOut_len; ii++) {
        longInOut_outArray[ii] = longInOut_longOutArray[ii];
    }

    for (ii = 0; ii < long1DInOut_len; ii++) {
        long1DInOut_outArray[ii] = long1DInOut_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, cInOut_out, cInOut_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, intInOut_out, intInOut_outArray, 0);
    (*env)->ReleaseLongArrayElements(env, longInOut_out, longInOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, realInOut_out, realInOut_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, strInOut_out, strInOut_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, int1DInOut_out, int1DInOut_outArray, 0);
    (*env)->ReleaseLongArrayElements(env, long1DInOut_out, long1DInOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, real1DInOut_out, real1DInOut_outArray, 0);

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_TestInterface22Das1D(JNIEnv* env, jclass jc, jbyteArray cInOut_out, jintArray intInOut_out, jlongArray longInOut_out, jdoubleArray realInOut_out, jbyteArray strInOut_out, jintArray int1DInOut_out, jlongArray long1DInOut_out, jdoubleArray real1DInOut_out, jobjectArray int2DInOut_out, jobjectArray long2DInOut_out, jdoubleArray real2DInOut_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (cInOut_out == 0 || intInOut_out == 0 || longInOut_out == 0 || realInOut_out == 0 || strInOut_out == 0 || int1DInOut_out == 0 || long1DInOut_out == 0 || real1DInOut_out == 0 || int2DInOut_out == 0 || long2DInOut_out == 0 || real2DInOut_out == 0) {
        printf("Got NULL parameter passed to TestInterface2");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int intInOut_len = (*env)->GetArrayLength(env, intInOut_out);
    if (intInOut_len < 1) {
        printf("intInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    int longInOut_len = (*env)->GetArrayLength(env, longInOut_out);
    if (longInOut_len < 1) {
        printf("longInOut parameter passed in TestInterface2 is too small.");
        return;
    }


    int realInOut_len = (*env)->GetArrayLength(env, realInOut_out);
    if (realInOut_len < 1) {
        printf("realInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    int int1DInOut_len = (*env)->GetArrayLength(env, int1DInOut_out);
    if (int1DInOut_len < 3) {
        printf("int1DInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    int long1DInOut_len = (*env)->GetArrayLength(env, long1DInOut_out);
    if (long1DInOut_len < 3) {
        printf("long1DInOut parameter passed in TestInterface2 is too small.");
        return;
    }


    int real1DInOut_len = (*env)->GetArrayLength(env, real1DInOut_out);
    if (real1DInOut_len < 3) {
        printf("real1DInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    int int2DInOut_nRows = (*env)->GetArrayLength(env, int2DInOut_out);
    if (int2DInOut_nRows < 2) {
        printf("int2DInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    jintArray int2DInOut_rowArray = (*env)->GetObjectArrayElement(env, int2DInOut_out, 0);
    int int2DInOut_nCols = (*env)->GetArrayLength(env, int2DInOut_rowArray);
    if (int2DInOut_nCols < 3) {
        return;
    }

    int long2DInOut_nRows = (*env)->GetArrayLength(env, long2DInOut_out);
    if (long2DInOut_nRows < 2) {
        printf("long2DInOut parameter passed in TestInterface2 is too small.");
        return;
    }

    jlongArray long2DInOut_rowArray = (*env)->GetObjectArrayElement(env, long2DInOut_out, 0);
    int long2DInOut_nCols = (*env)->GetArrayLength(env, long2DInOut_rowArray);
    if (long2DInOut_nCols < 3) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *cInOut_outArray = (jbyte *)((*env)->GetByteArrayElements(env, cInOut_out, NULL));
    if (cInOut_outArray == NULL) {
        printf("Failed to get elements for cInOut array.");
        return;
    }

    jint *intInOut_outArray = (jint *)((*env)->GetIntArrayElements(env, intInOut_out, NULL));
    if (intInOut_outArray == NULL) {
        printf("Failed to get elements for intInOut array.");
        return;
    }

    jlong *longInOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, longInOut_out, NULL));
    if (longInOut_outArray == NULL) {
        printf("Failed to get elements for longInOut array.");
        return;
    }

    jdouble *realInOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, realInOut_out, NULL));
    if (realInOut_outArray == NULL) {
        printf("Failed to get elements for realInOut array.");
        return;
    }

    jbyte *strInOut_outArray = (jbyte *)((*env)->GetByteArrayElements(env, strInOut_out, NULL));
    if (strInOut_outArray == NULL) {
        printf("Failed to get elements for strInOut array.");
        return;
    }

    jint *int1DInOut_outArray = (jint *)((*env)->GetIntArrayElements(env, int1DInOut_out, NULL));
    if (int1DInOut_outArray == NULL) {
        printf("Failed to get elements for int1DInOut array.");
        return;
    }

    jlong *long1DInOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, long1DInOut_out, NULL));
    if (long1DInOut_outArray == NULL) {
        printf("Failed to get elements for long1DInOut array.");
        return;
    }

    jdouble *real1DInOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real1DInOut_out, NULL));
    if (real1DInOut_outArray == NULL) {
        printf("Failed to get elements for real1DInOut array.");
        return;
    }

    jint *int2DInOut_outArray = (jint *)((*env)->GetIntArrayElements(env, int2DInOut_out, NULL));
    if (int2DInOut_outArray == NULL) {
        printf("Failed to get elements for int2DInOut array.");
        return;
    }

    jlong *long2DInOut_outArray = (jlong *)((*env)->GetLongArrayElements(env, long2DInOut_out, NULL));
    if (long2DInOut_outArray == NULL) {
        printf("Failed to get elements for long2DInOut array.");
        return;
    }

    jdouble *real2DInOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, real2DInOut_out, NULL));
    if (real2DInOut_outArray == NULL) {
        printf("Failed to get elements for real2DInOut array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    int int2DInOut_array[2][3];
    for (row = 0; row < 2; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, int2DInOut_out, row);

        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            int2DInOut_array[row][col] = elements[col];
        }
    }

    __int64 long2DInOut_array[2][3];
    for (row = 0; row < 2; row++) {
        jlongArray rowArray = (*env)->GetObjectArrayElement(env, long2DInOut_out, row);

        jlong* elements = (*env)->GetLongArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            long2DInOut_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 longInOut_longOutArray[1];
    __int64 long1DInOut_longOutArray[3];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TestInterface2(cInOut_outArray, intInOut_outArray, longInOut_longOutArray, realInOut_outArray, strInOut_outArray, int1DInOut_outArray, long1DInOut_longOutArray, real1DInOut_outArray, int2DInOut_array, long2DInOut_array, real2DInOut_outArray);

    for (row = 0; row < int2DInOut_nRows; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, int2DInOut_out, row);
        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);
        for (col = 0; col < int2DInOut_nCols; col++) {
            elements[col] = int2DInOut_array[row][col];
        }
        (*env)->ReleaseIntArrayElements(env, rowArray, elements, 0);
    }

    for (row = 0; row < long2DInOut_nRows; row++) {
        jlongArray rowArray = (*env)->GetObjectArrayElement(env, long2DInOut_out, row);
        jlong* elements = (*env)->GetLongArrayElements(env, rowArray, NULL);
        for (col = 0; col < long2DInOut_nCols; col++) {
            elements[col] = long2DInOut_array[row][col];
        }
        (*env)->ReleaseLongArrayElements(env, rowArray, elements, 0);
    }

    for (ii = 0; ii < longInOut_len; ii++) {
        longInOut_outArray[ii] = longInOut_longOutArray[ii];
    }

    for (ii = 0; ii < long1DInOut_len; ii++) {
        long1DInOut_outArray[ii] = long1DInOut_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, cInOut_out, cInOut_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, intInOut_out, intInOut_outArray, 0);
    (*env)->ReleaseLongArrayElements(env, longInOut_out, longInOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, realInOut_out, realInOut_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, strInOut_out, strInOut_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, int1DInOut_out, int1DInOut_outArray, 0);
    (*env)->ReleaseLongArrayElements(env, long1DInOut_out, long1DInOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, real1DInOut_out, real1DInOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, real2DInOut_out, real2DInOut_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_TestInterface3(JNIEnv* env, jclass jc, jintArray unk1DIn_in, jintArray unk1DOut_out, jobjectArray unk2DIn_in, jobjectArray unk2DOut_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (unk1DIn_in == 0 || unk1DOut_out == 0 || unk2DIn_in == 0 || unk2DOut_out == 0) {
        printf("Got NULL parameter passed to TestInterface3");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int unk2DIn_nRows = (*env)->GetArrayLength(env, unk2DIn_in);

    jintArray unk2DIn_rowArray = (*env)->GetObjectArrayElement(env, unk2DIn_in, 0);
    int unk2DIn_nCols = (*env)->GetArrayLength(env, unk2DIn_rowArray);
    if (unk2DIn_nCols < 3) {
        return;
    }

    int unk2DOut_nRows = (*env)->GetArrayLength(env, unk2DOut_out);

    jintArray unk2DOut_rowArray = (*env)->GetObjectArrayElement(env, unk2DOut_out, 0);
    int unk2DOut_nCols = (*env)->GetArrayLength(env, unk2DOut_rowArray);
    if (unk2DOut_nCols < 3) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jint *unk1DIn_inArray = (jint *)((*env)->GetIntArrayElements(env, unk1DIn_in, NULL));
    if (unk1DIn_inArray == NULL) {
        printf("Failed to get elements for unk1DIn array.");
        return;
    }

    jint *unk1DOut_outArray = (jint *)((*env)->GetIntArrayElements(env, unk1DOut_out, NULL));
    if (unk1DOut_outArray == NULL) {
        printf("Failed to get elements for unk1DOut array.");
        return;
    }

    jint *unk2DIn_inArray = (jint *)((*env)->GetIntArrayElements(env, unk2DIn_in, NULL));
    if (unk2DIn_inArray == NULL) {
        printf("Failed to get elements for unk2DIn array.");
        return;
    }

    jint *unk2DOut_outArray = (jint *)((*env)->GetIntArrayElements(env, unk2DOut_out, NULL));
    if (unk2DOut_outArray == NULL) {
        printf("Failed to get elements for unk2DOut array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    int (* unk2DIn_array)[3];
    unk2DIn_array = (int(*)[3])malloc(unk2DIn_nRows * sizeof(*unk2DIn_array));
    for (row = 0; row < unk2DIn_nRows; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, unk2DIn_in, row);

        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);

        for (col = 0; col < 3; col++) {
            unk2DIn_array[row][col] = elements[col];
        }
    }

    int (* unk2DOut_array)[3];
    unk2DOut_array = (int(*)[3])malloc(unk2DOut_nRows * sizeof(*unk2DOut_array));

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TestInterface3(unk1DIn_inArray, unk1DOut_outArray, unk2DIn_array, unk2DOut_array);

    for (row = 0; row < unk2DOut_nRows; row++) {
        jintArray rowArray = (*env)->GetObjectArrayElement(env, unk2DOut_out, row);
        jint* elements = (*env)->GetIntArrayElements(env, rowArray, NULL);
        for (col = 0; col < unk2DOut_nCols; col++) {
            elements[col] = unk2DOut_array[row][col];
        }
        (*env)->ReleaseIntArrayElements(env, rowArray, elements, 0);
    }

    free(unk2DOut_array);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, unk1DOut_out, unk1DOut_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_GetMOICData(JNIEnv* env, jclass jc, jint arrSize_in, jdoubleArray xa_moic_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_moic_out == 0) {
        printf("Got NULL parameter passed to GetMOICData");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_moic_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_moic_out, NULL));
    if (xa_moic_outArray == NULL) {
        printf("Failed to get elements for xa_moic array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    GetMOICData(arrSize_in, xa_moic_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_moic_out, xa_moic_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniDllMain_SetElsetKeyMode(JNIEnv* env, jclass jc, jint elset_keyMode_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SetElsetKeyMode(elset_keyMode_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniDllMain_GetElsetKeyMode(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = GetElsetKeyMode();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniDllMain_SetAllKeyMode(JNIEnv* env, jclass jc, jint all_keyMode_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SetAllKeyMode(all_keyMode_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniDllMain_GetAllKeyMode(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = GetAllKeyMode();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniDllMain_ResetAllKeyMode(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ResetAllKeyMode();

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniDllMain_SetDupKeyMode(JNIEnv* env, jclass jc, jint dupKeyMode_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SetDupKeyMode(dupKeyMode_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniDllMain_GetDupKeyMode(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = GetDupKeyMode();

    return ret;
}
// ========================= End of auto generated code ==========================
