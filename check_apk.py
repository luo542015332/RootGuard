import zipfile
apk = r'C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\build\outputs\apk\debug\app-debug.apk'
with zipfile.ZipFile(apk) as z:
    data = z.read('AndroidManifest.xml')
    magic = int.from_bytes(data[:4], 'little')
    dex = sorted([n for n in z.namelist() if n.startswith('classes') and n.endswith('.dex')])
    valid = (magic == 0x3)
    print('manifest magic:', hex(magic), 'valid:', valid)
    print('DEX files:', dex)
