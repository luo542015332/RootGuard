#include <jni.h>
#include <android/log.h>
#include <string>
#include <vector>
#include <pthread.h>
#include <string.h>
#include "logging.hpp"
#include "utils.hpp"

#define LOG_TAG "TurboNative"

static std::vector<std::string> g_targets;
static bool g_enabled = false;
static pthread_mutex_t g_mutex = PTHREAD_MUTEX_INITIALIZER;

static bool pkgInTargets(const std::string &name) {
    for (const auto &p : g_targets) if (p == name) return true;
    return false;
}

// ============================================================
// TurboNative native methods
// ============================================================
extern "C" {

JNIEXPORT jint JNICALL
Java_com_pandasu_turbo_lspoed_TurboNative_init(JNIEnv *env, jclass clazz) {
    __android_log_print(ANDROID_LOG_INFO, LOG_TAG, "init() called");
    pthread_mutex_lock(&g_mutex);
    g_enabled = true;
    pthread_mutex_unlock(&g_mutex);

    // Call the native hook setup in turbo_ns namespace
    extern int turbo_ns_initHooks();
    int ret = turbo_ns_initHooks();
    if (ret == 0) {
        __android_log_print(ANDROID_LOG_INFO, LOG_TAG, "initHooks OK");
    } else {
        __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, "initHooks failed: %d", ret);
    }
    return ret;
}

JNIEXPORT void JNICALL
Java_com_pandasu_turbo_lspoed_TurboNative_setTargetPackages(JNIEnv *env, jclass clazz,
                                                              jobjectArray packages) {
    pthread_mutex_lock(&g_mutex);
    g_targets.clear();
    if (packages) {
        jsize len = env->GetArrayLength(packages);
        for (jsize i = 0; i < len; i++) {
            jstring pkg = static_cast<jstring>(env->GetObjectArrayElement(packages, i));
            if (pkg) {
                const char *n = env->GetStringUTFChars(pkg, nullptr);
                if (n) { g_targets.emplace_back(n); env->ReleaseStringUTFChars(pkg, n); }
            }
        }
    }
    __android_log_print(ANDROID_LOG_INFO, LOG_TAG, "setTargetPackages: %zu", g_targets.size());
    pthread_mutex_unlock(&g_mutex);
}

JNIEXPORT jint JNICALL
Java_com_pandasu_turbo_lspoed_TurboNative_processPackage(JNIEnv *env, jclass clazz,
                                                          jstring packageName) {
    if (!packageName) return -1;
    const char *pkg = env->GetStringUTFChars(packageName, nullptr);
    if (!pkg) return -1;

    pthread_mutex_lock(&g_mutex);
    bool enabled = g_enabled;
    bool target = pkgInTargets(std::string(pkg));
    pthread_mutex_unlock(&g_mutex);

    if (enabled && target) {
        __android_log_print(ANDROID_LOG_INFO, LOG_TAG, "processPackage: %s", pkg);
        extern int turbo_ns_processPackageForIsolation(const char*, int);
        int r = turbo_ns_processPackageForIsolation(pkg, 1);
        env->ReleaseStringUTFChars(packageName, pkg);
        return r;
    }

    env->ReleaseStringUTFChars(packageName, pkg);
    return 0;
}

JNIEXPORT jboolean JNICALL
Java_com_pandasu_turbo_lspoed_TurboNative_isPackageTarget(JNIEnv *env, jclass clazz,
                                                           jstring packageName) {
    if (!packageName) return JNI_FALSE;
    const char *pkg = env->GetStringUTFChars(packageName, nullptr);
    if (!pkg) return JNI_FALSE;
    pthread_mutex_lock(&g_mutex);
    bool found = pkgInTargets(std::string(pkg));
    pthread_mutex_unlock(&g_mutex);
    env->ReleaseStringUTFChars(packageName, pkg);
    return found ? JNI_TRUE : JNI_FALSE;
}

JNIEXPORT jboolean JNICALL
Java_com_pandasu_turbo_lspoed_TurboNative_commitHooks(JNIEnv *env, jclass clazz) {
    // Hooks are committed inside initHooks() already.
    // This is a no-op for compatibility.
    return JNI_TRUE;
}

JNIEXPORT void JNICALL
Java_com_pandasu_turbo_lspoed_TurboNative_unload(JNIEnv *env, jclass clazz) {
    __android_log_print(ANDROID_LOG_INFO, LOG_TAG, "unload()");
    pthread_mutex_lock(&g_mutex);
    g_enabled = false;
    g_targets.clear();
    pthread_mutex_unlock(&g_mutex);
    extern void turbo_ns_resetIsolation();
    turbo_ns_resetIsolation();
}

} // extern "C"
