# Write module.prop using hex on device
import subprocess, sys

content = b"id=battery_turbo\nname=PandaTurbo Battery Spoof\nversion=v1\nversionCode=1\nauthor=PandaTurbo\ndescription=Battery temp spoof\n"

# Write as Python file on device via hex
hex_str = content.hex()
cmd = f'printf "%s" "{hex_str}" | xxd -r -p > /data/local/tmp/panda_module/module.prop'
r = subprocess.run(["adb", "-s", "695b931f", "shell", "su", "-c", cmd], capture_output=True, text=True)
print(r.stdout, r.stderr)

# Verify
r2 = subprocess.run(["adb", "-s", "695b931f", "shell", "su", "-c", "cat /data/local/tmp/panda_module/module.prop"], capture_output=True, text=True)
print("Result:", r2.stdout.strip())
