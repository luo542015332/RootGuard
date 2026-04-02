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
#include <link.h>
#include <sys/mman.h>

#include "zygisk.hpp"
#include "xhook/xhook.h"

#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, "PandaSU-Zygisk", __VA_ARGS__)
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, "PandaSU-Zygisk", __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, "PandaSU-Zygisk", __VA_ARGS__)

// 全局 API 指针
static zygisk::Api* g_api = nullptr;
static JNIEnv* g_env = nullptr;

// ============ Shamiko 核心配置 ============

// 需要从 maps 和 dl_iterate_phdr 中隐藏的模块路径
static const char* HIDE_SO_PATTERNS[] = {
    "panda_zygisk",
    "libzygisk",
    "lspd",
    "lsposed",
    "riru",
    "xposed",
    "edxposed",
    "magisk",
    "ksu",
    "kernelsu",
    "apatch",
    "shamiko",
    "tricky_store",
};

// 需要从 /proc/self/maps 中隐藏的路径
static const char* HIDE_MAPS_PATTERNS[] = {
    "/data/adb/modules/",
    "/data/adb/lspd",
    "/data/adb/lsposed",
    "/data/adb/magisk",
    "/data/adb/ksu",
    "/data/adb/kernelsu",
    "/data/adb/apatch",
    "/data/adb/shamiko",
    "libpanda_zygisk.so",
    "liblspd.so",
    "libriru.so",
    "libxposed.so",
    "libmagisk",
    "libksu",
    "libapatch",
};

// ============ Shamiko: dl_iterate_phdr Hook ============

static int (*original_dl_iterate_phdr)(int (*)(struct dl_phdr_info*, size_t, void*), void*) = nullptr;

static bool should_hide_so(const char* path) {
    if (!path) return false;
    for (size_t i = 0; i < sizeof(HIDE_SO_PATTERNS) / sizeof(HIDE_SO_PATTERNS[0]); i++) {
        if (strstr(path, HIDE_SO_PATTERNS[i]) != nullptr) {
            return true;
        }
    }
    return false;
}

struct dl_callback_wrapper_args {
    int (*original_callback)(struct dl_phdr_info*, size_t, void*);
    void* original_data;
};

static int dl_callback_wrapper(struct dl_phdr_info* info, size_t size, void* data) {
    auto* args = (dl_callback_wrapper_args*)data;
    
    // 过滤隐藏的 .so
    if (should_hide_so(info->dlpi_name)) {
        LOGD("[dl_iterate] Hiding: %s", info->dlpi_name);
        return 0;  // 继续迭代，但跳过此项
    }
    
    return args->original_callback(info, size, args->original_data);
}

static int my_dl_iterate_phdr(int (*callback)(struct dl_phdr_info*, size_t, void*), void* data) {
    if (!original_dl_iterate_phdr || !callback) {
        return 0;
    }
    
    dl_callback_wrapper_args args = { callback, data };
    return original_dl_iterate_phdr(dl_callback_wrapper, &args);
}

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
    // 自定义模块（Hunter检测到）
    "RescueBrick",
};

// 需要伪装的属性
static const char* SPOOF_PROPS[][2] = {
    // Bootloader 检测相关
    {"ro.boot.vbmeta.digest", ""},
    {"ro.boot.veritymode", ""},
    {"ro.boot.verifiedbootstate", "green"},
    {"ro.boot.flash.locked", "1"},
    {"ro.boot.dtb.avg", ""},
    {"persist.bootanim.bootcheck", ""},
    {"ro.boot.bootreason", ""},
    
    // Fingerprint 伪装
    {"ro.system.build.fingerprint", "google/walleye/walleye:8.1.0/OPM6.171019.030.H1/4821327:user/release-keys"},
    {"ro.build.fingerprint", "google/walleye/walleye:8.1.0/OPM6.171019.030.H1/4821327:user/release-keys"},
    
    // 华为设备额外属性
    {"ro.boot.logical.bootseries", "1"},
    {"ro.boot.huawei.hw碟", ""},
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

// ============ 前向声明 ============

static bool is_mounts_path(const char* path);
static void track_fd(int fd, const char* path);

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
    
    int fd = -1;
    if (original_openat) {
        fd = original_openat(dirfd, pathname, flags);
    }
    
    // 跟踪 /proc/mounts 和 /proc/self/maps 的 fd
    if (fd >= 0 && is_mounts_path(pathname)) {
        track_fd(fd, pathname);
        LOGD("[openat] Tracking fd=%d for path=%s", fd, pathname);
    }
    
    return fd;
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

// ============ /proc/mounts 过滤 ============

// 跟踪 openat 打开的 fd 对应的路径（仅 /proc/mounts 和 /proc/self/mounts）
#define MAX_FD_TRACK 64
static int tracked_fds[MAX_FD_TRACK];
static char tracked_paths[MAX_FD_TRACK][256];
static int tracked_fd_count = 0;

static bool is_mounts_path(const char* path) {
    if (!path) return false;
    return strcmp(path, "/proc/mounts") == 0 ||
           strcmp(path, "/proc/self/mounts") == 0 ||
           strcmp(path, "/proc/self/mountinfo") == 0 ||
           strcmp(path, "/proc/self/maps") == 0 ||
           (strstr(path, "/proc/") != nullptr && strstr(path, "/mount") != nullptr);
}

static bool is_maps_path(const char* path) {
    if (!path) return false;
    return strcmp(path, "/proc/self/maps") == 0 ||
           (strstr(path, "/proc/") != nullptr && strstr(path, "/maps") != nullptr);
}

static void track_fd(int fd, const char* path) {
    if (fd < 0 || !is_mounts_path(path)) return;
    // 如果已存在则更新
    for (int i = 0; i < tracked_fd_count && i < MAX_FD_TRACK; i++) {
        if (tracked_fds[i] == fd) {
            return;
        }
    }
    if (tracked_fd_count < MAX_FD_TRACK) {
        tracked_fds[tracked_fd_count] = fd;
        strncpy(tracked_paths[tracked_fd_count], path, 255);
        tracked_paths[tracked_fd_count][255] = '\0';
        tracked_fd_count++;
        LOGD("[track] fd=%d -> %s", fd, path);
    }
}

static void untrack_fd(int fd) {
    for (int i = 0; i < tracked_fd_count && i < MAX_FD_TRACK; i++) {
        if (tracked_fds[i] == fd) {
            tracked_fds[i] = -1;
            tracked_paths[i][0] = '\0';
            break;
        }
    }
}

static bool is_mounts_fd(int fd) {
    if (fd < 0) return false;
    for (int i = 0; i < tracked_fd_count && i < MAX_FD_TRACK; i++) {
        if (tracked_fds[i] == fd) return true;
    }
    return false;
}

// 过滤 mounts 内容中的敏感行
static bool is_mounts_line_sensitive(const char* line) {
    if (!line) return false;
    return strstr(line, "adb/modules") != nullptr ||
           strstr(line, "magisk") != nullptr ||
           strstr(line, "kernelsu") != nullptr ||
           strstr(line, "/ksu") != nullptr ||
           strstr(line, "lspd") != nullptr ||
           strstr(line, "lsposed") != nullptr ||
           strstr(line, "xposed") != nullptr ||
           strstr(line, "apatch") != nullptr ||
           strstr(line, "shamiko") != nullptr;
}

// 过滤 maps 内容中的敏感行（Shamiko 核心）
static bool is_maps_line_sensitive(const char* line) {
    if (!line) return false;
    for (size_t i = 0; i < sizeof(HIDE_MAPS_PATTERNS) / sizeof(HIDE_MAPS_PATTERNS[0]); i++) {
        if (strstr(line, HIDE_MAPS_PATTERNS[i]) != nullptr) {
            return true;
        }
    }
    return false;
}

// read hook - 过滤 /proc/mounts 和 /proc/self/maps 内容
static ssize_t (*original_read)(int, void*, size_t) = nullptr;
static ssize_t my_read(int fd, void* buf, size_t count) {
    if (original_read && is_mounts_fd(fd)) {
        ssize_t n = original_read(fd, buf, count);
        if (n > 0) {
            // 获取路径判断是 mounts 还是 maps
            char path[256] = {0};
            for (int i = 0; i < tracked_fd_count && i < MAX_FD_TRACK; i++) {
                if (tracked_fds[i] == fd) {
                    strncpy(path, tracked_paths[i], 255);
                    break;
                }
            }
            
            bool is_maps = is_maps_path(path);
            char* data = (char*)buf;
            char line_buf[1024];
            int line_pos = 0;
            char* dst = data;
            
            for (ssize_t i = 0; i < n; i++) {
                if (data[i] == '\n') {
                    line_buf[line_pos] = '\0';
                    bool sensitive = is_maps ? is_maps_line_sensitive(line_buf) : is_mounts_line_sensitive(line_buf);
                    if (!sensitive) {
                        memcpy(dst, line_buf, line_pos);
                        dst += line_pos;
                        *dst = '\n';
                        dst++;
                    } else {
                        LOGD("[%s] Filtered: %.60s", is_maps ? "maps" : "mounts", line_buf);
                    }
                    line_pos = 0;
                } else {
                    if (line_pos < 1023) {
                        line_buf[line_pos] = data[i];
                        line_pos++;
                    }
                }
            }
            ssize_t filtered = dst - data;
            return filtered > 0 ? filtered : n;
        }
        return n;
    }
    if (original_read) return original_read(fd, buf, count);
    return -1;
}

// close hook - 清理 fd 跟踪
static int (*original_close)(int) = nullptr;
static int my_close(int fd) {
    untrack_fd(fd);
    if (original_close) return original_close(fd);
    return -1;
}

// ============ Hook 设置 ============

static bool g_hooks_setup = false;
static bool g_should_hook = false;  // 只对检测器应用 hook

// 检测器包名列表 - 只对这些应用启用 hook
static const char* DETECTOR_PACKAGES[] = {
    "com.zhenxi.hunter",               // Hunter
    "icu.nullptr.applistdetector",     // AppListDetector
    "com.oaseng.apecheck",             // ApeCheck
    "io.github.nitsuya.donottryaccessibility",
    "com.scottyab.rootbeer.sample",    // RootBeer
    "com.joeykrim.rootcheck",          // Root Checker
    "com.amphoras.hidemyroothelper",   // RootCloak
};

static bool is_detector_app(const char* nice_name) {
    if (!nice_name) return false;
    for (size_t i = 0; i < sizeof(DETECTOR_PACKAGES) / sizeof(DETECTOR_PACKAGES[0]); i++) {
        if (strcmp(nice_name, DETECTOR_PACKAGES[i]) == 0) {
            return true;
        }
    }
    return false;
}

static void setup_hooks() {
    if (g_hooks_setup) return;
    g_hooks_setup = true;
    
    LOGI(">>> setup_hooks: Registering xhook hooks...");
    
    // 注册 openat hook - 同时匹配 lib64/libc.so 和 lib/libc.so
    xhook_register(".*/libc\\.so$", "openat", (void*)my_openat, (void**)&original_openat);
    
    // 注册 open hook
    xhook_register(".*/libc\\.so$", "open", (void*)my_open, (void**)&original_open);
    
    // 注册 access hook
    xhook_register(".*/libc\\.so$", "access", (void*)my_access, (void**)&original_access);
    
    // 注册 faccessat hook
    xhook_register(".*/libc\\.so$", "faccessat", (void*)my_faccessat, (void**)&original_faccessat);
    
    // 注册 stat hook
    xhook_register(".*/libc\\.so$", "stat", (void*)my_stat, (void**)&original_stat);
    
    // 注册 lstat hook
    xhook_register(".*/libc\\.so$", "lstat", (void*)my_lstat, (void**)&original_lstat);
    
    // 注册 fstatat hook
    xhook_register(".*/libc\\.so$", "fstatat", (void*)my_fstatat, (void**)&original_fstatat);
    
    // 注册 readdir64 hook
    xhook_register(".*/libc\\.so$", "readdir64", (void*)my_readdir, (void**)&original_readdir);
    
    // 注册 __system_property_get hook
    xhook_register(".*/libc\\.so$", "__system_property_get", (void*)my_system_property_get, (void**)&original_system_property_get);
    
    // /proc/mounts 和 /proc/self/maps 过滤 hooks
    xhook_register(".*/libc\\.so$", "read", (void*)my_read, (void**)&original_read);
    xhook_register(".*/libc\\.so$", "close", (void*)my_close, (void**)&original_close);
    
    // Shamiko: dl_iterate_phdr Hook（隐藏模块 .so 列表）
    xhook_register(".*/libc\\.so$", "dl_iterate_phdr", (void*)my_dl_iterate_phdr, (void**)&original_dl_iterate_phdr);
    
    // 刷新 hook
    int ret = xhook_refresh(0);
    LOGI(">>> xhook_refresh result: %d", ret);
    LOGI(">>> setup_hooks complete!");
}

// ============ Zygisk 模块主类 ============

class PandaSUModule : public zygisk::ModuleBase {
public:
    void onLoad(zygisk::Api* api, JNIEnv* env) override {
        g_api = api;
        g_env = env;
        LOGI("=== PandaSU Module loaded! ===");
        // ⚠️ 不在 onLoad 中设置 hook！只对检测器应用生效
        
        int dir_fd = api->getModuleDir();
        if (dir_fd >= 0) {
            LOGI("Module dir fd: %d", dir_fd);
            close(dir_fd);
        }
    }
    
    void preAppSpecialize(zygisk::AppSpecializeArgs* args) override {
        jstring jnice_name = args->nice_name;
        const char* nice_name = jnice_name ? g_env->GetStringUTFChars(jnice_name, nullptr) : nullptr;
        
        LOGI("[preApp] uid=%d, nice_name=%s", args->uid, nice_name ? nice_name : "null");
        
        // ✅ 对所有应用启用 Hook（测试用）
        LOGI(">>> Enabling hooks for: %s", nice_name ? nice_name : "all");
        g_should_hook = true;
        setup_hooks();
        
        if (nice_name) g_env->ReleaseStringUTFChars(jnice_name, nice_name);
    }
    
    void postAppSpecialize(const zygisk::AppSpecializeArgs* args) override {
        LOGI("[postApp] uid=%d", args->uid);
    }
    
    void preServerSpecialize(zygisk::ServerSpecializeArgs* args) override {
        // system_server 不需要 hook（PMS Hook 由 LSPosed 模块处理）
        LOGI("[preServer] uid=%d, gid=%d (no hooks for system_server)", args->uid, args->gid);
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
