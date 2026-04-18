#include <string>
#include <sstream>
#include <fstream>
#include <vector>
#include <sys/sysmacros.h>
#include "map_parser.hpp"
#include "logging.hpp"

using namespace Parsers;

map_entry::map_entry(uintptr_t address_start, uintptr_t address_end, uintptr_t offset,
                     const std::string &perms, const std::string &pathname, dev_t device, ino_t inode)
    : address_start(address_start), address_end(address_end), offset(offset), perms(perms),
      device(device), inode(inode), pathname(pathname) {}

const std::vector<map_entry> &Parsers::parseSelfMaps(bool cached)
{
    static std::vector<map_entry> parser_cache;
    if (cached && !parser_cache.empty())
    {
        return parser_cache;
    }
    parser_cache.clear();

    std::ifstream ifs("/proc/self/maps", std::ifstream::in);
    if (!ifs)
    {
        LOGE("parseSelfMaps could not open /proc/self/maps");
        return parser_cache;
    }

    for (std::string line; std::getline(ifs, line);)
    {
        std::istringstream iss(line);

        uintptr_t address_start, address_end, offset;
        std::string perms;
        std::string pathname;
        ino_t inode;
        int dev_major, dev_minor;
        char dummy_char;

        iss >> std::hex >> address_start >> dummy_char >> address_end >> perms >> offset >> dev_major >> dummy_char >> dev_minor >> std::dec >> inode;

        if (iss.fail())
        {
            LOGE("parseSelfMaps failed to parse line: %s", line.c_str());
            continue;
        }

        std::getline(iss >> std::ws, pathname);

        parser_cache.emplace_back(map_entry(address_start, address_end, offset, perms, pathname, makedev(dev_major, dev_minor), inode));
    }

    return parser_cache;
}
