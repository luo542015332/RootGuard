#pragma once
#include <string>
#include <functional>
#include "logging.hpp"
#include "mountinfo_parser.hpp"

#define DCL_HOOK_FUNC(ret, func, ...)         \
    ret (*old_##func)(__VA_ARGS__) = nullptr; \
    ret new_##func(__VA_ARGS__)

#define ASSERT_LOG(tag, expr)                                                                         \
    if (!(expr))                                                                                      \
    {                                                                                                 \
        LOGE("%s:%d Assertion %s failed. %d:%s", #tag, __LINE__, #expr, errno, std::strerror(errno)); \
    }

#define ASSERT_DO(tag, expr, ret_stmt)                                                                \
    if (!(expr))                                                                                      \
    {                                                                                                 \
        LOGE("%s:%d Assertion %s failed. %d:%s", #tag, __LINE__, #expr, errno, std::strerror(errno)); \
        ret_stmt;                                                                                     \
    }

namespace Utils
{
    size_t safeStringCopy(char *dest, const char *src, size_t dest_size);
    bool switchMountNS(int pid);
    int isUserAppUID(int uid);
    int forkAndInvoke(const std::function<int()> &lambda);
    const char *getExtErrorsBehavior(const Parsers::mountinfo_entry &entry);

    // PLT hook - self-contained, no Zygisk dependency
    bool hookPLTByName(const std::string &libName, const std::string &symbolName,
                       void *hookFunc, void **origFunc);
    bool commitPLTHooks();
}
