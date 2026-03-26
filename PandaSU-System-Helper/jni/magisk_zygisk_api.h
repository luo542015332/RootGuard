// PandaSU Zygisk Module - 使用 Magisk 官方 Zygisk API
// 兼容 ZygiskSU / KernelSU / Magisk

#pragma once

#include <jni.h>
#include <pthread.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <errno.h>
#include <cstring>
#include <cstdlib>
#include <string>
#include <vector>
#include <map>
#include <dlfcn.h>

// Magisk Zygisk API 版本
#define ZYGISK_API_VERSION 9

// 符号解析函数类型
using hook_func_t = void*;
using orig_func_t = void**;

// Zygisk API 结构体
struct ZygiskAPI {
    int api_version;
    
    // Hook 函数 - PLT Hook
    int (*plt_hook)(void* /* handler */, const char* /* lib_name */, const char* /* symbol */, void* /* hook_func */, void** /* orig_func */);
    int (*plt_hook_ex)(void* /* handler */, const char* /* lib_name */, const char* /* symbol */, void* /* hook_func */, void** /* orig_func */, bool /*/reserve */);
    
    // Inline Hook
    int (*inline_hook)(void* /* addr */, void* /* hook_func */, void** /* orig_func */);
    int (*inline_unhook)(void* /* addr */);
    
    // 符号解析
    void* (*get_lib_base)(const char* /* lib_name */);
    void* (*find_sym)(void* /* handler */, const char* /* sym_name */);
    
    // 进程连接
    int (*connect_companion)(int /* fd */);
    
    // Denylist 检查
    bool (*is_denylist)(int /* uid */, const char* /* pkg */);
    bool (*check_selinux_policy)(const char* /* sepolicy */);
};

// 全局变量
static ZygiskAPI* g_zygisk_api = nullptr;
static bool g_api_initialized = false;

// 获取 Zygisk API 指针
static ZygiskAPI* get_zygisk_api() {
    if (g_api_initialized) return g_zygisk_api;
    
    // 通过 dlsym 获取 Magisk 导出的 Zygisk API
    void* handle = dlopen("libzygisk.so", RTLD_NOW);
    if (handle) {
        auto get_zygisk_api_func = (ZygiskAPI* (*)())dlsym(handle, "get_zygisk_api");
        if (get_zygisk_api_func) {
            g_zygisk_api = get_zygisk_api_func();
            g_api_initialized = true;
            return g_zygisk_api;
        }
        dlclose(handle);
    }
    
    // 尝试从 /dev/zygisk 获取 API
    int fd = open("/dev/zygisk", O_RDWR);
    if (fd >= 0) {
        // 通过 ioctl 获取 API
        ZygiskAPI* api = nullptr;
        if (ioctl(fd, 0x5A01, &api) == 0 && api != nullptr) {
            g_zygisk_api = api;
            g_api_initialized = true;
        }
        close(fd);
    }
    
    return g_zygisk_api;
}

// 初始化日志
static void init_logging() {
    // 创建日志目录
    mkdir("/data/adb/zygisk_pandasu", 0755);
    mkdir("/data/adb/zygisk_pandasu/logs", 0755);
}