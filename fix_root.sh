#!/system/bin/sh
magisk --sqlite "DELETE FROM policies WHERE package_name='com.rootguard.app'" 2>/dev/null
magisk --sqlite "INSERT INTO policies (uid, package_name, policy, until, logging, notification) VALUES ((SELECT uid FROM packages WHERE package_name='com.rootguard.app'), 'com.rootguard.app', 2, 0, 1, 1)" 2>/dev/null
echo "Done"
