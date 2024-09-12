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

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_LoadEnvConstDll(JNIEnv* env, jclass jc)
{
    LoadEnvConstDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadEnvConstDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = EnvInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to EnvGetInfo");
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
    EnvGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvLoadFile(JNIEnv* env, jclass jc, jstring envFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (envFile_in == 0) {
        printf("Got NULL parameter passed to EnvLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *envFile_inArray = (char *)((*env)->GetStringUTFChars(env, envFile_in, NULL));
    if (envFile_inArray == NULL) {
        printf("Failed to get elements for envFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = EnvLoadFile(envFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvSaveFile(JNIEnv* env, jclass jc, jstring envConstFile_in, jint saveMode_in, jint saveForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (envConstFile_in == 0) {
        printf("Got NULL parameter passed to EnvSaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *envConstFile_inArray = (char *)((*env)->GetStringUTFChars(env, envConstFile_in, NULL));
    if (envConstFile_inArray == NULL) {
        printf("Failed to get elements for envConstFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = EnvSaveFile(envConstFile_inArray, saveMode_in, saveForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvGetFkIdx(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = EnvGetFkIdx();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvSetFkIdx(JNIEnv* env, jclass jc, jint xf_FkMod_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EnvSetFkIdx(xf_FkMod_in);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvGetGeoIdx(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = EnvGetGeoIdx();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvSetGeoIdx(JNIEnv* env, jclass jc, jint xf_GeoMod_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EnvSetGeoIdx(xf_GeoMod_in);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvGetGeoStr(JNIEnv* env, jclass jc, jbyteArray geoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (geoStr_out == 0) {
        printf("Got NULL parameter passed to EnvGetGeoStr");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *geoStr_outArray = (jbyte *)((*env)->GetByteArrayElements(env, geoStr_out, NULL));
    if (geoStr_outArray == NULL) {
        printf("Failed to get elements for geoStr array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EnvGetGeoStr(geoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, geoStr_out, geoStr_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvSetGeoStr(JNIEnv* env, jclass jc, jstring geoStr_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (geoStr_in == 0) {
        printf("Got NULL parameter passed to EnvSetGeoStr");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *geoStr_inArray = (char *)((*env)->GetStringUTFChars(env, geoStr_in, NULL));
    if (geoStr_inArray == NULL) {
        printf("Failed to get elements for geoStr array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EnvSetGeoStr(geoStr_inArray);

}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvGetGeoConst(JNIEnv* env, jclass jc, jint xf_GeoCon_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = EnvGetGeoConst(xf_GeoCon_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvGetFkConst(JNIEnv* env, jclass jc, jint xf_FkCon_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = EnvGetFkConst(xf_FkCon_in);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvGetFkPtr(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = EnvGetFkPtr();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvSetEarthShape(JNIEnv* env, jclass jc, jint earthShape_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EnvSetEarthShape(earthShape_in);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniEnvConst_EnvGetEarthShape(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = EnvGetEarthShape();

    return ret;
}
// ========================= End of auto generated code ==========================
