content = b"""\
id=battery_turbo
name=PandaTurbo Battery Spoof
version=v1
versionCode=1
author=PandaTurbo
description=Battery temp spoof
"""
with open("/data/local/tmp/panda_module/module.prop", "wb") as f:
    f.write(content)
print("OK")
