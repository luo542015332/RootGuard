#!/system/bin/sh
# 完全重置 PandaSU 的 Root 权限
magisk --sqlite "DELETE FROM policies" 2>/dev/null
magisk --sqlite "INSERT INTO policies (uid, package_name, policy, until, logging, notification) VALUES ((SELECT uid FROM packages WHERE package_name='com.rootguard.app'), 'com.rootguard.app', 2, 0, 1, 1)" 2>/dev/null
magisk --sqlite "INSERT INTO policies (uid, package_name, policy, until, logging, notification) VALUES ((SELECT uid FROM packages WHERE package_name='com.topjohnwu.magisk'), 'com.topjohnwu.magisk', 2, 0, 1, 1)" 2>/dev/null
magisk --sqlite "INSERT INTO policies (uid, package_name, policy, until, logging, notification) VALUES ((SELECT uid FROM packages WHERE package_name='me.weishu.kernelsu'), 'me.weishu.kernelsu', 2, 0, 1, 1)" 2>/dev/null
echo "Policy reset done"
