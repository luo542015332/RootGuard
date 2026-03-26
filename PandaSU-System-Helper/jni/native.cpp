// PandaSU Zygisk Module - ZygiskNext API 实现
// 使用 ZygiskNext API 实现文件隐藏、属性伪装和应用列表过滤

#include <cstdlib>
#include <cstdio>
#include <unistd.h>
#include <fcntl.h>
#include <android/log.h>
#include <dlfcn.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/system_properties.h>
#include <sys/wait.h>
#include <errno.h>
#include <dirent.h>
#include <stdarg.h>

#include "zygisk_next_api.h"

#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, "PandaSU-ZygiskNext", __VA_ARGS__)
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, "PandaSU-ZygiskNext", __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, "PandaSU-ZygiskNext", __VA_ARGS__)

// 全局 API 表
static ZygiskNextAPI api_table;

// ============ 隐藏模式配置 ============

// 需要在 getdents64 中过滤的文件名（简短形式，用于目录遍历）
static const char* HIDE_NAMES[] = {
    // Root 相关
    "su", "magisk", ".magisk", "busybox", "ksu", "modules",
    // LSPosed 相关
    "lspd", "lsposed", "relsposed", "riru", "xposed", "edxp", "edxposed",
    // APatch
    "apatch", "kpwn",
    // 检测工具
    "com.now", "com.aliuoud", "com.android.leaname", "com.tsng.hidemyapplist", "icu.nullptr.applistdetector",
    // 核心破解相关
    "com.pikaz.rotator", "com.XiaoDaiJin", "core.app.system", "com.triplebeat.modulemanager",
    // Magisk Manager
    "com.topjohnwu.magisk",
    // Xposed
    "de.robv.android.xposed", "org.meowcat.edxposed.manager",
    // LSPosed Manager
    "org.lsposed.manager", "org.lsposed.lspd", "com.lsposed",
    // KernelSU
    "me.weishu.kernelsu", "me.weishu.exp",
    // SuperSU
    "com.noshufou.android.su", "eu.chainfire.supersu",
    // KingRoot
    "com.kingroot", "com.kingouser",
    // Scene
    "scene",
    // 爱玩机
    "now",
    // 核心破解
    "leaname",
};

// 需要隐藏的路径前缀（完整路径，用于文件操作）
static const char* HIDE_PATHS[] = {
    // su
    "/su/bin/su", "/su/su", "/sbin/su", "/system/bin/su", "/system/xbin/su",
    "/system/xbin/ksu", "/data/adb/su", "/data/adb/ksu", "/data/local/su",
    // magisk
    "/data/adb/magisk", "/sbin/.magisk", "/dev/.magisk",
    // busybox
    "/data/adb/busybox", "/system/bin/busybox", "/system/xbin/busybox", "/data/local/xbin/busybox",
    // modules
    "/data/adb/modules", "/data/adb/ksu_bind",
    // LSPosed
    "/data/adb/lspd", "/data/adb/relsposed", "/data/misc/lspd", "/data/adb/lsposed",
    "/data/adb/modules/lspd", "/data/adb/modules/riru", "/data/adb/riru",
    // Xposed
    "/data/adb/xposed", "/data/adb/modules/xposed", "/data/adb/modules/riru_edxposed", "/data/adb/edxp",
    // kernelSU
    "/dev/ksu", "/sys/kernel/ksu",
    // APatch
    "/data/adb/apatch", "/data/adb/kpwn",
    // Scene
    "/data/adb/scene", "/data/data/com.aliuoud", "/data/app/com.aliuoud",
    // 爱玩机
    "/data/adb/now", "/data/data/com.now", "/data/app/com.now",
    // 核心破解
    "/data/data/com.android.leaname", "/data/app/com.android.leaname",
    // 其他检测工具
    "/data/data/com.pikaz.rotator", "/data/app/com.pikaz.rotator",
    "/data/data/com.XiaoDaiJin", "/data/app/com.XiaoDaiJin",
    "/data/data/core.app.system", "/data/app/core.app.system",
    "/data/data/com.triplebeat.modulemanager", "/data/app/com.triplebeat.modulemanager",
    // LSPosed 数据
    "/data/data/org.lsposed.manager", "/data/data/org.lsposed.lspd", "/data/data/com.lsposed",
    "/data/app/org.lsposed.manager", "/data/app/org.lsposed.lspd",
};

// ============ 原始函数指针 ============
static int (*original_open)(const char*, int, ...) = nullptr;
static int (*original_openat)(int, const char*, int, ...) = nullptr;
static int (*original_stat)(const char*, struct stat*) = nullptr;
static int (*original_lstat)(const char*, struct stat*) = nullptr;
static int (*original_access)(const char*, int) = nullptr;
static int (*original_readlink)(const char*, char*, size_t) = nullptr;
static int (*original_getdents64)(int, struct dirent*, size_t) = nullptr;
static int (*original_stat64)(const char*, struct stat64*) = nullptr;
static int (*original_lstat64)(const char*, struct stat64*) = nullptr;
static int (*original_fstatat64)(int, const char*, struct stat64*, int) = nullptr;
static long (*original_syscall)(long, ...) = nullptr;
static int (*original_execve)(const char*, char* const*, char* const*) = nullptr;

// ============ 辅助函数 ============

// 检查文件名是否需要隐藏（用于 getdents64）
static bool should_hide_name(const char* name) {
    if (name == nullptr) return false;
    for (size_t i = 0; i < sizeof(HIDE_NAMES) / sizeof(HIDE_NAMES[0]); i++) {
        if (strstr(name, HIDE_NAMES[i]) != nullptr) {
            return true;
        }
    }
    return false;
}

// 检查路径是否需要隐藏（用于 open/stat 等）
static bool should_hide_path(const char* path) {
    if (path == nullptr) return false;
    for (size_t i = 0; i < sizeof(HIDE_PATHS) / sizeof(HIDE_PATHS[0]); i++) {
        if (strstr(path, HIDE_PATHS[i]) != nullptr) {
            return true;
        }
    }
    return false;
}

// ============ 属性伪装 ============

struct prop_item {
    const char* name;
    const char* value;
};

static const struct prop_item SPOOF_PROPS[] = {
    {"ro.debuggable", "0"},
    {"ro.secure", "1"},
    {"ro.build.type", "user"},
    {"ro.build.tags", "release-keys"},
    {"ro.build.selinux", "0"},
    // 额外属性
    {"ro.zygisk.disable", "1"},
};

static const char* should_spoof_prop(const char* name) {
    for (size_t i = 0; i < sizeof(SPOOF_PROPS) / sizeof(SPOOF_PROPS[0]); i++) {
        if (strcmp(name, SPOOF_PROPS[i].name) == 0) {
            return SPOOF_PROPS[i].value;
        }
    }
    return nullptr;
}

// ============ Hooked 函数 ============

static int hooked_open(const char* path, int flags, ...) {
    if (should_hide_path(path)) {
        errno = ENOENT;
        return -1;
    }
    int mode = 0;
    if (flags & O_CREAT) {
        va_list args;
        va_start(args, flags);
        mode = va_arg(args, int);
        va_end(args);
        return original_open(path, flags, mode);
    }
    return original_open(path, flags);
}

static int hooked_openat(int dirfd, const char* path, int flags, ...) {
    if (should_hide_path(path)) {
        errno = ENOENT;
        return -1;
    }
    int mode = 0;
    if (flags & O_CREAT) {
        va_list args;
        va_start(args, flags);
        mode = va_arg(args, int);
        va_end(args);
        return original_openat(dirfd, path, flags, mode);
    }
    return original_openat(dirfd, path, flags);
}

static int hooked_stat(const char* path, struct stat* buf) {
    if (should_hide_path(path)) {
        errno = ENOENT;
        return -1;
    }
    return original_stat(path, buf);
}

static int hooked_lstat(const char* path, struct stat* buf) {
    if (should_hide_path(path)) {
        errno = ENOENT;
        return -1;
    }
    return original_lstat(path, buf);
}

static int hooked_access(const char* path, int mode) {
    if (should_hide_path(path)) {
        return -1;
    }
    return original_access(path, mode);
}

static int hooked_readlink(const char* path, char* buf, size_t bufsiz) {
    if (should_hide_path(path)) {
        errno = ENOENT;
        return -1;
    }
    return original_readlink(path, buf, bufsiz);
}

// getdents64 hook - 高效过滤目录列表
static int hooked_getdents64(int fd, struct dirent* dirp, size_t count) {
    // 注意：不再在文件系统 hook 中调用 JNI，避免开机卡住
    // PackageManager Hook 需要通过 LSPosed 等框架实现

    int result = original_getdents64(fd, dirp, count);
    if (result <= 0) return result;

    size_t offset = 0;
    struct dirent* current = dirp;
    struct dirent* write_ptr = dirp;

    while (offset < (size_t)result) {
        current = (struct dirent*)((char*)dirp + offset);
        size_t entry_len = current->d_reclen;
        const char* name = current->d_name;

        if (!should_hide_name(name)) {
            if (write_ptr != current) {
                memmove(write_ptr, current, entry_len);
            }
            write_ptr = (struct dirent*)((char*)write_ptr + entry_len);
        } else {
            LOGD("Hiding entry: %s", name);
        }
        offset += entry_len;
    }
    return (int)((char*)write_ptr - (char*)dirp);
}

// 64位 stat hooks
static int hooked_stat64(const char* path, struct stat64* buf) {
    if (should_hide_path(path)) {
        errno = ENOENT;
        return -1;
    }
    return original_stat64(path, buf);
}

static int hooked_lstat64(const char* path, struct stat64* buf) {
    if (should_hide_path(path)) {
        errno = ENOENT;
        return -1;
    }
    return original_lstat64(path, buf);
}

static int hooked_fstatat64(int dirfd, const char* path, struct stat64* buf, int flags) {
    if (should_hide_path(path)) {
        errno = ENOENT;
        return -1;
    }
    return original_fstatat64(dirfd, path, buf, flags);
}

// syscall hook - 属性伪装
static long hooked_syscall(long syscall_number, ...) {
    if (syscall_number == 16) {  // __NR_getprop
        va_list args;
        va_start(args, syscall_number);
        const char* name = va_arg(args, const char*);
        char* value = va_arg(args, char*);
        size_t len = va_arg(args, size_t);
        va_end(args);

        const char* spoofed = should_spoof_prop(name);
        if (spoofed != nullptr) {
            strncpy(value, spoofed, len - 1);
            value[len - 1] = '\0';
            LOGD("Spoofed: %s -> %s", name, spoofed);
            return 0;
        }
    }
    return original_syscall(syscall_number);
}

// ============ execve Hook ============

// 检查是否需要过滤的包名
static bool should_filter_package(const char* package_name) {
    if (package_name == nullptr) return false;
    const char* hide_prefixes[] = {
        "com.topjohnwu.magisk", "com.kingroot", "com.kingouser",
        "com.noshufou", "com.nutyroot", "de.robv.android.xposed",
        "eu.chainfire.supersu", "com.koushikdutta.superuser",
        "com.yellowes.su", "com.kingo.root", "me.weishu",
        "org.meowcat.edxposed", "io.github.vvb2060.magisk",
        "com.now", "com.aliuoud", "com.android.leaname",
        "org.lsposed.manager", "org.lsposed.lspd", "com.lsposed",
        "com.tsng.hidemyapplist", "icu.nullptr.applistdetector",
        "com.pikaz.rotator", "com.XiaoDaiJin", "core.app.system", "com.triplebeat.modulemanager"
    };
    for (size_t i = 0; i < sizeof(hide_prefixes) / sizeof(hide_prefixes[0]); i++) {
        if (strstr(package_name, hide_prefixes[i]) != nullptr) {
            return true;
        }
    }
    return false;
}

// 过滤包列表输出
static void filter_pm_output(char* output, size_t max_size) {
    if (output == nullptr || max_size == 0) return;
    char* read_ptr = output;
    char* write_ptr = output;
    char line[256];
    const char* package_prefix = "package:";

    while (*read_ptr != '\0' && (size_t)(write_ptr - output) < max_size - 1) {
        int len = 0;
        while (*read_ptr != '\0' && *read_ptr != '\n' && len < (int)(sizeof(line) - 1)) {
            line[len++] = *read_ptr++;
        }
        line[len] = '\0';
        if (*read_ptr == '\n') read_ptr++;

        if (strncmp(line, package_prefix, strlen(package_prefix)) == 0) {
            const char* package_name = line + strlen(package_prefix);
            if (should_filter_package(package_name)) {
                LOGD("Filtered: %s", line);
                continue;
            }
        }
        size_t line_len = strlen(line);
        if ((size_t)(write_ptr - output) + line_len + 1 < max_size) {
            strcpy(write_ptr, line);
            write_ptr += line_len;
            *write_ptr++ = '\n';
        }
    }
    *write_ptr = '\0';
}

// execve hook - 简化实现
static int hooked_execve(const char* pathname, char* const argv[], char* const envp[]) {
    // 检查是否是 pm list packages 命令
    bool is_pm_list = false;
    if (argv != nullptr) {
        for (int i = 0; argv[i] != nullptr; i++) {
            if ((strstr(argv[i], "/pm") != nullptr || strcmp(argv[i], "pm") == 0) &&
                argv[i+1] != nullptr && strcmp(argv[i+1], "list") == 0) {
                is_pm_list = true;
                break;
            }
        }
    }

    if (is_pm_list) {
        // 使用管道捕获和过滤输出
        int pipefd[2];
        if (pipe(pipefd) == -1) {
            return original_execve(pathname, argv, envp);
        }

        pid_t pid = fork();
        if (pid == -1) {
            close(pipefd[0]);
            close(pipefd[1]);
            return original_execve(pathname, argv, envp);
        }

        if (pid == 0) {
            close(pipefd[0]);
            dup2(pipefd[1], STDOUT_FILENO);
            close(pipefd[1]);
            execve(pathname, argv, envp);
            _exit(1);
        }

        close(pipefd[1]);
        char buffer[65536] = {0};
        ssize_t total_read = 0;
        ssize_t n;
        while ((n = read(pipefd[0], buffer + total_read, sizeof(buffer) - total_read - 1)) > 0) {
            total_read += n;
            if (total_read >= (ssize_t)(sizeof(buffer) - 1)) break;
        }
        buffer[total_read] = '\0';
        close(pipefd[0]);

        int status;
        waitpid(pid, &status, 0);
        filter_pm_output(buffer, sizeof(buffer));
        write(STDOUT_FILENO, buffer, strlen(buffer));
        return 0;
    }

    return original_execve(pathname, argv, envp);
}

// ============ 模块加载回调 ============

static void onModuleLoaded(ZygiskNextAPI *api) {
    memcpy(&api_table, api, sizeof(ZygiskNextAPI));
    LOGI("PandaSU ZygiskNext module loaded");

    auto resolver = api_table.newSymbolResolver("libc.so", nullptr);
    if (resolver == nullptr) {
        LOGE("Failed to create symbol resolver");
        return;
    }

    size_t sz;
    void *addr;
    bool any_success = false;

    // Hook 文件操作函数
    auto hook_symbol = [&](const char* name, void* hook_func, void** orig_func) {
        addr = api_table.symbolLookup(resolver, name, false, &sz);
        if (addr != nullptr && api_table.inlineHook(addr, hook_func, orig_func) == ZN_SUCCESS) {
            LOGI("Hook %s success", name);
            any_success = true;
            return true;
        }
        LOGE("Hook %s failed", name);
        return false;
    };

    hook_symbol("open", (void*)hooked_open, (void**)&original_open);
    hook_symbol("openat", (void*)hooked_openat, (void**)&original_openat);
    hook_symbol("getdents64", (void*)hooked_getdents64, (void**)&original_getdents64);
    hook_symbol("stat", (void*)hooked_stat, (void**)&original_stat);
    hook_symbol("lstat", (void*)hooked_lstat, (void**)&original_lstat);
    hook_symbol("access", (void*)hooked_access, (void**)&original_access);
    hook_symbol("readlink", (void*)hooked_readlink, (void**)&original_readlink);
    hook_symbol("stat64", (void*)hooked_stat64, (void**)&original_stat64);
    hook_symbol("lstat64", (void*)hooked_lstat64, (void**)&original_lstat64);
    hook_symbol("fstatat64", (void*)hooked_fstatat64, (void**)&original_fstatat64);
    hook_symbol("syscall", (void*)hooked_syscall, (void**)&original_syscall);
    hook_symbol("execve", (void*)hooked_execve, (void**)&original_execve);

    api_table.freeSymbolResolver(resolver);
    LOGI(any_success ? "All hooks installed" : "No hooks installed");
}

// ============ 模块结构体 ============

__attribute__((visibility("default"), unused))
struct ZygiskNextModule zn_module = {
    .target_api_version = ZYGISK_NEXT_API_VERSION_1,
    .onModuleLoaded = onModuleLoaded
};

__attribute__((visibility("default"), unused))
struct ZygiskNextCompanionModule zn_companion_module = {
    .target_api_version = ZYGISK_NEXT_API_VERSION_1,
    .onCompanionLoaded = nullptr,
    .onModuleConnected = nullptr
};