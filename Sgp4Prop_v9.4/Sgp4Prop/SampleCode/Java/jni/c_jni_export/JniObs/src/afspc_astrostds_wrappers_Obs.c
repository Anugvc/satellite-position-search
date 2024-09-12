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
#include "../../wrappers/SensorDll.h"
#include "../../wrappers/ObsDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_LoadObsDll(JNIEnv* env, jclass jc)
{
    LoadObsDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadObsDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to ObsGetInfo");
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
    ObsGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsSetTTYYear(JNIEnv* env, jclass jc, jint ttyYear_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsSetTTYYear(ttyYear_in);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsLoadFile(JNIEnv* env, jclass jc, jstring obsFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (obsFile_in == 0) {
        printf("Got NULL parameter passed to ObsLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *obsFile_inArray = (char *)((*env)->GetStringUTFChars(env, obsFile_in, NULL));
    if (obsFile_inArray == NULL) {
        printf("Failed to get elements for obsFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsLoadFile(obsFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsSaveFile(JNIEnv* env, jclass jc, jstring obsFile_in, jint saveMode_in, jint obsForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (obsFile_in == 0) {
        printf("Got NULL parameter passed to ObsSaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *obsFile_inArray = (char *)((*env)->GetStringUTFChars(env, obsFile_in, NULL));
    if (obsFile_inArray == NULL) {
        printf("Failed to get elements for obsFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsSaveFile(obsFile_inArray, saveMode_in, obsForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsRemove(JNIEnv* env, jclass jc, jlong obsKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsRemove(obsKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsRemoveAll(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsRemoveAll();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetCount(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsGetCount();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetLoaded(JNIEnv* env, jclass jc, jint order_in, jlongArray obsKeys_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (obsKeys_out == 0) {
        printf("Got NULL parameter passed to ObsGetLoaded");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int obsKeys_len = (*env)->GetArrayLength(env, obsKeys_out);

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *obsKeys_outArray = (jlong *)((*env)->GetLongArrayElements(env, obsKeys_out, NULL));
    if (obsKeys_outArray == NULL) {
        printf("Failed to get elements for obsKeys array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 *obsKeys_longOutArray = (__int64*)malloc(obsKeys_len * sizeof(__int64));

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsGetLoaded(order_in, obsKeys_longOutArray);

    for (ii = 0; ii < obsKeys_len; ii++) {
        obsKeys_outArray[ii] = obsKeys_longOutArray[ii];
    }

    free(obsKeys_longOutArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, obsKeys_out, obsKeys_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsLoadCard(JNIEnv* env, jclass jc, jstring card_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card_in == 0) {
        printf("Got NULL parameter passed to ObsLoadCard");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *card_inArray = (char *)((*env)->GetStringUTFChars(env, card_in, NULL));
    if (card_inArray == NULL) {
        printf("Failed to get elements for card array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsLoadCard(card_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsLoadTwoCards(JNIEnv* env, jclass jc, jstring card1_in, jstring card2_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card1_in == 0 || card2_in == 0) {
        printf("Got NULL parameter passed to ObsLoadTwoCards");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *card1_inArray = (char *)((*env)->GetStringUTFChars(env, card1_in, NULL));
    if (card1_inArray == NULL) {
        printf("Failed to get elements for card1 array.");
        return (jint)(-1);
    }

    char *card2_inArray = (char *)((*env)->GetStringUTFChars(env, card2_in, NULL));
    if (card2_inArray == NULL) {
        printf("Failed to get elements for card2 array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsLoadTwoCards(card1_inArray, card2_inArray);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrB3Card(JNIEnv* env, jclass jc, jstring card_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card_in == 0) {
        printf("Got NULL parameter passed to ObsAddFrB3Card");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *card_inArray = (char *)((*env)->GetStringUTFChars(env, card_in, NULL));
    if (card_inArray == NULL) {
        printf("Failed to get elements for card array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ObsAddFrB3Card(card_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrB3CardML(JNIEnv* env, jclass jc, jstring card_in, jlongArray obsKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card_in == 0 || obsKey_out == 0) {
        printf("Got NULL parameter passed to ObsAddFrB3CardML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int obsKey_len = (*env)->GetArrayLength(env, obsKey_out);
    if (obsKey_len < 1) {
        printf("obsKey parameter passed in ObsAddFrB3CardML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *card_inArray = (char *)((*env)->GetStringUTFChars(env, card_in, NULL));
    if (card_inArray == NULL) {
        printf("Failed to get elements for card array.");
        return;
    }

    jlong *obsKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, obsKey_out, NULL));
    if (obsKey_outArray == NULL) {
        printf("Failed to get elements for obsKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 obsKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsAddFrB3CardML(card_inArray, obsKey_longOutArray);

    for (ii = 0; ii < obsKey_len; ii++) {
        obsKey_outArray[ii] = obsKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, obsKey_out, obsKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsB3ToCsv(JNIEnv* env, jclass jc, jstring card_in, jbyteArray csvLine_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card_in == 0 || csvLine_out == 0) {
        printf("Got NULL parameter passed to ObsB3ToCsv");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *card_inArray = (char *)((*env)->GetStringUTFChars(env, card_in, NULL));
    if (card_inArray == NULL) {
        printf("Failed to get elements for card array.");
        return (jint)(-1);
    }

    jbyte *csvLine_outArray = (jbyte *)((*env)->GetByteArrayElements(env, csvLine_out, NULL));
    if (csvLine_outArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsB3ToCsv(card_inArray, csvLine_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvLine_out, csvLine_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsCsvToB3(JNIEnv* env, jclass jc, jstring csvLine_in, jint newSatno_in, jbyteArray card_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_in == 0 || card_out == 0) {
        printf("Got NULL parameter passed to ObsCsvToB3");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *csvLine_inArray = (char *)((*env)->GetStringUTFChars(env, csvLine_in, NULL));
    if (csvLine_inArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return (jint)(-1);
    }

    jbyte *card_outArray = (jbyte *)((*env)->GetByteArrayElements(env, card_out, NULL));
    if (card_outArray == NULL) {
        printf("Failed to get elements for card array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsCsvToB3(csvLine_inArray, newSatno_in, card_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, card_out, card_outArray, 0);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrTTYCards(JNIEnv* env, jclass jc, jstring card1_in, jstring card2_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card1_in == 0 || card2_in == 0) {
        printf("Got NULL parameter passed to ObsAddFrTTYCards");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *card1_inArray = (char *)((*env)->GetStringUTFChars(env, card1_in, NULL));
    if (card1_inArray == NULL) {
        printf("Failed to get elements for card1 array.");
        return (jlong)(-1);
    }

    char *card2_inArray = (char *)((*env)->GetStringUTFChars(env, card2_in, NULL));
    if (card2_inArray == NULL) {
        printf("Failed to get elements for card2 array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ObsAddFrTTYCards(card1_inArray, card2_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrTTYCardsML(JNIEnv* env, jclass jc, jstring card1_in, jstring card2_in, jlongArray obsKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card1_in == 0 || card2_in == 0 || obsKey_out == 0) {
        printf("Got NULL parameter passed to ObsAddFrTTYCardsML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int obsKey_len = (*env)->GetArrayLength(env, obsKey_out);
    if (obsKey_len < 1) {
        printf("obsKey parameter passed in ObsAddFrTTYCardsML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *card1_inArray = (char *)((*env)->GetStringUTFChars(env, card1_in, NULL));
    if (card1_inArray == NULL) {
        printf("Failed to get elements for card1 array.");
        return;
    }

    char *card2_inArray = (char *)((*env)->GetStringUTFChars(env, card2_in, NULL));
    if (card2_inArray == NULL) {
        printf("Failed to get elements for card2 array.");
        return;
    }

    jlong *obsKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, obsKey_out, NULL));
    if (obsKey_outArray == NULL) {
        printf("Failed to get elements for obsKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 obsKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsAddFrTTYCardsML(card1_inArray, card2_inArray, obsKey_longOutArray);

    for (ii = 0; ii < obsKey_len; ii++) {
        obsKey_outArray[ii] = obsKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, obsKey_out, obsKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsTTYToCsv(JNIEnv* env, jclass jc, jstring card1_in, jstring card2_in, jbyteArray csvLine_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card1_in == 0 || card2_in == 0 || csvLine_out == 0) {
        printf("Got NULL parameter passed to ObsTTYToCsv");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *card1_inArray = (char *)((*env)->GetStringUTFChars(env, card1_in, NULL));
    if (card1_inArray == NULL) {
        printf("Failed to get elements for card1 array.");
        return (jint)(-1);
    }

    char *card2_inArray = (char *)((*env)->GetStringUTFChars(env, card2_in, NULL));
    if (card2_inArray == NULL) {
        printf("Failed to get elements for card2 array.");
        return (jint)(-1);
    }

    jbyte *csvLine_outArray = (jbyte *)((*env)->GetByteArrayElements(env, csvLine_out, NULL));
    if (csvLine_outArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsTTYToCsv(card1_inArray, card2_inArray, csvLine_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvLine_out, csvLine_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsCsvToTTY(JNIEnv* env, jclass jc, jstring csvLine_in, jint newSatno_in, jbyteArray card1_out, jbyteArray card2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_in == 0 || card1_out == 0 || card2_out == 0) {
        printf("Got NULL parameter passed to ObsCsvToTTY");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *csvLine_inArray = (char *)((*env)->GetStringUTFChars(env, csvLine_in, NULL));
    if (csvLine_inArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return (jint)(-1);
    }

    jbyte *card1_outArray = (jbyte *)((*env)->GetByteArrayElements(env, card1_out, NULL));
    if (card1_outArray == NULL) {
        printf("Failed to get elements for card1 array.");
        return (jint)(-1);
    }

    jbyte *card2_outArray = (jbyte *)((*env)->GetByteArrayElements(env, card2_out, NULL));
    if (card2_outArray == NULL) {
        printf("Failed to get elements for card2 array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsCsvToTTY(csvLine_inArray, newSatno_in, card1_outArray, card2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, card1_out, card1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, card2_out, card2_outArray, 0);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrCsv(JNIEnv* env, jclass jc, jstring csvLine_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_in == 0) {
        printf("Got NULL parameter passed to ObsAddFrCsv");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *csvLine_inArray = (char *)((*env)->GetStringUTFChars(env, csvLine_in, NULL));
    if (csvLine_inArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ObsAddFrCsv(csvLine_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrCsvML(JNIEnv* env, jclass jc, jstring csvLine_in, jlongArray obsKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_in == 0 || obsKey_out == 0) {
        printf("Got NULL parameter passed to ObsAddFrCsvML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int obsKey_len = (*env)->GetArrayLength(env, obsKey_out);
    if (obsKey_len < 1) {
        printf("obsKey parameter passed in ObsAddFrCsvML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *csvLine_inArray = (char *)((*env)->GetStringUTFChars(env, csvLine_in, NULL));
    if (csvLine_inArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return;
    }

    jlong *obsKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, obsKey_out, NULL));
    if (obsKey_outArray == NULL) {
        printf("Failed to get elements for obsKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 obsKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsAddFrCsvML(csvLine_inArray, obsKey_longOutArray);

    for (ii = 0; ii < obsKey_len; ii++) {
        obsKey_outArray[ii] = obsKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, obsKey_out, obsKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrFields(JNIEnv* env, jclass jc, jbyte secClass_in, jint satNum_in, jint senNum_in, jdouble obsTimeDs50utc_in, jdouble elOrDec_in, jdouble azOrRA_in, jdouble range_in, jdouble rangeRate_in, jdouble elRate_in, jdouble azRate_in, jdouble rangeAccel_in, jbyte obsType_in, jint trackInd_in, jint astat_in, jint siteTag_in, jint spadocTag_in, jdoubleArray pos_in, jdoubleArray vel_in, jdoubleArray extArr_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || extArr_in == 0) {
        printf("Got NULL parameter passed to ObsAddFrFields");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in ObsAddFrFields is too small.");
        return (jlong)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in ObsAddFrFields is too small.");
        return (jlong)(-1);
    }

    int extArr_len = (*env)->GetArrayLength(env, extArr_in);
    if (extArr_len < 128) {
        printf("extArr parameter passed in ObsAddFrFields is too small.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jlong)(-1);
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return (jlong)(-1);
    }

    jdouble *extArr_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, extArr_in, NULL));
    if (extArr_inArray == NULL) {
        printf("Failed to get elements for extArr array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ObsAddFrFields(secClass_in, satNum_in, senNum_in, obsTimeDs50utc_in, elOrDec_in, azOrRA_in, range_in, rangeRate_in, elRate_in, azRate_in, rangeAccel_in, obsType_in, trackInd_in, astat_in, siteTag_in, spadocTag_in, pos_inArray, vel_inArray, extArr_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrFieldsML(JNIEnv* env, jclass jc, jbyte secClass_in, jint satNum_in, jint senNum_in, jdouble obsTimeDs50utc_in, jdouble elOrDec_in, jdouble azOrRA_in, jdouble range_in, jdouble rangeRate_in, jdouble elRate_in, jdouble azRate_in, jdouble rangeAccel_in, jbyte obsType_in, jint trackInd_in, jint astat_in, jint siteTag_in, jint spadocTag_in, jdoubleArray pos_in, jdoubleArray vel_in, jdoubleArray extArr_in, jlongArray obsKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || extArr_in == 0 || obsKey_out == 0) {
        printf("Got NULL parameter passed to ObsAddFrFieldsML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in ObsAddFrFieldsML is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in ObsAddFrFieldsML is too small.");
        return;
    }

    int extArr_len = (*env)->GetArrayLength(env, extArr_in);
    if (extArr_len < 128) {
        printf("extArr parameter passed in ObsAddFrFieldsML is too small.");
        return;
    }

    int obsKey_len = (*env)->GetArrayLength(env, obsKey_out);
    if (obsKey_len < 1) {
        printf("obsKey parameter passed in ObsAddFrFieldsML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *extArr_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, extArr_in, NULL));
    if (extArr_inArray == NULL) {
        printf("Failed to get elements for extArr array.");
        return;
    }

    jlong *obsKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, obsKey_out, NULL));
    if (obsKey_outArray == NULL) {
        printf("Failed to get elements for obsKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 obsKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsAddFrFieldsML(secClass_in, satNum_in, senNum_in, obsTimeDs50utc_in, elOrDec_in, azOrRA_in, range_in, rangeRate_in, elRate_in, azRate_in, rangeAccel_in, obsType_in, trackInd_in, astat_in, siteTag_in, spadocTag_in, pos_inArray, vel_inArray, extArr_inArray, obsKey_longOutArray);

    for (ii = 0; ii < obsKey_len; ii++) {
        obsKey_outArray[ii] = obsKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, obsKey_out, obsKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrArray(JNIEnv* env, jclass jc, jdoubleArray xa_obs_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_obs_in == 0) {
        printf("Got NULL parameter passed to ObsAddFrArray");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_obs_len = (*env)->GetArrayLength(env, xa_obs_in);
    if (xa_obs_len < 64) {
        printf("xa_obs parameter passed in ObsAddFrArray is too small.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_obs_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_obs_in, NULL));
    if (xa_obs_inArray == NULL) {
        printf("Failed to get elements for xa_obs array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ObsAddFrArray(xa_obs_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsAddFrArrayML(JNIEnv* env, jclass jc, jdoubleArray xa_obs_in, jlongArray obsKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_obs_in == 0 || obsKey_out == 0) {
        printf("Got NULL parameter passed to ObsAddFrArrayML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_obs_len = (*env)->GetArrayLength(env, xa_obs_in);
    if (xa_obs_len < 64) {
        printf("xa_obs parameter passed in ObsAddFrArrayML is too small.");
        return;
    }

    int obsKey_len = (*env)->GetArrayLength(env, obsKey_out);
    if (obsKey_len < 1) {
        printf("obsKey parameter passed in ObsAddFrArrayML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_obs_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_obs_in, NULL));
    if (xa_obs_inArray == NULL) {
        printf("Failed to get elements for xa_obs array.");
        return;
    }

    jlong *obsKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, obsKey_out, NULL));
    if (obsKey_outArray == NULL) {
        printf("Failed to get elements for obsKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 obsKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsAddFrArrayML(xa_obs_inArray, obsKey_longOutArray);

    for (ii = 0; ii < obsKey_len; ii++) {
        obsKey_outArray[ii] = obsKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, obsKey_out, obsKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetAllFields(JNIEnv* env, jclass jc, jlong obsKey_in, jbyteArray secClass_out, jintArray satNum_out, jintArray senNum_out, jdoubleArray obsTimeDs50utc_out, jdoubleArray elOrDec_out, jdoubleArray azOrRA_out, jdoubleArray range_out, jdoubleArray rangeRate_out, jdoubleArray elRate_out, jdoubleArray azRate_out, jdoubleArray rangeAccel_out, jbyteArray obsType_out, jintArray trackInd_out, jintArray astat_out, jintArray siteTag_out, jintArray spadocTag_out, jdoubleArray pos_out, jdoubleArray vel_out, jdoubleArray extArr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (secClass_out == 0 || satNum_out == 0 || senNum_out == 0 || obsTimeDs50utc_out == 0 || elOrDec_out == 0 || azOrRA_out == 0 || range_out == 0 || rangeRate_out == 0 || elRate_out == 0 || azRate_out == 0 || rangeAccel_out == 0 || obsType_out == 0 || trackInd_out == 0 || astat_out == 0 || siteTag_out == 0 || spadocTag_out == 0 || pos_out == 0 || vel_out == 0 || extArr_out == 0) {
        printf("Got NULL parameter passed to ObsGetAllFields");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int senNum_len = (*env)->GetArrayLength(env, senNum_out);
    if (senNum_len < 1) {
        printf("senNum parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int obsTimeDs50utc_len = (*env)->GetArrayLength(env, obsTimeDs50utc_out);
    if (obsTimeDs50utc_len < 1) {
        printf("obsTimeDs50utc parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int elOrDec_len = (*env)->GetArrayLength(env, elOrDec_out);
    if (elOrDec_len < 1) {
        printf("elOrDec parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int azOrRA_len = (*env)->GetArrayLength(env, azOrRA_out);
    if (azOrRA_len < 1) {
        printf("azOrRA parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int range_len = (*env)->GetArrayLength(env, range_out);
    if (range_len < 1) {
        printf("range parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int rangeRate_len = (*env)->GetArrayLength(env, rangeRate_out);
    if (rangeRate_len < 1) {
        printf("rangeRate parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int elRate_len = (*env)->GetArrayLength(env, elRate_out);
    if (elRate_len < 1) {
        printf("elRate parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int azRate_len = (*env)->GetArrayLength(env, azRate_out);
    if (azRate_len < 1) {
        printf("azRate parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int rangeAccel_len = (*env)->GetArrayLength(env, rangeAccel_out);
    if (rangeAccel_len < 1) {
        printf("rangeAccel parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int trackInd_len = (*env)->GetArrayLength(env, trackInd_out);
    if (trackInd_len < 1) {
        printf("trackInd parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int astat_len = (*env)->GetArrayLength(env, astat_out);
    if (astat_len < 1) {
        printf("astat parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int siteTag_len = (*env)->GetArrayLength(env, siteTag_out);
    if (siteTag_len < 1) {
        printf("siteTag parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int spadocTag_len = (*env)->GetArrayLength(env, spadocTag_out);
    if (spadocTag_len < 1) {
        printf("spadocTag parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    int extArr_len = (*env)->GetArrayLength(env, extArr_out);
    if (extArr_len < 128) {
        printf("extArr parameter passed in ObsGetAllFields is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

    jint *satNum_outArray = (jint *)((*env)->GetIntArrayElements(env, satNum_out, NULL));
    if (satNum_outArray == NULL) {
        printf("Failed to get elements for satNum array.");
        return (jint)(-1);
    }

    jint *senNum_outArray = (jint *)((*env)->GetIntArrayElements(env, senNum_out, NULL));
    if (senNum_outArray == NULL) {
        printf("Failed to get elements for senNum array.");
        return (jint)(-1);
    }

    jdouble *obsTimeDs50utc_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, obsTimeDs50utc_out, NULL));
    if (obsTimeDs50utc_outArray == NULL) {
        printf("Failed to get elements for obsTimeDs50utc array.");
        return (jint)(-1);
    }

    jdouble *elOrDec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, elOrDec_out, NULL));
    if (elOrDec_outArray == NULL) {
        printf("Failed to get elements for elOrDec array.");
        return (jint)(-1);
    }

    jdouble *azOrRA_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, azOrRA_out, NULL));
    if (azOrRA_outArray == NULL) {
        printf("Failed to get elements for azOrRA array.");
        return (jint)(-1);
    }

    jdouble *range_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, range_out, NULL));
    if (range_outArray == NULL) {
        printf("Failed to get elements for range array.");
        return (jint)(-1);
    }

    jdouble *rangeRate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, rangeRate_out, NULL));
    if (rangeRate_outArray == NULL) {
        printf("Failed to get elements for rangeRate array.");
        return (jint)(-1);
    }

    jdouble *elRate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, elRate_out, NULL));
    if (elRate_outArray == NULL) {
        printf("Failed to get elements for elRate array.");
        return (jint)(-1);
    }

    jdouble *azRate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, azRate_out, NULL));
    if (azRate_outArray == NULL) {
        printf("Failed to get elements for azRate array.");
        return (jint)(-1);
    }

    jdouble *rangeAccel_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, rangeAccel_out, NULL));
    if (rangeAccel_outArray == NULL) {
        printf("Failed to get elements for rangeAccel array.");
        return (jint)(-1);
    }

    jbyte *obsType_outArray = (jbyte *)((*env)->GetByteArrayElements(env, obsType_out, NULL));
    if (obsType_outArray == NULL) {
        printf("Failed to get elements for obsType array.");
        return (jint)(-1);
    }

    jint *trackInd_outArray = (jint *)((*env)->GetIntArrayElements(env, trackInd_out, NULL));
    if (trackInd_outArray == NULL) {
        printf("Failed to get elements for trackInd array.");
        return (jint)(-1);
    }

    jint *astat_outArray = (jint *)((*env)->GetIntArrayElements(env, astat_out, NULL));
    if (astat_outArray == NULL) {
        printf("Failed to get elements for astat array.");
        return (jint)(-1);
    }

    jint *siteTag_outArray = (jint *)((*env)->GetIntArrayElements(env, siteTag_out, NULL));
    if (siteTag_outArray == NULL) {
        printf("Failed to get elements for siteTag array.");
        return (jint)(-1);
    }

    jint *spadocTag_outArray = (jint *)((*env)->GetIntArrayElements(env, spadocTag_out, NULL));
    if (spadocTag_outArray == NULL) {
        printf("Failed to get elements for spadocTag array.");
        return (jint)(-1);
    }

    jdouble *pos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_out, NULL));
    if (pos_outArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jint)(-1);
    }

    jdouble *vel_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_out, NULL));
    if (vel_outArray == NULL) {
        printf("Failed to get elements for vel array.");
        return (jint)(-1);
    }

    jdouble *extArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, extArr_out, NULL));
    if (extArr_outArray == NULL) {
        printf("Failed to get elements for extArr array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsGetAllFields(obsKey_in, secClass_outArray, satNum_outArray, senNum_outArray, obsTimeDs50utc_outArray, elOrDec_outArray, azOrRA_outArray, range_outArray, rangeRate_outArray, elRate_outArray, azRate_outArray, rangeAccel_outArray, obsType_outArray, trackInd_outArray, astat_outArray, siteTag_outArray, spadocTag_outArray, pos_outArray, vel_outArray, extArr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, senNum_out, senNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, obsTimeDs50utc_out, obsTimeDs50utc_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, elOrDec_out, elOrDec_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, azOrRA_out, azOrRA_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, range_out, range_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, rangeRate_out, rangeRate_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, elRate_out, elRate_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, azRate_out, azRate_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, rangeAccel_out, rangeAccel_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, obsType_out, obsType_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, trackInd_out, trackInd_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, astat_out, astat_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, siteTag_out, siteTag_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, spadocTag_out, spadocTag_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, extArr_out, extArr_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsDataToArray(JNIEnv* env, jclass jc, jlong obsKey_in, jdoubleArray xa_obs_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_obs_out == 0) {
        printf("Got NULL parameter passed to ObsDataToArray");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_obs_len = (*env)->GetArrayLength(env, xa_obs_out);
    if (xa_obs_len < 64) {
        printf("xa_obs parameter passed in ObsDataToArray is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_obs_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_obs_out, NULL));
    if (xa_obs_outArray == NULL) {
        printf("Failed to get elements for xa_obs array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsDataToArray(obsKey_in, xa_obs_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_obs_out, xa_obs_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsUpdateFrFields(JNIEnv* env, jclass jc, jlong obsKey_in, jbyte secClass_in, jdouble elOrDec_in, jdouble azOrRA_in, jdouble range_in, jdouble rangeRate_in, jdouble elRate_in, jdouble azRate_in, jdouble rangeAccel_in, jbyte obsType_in, jint trackInd_in, jint astat_in, jint siteTag_in, jint spadocTag_in, jdoubleArray pos_in, jdoubleArray vel_in, jdoubleArray extArr_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || extArr_in == 0) {
        printf("Got NULL parameter passed to ObsUpdateFrFields");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in ObsUpdateFrFields is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in ObsUpdateFrFields is too small.");
        return (jint)(-1);
    }

    int extArr_len = (*env)->GetArrayLength(env, extArr_in);
    if (extArr_len < 128) {
        printf("extArr parameter passed in ObsUpdateFrFields is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jint)(-1);
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return (jint)(-1);
    }

    jdouble *extArr_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, extArr_in, NULL));
    if (extArr_inArray == NULL) {
        printf("Failed to get elements for extArr array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsUpdateFrFields(obsKey_in, secClass_in, elOrDec_in, azOrRA_in, range_in, rangeRate_in, elRate_in, azRate_in, rangeAccel_in, obsType_in, trackInd_in, astat_in, siteTag_in, spadocTag_in, pos_inArray, vel_inArray, extArr_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetField(JNIEnv* env, jclass jc, jlong obsKey_in, jint xf_Obs_in, jbyteArray strValue_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (strValue_out == 0) {
        printf("Got NULL parameter passed to ObsGetField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *strValue_outArray = (jbyte *)((*env)->GetByteArrayElements(env, strValue_out, NULL));
    if (strValue_outArray == NULL) {
        printf("Failed to get elements for strValue array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsGetField(obsKey_in, xf_Obs_in, strValue_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, strValue_out, strValue_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsSetField(JNIEnv* env, jclass jc, jlong obsKey_in, jint xf_Obs_in, jstring strValue_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (strValue_in == 0) {
        printf("Got NULL parameter passed to ObsSetField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *strValue_inArray = (char *)((*env)->GetStringUTFChars(env, strValue_in, NULL));
    if (strValue_inArray == NULL) {
        printf("Failed to get elements for strValue array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsSetField(obsKey_in, xf_Obs_in, strValue_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetB3Card(JNIEnv* env, jclass jc, jlong obsKey_in, jbyteArray b3Card_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (b3Card_out == 0) {
        printf("Got NULL parameter passed to ObsGetB3Card");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *b3Card_outArray = (jbyte *)((*env)->GetByteArrayElements(env, b3Card_out, NULL));
    if (b3Card_outArray == NULL) {
        printf("Failed to get elements for b3Card array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsGetB3Card(obsKey_in, b3Card_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, b3Card_out, b3Card_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetTTYCard(JNIEnv* env, jclass jc, jlong obsKey_in, jbyteArray ttyCard1_out, jbyteArray ttyCard2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ttyCard1_out == 0 || ttyCard2_out == 0) {
        printf("Got NULL parameter passed to ObsGetTTYCard");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *ttyCard1_outArray = (jbyte *)((*env)->GetByteArrayElements(env, ttyCard1_out, NULL));
    if (ttyCard1_outArray == NULL) {
        printf("Failed to get elements for ttyCard1 array.");
        return (jint)(-1);
    }

    jbyte *ttyCard2_outArray = (jbyte *)((*env)->GetByteArrayElements(env, ttyCard2_out, NULL));
    if (ttyCard2_outArray == NULL) {
        printf("Failed to get elements for ttyCard2 array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsGetTTYCard(obsKey_in, ttyCard1_outArray, ttyCard2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, ttyCard1_out, ttyCard1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, ttyCard2_out, ttyCard2_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetCsv(JNIEnv* env, jclass jc, jlong obsKey_in, jbyteArray csvline_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvline_out == 0) {
        printf("Got NULL parameter passed to ObsGetCsv");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *csvline_outArray = (jbyte *)((*env)->GetByteArrayElements(env, csvline_out, NULL));
    if (csvline_outArray == NULL) {
        printf("Failed to get elements for csvline array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsGetCsv(obsKey_in, csvline_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvline_out, csvline_outArray, 0);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsFieldsToB3Card(JNIEnv* env, jclass jc, jbyte secClass_in, jint satNum_in, jint senNum_in, jdouble obsTimeDs50utc_in, jdouble elOrDec_in, jdouble azOrRA_in, jdouble range_in, jdouble rangeRate_in, jdouble elRate_in, jdouble azRate_in, jdouble rangeAccel_in, jbyte obsType_in, jint trackInd_in, jint astat_in, jint siteTag_in, jint spadocTag_in, jdoubleArray pos_in, jbyteArray b3Card_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || b3Card_out == 0) {
        printf("Got NULL parameter passed to ObsFieldsToB3Card");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in ObsFieldsToB3Card is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jbyte *b3Card_outArray = (jbyte *)((*env)->GetByteArrayElements(env, b3Card_out, NULL));
    if (b3Card_outArray == NULL) {
        printf("Failed to get elements for b3Card array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsFieldsToB3Card(secClass_in, satNum_in, senNum_in, obsTimeDs50utc_in, elOrDec_in, azOrRA_in, range_in, rangeRate_in, elRate_in, azRate_in, rangeAccel_in, obsType_in, trackInd_in, astat_in, siteTag_in, spadocTag_in, pos_inArray, b3Card_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, b3Card_out, b3Card_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsFieldsToCsv(JNIEnv* env, jclass jc, jbyte secClass_in, jint satNum_in, jint senNum_in, jdouble obsTimeDs50utc_in, jdouble elOrDec_in, jdouble azOrRA_in, jdouble range_in, jdouble rangeRate_in, jdouble elRate_in, jdouble azRate_in, jdouble rangeAccel_in, jbyte obsType_in, jint trackInd_in, jint astat_in, jint siteTag_in, jint spadocTag_in, jdoubleArray pos_in, jbyteArray csvLine_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || csvLine_out == 0) {
        printf("Got NULL parameter passed to ObsFieldsToCsv");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in ObsFieldsToCsv is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jbyte *csvLine_outArray = (jbyte *)((*env)->GetByteArrayElements(env, csvLine_out, NULL));
    if (csvLine_outArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsFieldsToCsv(secClass_in, satNum_in, senNum_in, obsTimeDs50utc_in, elOrDec_in, azOrRA_in, range_in, rangeRate_in, elRate_in, azRate_in, rangeAccel_in, obsType_in, trackInd_in, astat_in, siteTag_in, spadocTag_in, pos_inArray, csvLine_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvLine_out, csvLine_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsFieldsToTTYCard(JNIEnv* env, jclass jc, jbyte secClass_in, jint satNum_in, jint senNum_in, jdouble obsTimeDs50utc_in, jdouble elOrDec_in, jdouble azOrRA_in, jdouble range_in, jdouble rangeRate_in, jdouble elRate_in, jdouble azRate_in, jdouble rangeAccel_in, jbyte obsType_in, jdoubleArray pos_in, jbyteArray ttyCard1_out, jbyteArray ttyCard2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || ttyCard1_out == 0 || ttyCard2_out == 0) {
        printf("Got NULL parameter passed to ObsFieldsToTTYCard");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in ObsFieldsToTTYCard is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jbyte *ttyCard1_outArray = (jbyte *)((*env)->GetByteArrayElements(env, ttyCard1_out, NULL));
    if (ttyCard1_outArray == NULL) {
        printf("Failed to get elements for ttyCard1 array.");
        return;
    }

    jbyte *ttyCard2_outArray = (jbyte *)((*env)->GetByteArrayElements(env, ttyCard2_out, NULL));
    if (ttyCard2_outArray == NULL) {
        printf("Failed to get elements for ttyCard2 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsFieldsToTTYCard(secClass_in, satNum_in, senNum_in, obsTimeDs50utc_in, elOrDec_in, azOrRA_in, range_in, rangeRate_in, elRate_in, azRate_in, rangeAccel_in, obsType_in, pos_inArray, ttyCard1_outArray, ttyCard2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, ttyCard1_out, ttyCard1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, ttyCard2_out, ttyCard2_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsFieldsToObsKey(JNIEnv* env, jclass jc, jint satNum_in, jint senNum_in, jdouble obsTimeDs50utc_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ObsFieldsToObsKey(satNum_in, senNum_in, obsTimeDs50utc_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsFieldsToObsKeyML(JNIEnv* env, jclass jc, jint satNum_in, jint senNum_in, jdouble obsTimeDs50utc_in, jlongArray obsKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (obsKey_out == 0) {
        printf("Got NULL parameter passed to ObsFieldsToObsKeyML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int obsKey_len = (*env)->GetArrayLength(env, obsKey_out);
    if (obsKey_len < 1) {
        printf("obsKey parameter passed in ObsFieldsToObsKeyML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *obsKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, obsKey_out, NULL));
    if (obsKey_outArray == NULL) {
        printf("Failed to get elements for obsKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 obsKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsFieldsToObsKeyML(satNum_in, senNum_in, obsTimeDs50utc_in, obsKey_longOutArray);

    for (ii = 0; ii < obsKey_len; ii++) {
        obsKey_outArray[ii] = obsKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, obsKey_out, obsKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsB3Parse(JNIEnv* env, jclass jc, jstring b3ObsCard_in, jbyteArray secClass_out, jintArray satNum_out, jintArray senNum_out, jdoubleArray obsTimeDs50utc_out, jdoubleArray elOrDec_out, jdoubleArray azOrRA_out, jdoubleArray range_out, jdoubleArray rangeRate_out, jdoubleArray elRate_out, jdoubleArray azRate_out, jdoubleArray rangeAccel_out, jbyteArray obsType_out, jintArray trackInd_out, jintArray astat_out, jintArray siteTag_out, jintArray spadocTag_out, jdoubleArray pos_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (b3ObsCard_in == 0 || secClass_out == 0 || satNum_out == 0 || senNum_out == 0 || obsTimeDs50utc_out == 0 || elOrDec_out == 0 || azOrRA_out == 0 || range_out == 0 || rangeRate_out == 0 || elRate_out == 0 || azRate_out == 0 || rangeAccel_out == 0 || obsType_out == 0 || trackInd_out == 0 || astat_out == 0 || siteTag_out == 0 || spadocTag_out == 0 || pos_out == 0) {
        printf("Got NULL parameter passed to ObsB3Parse");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int senNum_len = (*env)->GetArrayLength(env, senNum_out);
    if (senNum_len < 1) {
        printf("senNum parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int obsTimeDs50utc_len = (*env)->GetArrayLength(env, obsTimeDs50utc_out);
    if (obsTimeDs50utc_len < 1) {
        printf("obsTimeDs50utc parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int elOrDec_len = (*env)->GetArrayLength(env, elOrDec_out);
    if (elOrDec_len < 1) {
        printf("elOrDec parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int azOrRA_len = (*env)->GetArrayLength(env, azOrRA_out);
    if (azOrRA_len < 1) {
        printf("azOrRA parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int range_len = (*env)->GetArrayLength(env, range_out);
    if (range_len < 1) {
        printf("range parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int rangeRate_len = (*env)->GetArrayLength(env, rangeRate_out);
    if (rangeRate_len < 1) {
        printf("rangeRate parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int elRate_len = (*env)->GetArrayLength(env, elRate_out);
    if (elRate_len < 1) {
        printf("elRate parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int azRate_len = (*env)->GetArrayLength(env, azRate_out);
    if (azRate_len < 1) {
        printf("azRate parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int rangeAccel_len = (*env)->GetArrayLength(env, rangeAccel_out);
    if (rangeAccel_len < 1) {
        printf("rangeAccel parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int trackInd_len = (*env)->GetArrayLength(env, trackInd_out);
    if (trackInd_len < 1) {
        printf("trackInd parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int astat_len = (*env)->GetArrayLength(env, astat_out);
    if (astat_len < 1) {
        printf("astat parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int siteTag_len = (*env)->GetArrayLength(env, siteTag_out);
    if (siteTag_len < 1) {
        printf("siteTag parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int spadocTag_len = (*env)->GetArrayLength(env, spadocTag_out);
    if (spadocTag_len < 1) {
        printf("spadocTag parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ObsB3Parse is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *b3ObsCard_inArray = (char *)((*env)->GetStringUTFChars(env, b3ObsCard_in, NULL));
    if (b3ObsCard_inArray == NULL) {
        printf("Failed to get elements for b3ObsCard array.");
        return (jint)(-1);
    }

    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

    jint *satNum_outArray = (jint *)((*env)->GetIntArrayElements(env, satNum_out, NULL));
    if (satNum_outArray == NULL) {
        printf("Failed to get elements for satNum array.");
        return (jint)(-1);
    }

    jint *senNum_outArray = (jint *)((*env)->GetIntArrayElements(env, senNum_out, NULL));
    if (senNum_outArray == NULL) {
        printf("Failed to get elements for senNum array.");
        return (jint)(-1);
    }

    jdouble *obsTimeDs50utc_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, obsTimeDs50utc_out, NULL));
    if (obsTimeDs50utc_outArray == NULL) {
        printf("Failed to get elements for obsTimeDs50utc array.");
        return (jint)(-1);
    }

    jdouble *elOrDec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, elOrDec_out, NULL));
    if (elOrDec_outArray == NULL) {
        printf("Failed to get elements for elOrDec array.");
        return (jint)(-1);
    }

    jdouble *azOrRA_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, azOrRA_out, NULL));
    if (azOrRA_outArray == NULL) {
        printf("Failed to get elements for azOrRA array.");
        return (jint)(-1);
    }

    jdouble *range_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, range_out, NULL));
    if (range_outArray == NULL) {
        printf("Failed to get elements for range array.");
        return (jint)(-1);
    }

    jdouble *rangeRate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, rangeRate_out, NULL));
    if (rangeRate_outArray == NULL) {
        printf("Failed to get elements for rangeRate array.");
        return (jint)(-1);
    }

    jdouble *elRate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, elRate_out, NULL));
    if (elRate_outArray == NULL) {
        printf("Failed to get elements for elRate array.");
        return (jint)(-1);
    }

    jdouble *azRate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, azRate_out, NULL));
    if (azRate_outArray == NULL) {
        printf("Failed to get elements for azRate array.");
        return (jint)(-1);
    }

    jdouble *rangeAccel_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, rangeAccel_out, NULL));
    if (rangeAccel_outArray == NULL) {
        printf("Failed to get elements for rangeAccel array.");
        return (jint)(-1);
    }

    jbyte *obsType_outArray = (jbyte *)((*env)->GetByteArrayElements(env, obsType_out, NULL));
    if (obsType_outArray == NULL) {
        printf("Failed to get elements for obsType array.");
        return (jint)(-1);
    }

    jint *trackInd_outArray = (jint *)((*env)->GetIntArrayElements(env, trackInd_out, NULL));
    if (trackInd_outArray == NULL) {
        printf("Failed to get elements for trackInd array.");
        return (jint)(-1);
    }

    jint *astat_outArray = (jint *)((*env)->GetIntArrayElements(env, astat_out, NULL));
    if (astat_outArray == NULL) {
        printf("Failed to get elements for astat array.");
        return (jint)(-1);
    }

    jint *siteTag_outArray = (jint *)((*env)->GetIntArrayElements(env, siteTag_out, NULL));
    if (siteTag_outArray == NULL) {
        printf("Failed to get elements for siteTag array.");
        return (jint)(-1);
    }

    jint *spadocTag_outArray = (jint *)((*env)->GetIntArrayElements(env, spadocTag_out, NULL));
    if (spadocTag_outArray == NULL) {
        printf("Failed to get elements for spadocTag array.");
        return (jint)(-1);
    }

    jdouble *pos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_out, NULL));
    if (pos_outArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsB3Parse(b3ObsCard_inArray, secClass_outArray, satNum_outArray, senNum_outArray, obsTimeDs50utc_outArray, elOrDec_outArray, azOrRA_outArray, range_outArray, rangeRate_outArray, elRate_outArray, azRate_outArray, rangeAccel_outArray, obsType_outArray, trackInd_outArray, astat_outArray, siteTag_outArray, spadocTag_outArray, pos_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, senNum_out, senNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, obsTimeDs50utc_out, obsTimeDs50utc_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, elOrDec_out, elOrDec_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, azOrRA_out, azOrRA_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, range_out, range_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, rangeRate_out, rangeRate_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, elRate_out, elRate_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, azRate_out, azRate_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, rangeAccel_out, rangeAccel_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, obsType_out, obsType_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, trackInd_out, trackInd_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, astat_out, astat_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, siteTag_out, siteTag_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, spadocTag_out, spadocTag_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsParse(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jdoubleArray xa_obs_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || xa_obs_out == 0) {
        printf("Got NULL parameter passed to ObsParse");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_obs_len = (*env)->GetArrayLength(env, xa_obs_out);
    if (xa_obs_len < 64) {
        printf("xa_obs parameter passed in ObsParse is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *line1_inArray = (char *)((*env)->GetStringUTFChars(env, line1_in, NULL));
    if (line1_inArray == NULL) {
        printf("Failed to get elements for line1 array.");
        return (jint)(-1);
    }

    char *line2_inArray = (char *)((*env)->GetStringUTFChars(env, line2_in, NULL));
    if (line2_inArray == NULL) {
        printf("Failed to get elements for line2 array.");
        return (jint)(-1);
    }

    jdouble *xa_obs_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_obs_out, NULL));
    if (xa_obs_outArray == NULL) {
        printf("Failed to get elements for xa_obs array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsParse(line1_inArray, line2_inArray, xa_obs_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_obs_out, xa_obs_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsLoadFileGID(JNIEnv* env, jclass jc, jstring obsFile_in, jint gid_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (obsFile_in == 0) {
        printf("Got NULL parameter passed to ObsLoadFileGID");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *obsFile_inArray = (char *)((*env)->GetStringUTFChars(env, obsFile_in, NULL));
    if (obsFile_inArray == NULL) {
        printf("Failed to get elements for obsFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsLoadFileGID(obsFile_inArray, gid_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsSaveFileGID(JNIEnv* env, jclass jc, jstring obsFile_in, jint gid_in, jint saveMode_in, jint obsForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (obsFile_in == 0) {
        printf("Got NULL parameter passed to ObsSaveFileGID");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *obsFile_inArray = (char *)((*env)->GetStringUTFChars(env, obsFile_in, NULL));
    if (obsFile_inArray == NULL) {
        printf("Failed to get elements for obsFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsSaveFileGID(obsFile_inArray, gid_in, saveMode_in, obsForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsRemoveGID(JNIEnv* env, jclass jc, jint gid_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsRemoveGID(gid_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetCountGID(JNIEnv* env, jclass jc, jint gid_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsGetCountGID(gid_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetLoadedGID(JNIEnv* env, jclass jc, jint gid_in, jint order_in, jlongArray obsKeys_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (obsKeys_out == 0) {
        printf("Got NULL parameter passed to ObsGetLoadedGID");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int obsKeys_len = (*env)->GetArrayLength(env, obsKeys_out);

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *obsKeys_outArray = (jlong *)((*env)->GetLongArrayElements(env, obsKeys_out, NULL));
    if (obsKeys_outArray == NULL) {
        printf("Failed to get elements for obsKeys array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 *obsKeys_longOutArray = (__int64*)malloc(obsKeys_len * sizeof(__int64));

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsGetLoadedGID(gid_in, order_in, obsKeys_longOutArray);

    for (ii = 0; ii < obsKeys_len; ii++) {
        obsKeys_outArray[ii] = obsKeys_longOutArray[ii];
    }

    free(obsKeys_longOutArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, obsKeys_out, obsKeys_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsTypeCToI(JNIEnv* env, jclass jc, jbyte obsTypeChar_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsTypeCToI(obsTypeChar_in);

    return ret;
}


JNIEXPORT jbyte JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsTypeIToC(JNIEnv* env, jclass jc, jint obsTypeInt_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jbyte ret = ObsTypeIToC(obsTypeInt_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsResetSelObs(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsResetSelObs();

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetStates(JNIEnv* env, jclass jc, jlong obsKey_in, jdouble range_km_in, jdoubleArray xa_obState_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_obState_out == 0) {
        printf("Got NULL parameter passed to ObsGetStates");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_obState_len = (*env)->GetArrayLength(env, xa_obState_out);
    if (xa_obState_len < 64) {
        printf("xa_obState parameter passed in ObsGetStates is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_obState_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_obState_out, NULL));
    if (xa_obState_outArray == NULL) {
        printf("Failed to get elements for xa_obState array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsGetStates(obsKey_in, range_km_in, xa_obState_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_obState_out, xa_obState_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsDataToStates(JNIEnv* env, jclass jc, jdoubleArray xa_obs_in, jdoubleArray xa_obState_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_obs_in == 0 || xa_obState_out == 0) {
        printf("Got NULL parameter passed to ObsDataToStates");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_obs_len = (*env)->GetArrayLength(env, xa_obs_in);
    if (xa_obs_len < 64) {
        printf("xa_obs parameter passed in ObsDataToStates is too small.");
        return (jint)(-1);
    }

    int xa_obState_len = (*env)->GetArrayLength(env, xa_obState_out);
    if (xa_obState_len < 64) {
        printf("xa_obState parameter passed in ObsDataToStates is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_obs_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_obs_in, NULL));
    if (xa_obs_inArray == NULL) {
        printf("Failed to get elements for xa_obs array.");
        return (jint)(-1);
    }

    jdouble *xa_obState_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_obState_out, NULL));
    if (xa_obState_outArray == NULL) {
        printf("Failed to get elements for xa_obState array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsDataToStates(xa_obs_inArray, xa_obState_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_obState_out, xa_obState_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsArrToLines(JNIEnv* env, jclass jc, jdoubleArray xa_obs_in, jint obsForm_in, jbyteArray line1_out, jbyteArray line2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_obs_in == 0 || line1_out == 0 || line2_out == 0) {
        printf("Got NULL parameter passed to ObsArrToLines");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_obs_len = (*env)->GetArrayLength(env, xa_obs_in);
    if (xa_obs_len < 64) {
        printf("xa_obs parameter passed in ObsArrToLines is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_obs_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_obs_in, NULL));
    if (xa_obs_inArray == NULL) {
        printf("Failed to get elements for xa_obs array.");
        return (jint)(-1);
    }

    jbyte *line1_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line1_out, NULL));
    if (line1_outArray == NULL) {
        printf("Failed to get elements for line1 array.");
        return (jint)(-1);
    }

    jbyte *line2_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line2_out, NULL));
    if (line2_outArray == NULL) {
        printf("Failed to get elements for line2 array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ObsArrToLines(xa_obs_inArray, obsForm_in, line1_outArray, line2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1_out, line1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2_out, line2_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_SetObsKeyMode(JNIEnv* env, jclass jc, jint obs_keyMode_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SetObsKeyMode(obs_keyMode_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_GetObsKeyMode(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = GetObsKeyMode();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_SatNumFrObsKey(JNIEnv* env, jclass jc, jlong obsKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatNumFrObsKey(obsKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniObs_SenNumFrObsKey(JNIEnv* env, jclass jc, jlong obsKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SenNumFrObsKey(obsKey_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniObs_ObsGetSelected(JNIEnv* env, jclass jc, jdoubleArray xa_selob_in, jint order_in, jintArray numMatchedObss_out, jlongArray obsKeys_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_selob_in == 0 || numMatchedObss_out == 0 || obsKeys_out == 0) {
        printf("Got NULL parameter passed to ObsGetSelected");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_selob_len = (*env)->GetArrayLength(env, xa_selob_in);
    if (xa_selob_len < 128) {
        printf("xa_selob parameter passed in ObsGetSelected is too small.");
        return;
    }

    int numMatchedObss_len = (*env)->GetArrayLength(env, numMatchedObss_out);
    if (numMatchedObss_len < 1) {
        printf("numMatchedObss parameter passed in ObsGetSelected is too small.");
        return;
    }

    int obsKeys_len = (*env)->GetArrayLength(env, obsKeys_out);

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_selob_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_selob_in, NULL));
    if (xa_selob_inArray == NULL) {
        printf("Failed to get elements for xa_selob array.");
        return;
    }

    jint *numMatchedObss_outArray = (jint *)((*env)->GetIntArrayElements(env, numMatchedObss_out, NULL));
    if (numMatchedObss_outArray == NULL) {
        printf("Failed to get elements for numMatchedObss array.");
        return;
    }

    jlong *obsKeys_outArray = (jlong *)((*env)->GetLongArrayElements(env, obsKeys_out, NULL));
    if (obsKeys_outArray == NULL) {
        printf("Failed to get elements for obsKeys array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 *obsKeys_longOutArray = (__int64*)malloc(obsKeys_len * sizeof(__int64));

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ObsGetSelected(xa_selob_inArray, order_in, numMatchedObss_outArray, obsKeys_longOutArray);

    for (ii = 0; ii < obsKeys_len; ii++) {
        obsKeys_outArray[ii] = obsKeys_longOutArray[ii];
    }

    free(obsKeys_longOutArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, numMatchedObss_out, numMatchedObss_outArray, 0);
    (*env)->ReleaseLongArrayElements(env, obsKeys_out, obsKeys_outArray, 0);

}
// ========================= End of auto generated code ==========================
