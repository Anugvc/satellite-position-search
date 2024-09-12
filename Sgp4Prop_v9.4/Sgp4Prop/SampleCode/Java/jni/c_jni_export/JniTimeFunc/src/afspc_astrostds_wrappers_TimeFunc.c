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
#include "../../wrappers/EnvConstDll.h"
#include "../../wrappers/TimeFuncDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_LoadTimeFuncDll(JNIEnv* env, jclass jc)
{
    LoadTimeFuncDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TimeFuncInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadTimeFuncDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TimeFuncInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TimeFuncGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to TimeFuncGetInfo");
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
    TimeFuncGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TConLoadFile(JNIEnv* env, jclass jc, jstring tconFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (tconFile_in == 0) {
        printf("Got NULL parameter passed to TConLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *tconFile_inArray = (char *)((*env)->GetStringUTFChars(env, tconFile_in, NULL));
    if (tconFile_inArray == NULL) {
        printf("Failed to get elements for tconFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TConLoadFile(tconFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TimeFuncLoadFile(JNIEnv* env, jclass jc, jstring tconFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (tconFile_in == 0) {
        printf("Got NULL parameter passed to TimeFuncLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *tconFile_inArray = (char *)((*env)->GetStringUTFChars(env, tconFile_in, NULL));
    if (tconFile_inArray == NULL) {
        printf("Failed to get elements for tconFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TimeFuncLoadFile(tconFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_IsTConFileLoaded(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = IsTConFileLoaded();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TConSaveFile(JNIEnv* env, jclass jc, jstring tconFile_in, jint saveMode_in, jint saveForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (tconFile_in == 0) {
        printf("Got NULL parameter passed to TConSaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *tconFile_inArray = (char *)((*env)->GetStringUTFChars(env, tconFile_in, NULL));
    if (tconFile_inArray == NULL) {
        printf("Failed to get elements for tconFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TConSaveFile(tconFile_inArray, saveMode_in, saveForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TConAddARec(JNIEnv* env, jclass jc, jdouble refDs50UTC_in, jdouble leapDs50UTC_in, jdouble taiMinusUTC_in, jdouble ut1MinusUTC_in, jdouble ut1Rate_in, jdouble polarX_in, jdouble polarY_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TConAddARec(refDs50UTC_in, leapDs50UTC_in, taiMinusUTC_in, ut1MinusUTC_in, ut1Rate_in, polarX_in, polarY_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TConAddOne(JNIEnv* env, jclass jc, jdouble refDs50UTC_in, jdouble taiMinusUTC_in, jdouble ut1MinusUTC_in, jdouble ut1Rate_in, jdouble polarX_in, jdouble polarY_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TConAddOne(refDs50UTC_in, taiMinusUTC_in, ut1MinusUTC_in, ut1Rate_in, polarX_in, polarY_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToTConRec(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdoubleArray taiMinusUTC_out, jdoubleArray ut1MinusUTC_out, jdoubleArray ut1Rate_out, jdoubleArray polarX_out, jdoubleArray polarY_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (taiMinusUTC_out == 0 || ut1MinusUTC_out == 0 || ut1Rate_out == 0 || polarX_out == 0 || polarY_out == 0) {
        printf("Got NULL parameter passed to UTCToTConRec");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int taiMinusUTC_len = (*env)->GetArrayLength(env, taiMinusUTC_out);
    if (taiMinusUTC_len < 1) {
        printf("taiMinusUTC parameter passed in UTCToTConRec is too small.");
        return;
    }

    int ut1MinusUTC_len = (*env)->GetArrayLength(env, ut1MinusUTC_out);
    if (ut1MinusUTC_len < 1) {
        printf("ut1MinusUTC parameter passed in UTCToTConRec is too small.");
        return;
    }

    int ut1Rate_len = (*env)->GetArrayLength(env, ut1Rate_out);
    if (ut1Rate_len < 1) {
        printf("ut1Rate parameter passed in UTCToTConRec is too small.");
        return;
    }

    int polarX_len = (*env)->GetArrayLength(env, polarX_out);
    if (polarX_len < 1) {
        printf("polarX parameter passed in UTCToTConRec is too small.");
        return;
    }

    int polarY_len = (*env)->GetArrayLength(env, polarY_out);
    if (polarY_len < 1) {
        printf("polarY parameter passed in UTCToTConRec is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *taiMinusUTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, taiMinusUTC_out, NULL));
    if (taiMinusUTC_outArray == NULL) {
        printf("Failed to get elements for taiMinusUTC array.");
        return;
    }

    jdouble *ut1MinusUTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ut1MinusUTC_out, NULL));
    if (ut1MinusUTC_outArray == NULL) {
        printf("Failed to get elements for ut1MinusUTC array.");
        return;
    }

    jdouble *ut1Rate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ut1Rate_out, NULL));
    if (ut1Rate_outArray == NULL) {
        printf("Failed to get elements for ut1Rate array.");
        return;
    }

    jdouble *polarX_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, polarX_out, NULL));
    if (polarX_outArray == NULL) {
        printf("Failed to get elements for polarX array.");
        return;
    }

    jdouble *polarY_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, polarY_out, NULL));
    if (polarY_outArray == NULL) {
        printf("Failed to get elements for polarY array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    UTCToTConRec(ds50UTC_in, taiMinusUTC_outArray, ut1MinusUTC_outArray, ut1Rate_outArray, polarX_outArray, polarY_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, taiMinusUTC_out, taiMinusUTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ut1MinusUTC_out, ut1MinusUTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ut1Rate_out, ut1Rate_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, polarX_out, polarX_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, polarY_out, polarY_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TConRemoveAll(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TConRemoveAll();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToDTG20(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jbyteArray dtg20_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (dtg20_out == 0) {
        printf("Got NULL parameter passed to UTCToDTG20");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *dtg20_outArray = (jbyte *)((*env)->GetByteArrayElements(env, dtg20_out, NULL));
    if (dtg20_outArray == NULL) {
        printf("Failed to get elements for dtg20 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    UTCToDTG20(ds50UTC_in, dtg20_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, dtg20_out, dtg20_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToDTG19(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jbyteArray dtg19_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (dtg19_out == 0) {
        printf("Got NULL parameter passed to UTCToDTG19");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *dtg19_outArray = (jbyte *)((*env)->GetByteArrayElements(env, dtg19_out, NULL));
    if (dtg19_outArray == NULL) {
        printf("Failed to get elements for dtg19 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    UTCToDTG19(ds50UTC_in, dtg19_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, dtg19_out, dtg19_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToDTG17(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jbyteArray dtg17_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (dtg17_out == 0) {
        printf("Got NULL parameter passed to UTCToDTG17");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *dtg17_outArray = (jbyte *)((*env)->GetByteArrayElements(env, dtg17_out, NULL));
    if (dtg17_outArray == NULL) {
        printf("Failed to get elements for dtg17 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    UTCToDTG17(ds50UTC_in, dtg17_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, dtg17_out, dtg17_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToDTG15(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jbyteArray dtg15_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (dtg15_out == 0) {
        printf("Got NULL parameter passed to UTCToDTG15");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *dtg15_outArray = (jbyte *)((*env)->GetByteArrayElements(env, dtg15_out, NULL));
    if (dtg15_outArray == NULL) {
        printf("Failed to get elements for dtg15 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    UTCToDTG15(ds50UTC_in, dtg15_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, dtg15_out, dtg15_outArray, 0);

}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_DTGToUTC(JNIEnv* env, jclass jc, jstring dtg_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (dtg_in == 0) {
        printf("Got NULL parameter passed to DTGToUTC");
        return (jdouble)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *dtg_inArray = (char *)((*env)->GetStringUTFChars(env, dtg_in, NULL));
    if (dtg_inArray == NULL) {
        printf("Failed to get elements for dtg array.");
        return (jdouble)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = DTGToUTC(dtg_inArray);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToTAI(JNIEnv* env, jclass jc, jdouble ds50UTC_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = UTCToTAI(ds50UTC_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToUT1(JNIEnv* env, jclass jc, jdouble ds50UTC_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = UTCToUT1(ds50UTC_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToET(JNIEnv* env, jclass jc, jdouble ds50UTC_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = UTCToET(ds50UTC_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TAIToUTC(JNIEnv* env, jclass jc, jdouble ds50TAI_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = TAIToUTC(ds50TAI_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TAIToUT1(JNIEnv* env, jclass jc, jdouble ds50TAI_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = TAIToUT1(ds50TAI_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_YrDaysToUTC(JNIEnv* env, jclass jc, jint year_in, jdouble dayOfYear_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = YrDaysToUTC(year_in, dayOfYear_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToYrDays(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jintArray year_out, jdoubleArray dayOfYear_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (year_out == 0 || dayOfYear_out == 0) {
        printf("Got NULL parameter passed to UTCToYrDays");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int year_len = (*env)->GetArrayLength(env, year_out);
    if (year_len < 1) {
        printf("year parameter passed in UTCToYrDays is too small.");
        return;
    }

    int dayOfYear_len = (*env)->GetArrayLength(env, dayOfYear_out);
    if (dayOfYear_len < 1) {
        printf("dayOfYear parameter passed in UTCToYrDays is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jint *year_outArray = (jint *)((*env)->GetIntArrayElements(env, year_out, NULL));
    if (year_outArray == NULL) {
        printf("Failed to get elements for year array.");
        return;
    }

    jdouble *dayOfYear_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, dayOfYear_out, NULL));
    if (dayOfYear_outArray == NULL) {
        printf("Failed to get elements for dayOfYear array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    UTCToYrDays(ds50UTC_in, year_outArray, dayOfYear_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, year_out, year_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, dayOfYear_out, dayOfYear_outArray, 0);

}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TimeComps1ToUTC(JNIEnv* env, jclass jc, jint year_in, jint dayOfYear_in, jint hh_in, jint mm_in, jdouble sss_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = TimeComps1ToUTC(year_in, dayOfYear_in, hh_in, mm_in, sss_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToTimeComps1(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jintArray year_out, jintArray dayOfYear_out, jintArray hh_out, jintArray mm_out, jdoubleArray sss_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (year_out == 0 || dayOfYear_out == 0 || hh_out == 0 || mm_out == 0 || sss_out == 0) {
        printf("Got NULL parameter passed to UTCToTimeComps1");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int year_len = (*env)->GetArrayLength(env, year_out);
    if (year_len < 1) {
        printf("year parameter passed in UTCToTimeComps1 is too small.");
        return;
    }

    int dayOfYear_len = (*env)->GetArrayLength(env, dayOfYear_out);
    if (dayOfYear_len < 1) {
        printf("dayOfYear parameter passed in UTCToTimeComps1 is too small.");
        return;
    }

    int hh_len = (*env)->GetArrayLength(env, hh_out);
    if (hh_len < 1) {
        printf("hh parameter passed in UTCToTimeComps1 is too small.");
        return;
    }

    int mm_len = (*env)->GetArrayLength(env, mm_out);
    if (mm_len < 1) {
        printf("mm parameter passed in UTCToTimeComps1 is too small.");
        return;
    }

    int sss_len = (*env)->GetArrayLength(env, sss_out);
    if (sss_len < 1) {
        printf("sss parameter passed in UTCToTimeComps1 is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jint *year_outArray = (jint *)((*env)->GetIntArrayElements(env, year_out, NULL));
    if (year_outArray == NULL) {
        printf("Failed to get elements for year array.");
        return;
    }

    jint *dayOfYear_outArray = (jint *)((*env)->GetIntArrayElements(env, dayOfYear_out, NULL));
    if (dayOfYear_outArray == NULL) {
        printf("Failed to get elements for dayOfYear array.");
        return;
    }

    jint *hh_outArray = (jint *)((*env)->GetIntArrayElements(env, hh_out, NULL));
    if (hh_outArray == NULL) {
        printf("Failed to get elements for hh array.");
        return;
    }

    jint *mm_outArray = (jint *)((*env)->GetIntArrayElements(env, mm_out, NULL));
    if (mm_outArray == NULL) {
        printf("Failed to get elements for mm array.");
        return;
    }

    jdouble *sss_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, sss_out, NULL));
    if (sss_outArray == NULL) {
        printf("Failed to get elements for sss array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    UTCToTimeComps1(ds50UTC_in, year_outArray, dayOfYear_outArray, hh_outArray, mm_outArray, sss_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, year_out, year_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, dayOfYear_out, dayOfYear_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, hh_out, hh_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, mm_out, mm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, sss_out, sss_outArray, 0);

}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TimeComps2ToUTC(JNIEnv* env, jclass jc, jint year_in, jint mon_in, jint dayOfMonth_in, jint hh_in, jint mm_in, jdouble sss_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = TimeComps2ToUTC(year_in, mon_in, dayOfMonth_in, hh_in, mm_in, sss_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_UTCToTimeComps2(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jintArray year_out, jintArray month_out, jintArray dayOfMonth_out, jintArray hh_out, jintArray mm_out, jdoubleArray sss_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (year_out == 0 || month_out == 0 || dayOfMonth_out == 0 || hh_out == 0 || mm_out == 0 || sss_out == 0) {
        printf("Got NULL parameter passed to UTCToTimeComps2");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int year_len = (*env)->GetArrayLength(env, year_out);
    if (year_len < 1) {
        printf("year parameter passed in UTCToTimeComps2 is too small.");
        return;
    }

    int month_len = (*env)->GetArrayLength(env, month_out);
    if (month_len < 1) {
        printf("month parameter passed in UTCToTimeComps2 is too small.");
        return;
    }

    int dayOfMonth_len = (*env)->GetArrayLength(env, dayOfMonth_out);
    if (dayOfMonth_len < 1) {
        printf("dayOfMonth parameter passed in UTCToTimeComps2 is too small.");
        return;
    }

    int hh_len = (*env)->GetArrayLength(env, hh_out);
    if (hh_len < 1) {
        printf("hh parameter passed in UTCToTimeComps2 is too small.");
        return;
    }

    int mm_len = (*env)->GetArrayLength(env, mm_out);
    if (mm_len < 1) {
        printf("mm parameter passed in UTCToTimeComps2 is too small.");
        return;
    }

    int sss_len = (*env)->GetArrayLength(env, sss_out);
    if (sss_len < 1) {
        printf("sss parameter passed in UTCToTimeComps2 is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jint *year_outArray = (jint *)((*env)->GetIntArrayElements(env, year_out, NULL));
    if (year_outArray == NULL) {
        printf("Failed to get elements for year array.");
        return;
    }

    jint *month_outArray = (jint *)((*env)->GetIntArrayElements(env, month_out, NULL));
    if (month_outArray == NULL) {
        printf("Failed to get elements for month array.");
        return;
    }

    jint *dayOfMonth_outArray = (jint *)((*env)->GetIntArrayElements(env, dayOfMonth_out, NULL));
    if (dayOfMonth_outArray == NULL) {
        printf("Failed to get elements for dayOfMonth array.");
        return;
    }

    jint *hh_outArray = (jint *)((*env)->GetIntArrayElements(env, hh_out, NULL));
    if (hh_outArray == NULL) {
        printf("Failed to get elements for hh array.");
        return;
    }

    jint *mm_outArray = (jint *)((*env)->GetIntArrayElements(env, mm_out, NULL));
    if (mm_outArray == NULL) {
        printf("Failed to get elements for mm array.");
        return;
    }

    jdouble *sss_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, sss_out, NULL));
    if (sss_outArray == NULL) {
        printf("Failed to get elements for sss array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    UTCToTimeComps2(ds50UTC_in, year_outArray, month_outArray, dayOfMonth_outArray, hh_outArray, mm_outArray, sss_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, year_out, year_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, month_out, month_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, dayOfMonth_out, dayOfMonth_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, hh_out, hh_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, mm_out, mm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, sss_out, sss_outArray, 0);

}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_ThetaGrnwch(JNIEnv* env, jclass jc, jdouble ds50UT1_in, jlong lenvFk_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = ThetaGrnwch(ds50UT1_in, lenvFk_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_ThetaGrnwchFK4(JNIEnv* env, jclass jc, jdouble ds50UT1_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = ThetaGrnwchFK4(ds50UT1_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_ThetaGrnwchFK5(JNIEnv* env, jclass jc, jdouble ds50UT1_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = ThetaGrnwchFK5(ds50UT1_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TimeConvFrTo(JNIEnv* env, jclass jc, jint funcIdx_in, jdoubleArray frArr_in, jdoubleArray toArr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (frArr_in == 0 || toArr_out == 0) {
        printf("Got NULL parameter passed to TimeConvFrTo");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *frArr_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, frArr_in, NULL));
    if (frArr_inArray == NULL) {
        printf("Failed to get elements for frArr array.");
        return;
    }

    jdouble *toArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, toArr_out, NULL));
    if (toArr_outArray == NULL) {
        printf("Failed to get elements for toArr array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TimeConvFrTo(funcIdx_in, frArr_inArray, toArr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, toArr_out, toArr_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_Get6P(JNIEnv* env, jclass jc, jintArray startFrEpoch_out, jintArray stopFrEpoch_out, jdoubleArray startTime_out, jdoubleArray stopTime_out, jdoubleArray interval_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (startFrEpoch_out == 0 || stopFrEpoch_out == 0 || startTime_out == 0 || stopTime_out == 0 || interval_out == 0) {
        printf("Got NULL parameter passed to Get6P");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int startFrEpoch_len = (*env)->GetArrayLength(env, startFrEpoch_out);
    if (startFrEpoch_len < 1) {
        printf("startFrEpoch parameter passed in Get6P is too small.");
        return;
    }

    int stopFrEpoch_len = (*env)->GetArrayLength(env, stopFrEpoch_out);
    if (stopFrEpoch_len < 1) {
        printf("stopFrEpoch parameter passed in Get6P is too small.");
        return;
    }

    int startTime_len = (*env)->GetArrayLength(env, startTime_out);
    if (startTime_len < 1) {
        printf("startTime parameter passed in Get6P is too small.");
        return;
    }

    int stopTime_len = (*env)->GetArrayLength(env, stopTime_out);
    if (stopTime_len < 1) {
        printf("stopTime parameter passed in Get6P is too small.");
        return;
    }

    int interval_len = (*env)->GetArrayLength(env, interval_out);
    if (interval_len < 1) {
        printf("interval parameter passed in Get6P is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jint *startFrEpoch_outArray = (jint *)((*env)->GetIntArrayElements(env, startFrEpoch_out, NULL));
    if (startFrEpoch_outArray == NULL) {
        printf("Failed to get elements for startFrEpoch array.");
        return;
    }

    jint *stopFrEpoch_outArray = (jint *)((*env)->GetIntArrayElements(env, stopFrEpoch_out, NULL));
    if (stopFrEpoch_outArray == NULL) {
        printf("Failed to get elements for stopFrEpoch array.");
        return;
    }

    jdouble *startTime_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, startTime_out, NULL));
    if (startTime_outArray == NULL) {
        printf("Failed to get elements for startTime array.");
        return;
    }

    jdouble *stopTime_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, stopTime_out, NULL));
    if (stopTime_outArray == NULL) {
        printf("Failed to get elements for stopTime array.");
        return;
    }

    jdouble *interval_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, interval_out, NULL));
    if (interval_outArray == NULL) {
        printf("Failed to get elements for interval array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    Get6P(startFrEpoch_outArray, stopFrEpoch_outArray, startTime_outArray, stopTime_outArray, interval_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, startFrEpoch_out, startFrEpoch_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, stopFrEpoch_out, stopFrEpoch_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, startTime_out, startTime_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, stopTime_out, stopTime_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, interval_out, interval_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_Set6P(JNIEnv* env, jclass jc, jint startFrEpoch_in, jint stopFrEpoch_in, jdouble startTime_in, jdouble stopTime_in, jdouble interval_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    Set6P(startFrEpoch_in, stopFrEpoch_in, startTime_in, stopTime_in, interval_in);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_Get6PCardLine(JNIEnv* env, jclass jc, jbyteArray card6PLine_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card6PLine_out == 0) {
        printf("Got NULL parameter passed to Get6PCardLine");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *card6PLine_outArray = (jbyte *)((*env)->GetByteArrayElements(env, card6PLine_out, NULL));
    if (card6PLine_outArray == NULL) {
        printf("Failed to get elements for card6PLine array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    Get6PCardLine(card6PLine_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, card6PLine_out, card6PLine_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTimeFunc_TConTimeSpan(JNIEnv* env, jclass jc, jintArray numOfRecs_out, jdoubleArray frTimeDs50UTC_out, jdoubleArray toTimeDs50UTC_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (numOfRecs_out == 0 || frTimeDs50UTC_out == 0 || toTimeDs50UTC_out == 0) {
        printf("Got NULL parameter passed to TConTimeSpan");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int numOfRecs_len = (*env)->GetArrayLength(env, numOfRecs_out);
    if (numOfRecs_len < 1) {
        printf("numOfRecs parameter passed in TConTimeSpan is too small.");
        return;
    }

    int frTimeDs50UTC_len = (*env)->GetArrayLength(env, frTimeDs50UTC_out);
    if (frTimeDs50UTC_len < 1) {
        printf("frTimeDs50UTC parameter passed in TConTimeSpan is too small.");
        return;
    }

    int toTimeDs50UTC_len = (*env)->GetArrayLength(env, toTimeDs50UTC_out);
    if (toTimeDs50UTC_len < 1) {
        printf("toTimeDs50UTC parameter passed in TConTimeSpan is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jint *numOfRecs_outArray = (jint *)((*env)->GetIntArrayElements(env, numOfRecs_out, NULL));
    if (numOfRecs_outArray == NULL) {
        printf("Failed to get elements for numOfRecs array.");
        return;
    }

    jdouble *frTimeDs50UTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, frTimeDs50UTC_out, NULL));
    if (frTimeDs50UTC_outArray == NULL) {
        printf("Failed to get elements for frTimeDs50UTC array.");
        return;
    }

    jdouble *toTimeDs50UTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, toTimeDs50UTC_out, NULL));
    if (toTimeDs50UTC_outArray == NULL) {
        printf("Failed to get elements for toTimeDs50UTC array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TConTimeSpan(numOfRecs_outArray, frTimeDs50UTC_outArray, toTimeDs50UTC_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, numOfRecs_out, numOfRecs_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, frTimeDs50UTC_out, frTimeDs50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, toTimeDs50UTC_out, toTimeDs50UTC_outArray, 0);

}
// ========================= End of auto generated code ==========================
