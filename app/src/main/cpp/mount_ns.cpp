#pragma once

#include <sys/mount.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/fcntl.h>
#include <unistd.h>
#include <dlfcn.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <string>
#include <vector>
#include <android/log.h>

#define LOG_TAG "TurboNS"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

namespace turbo_ns {

// ============================================================
// ELF structures (self-contained, avoids system elf.h conflicts)
// ============================================================
struct Elf64_Ehdr {
    unsigned char e_ident[16];
    uint16_t e_type;
    uint16_t e_machine;
    uint32_t e_version;
    uint64_t e_entry;
    uint64_t e_phoff;
    uint64_t e_shoff;
    uint32_t e_flags;
    uint16_t e_ehsize;
    uint16_t e_phentsize;
    uint16_t e_phnum;
    uint16_t e_shentsize;
    uint16_t e_shnum;
    uint16_t e_shstrndx;
};

struct Elf64_Shdr {
    uint32_t sh_name;
    uint32_t sh_type;
    uint64_t sh_flags;
    uint64_t sh_addr;
    uint64_t sh_offset;
    uint64_t sh_size;
    uint32_t sh_link;
    uint32_t sh_info;
    uint64_t sh_addralign;
    uint64_t sh_entsize;
};

struct Elf64_Sym {
    uint32_t st_name;
    uint8_t  st_info;
    uint8_t  st_other;
    uint16_t st_shndx;
    uint64_t st_value;
    uint64_t st_size;
};

constexpr int TURBO_SHT_DYNAMIC = 6;
constexpr int TURBO_DT_SYMTAB = 6;
constexpr int TURBO_DT_STRTAB = 5;
constexpr int TURBO_DT_GNU_HASH = 14;
constexpr int TURBO_DT_RELA = 7;
constexpr int TURBO_DT_RELASZ = 8;
constexpr int TURBO_DT_RELAENT = 9;

// djb2 hash
static inline uint32_t djb2_hash(const uint8_t *str) {
    uint32_t h = 5381;
    while (*str) h = ((h << 5) + h) + *str++;
    return h;
}

// Parse /proc/self/mountinfo
struct MntEntry {
    int mount_id, parent_id;
    char root[128];
    char mount_point[256];
    char fs_type[64];
    char source[256];
};

static inline bool parseMountinfo(std::vector<MntEntry> &out) {
    out.clear();
    FILE *f = fopen("/proc/self/mountinfo", "r");
    if (!f) return false;
    char line[4096];
    while (fgets(line, sizeof(line), f)) {
        MntEntry e = {};
        char *p = line;
        while (*p == ' ') p++;
        e.mount_id = strtol(p, &p, 10);
        while (*p == ' ') p++;
        e.parent_id = strtol(p, &p, 10);
        while (*p == ' ') p++;
        sscanf(p, "%127s %255s %63s %255s", e.root, e.mount_point, e.fs_type, e.source);
        out.push_back(e);
    }
    fclose(f);
    return !out.empty();
}

// Make memory region writable
static inline bool makeWritable(uintptr_t addr, size_t size) {
    uintptr_t page_start = addr & ~4095UL;
    size_t page_count = (size + (addr - page_start) + 4095) / 4096;
    return mprotect(reinterpret_cast<void *>(page_start), page_count * 4096,
                    PROT_READ | PROT_WRITE | PROT_EXEC) == 0;
}

// Find library base from /proc/self/maps
static uintptr_t findLibraryBase(const char *libName) {
    FILE *f = fopen("/proc/self/maps", "r");
    if (!f) return 0;
    char line[512];
    while (fgets(line, sizeof(line), f)) {
        uintptr_t start, end;
        char perms[8], pathname[256] = {0};
        sscanf(line, "%lx-%lx %7s %*x %*s %*d %255s", &start, &end, perms, pathname);
        if (strstr(pathname, libName) && perms[0] == 'r' && perms[1] == 'x') {
            fclose(f);
            return start;
        }
    }
    fclose(f);
    return 0;
}

// Find symbol using GNU hash
static uintptr_t findSymbolGNUHash(uintptr_t base, const char *symName) {
    auto ehdr = reinterpret_cast<const Elf64_Ehdr *>(base);
    if (ehdr->e_ident[0] != 0x7f) return 0;

    auto shdr = reinterpret_cast<const Elf64_Shdr *>(base + ehdr->e_shoff);
    const uint8_t *dyn_data = nullptr;
    size_t dyn_count = 0;
    uint64_t symtab = 0, strtab = 0, gnuhash = 0;

    for (int i = 0; i < ehdr->e_shnum; i++) {
        if (shdr[i].sh_type == TURBO_SHT_DYNAMIC) {
            dyn_data = reinterpret_cast<const uint8_t *>(base + shdr[i].sh_offset);
            dyn_count = shdr[i].sh_size / shdr[i].sh_entsize;
            break;
        }
    }
    if (!dyn_data) return 0;

    for (size_t j = 0; j < dyn_count; j++) {
        uint64_t tag = dyn_data[j * 2];
        uint64_t val = dyn_data[j * 2 + 1];
        if (tag == TURBO_DT_SYMTAB)  symtab  = val;
        else if (tag == TURBO_DT_STRTAB) strtab  = val;
        else if (tag == TURBO_DT_GNU_HASH) gnuhash = val;
    }

    if (!gnuhash || !symtab || !strtab) return 0;

    auto gp = reinterpret_cast<const uint8_t *>(base) + gnuhash;
    uint32_t nbucket = *reinterpret_cast<const uint32_t *>(gp);
    uint32_t symoff  = gp[4] | (gp[5] << 8) | (gp[6] << 16) | (gp[7] << 24);

    auto buckets = reinterpret_cast<const uint32_t *>(gp + 16 + nbucket * 4);
    auto chains  = buckets + nbucket;

    uint32_t h = djb2_hash(reinterpret_cast<const uint8_t *>(symName));
    uint32_t si = buckets[h % nbucket];
    if (si == 0xffffffff) return 0;

    while (si != 0xffffffff) {
        auto sym = reinterpret_cast<const Elf64_Sym *>(
            reinterpret_cast<const uint8_t *>(base) + symtab + si * sizeof(Elf64_Sym));
        auto name = reinterpret_cast<const char *>(
            reinterpret_cast<const uint8_t *>(base) + strtab + sym->st_name);
        if (strcmp(name, symName) == 0) return base + sym->st_value;
        uint32_t ch = chains[si - symoff];
        if ((ch ^ h) >= 2) break;
        si++;
    }
    return 0;
}

// Find PLT GOT entry in libandroid_runtime.so
static uintptr_t findGOTEntry(uintptr_t libBase, uintptr_t symAddr) {
    FILE *f = fopen("/proc/self/maps", "r");
    if (!f) return 0;
    uintptr_t txtStart = 0, txtEnd = 0;
    char line[512];
    while (fgets(line, sizeof(line), f)) {
        uintptr_t s, e;
        char perms[8], path[256] = {0};
        sscanf(line, "%lx-%lx %7s %*x %*s %*d %255s", &s, &e, perms, path);
        if (strstr(path, "libandroid_runtime.so") && perms[0] == 'r' && perms[1] == 'x') {
            txtStart = s; txtEnd = e;
            break;
        }
    }
    fclose(f);
    if (!txtStart) return 0;

    // Scan for LDR X16,[Xn,#imm]; BR X16 PLT stub (16 bytes)
    for (uintptr_t p = txtStart; p < txtEnd - 16; p += 4) {
        uint32_t w0 = *reinterpret_cast<uint32_t *>(p);
        uint32_t w1 = *reinterpret_cast<uint32_t *>(p + 4);
        // LDR X16,[Xn,#imm]: bits[0-6]=f9403c??
        bool isLdr = ((w0 & 0xff00001f) == 0xf9400000);
        // BR X16
        bool isBr  = ((w0 & 0xfffffc1f) == 0xd61f0000) && ((w1 & 0xffffc000) == 0xaa1f3c10);
        if (isLdr && isBr) {
            uint32_t imm12 = (w0 >> 5) & 0xfff;
            uintptr_t got = (p + 8) + static_cast<uintptr_t>(imm12) * 8;
            uint64_t target = *reinterpret_cast<uint64_t *>(got);
            if (target != 0 && target != 0xdead0000) {
                return got;
            }
        }
    }
    return 0;
}

// Patch GOT entry
static bool patchGOT(uintptr_t got, void *hook, void **orig) {
    if (!makeWritable(got, 8)) { LOGE("[p] mprotect GOT 0x%lx", got); return false; }
    if (orig) *orig = reinterpret_cast<void *>(*reinterpret_cast<uint64_t *>(got));
    *reinterpret_cast<uint64_t *>(got) = reinterpret_cast<uint64_t>(hook);
    __builtin___clear_cache(reinterpret_cast<char *>(got), reinterpret_cast<char *>(got) + 8);
    return true;
}

// Patch function start with B (branch)
static bool patchBranch(uintptr_t addr, void *hook, void **orig) {
    if (!makeWritable(addr, 8)) { LOGE("[p] mprotect 0x%lx", addr); return false; }
    if (orig) {
        reinterpret_cast<uint32_t *>(orig)[0] = *reinterpret_cast<uint32_t *>(addr);
        reinterpret_cast<uint32_t *>(orig)[1] = *reinterpret_cast<uint32_t *>(addr + 4);
    }
    int64_t off = static_cast<int64_t>(reinterpret_cast<uintptr_t>(hook)) -
                  static_cast<int64_t>(addr + 4);
    if (off < -134217728LL || off > 134217727LL) { LOGE("[p] far branch %ld", (long)off); return false; }
    *reinterpret_cast<uint32_t *>(addr) = 0x14000000 | ((off >> 2) & 0x3ffffff);
    __builtin___clear_cache(reinterpret_cast<char *>(addr), reinterpret_cast<char *>(addr) + 4);
    return true;
}

// ============================================================
// Mount namespace isolation
// ============================================================
const char *kSensitivePaths[] = {
    "/data/adb", "/data/local/tmp", "/data/adb/modules", "/data/adb/zygisk",
    "/data/adb/post-fs-data.d", "/data/adb/service.d", "/data/local/bin",
    "/sbin", "/system/bin/su", "/system/xbin/su", "/vendor/bin/su",
    "/system/bin/magisk", "/system/xbin/magisk",
};
constexpr size_t kNumPaths = sizeof(kSensitivePaths) / sizeof(kSensitivePaths[0]);

// Linux mount flags not always in Android NDK headers
#ifndef MS_SLAVE
#define MS_SLAVE (1 << 19)
#endif
#ifndef MS_REC
#define MS_REC 0x4000
#endif
#ifndef MNT_DETACH
#define MNT_DETACH 0x00000002
#endif

static void makeRootfsSlave() {
    mount("rootfs", "/", nullptr, MS_SLAVE | MS_REC, nullptr);
}

static void unmountSensitive() {
    std::vector<MntEntry> entries;
    if (!parseMountinfo(entries)) return;
    for (const auto &e : entries) {
        if (e.mount_point[0] != '/') continue;
        for (size_t i = 0; i < kNumPaths; i++) {
            const char *p = kSensitivePaths[i];
            size_t pl = strlen(p);
            if (strncmp(e.mount_point, p, pl) == 0 &&
                (e.mount_point[pl] == 0 || e.mount_point[pl] == '/')) {
                if (umount2(e.mount_point, MNT_DETACH) == 0)
                    LOGI("[NS] umount: %s", e.mount_point);
                break;
            }
        }
    }
}

static bool doApplyIsolation() {
    if (unshare(CLONE_NEWNS) != 0) {
        LOGE("[NS] unshare failed: %d (%s)", errno, strerror(errno));
        return false;
    }
    makeRootfsSlave();
    unmountSensitive();
    LOGI("[NS] Isolation applied (pid=%d)", getpid());
    return true;
}

// ============================================================
// Hook state
// ============================================================
static bool gInited = false;
static volatile bool gDoIsolate = false;
static void *gForkOrig = nullptr;
static void *gUnshareOrig = nullptr;

typedef pid_t (*fork_t)();
typedef int   (*unshare_t)(int);

static pid_t hooked_fork() {
    pid_t (*real)() = reinterpret_cast<fork_t>(gForkOrig);
    pid_t p = real();
    if (p == 0 && gDoIsolate) doApplyIsolation();
    return p;
}

static int hooked_unshare(int flags) {
    int (*real)(int) = reinterpret_cast<unshare_t>(gUnshareOrig);
    if ((flags & CLONE_NEWNS) && gDoIsolate) {
        int r = real(flags);
        if (r == 0) doApplyIsolation();
        return r;
    }
    return real(flags);
}

// ============================================================
// Public API
// ============================================================
int initHooks() {
    if (gInited) return 0;
    LOGI("[TurboNS] initHooks()");

    uintptr_t base = findLibraryBase("libandroid_runtime.so");
    if (!base) { LOGE("[TurboNS] libandroid_runtime.so not found"); return -1; }
    LOGI("[TurboNS] libandroid_runtime.so @ 0x%lx", base);

    // Resolve fork
    void *forkSym = reinterpret_cast<void *>(findSymbolGNUHash(base, "fork"));
    if (!forkSym) {
        void *lc = dlopen("libc.so", RTLD_NOLOAD);
        if (lc) forkSym = dlsym(lc, "fork");
    }
    if (!forkSym) { LOGE("[TurboNS] fork not found"); return -1; }

    // Resolve unshare
    void *unshareSym = reinterpret_cast<void *>(findSymbolGNUHash(base, "unshare"));
    if (!unshareSym) {
        void *lc = dlopen("libc.so", RTLD_NOLOAD);
        if (lc) unshareSym = dlsym(lc, "unshare");
    }
    if (!unshareSym) { LOGE("[TurboNS] unshare not found"); return -1; }

    LOGI("[TurboNS] fork=0x%lx unshare=0x%lx",
         reinterpret_cast<uintptr_t>(forkSym), reinterpret_cast<uintptr_t>(unshareSym));

    // Hook fork
    uintptr_t forkGot = findGOTEntry(base, reinterpret_cast<uintptr_t>(forkSym));
    if (forkGot) {
        patchGOT(forkGot, reinterpret_cast<void *>(hooked_fork), &gForkOrig);
        LOGI("[TurboNS] fork GOT @ 0x%lx hooked", forkGot);
    } else {
        patchBranch(reinterpret_cast<uintptr_t>(forkSym), reinterpret_cast<void *>(hooked_fork), &gForkOrig);
        LOGI("[TurboNS] fork direct patched");
    }

    // Hook unshare
    uintptr_t unshareGot = findGOTEntry(base, reinterpret_cast<uintptr_t>(unshareSym));
    if (unshareGot) {
        patchGOT(unshareGot, reinterpret_cast<void *>(hooked_unshare), &gUnshareOrig);
        LOGI("[TurboNS] unshare GOT @ 0x%lx hooked", unshareGot);
    } else {
        patchBranch(reinterpret_cast<uintptr_t>(unshareSym), reinterpret_cast<void *>(hooked_unshare), &gUnshareOrig);
        LOGI("[TurboNS] unshare direct patched");
    }

    gInited = true;
    LOGI("[TurboNS] initHooks complete");
    return 0;
}

int processPackageForIsolation(const char *pkg, int isTarget) {
    if (!isTarget || !pkg) return 0;
    LOGI("[TurboNS] processPackageForIsolation: %s (pid=%d)", pkg, getpid());
    gDoIsolate = true;
    return 0;
}

void resetIsolation() {
    gDoIsolate = false;
}

} // namespace turbo_ns

// ============================================================
// C-linkage bridge (called from JNI / turbo_jni.cpp)
// ============================================================
extern "C" {

int turbo_ns_initHooks() {
    return turbo_ns::initHooks();
}

int turbo_ns_processPackageForIsolation(const char *pkg, int isTarget) {
    return turbo_ns::processPackageForIsolation(pkg, isTarget);
}

void turbo_ns_resetIsolation() {
    turbo_ns::resetIsolation();
}

} // extern "C"
