#!/system/bin/sh
# Add SELinux rules for magisk domain to write battery sysfs
magiskpolicy --live \
  "allow magisk vendor_sysfs_battery_supply file { read write open getattr setattr }" \
  "allow magisk sysfs_battery file { read write open getattr setattr }" \
  "allow magisk sysfs file { read write open getattr setattr }" \
  "permissive magisk"
echo "SELinux rules injected"
