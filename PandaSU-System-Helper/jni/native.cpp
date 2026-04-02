// PandaSU Zygisk Module - Magisk Zygisk API 实现
// 使用 Magisk Zygisk API + xhook PLT Hook 实现文件隐藏和属性伪装

#include <cstdlib>
#include <cstdio>
#include <unistd.h>
#include <fcntl.h>
#include <android/log.h>
#include <dlfcn.h>
#include <string.h>
#include <sys/stat.h>
#include <dirent.h>
#include <errno.h>
#include <fcntl.h>
#include <pthread.h>

#include "zygisk.hpp"
#include "xhook/xhook.h"

#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, "PandaSU-Zygisk", __VA_ARGS__)
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, "PandaSU-Zygisk", __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, "PandaSU-Zygisk", __VA_ARGS__)

// 全局 API 指针
static zygisk::Api* g_api = nullptr;
static JNIEnv* g_env = nullptr;

// ============ 隐藏配置 ============

// 需要隐藏的文件/目录名（部分匹配）
static const char* HIDE_NAMES[] = {
    // Root 相关
    "su", "magisk", ".magisk", "busybox", "ksu", "kernelsu",
    "modules", "magiskhide", "denylist",
    // Xposed 相关
    "lspd", "lsposed", "relsposed", "riru", "xposed", "edxp", "edxposed",
    " LSPosed", "XposedBridge", "XposedInstaller",
    // 其他 Root 工具
    "apatch", "kpwn", "shamiko",
    // 检测工具
    "com.now", "com.aliuoud", "com.android.leaname",
    "com.tsng.hidemyapplist", "icu.nullptr.applistdetector",
    "com.pikaz.rotator", "com.XiaoDaiJin", "core.app.system",
    "com.triplebeat.modulemanager", "com.topjohnwu.magisk",
    "de.robv.android.xposed", "org.meowcat.edxposed.manager",
    "org.lsposed.manager", "org.lsposed.lspd", "com.lsposed",
    "me.weishu.kernelsu", "me.weishu.exp", "me.weishu.kernelsu.app",
    "com.noshufou.android.su", "eu.chainfire.supersu",
    "com.kingroot", "com.kingouser", "scene", "now", "leaname",
    // 检测类应用
    "detector", " Detector", "root", " Root", "hide",
    // 玩机类
    "scene", "Scene", "awz", "AWZ", "爱玩机", "玩机",
    "lsp", "LSP", "xposed", "Xposed",
    // Magisk Manager
    "MagiskManager", "magiskmanager",
};

// 需要隐藏的路径前缀
static const char* HIDE_PATHS[] = {
    // Root 相关
    "/su/bin/su", "/su/su", "/sbin/su", "/system/bin/su", "/system/xbin/su",
    "/system/xbin/ksu", "/data/adb/su", "/data/adb/ksu", "/data/local/su",
    "/data/adb/magisk", "/sbin/.magisk", "/dev/.magisk",
    "/data/adb/busybox", "/system/bin/busybox", "/system/xbin/busybox",
    "/data/adb/modules", "/data/adb/ksu_bind", "/data/adb/magiskhide",
    // LSPosed/KernelSU
    "/data/adb/lspd", "/data/adb/relsposed", "/data/misc/lspd", "/data/adb/lsposed",
    // Xposed/LSPosed
    "/data/adb/lspd", "/data/adb/relsposed", "/data/misc/lspd", "/data/adb/lsposed",
    "/data/adb/modules/lspd", "/data/adb/modules/riru", "/data/adb/riru",
    "/data/adb/xposed", "/data/adb/modules/xposed", "/data/adb/modules/riru_edxposed",
    "/data/adb/modules/edxposed", "/data/adb/edxposed",
    "/data/adb/lsposed", "/data/misc/lsposed",
    // KernelSU
    "/dev/ksu", "/sys/kernel/ksu", "/sys/module/ksu",
    // APatch/KPwn
    "/data/adb/apatch", "/data/adb/kpwn", "/dev/apatch", "/sys/module/apatch",
    // 玩机/检测应用
    "/data/adb/scene", "/data/data/com.aliuoud", "/data/app/com.aliuoud",
    "/data/adb/now", "/data/data/com.now", "/data/app/com.now",
    "/data/data/com.android.leaname", "/data/app/com.android.leaname",
    "/data/data/com.pikaz.rotator", "/data/app/com.pikaz.rotator",
    "/data/data/com.XiaoDaiJin", "/data/app/com.XiaoDaiJin",
    "/data/data/core.app.system", "/data/app/core.app.system",
    "/data/data/com.tsng.hidemyapplist", "/data/app/com.tsng.hidemyapplist",
    "/data/data/icu.nullptr.applistdetector", "/data/app/icu.nullptr.applistdetector",
    // LSPosed Manager
    "/data/data/org.lsposed.manager", "/data/data/org.lsposed.lspd",
    "/data/app/org.lsposed.manager", "/data/app/org.lsposed.lspd",
    "/data/user/0/org.lsposed.manager", "/data/user/0/org.lsposed.lspd",
    "/data/media/0/Android/data/org.lsposed.manager",
    // KernelSU Manager
    "/data/data/me.weishu.kernelsu", "/data/app/me.weishu.kernelsu",
    "/data/user/0/me.weishu.kernelsu",
    // Magisk
    "/data/data/com.topjohnwu.magisk", "/data/app/com.topjohnwu.magisk",
    "/data/user/0/com.topjohnwu.magisk",
    // Shamiko
    "/data/adb/shamiko", "/data/misc/shamiko",
};

// 需要伪装的属性
static const char* SPOOF_PROPS[][2] = {
    {"ro.boot.vbmeta.digest", ""},
    {"ro.boot.veritymode", ""},
    {"ro.system.build.fingerprint", "google/walleye/walleye:8.1.0/OPM6.171019.030.H1/4821327:user/release-keys"},
    {"ro.build.fingerprint", "google/walleye/walleye:8.1.0/OPM6.171019.030.H1/4821327:user/release-keys"},
};

// ============ 辅助函数 ============

static bool should_hide_name(const char* name) {
    if (name == nullptr) return false;
    for (size_t i = 0; i < sizeof(HIDE_NAMES) / sizeof(HIDE_NAMES[0]); i++) {
        if (strstr(name, HIDE_NAMES[i]) != nullptr) {
            return true;
        }
    }
    return false;
}

static bool should_hide_path(const char* path) {
    if (path == nullptr) return false;
    for (size_t i = 0; i < sizeof(HIDE_PATHS) / sizeof(HIDE_PATHS[0]); i++) {
        if (strncmp(path, HIDE_PATHS[i], strlen(HIDE_PATHS[i])) == 0) {
            return true;
        }
    }
    return false;
}

static bool should_spoof_prop(const char* name) {
    if (name == nullptr) return false;
    for (size_t i = 0; i < sizeof(SPOOF_PROPS) / sizeof(SPOOF_PROPS[0]); i++) {
        if (strcmp(name, SPOOF_PROPS[i][0]) == 0) {
            return true;
        }
    }
    return false;
}

static const char* get_spoof_value(const char* name) {
    for (size_t i = 0; i < sizeof(SPOOF_PROPS) / sizeof(SPOOF_PROPS[0]); i++) {
        if (strcmp(name, SPOOF_PROPS[i][0]) == 0) {
            return SPOOF_PROPS[i][1];
        }
    }
    return "";
}

// ============ Hook 函数声明 ============

// openat hook
static int (*original_openat)(int, const char*, int) = nullptr;
static int my_openat(int dirfd, const char* pathname, int flags);

// open hook  
static int (*original_open)(const char*, int) = nullptr;
static int my_open(const char* pathname, int flags);

// access hook
static int (*original_access)(const char*, int) = nullptr;
static int my_access(const char* pathname, int mode);

// faccessat hook
static int (*original_faccessat)(int, const char*, int, int) = nullptr;
static int my_faccessat(int dirfd, const char* pathname, int mode, int flags);

// stat hook
static int (*original_stat)(const char*, struct stat*) = nullptr;
static int my_stat(const char* pathname, struct stat* statbuf);

// lstat hook
static int (*original_lstat)(const char*, struct stat*) = nullptr;
static int my_lstat(const char* pathname, struct stat* statbuf);

// fstatat hook
static int (*original_fstatat)(int, const char*, struct stat*, int) = nullptr;
static int my_fstatat(int dirfd, const char* pathname, struct stat* statbuf, int flags);

// readdir hook
static struct dirent* (*original_readdir)(DIR*) = nullptr;
static struct dirent* my_readdir(DIR* dirp);

// __system_property_get hook
static int (*original_system_property_get)(const char*, char*) = nullptr;
static int my_system_property_get(const char* name, char* value);

// ============ Hook 实现 ============

// Hook 后的 openat 函数
static int my_openat(int dirfd, const char* pathname, int flags) {
    if (pathname && should_hide_path(pathname)) {
        LOGD("[openat] Hiding: %s", pathname);
        errno = ENOENT;
        return -1;
    }
    
    if (original_openat) {
        return original_openat(dirfd, pathname, flags);
    }
    return -1;
}

// Hook 后的 open 函数
static int my_open(const char* pathname, int flags) {
    if (pathname && should_hide_path(pathname)) {
        LOGD("[open] Hiding: %s", pathname);
        errno = ENOENT;
        return -1;
    }
    
    if (original_open) {
        return original_open(pathname, flags);
    }
    return -1;
}

// Hook 后的 access 函数
static int my_access(const char* pathname, int mode) {
    if (pathname && should_hide_path(pathname)) {
        LOGD("[access] Hiding: %s", pathname);
        errno = ENOENT;
        return -1;
    }
    
    if (original_access) {
        return original_access(pathname, mode);
    }
    return -1;
}

// Hook 后的 faccessat 函数
static int my_faccessat(int dirfd, const char* pathname, int mode, int flags) {
    if (pathname && should_hide_path(pathname)) {
        LOGD("[faccessat] Hiding: %s", pathname);
        errno = ENOENT;
        return -1;
    }
    
    if (original_faccessat) {
        return original_faccessat(dirfd, pathname, mode, flags);
    }
    return -1;
}

// Hook 后的 stat 函数
static int my_stat(const char* pathname, struct stat* statbuf) {
    if (pathname && should_hide_path(pathname)) {
        LOGD("[stat] Hiding: %s", pathname);
        errno = ENOENT;
        return -1;
    }
    
    if (original_stat) {
        return original_stat(pathname, statbuf);
    }
    return -1;
}

// Hook 后的 lstat 函数
static int my_lstat(const char* pathname, struct stat* statbuf) {
    if (pathname && should_hide_path(pathname)) {
        LOGD("[lstat] Hiding: %s", pathname);
        errno = ENOENT;
        return -1;
    }
    
    if (original_lstat) {
        return original_lstat(pathname, statbuf);
    }
    return -1;
}

// Hook 后的 fstatat 函数
static int my_fstatat(int dirfd, const char* pathname, struct stat* statbuf, int flags) {
    if (pathname && should_hide_path(pathname)) {
        LOGD("[fstatat] Hiding: %s", pathname);
        errno = ENOENT;
        return -1;
    }
    
    if (original_fstatat) {
        return original_fstatat(dirfd, pathname, statbuf, flags);
    }
    return -1;
}

// Hook 后的 readdir 函数
static struct dirent* my_readdir(DIR* dirp) {
    if (original_readdir) {
        struct dirent* entry = original_readdir(dirp);
        while (entry && should_hide_name(entry->d_name)) {
            LOGD("[readdir] Hiding: %s", entry->d_name);
            entry = original_readdir(dirp);
        }
        return entry;
    }
    return nullptr;
}

// Hook 后的 __system_property_get 函数
static int my_system_property_get(const char* name, char* value) {
    if (name && should_spoof_prop(name)) {
        const char* spoof_value = get_spoof_value(name);
        strncpy(value, spoof_value, 31);
        value[31] = '\0';
        LOGD("[prop_get] Spoofing %s -> %s", name, spoof_value);
        return strlen(value);
    }
    
    if (original_system_property_get) {
        return original_system_property_get(name, value);
    }
    return 0;
}

// ============ Hook 设置 ============

static bool g_hooks_setup = false;

static void setup_hooks() {
    LOGI(">>> setup_hooks: Registering xhook hooks...");
    
    // 注册 openat hook
    xhook_register("libc\\.so$", "openat", (void*)my_openat, (void**)&original_openat);
    
    // 注册 open hook
    xhook_register("libc\\.so$", "open", (void*)my_open, (void**)&original_open);
    
    // 注册 access hook
    xhook_register("libc\\.so$", "access", (void*)my_access, (void**)&original_access);
    
    // 注册 faccessat hook
    xhook_register("libc\\.so$", "faccessat", (void*)my_faccessat, (void**)&original_faccessat);
    
    // 注册 stat hook
    xhook_register("libc\\.so$", "stat", (void*)my_stat, (void**)&original_stat);
    
    // 注册 lstat hook
    xhook_register("libc\\.so$", "lstat", (void*)my_lstat, (void**)&original_lstat);
    
    // 注册 fstatat hook
    xhook_register("libc\\.so$", "fstatat", (void*)my_fstatat, (void**)&original_fstatat);
    
    // 注册 readdir64 hook
    xhook_register("libc\\.so$", "readdir64", (void*)my_readdir, (void**)&original_readdir);
    
    // 注册 __system_property_get hook
    xhook_register("libc\\.so$", "__system_property_get", (void*)my_system_property_get, (void**)&original_system_property_get);
    
    // 刷新 hook
    int ret = xhook_refresh(0);
    LOGI(">>> xhook_refresh result: %d", ret);
    
    g_hooks_setup = true;
    LOGI(">>> setup_hooks complete!");
}

// ============ Zygisk 模块主类 ============

class PandaSUModule : public zygisk::ModuleBase {
public:
    void onLoad(zygisk::Api* api, JNIEnv* env) override {
        g_api = api;
        g_env = env;
        LOGI("=== PandaSU Module loaded! ===");
        
        // 在模块加载时设置 hook
        setup_hooks();
        
        // 获取模块目录
        int dir_fd = api->getModuleDir();
        if (dir_fd >= 0) {
            LOGI("Module dir fd: %d", dir_fd);
            close(dir_fd);
        }
        
        // 获取进程标志
        uint32_t flags = api->getFlags();
        LOGI("Process flags: 0x%08x", flags);
        
        if (flags & zygisk::PROCESS_GRANTED_ROOT) {
            LOGI(">>> Process has root granted");
        }
        if (flags & zygisk::PROCESS_ON_DENYLIST) {
            LOGI(">>> Process is on denylist");
        }
    }
    
    void preAppSpecialize(zygisk::AppSpecializeArgs* args) override {
        // 在应用进程 specialization 之前设置 hook
        setup_hooks();
        
        jstring jnice_name = args->nice_name;
        jstring japp_data_dir = args->app_data_dir;
        
        const char* nice_name = jnice_name ? g_env->GetStringUTFChars(jnice_name, nullptr) : nullptr;
        const char* app_data_dir = japp_data_dir ? g_env->GetStringUTFChars(japp_data_dir, nullptr) : nullptr;
        
        LOGI("[preApp] uid=%d, nice_name=%s, app_data=%s", 
             args->uid, nice_name ? nice_name : "null", 
             app_data_dir ? app_data_dir : "null");
        
        if (nice_name) g_env->ReleaseStringUTFChars(jnice_name, nice_name);
        if (app_data_dir) g_env->ReleaseStringUTFChars(japp_data_dir, app_data_dir);
    }
    
    void postAppSpecialize(const zygisk::AppSpecializeArgs* args) override {
        LOGI("[postApp] uid=%d", args->uid);
    }
    
    void preServerSpecialize(zygisk::ServerSpecializeArgs* args) override {
        // 在 system_server 进程 specialization 之前设置 hook
        setup_hooks();
        
        LOGI("[preServer] uid=%d, gid=%d", args->uid, args->gid);
    }
    
    void postServerSpecialize(const zygisk::ServerSpecializeArgs* args) override {
        LOGI("[postServer] uid=%d, gid=%d", args->uid, args->gid);
    }
};

// 注册模块
REGISTER_ZYGISK_MODULE(PandaSUModule)

// ============ Root Companion Handler ============

static void companion_handler(int client) {
    LOGI("Companion handler called, client fd: %d", client);
    
    char buf[256];
    ssize_t n;
    while ((n = read(client, buf, sizeof(buf) - 1)) > 0) {
        buf[n] = '\0';
        LOGI("Received: %s", buf);
        
        // 处理请求
        const char* response = "OK";
        write(client, response, strlen(response));
    }
    
    close(client);
}

REGISTER_ZYGISK_COMPANION(companion_handler)
