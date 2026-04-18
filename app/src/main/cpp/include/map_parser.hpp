#pragma once
#include <sstream>
#include <string>
#include <vector>
#include <sys/types.h>

namespace Parsers
{
    class map_entry
    {
    public:
        map_entry(uintptr_t address_start, uintptr_t address_end, uintptr_t offset,
                  const std::string &perms, const std::string &pathname, dev_t device, ino_t inode);

        uintptr_t getAddressStart() const { return address_start; }
        uintptr_t getAddressEnd() const { return address_end; }
        const std::string &getPerms() const { return perms; }
        uintptr_t getOffset() const { return offset; }
        dev_t getDevice() const { return device; }
        ino_t getInode() const { return inode; }
        const std::string &getPathname() const { return pathname; }

    private:
        uintptr_t address_start, address_end, offset;
        std::string perms, pathname;
        dev_t device;
        ino_t inode;
    };

    const std::vector<map_entry> &parseSelfMaps(bool cached = true);
}
