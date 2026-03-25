#pragma once

#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

#define ZYGISK_NEXT_API_VERSION_1 3
#define ZN_SUCCESS 0
#define ZN_FAILED 1

// 前向声明
struct ZygiskNextAPI;
struct ZnSymbolResolver;

// 模块回调结构体
struct ZygiskNextModule {
    int target_api_version;
    void (*onModuleLoaded)(struct ZygiskNextAPI *api);
};

// 伴侣模块回调结构体
struct ZygiskNextCompanionModule {
    int target_api_version;
    void (*onCompanionLoaded)(struct ZygiskNextAPI *api);
    void (*onModuleConnected)(struct ZygiskNextAPI *api, int fd);
};

// 核心 API 结构体
struct ZygiskNextAPI {
    // API 版本
    int api_version;

    // Hook API
    int (*pltHook)(void *symbol_resolver, const char *symbol, void *hook_func, void **orig_func);
    int (*inlineHook)(void *addr, void *hook_func, void **orig_func);
    int (*inlineUnhook)(void *addr);

    // 符号解析 API
    void *(*newSymbolResolver)(const char *lib_name, void *base_addr);
    void (*freeSymbolResolver)(void *resolver);
    void *(*getBaseAddress)(const char *lib_name);
    void *(*symbolLookup)(void *resolver, const char *symbol, bool prefix_matched, size_t *sym_size);
    int (*forEachSymbols)(void *resolver, void (*callback)(const char *name, void *addr, size_t size, void *data), void *data);

    // 伴侣进程 API
    int (*connectCompanion)(void *handle);
};

// 导出符号
extern __attribute__((visibility("default"), unused)) struct ZygiskNextModule zn_module;
extern __attribute__((visibility("default"), unused)) struct ZygiskNextCompanionModule zn_companion_module;

#ifdef __cplusplus
}
#endif
