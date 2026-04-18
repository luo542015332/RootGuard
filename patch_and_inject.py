#!/usr/bin/env python3
"""
Replace PandaTurbo DEX files with apktool-recompiled PandaSU DEX (all 17).
Package name is com.pandasu.turbo in both.
This ensures all LSPoed dependencies are present.
"""
import os, sys, zipfile, shutil, subprocess

# All 17 DEX from apktool-recompiled PandaSU (package renamed to com.pandasu.turbo)
LSPOED_APK = r"C:\Users\Administrator\WorkBuddy\pandasu_decompiled\build\apk\PandaSU_366_repack.apk"

def main():
    project = os.path.dirname(os.path.abspath(__file__))
    default_apk = os.path.join(project, "app", "build", "outputs", "apk", "debug", "app-debug.apk")
    input_apk = sys.argv[1] if len(sys.argv) > 1 else default_apk
    output_apk = os.path.join(os.path.expanduser("~"), "Desktop", "PandaTurbo_v2.6.31.apk")

    if not os.path.exists(input_apk):
        print(f"ERROR: {input_apk} not found"); sys.exit(1)
    
    # Need to rebuild the apktool APK first
    if not os.path.exists(LSPOED_APK):
        print("Building apktool APK...")
        decompiled = r"C:\Users\Administrator\WorkBuddy\pandasu_decompiled"
        subprocess.run([
            "java", "-jar", r"C:\tools\apktool.jar", "b", decompiled, "-o", LSPOED_APK
        ], capture_output=True, text=True)
        if not os.path.exists(LSPOED_APK):
            print("ERROR: apktool build failed"); sys.exit(1)

    print(f"PandaTurbo APK: {os.path.getsize(input_apk)} bytes")
    print(f"Repacked APK:   {os.path.getsize(LSPOED_APK)} bytes")

    # Read all DEX from repacked APK
    repacked_dex = {}
    with zipfile.ZipFile(LSPOED_APK, "r") as z:
        for name in z.namelist():
            if name.startswith("classes") and name.endswith(".dex"):
                repacked_dex[name] = z.read(name)
    print(f"Repacked DEX files: {len(repacked_dex)}")

    # Build new APK: take non-DEX files from PandaTurbo, DEX files from repacked
    with zipfile.ZipFile(input_apk, "r") as zin, \
         zipfile.ZipFile(output_apk, "w") as zout:
        # Copy all non-DEX files from PandaTurbo (resources, manifest, assets, etc.)
        for item in zin.infolist():
            if item.filename.startswith("classes") and item.filename.endswith(".dex"):
                continue  # Skip PandaTurbo DEX files
            zout.writestr(item, zin.read(item))
        
        # Write all DEX files from repacked APK
        for name in sorted(repacked_dex.keys()):
            data = repacked_dex[name]
            info = zipfile.ZipInfo(name)
            info.compress_type = zipfile.ZIP_DEFLATED
            zout.writestr(info, data)
            print(f"  DEX: {name} ({len(data)} bytes)")

    print(f"\nOutput: {output_apk} ({os.path.getsize(output_apk)} bytes)")

    # Sign
    apksigner = r"C:\Users\Administrator\AppData\Local\Android\Sdk\build-tools\34.0.0\apksigner.bat"
    keystore = os.path.expanduser(r"~\.android\debug.keystore")
    signed = output_apk.replace(".apk", "_signed.apk")
    
    # Zipalign
    aligned = output_apk.replace(".apk", "_aligned.apk")
    subprocess.run([
        r"C:\Users\Administrator\AppData\Local\Android\Sdk\build-tools\34.0.0\zipalign.exe",
        "-f", "-p", "4", output_apk, aligned
    ], capture_output=True)
    
    subprocess.run([
        apksigner, "sign", "--ks", keystore,
        "--ks-key-alias", "androiddebugkey",
        "--ks-pass", "pass:android", "--key-pass", "pass:android",
        "--out", signed, aligned
    ], capture_output=True, text=True)
    
    # Replace unsigned with signed
    if os.path.exists(signed):
        os.replace(signed, output_apk)
        os.remove(aligned)
        print(f"Signed: {output_apk} ({os.path.getsize(output_apk)} bytes)")
    else:
        print("Sign failed")

if __name__ == "__main__":
    main()
