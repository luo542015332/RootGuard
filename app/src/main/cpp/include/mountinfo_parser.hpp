#pragma once
#include <string>
#include <vector>
#include <unordered_map>
#include <sys/types.h>

namespace Parsers
{
    class mountinfo_entry
    {
    public:
        mountinfo_entry(int mount_id, int parent_id, dev_t device,
                        const std::string &root, const std::string &mount_point,
                        const std::string &mount_options, const std::string &optional_fields,
                        const std::string &filesystem_type, const std::string &mount_source,
                        const std::string &super_options);

        int getMountId() const { return mount_id; }
        int getParentId() const { return parent_id; }
        dev_t getDevice() const { return device; }
        const std::string &getRoot() const { return root; }
        const std::string &getMountPoint() const { return mount_point; }
        const std::unordered_map<std::string, std::string> &getMountOptions() const { return mount_options; }
        const std::string &getOptionalFields() const { return optional_fields; }
        const std::string &getFilesystemType() const { return filesystem_type; }
        const std::string &getMountSource() const { return mount_source; }
        const std::unordered_map<std::string, std::string> &getSuperOptions() const { return super_options; }

    private:
        dev_t device;
        int mount_id, parent_id;
        std::string root, mount_point, optional_fields, filesystem_type, mount_source;
        std::unordered_map<std::string, std::string> mount_options, super_options;
    };

    const std::vector<mountinfo_entry> &parseSelfMountinfo(bool cached = true);

    class mountinfo_root_resolver
    {
    public:
        mountinfo_root_resolver(const std::vector<mountinfo_entry> &mount_infos);
        std::string resolveRootOf(const mountinfo_entry &mount_info) const;

    private:
        std::unordered_map<dev_t, std::string> device_mount_map;
    };
}
