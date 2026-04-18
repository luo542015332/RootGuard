import zipfile, struct

paths = {
    'orig':    r'C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\build\outputs\apk\debug\app-debug.apk',
    'aligned': r'C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\build\outputs\apk\debug\app-aligned.apk',
}
for name, path in paths.items():
    with zipfile.ZipFile(path) as z:
        data = z.read('AndroidManifest.xml')
        magic = int.from_bytes(data[:4], 'little')
        print(f'{name}: size={len(data)}, magic={hex(magic)}, first8={data[:8].hex()}')
        print(f'  Is Android XML (0x3)? {hex(magic) == "0x3"}')
