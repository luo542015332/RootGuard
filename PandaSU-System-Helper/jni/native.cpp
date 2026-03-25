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

// 隐藏的文件路径关键词
static const char* HIDE_PATTERNS[] = {
    // Root 相关 - su
    "/su/bin/su",
    "/su/su",
    "/sbin/su",
    "/system/bin/su",
    "/system/xbin/su",
    "/system/xbin/ksu",
    "/data/adb/su",
    "/data/adb/ksu",
    "/data/local/su",
    // Root 相关 - magisk
    "/data/adb/magisk",
    "/sbin/.magisk",
    "/dev/.magisk",
    // Root 相关 - busybox
    "/data/adb/busybox",
    "/system/bin/busybox",
    "/system/xbin/busybox",
    "/data/local/xbin/busybox",
    // Root 相关 - modules
    "/data/adb/modules",
    "/data/adb/ksu_bind",
    // Root 相关 - kernelSU
    "/dev/ksu",
    "/sys/kernel/ksu",
    // Root 检测工具包名
    "com.topjohnwu.magisk",
    "com.kingroot",
    "com.kingouser",
    "com.chelpus",
    "com.noshufou",
    "com.noshufou.android.su",
    "com.nutyroot",
    "com.ramdroid.appquarantine",
    "com.devadvance.rootcloak",
    "com.devadvance.rootcloakplus",
    "de.robv.android.xposed",
    "eu.chainfire.supersu",
    "com.koushikdutta.superuser",
    "com.thirdparty.superuser",
    "com.yellowes.su",
    "com.kingo.root",
    "me.weishu.exp",
    "me.weishu.kernelsu",
    "org.meowcat.edxposed.manager",
    "com.solohsu.android.edxp.manager",
    "io.github.vvb2060.magisk",
    // 检测工具
    "com.now",           // 爱玩机
    "com.aliuoud",       // Scene
    "com.android.leaname", // 核心破解
    "org.lsposed.manager",
    "org.lsposed.lspd",
    "com.lsposed",
    // HMA
    "com.tsng.hidemyapplist",
};

// 检查路径是否需要隐藏
static bool should_hide_path(const char* path) {
    if (path == nullptr) return false;

    for (size_t i = 0; i < sizeof(HIDE_PATTERNS) / sizeof(HIDE_PATTERNS[0]); i++) {
        if (strstr(path, HIDE_PATTERNS[i]) != nullptr) {
            LOGD("Hiding path: %s", path);
            return true;
        }
    }
    return false;
}

// ============ 原始函数指针 ============
static int (*original_open)(const char*, int, ...) = nullptr;
static int (*original_openat)(int, const char*, int, ...) = nullptr;
static int (*original_stat)(const char*, struct stat*) = nullptr;
static int (*original_lstat)(const char*, struct stat*) = nullptr;
static int (*original_access)(const char*, int) = nullptr;
static int (*original_readlink)(const char*, char*, size_t) = nullptr;
static int (*original_getdents64)(int, struct dirent*, size_t) = nullptr;
// 新增：64位 stat 函数
static int (*original_stat64)(const char*, struct stat64*) = nullptr;
static int (*original_lstat64)(const char*, struct stat64*) = nullptr;
static int (*original_fstatat64)(int, const char*, struct stat64*, int) = nullptr;
// syscall
static long (*original_syscall)(long, ...) = nullptr;
// execve hook
static int (*original_execve)(const char*, char* const*, char* const*) = nullptr;

// 检测工具命令关键词 - 更精确的匹配
static const char* DETECTOR_PATTERNS[] = {
    "/xposed",       // Xposed 相关
    "/riru/",       // Riru
    "/lspd/",       // LSPosed
    "/lsposed/",    // LSPosed
    "/magiskhide",  // MagiskHide
    "/apatch",      // APatch
    "/kernelpatch", // APatch
};

// 检查命令是否应该被阻止
static bool should_block_command(const char* cmd) {
    if (cmd == nullptr) return false;
    // 检查完整路径是否包含检测工具路径
    for (size_t i = 0; i < sizeof(DETECTOR_PATTERNS) / sizeof(DETECTOR_PATTERNS[0]); i++) {
        if (strstr(cmd, DETECTOR_PATTERNS[i]) != nullptr) {
            LOGD("Blocking detector command: %s", cmd);
            return true;
        }
    }
    return false;
}

// ============ 属性伪装 ============

// 需要伪装的关键属性
struct prop_item {
    const char* name;
    const char* value;
};

static const struct prop_item SPOOF_PROPS[] = {
    // Root 检测相关
    {"ro.debuggable", "0"},
    {"ro.secure", "1"},
    {"ro.build.type", "user"},
    {"ro.build.tags", "release-keys"},
    // SELinux 状态
    {"ro.build.selinux", "0"},
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

// getdents64 hook - 过滤目录列表中的隐藏文件
static int hooked_getdents64(int fd, struct dirent* dirp, size_t count) {
    int result = original_getdents64(fd, dirp, count);
    if (result <= 0) return result;

    // 遍历目录条目，过滤隐藏的文件
    size_t offset = 0;
    struct dirent* current = dirp;
    struct dirent* write_ptr = dirp;

    while (offset < (size_t)result) {
        current = (struct dirent*)((char*)dirp + offset);
        size_t entry_len = current->d_reclen;

        // 检查文件名是否应该隐藏
        bool should_hide = false;
        const char* name = current->d_name;

        // 检查是否匹配隐藏模式
        for (size_t i = 0; i < sizeof(HIDE_PATTERNS) / sizeof(HIDE_PATTERNS[0]); i++) {
            const char* pattern = HIDE_PATTERNS[i];
            // 对于路径模式，检查完整路径
            if (pattern[0] == '/') {
                // 路径模式：检查文件名是否包含模式中的关键部分
                if (strstr(name, pattern) != nullptr ||
                    (strcmp(pattern, "/data/adb/magisk") == 0 && strstr(name, "magisk") != nullptr) ||
                    (strcmp(pattern, "/data/adb/ksu") == 0 && strstr(name, "ksu") != nullptr) ||
                    (strcmp(pattern, "/data/adb/busybox") == 0 && strstr(name, "busybox") != nullptr) ||
                    (strcmp(pattern, "/data/adb/modules") == 0 && strstr(name, "modules") != nullptr) ||
                    (strstr(pattern, "/su") != nullptr && strstr(name, "su") != nullptr)) {
                    should_hide = true;
                    break;
                }
            } else {
                // 包名模式：直接比较
                if (strstr(name, pattern) != nullptr) {
                    should_hide = true;
                    break;
                }
            }
        }

        if (!should_hide) {
            // 保留这个条目
            if (write_ptr != current) {
                memmove(write_ptr, current, entry_len);
            }
            write_ptr = (struct dirent*)((char*)write_ptr + entry_len);
        } else {
            LOGD("Hiding directory entry: %s", name);
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

// syscall hook - 处理属性读取
static long hooked_syscall(long syscall_number, ...) {
    // __NR_getprop = 16 on arm64
    // 通过 syscall 读取 property
    if (syscall_number == 16) {  // __NR_getprop
        va_list args;
        va_start(args, syscall_number);
        const char* name = va_arg(args, const char*);
        char* value = va_arg(args, char*);
        size_t len = va_arg(args, size_t);
        va_end(args);

        // 检查是否需要伪装属性
        const char* spoofed = should_spoof_prop(name);
        if (spoofed != nullptr) {
            strncpy(value, spoofed, len - 1);
            value[len - 1] = '\0';
            LOGD("Spoofed property: %s -> %s", name, spoofed);
            return 0;
        }
    }

    // 调用原始 syscall
    return original_syscall(syscall_number);
}

// ============ pm list packages 命令过滤 ============

// 检查是否是 pm 命令
static bool is_pm_command(char* const argv[]) {
    if (argv == nullptr) return false;
    
    for (int i = 0; argv[i] != nullptr; i++) {
        const char* arg = argv[i];
        // 检查是否是 pm 命令
        if (strstr(arg, "/pm") != nullptr || strcmp(arg, "pm") == 0) {
            // 检查后续参数是否是 list packages
            if (argv[i+1] != nullptr && 
                (strcmp(argv[i+1], "list") == 0 || strcmp(argv[i+1], "packages") == 0)) {
                return true;
            }
        }
    }
    return false;
}

// 检查是否需要过滤的包名
static bool should_filter_package(const char* package_name) {
    if (package_name == nullptr) return false;
    
    for (size_t i = 0; i < sizeof(HIDE_PATTERNS) / sizeof(HIDE_PATTERNS[0]); i++) {
        const char* pattern = HIDE_PATTERNS[i];
        // 只检查包名模式（不以 / 开头）
        if (pattern[0] != '/') {
            if (strstr(package_name, pattern) != nullptr) {
                LOGD("Filtering package: %s (matched %s)", package_name, pattern);
                return true;
            }
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
    
    while (*read_ptr != '\0' && (size_t)(write_ptr - output) < max_size - 1) {
        // 读取一行
        int len = 0;
        while (*read_ptr != '\0' && *read_ptr != '\n' && len < (int)(sizeof(line) - 1)) {
            line[len++] = *read_ptr++;
        }
        line[len] = '\0';
        
        // 跳过换行符
        if (*read_ptr == '\n') read_ptr++;
        
        // 检查这行是否是需要过滤的包名
        // 格式: "package:com.example.app"
        const char* package_prefix = "package:";
        if (strncmp(line, package_prefix, strlen(package_prefix)) == 0) {
            const char* package_name = line + strlen(package_prefix);
            if (should_filter_package(package_name)) {
                LOGD("Filtered line: %s", line);
                continue; // 跳过这行
            }
        }
        
        // 复制这行到输出
        size_t line_len = strlen(line);
        if ((size_t)(write_ptr - output) + line_len + 1 < max_size) {
            strcpy(write_ptr, line);
            write_ptr += line_len;
            *write_ptr++ = '\n';
        }
    }
    
    *write_ptr = '\0';
}

// execve hook - 阻止检测工具执行 + 过滤 pm 命令输出
static int hooked_execve(const char* pathname, char* const argv[], char* const envp[]) {
    // 检查是否应该阻止
    if (should_block_command(pathname)) {
        LOGI("Blocked execve: %s", pathname);
        errno = ENOENT;
        return -1;
    }
    
    // 检查是否是 pm list packages 命令
    if (is_pm_command(argv)) {
        LOGI("Detected pm list command, will filter output");
        
        // 使用管道来过滤输出
        int pipefd[2];
        if (pipe(pipefd) == -1) {
            LOGE("Failed to create pipe");
            return original_execve(pathname, argv, envp);
        }
        
        // Fork 来处理输出
        pid_t pid = fork();
        if (pid == -1) {
            close(pipefd[0]);
            close(pipefd[1]);
            return original_execve(pathname, argv, envp);
        }
        
        if (pid == 0) {
            // 子进程：执行命令，将输出写入管道
            close(pipefd[0]);  // 关闭读端
            
            // 重定向 stdout 到管道
            dup2(pipefd[1], STDOUT_FILENO);
            close(pipefd[1]);
            
            // 执行原始命令
            execve(pathname, argv, envp);
            // 如果 execve 失败
            _exit(1);
        } else {
            // 父进程：读取管道内容，过滤，然后写入 stdout
            close(pipefd[1]);  // 关闭写端
            
            // 读取子进程输出
            char buffer[65536] = {0};
            ssize_t total_read = 0;
            ssize_t n;
            while ((n = read(pipefd[0], buffer + total_read, sizeof(buffer) - total_read - 1)) > 0) {
                total_read += n;
                if (total_read >= (ssize_t)(sizeof(buffer) - 1)) break;
            }
            buffer[total_read] = '\0';
            close(pipefd[0]);
            
            // 等待子进程结束
            int status;
            waitpid(pid, &status, 0);
            
            // 过滤输出
            filter_pm_output(buffer, sizeof(buffer));
            
            // 写入原始 stdout
            write(STDOUT_FILENO, buffer, strlen(buffer));
            
            return 0;
        }
    }
    
    return original_execve(pathname, argv, envp);
}

// ============ 模块加载回调 ============

static void onModuleLoaded(ZygiskNextAPI *api) {
    // 复制 API 函数表
    memcpy(&api_table, api, sizeof(ZygiskNextAPI));

    LOGI("PandaSU ZygiskNext module loaded");

    // 创建 libc.so 的符号解析器
    auto resolver = api_table.newSymbolResolver("libc.so", nullptr);
    if (resolver == nullptr) {
        LOGE("Failed to create symbol resolver for libc.so");
        return;
    }

    // Hook open 函数
    size_t sz;
    void *addr;
    bool success = false;

    addr = api_table.symbolLookup(resolver, "open", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_open, (void**)&original_open) == ZN_SUCCESS) {
            LOGI("Inline hook open success");
            success = true;
        } else {
            LOGE("Inline hook open failed");
        }
    } else {
        LOGE("symbolLookup failed for open");
    }

    // Hook openat 函数 (Java File.exists() 使用这个)
    addr = api_table.symbolLookup(resolver, "openat", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_openat, (void**)&original_openat) == ZN_SUCCESS) {
            LOGI("Inline hook openat success");
            success = true;
        } else {
            LOGE("Inline hook openat failed");
        }
    } else {
        LOGE("symbolLookup failed for openat");
    }

    // Hook getdents64 函数 (目录列表)
    addr = api_table.symbolLookup(resolver, "getdents64", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_getdents64, (void**)&original_getdents64) == ZN_SUCCESS) {
            LOGI("Inline hook getdents64 success");
            success = true;
        } else {
            LOGE("Inline hook getdents64 failed");
        }
    } else {
        LOGE("symbolLookup failed for getdents64");
    }

    // Hook stat 函数
    addr = api_table.symbolLookup(resolver, "stat", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_stat, (void**)&original_stat) == ZN_SUCCESS) {
            LOGI("Inline hook stat success");
            success = true;
        } else {
            LOGE("Inline hook stat failed");
        }
    }

    // Hook lstat 函数
    addr = api_table.symbolLookup(resolver, "lstat", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_lstat, (void**)&original_lstat) == ZN_SUCCESS) {
            LOGI("Inline hook lstat success");
            success = true;
        } else {
            LOGE("Inline hook lstat failed");
        }
    }

    // Hook access 函数
    addr = api_table.symbolLookup(resolver, "access", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_access, (void**)&original_access) == ZN_SUCCESS) {
            LOGI("Inline hook access success");
            success = true;
        } else {
            LOGE("Inline hook access failed");
        }
    }

    // Hook readlink 函数
    addr = api_table.symbolLookup(resolver, "readlink", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_readlink, (void**)&original_readlink) == ZN_SUCCESS) {
            LOGI("Inline hook readlink success");
            success = true;
        } else {
            LOGE("Inline hook readlink failed");
        }
    }

    // Hook stat64 函数 (64位stat，用于大文件支持)
    addr = api_table.symbolLookup(resolver, "stat64", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_stat64, (void**)&original_stat64) == ZN_SUCCESS) {
            LOGI("Inline hook stat64 success");
            success = true;
        } else {
            LOGE("Inline hook stat64 failed");
        }
    }

    // Hook lstat64 函数
    addr = api_table.symbolLookup(resolver, "lstat64", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_lstat64, (void**)&original_lstat64) == ZN_SUCCESS) {
            LOGI("Inline hook lstat64 success");
            success = true;
        } else {
            LOGE("Inline hook lstat64 failed");
        }
    }

    // Hook fstatat64 函数
    addr = api_table.symbolLookup(resolver, "fstatat64", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_fstatat64, (void**)&original_fstatat64) == ZN_SUCCESS) {
            LOGI("Inline hook fstatat64 success");
            success = true;
        } else {
            LOGE("Inline hook fstatat64 failed");
        }
    }

    // Hook syscall 函数 (用于属性伪装)
    addr = api_table.symbolLookup(resolver, "syscall", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_syscall, (void**)&original_syscall) == ZN_SUCCESS) {
            LOGI("Inline hook syscall success");
            success = true;
        } else {
            LOGE("Inline hook syscall failed");
        }
    }

    // Hook execve 函数 (阻止检测工具执行)
    addr = api_table.symbolLookup(resolver, "execve", false, &sz);
    if (addr != nullptr) {
        if (api_table.inlineHook(addr, (void*)hooked_execve, (void**)&original_execve) == ZN_SUCCESS) {
            LOGI("Inline hook execve success");
            success = true;
        } else {
            LOGE("Inline hook execve failed");
        }
    } else {
        LOGE("symbolLookup failed for execve");
    }

    // 释放符号解析器
    api_table.freeSymbolResolver(resolver);

    if (success) {
        LOGI("PandaSU hooks installed successfully");
    } else {
        LOGE("PandaSU hooks installation failed");
    }
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
