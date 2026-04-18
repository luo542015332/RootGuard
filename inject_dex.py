"""
inject_dex.py - 解压 APK，追加 LSPoed DEX，重新打包
"""
import zipfile, os, shutil, tempfile

APK_PATH = r"C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\build\outputs\apk\debug\app-debug.apk"
LSPOED_DIR = r"C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode"
LSPOED_FILES = [
    ("classes2.dex", "classes15.dex"),
    ("classes3.dex", "classes16.dex"),
    ("classes4.dex", "classes17.dex"),
]

# 创建临时目录
TMP_DIR = tempfile.mkdtemp(prefix="pandaturbo_")
print(f"解压到: {TMP_DIR}")

try:
    # 解压 APK
    with zipfile.ZipFile(APK_PATH, 'r') as z:
        z.extractall(TMP_DIR)
    
    # 复制 LSPoed DEX
    for src_name, dest_name in LSPOED_FILES:
        src_path = os.path.join(LSPOED_DIR, src_name)
        dest_path = os.path.join(TMP_DIR, dest_name)
        if os.path.exists(src_path):
            shutil.copy2(src_path, dest_path)
            print(f"  复制: {src_name} -> {dest_name}")
        else:
            print(f"  [跳过] 不存在: {src_name}")
    
    # 重新打包 APK（删除原文件）
    os.remove(APK_PATH)
    
    # 收集所有文件
    all_files = []
    for root, dirs, files in os.walk(TMP_DIR):
        for f in files:
            fp = os.path.join(root, f)
            arcname = os.path.relpath(fp, TMP_DIR).replace('\\', '/')
            all_files.append((fp, arcname))
    
    # 按文件名排序（DEX 在前）
    def sort_key(x):
        name = x[1]
        if name.startswith('classes') and name.endswith('.dex'):
            # 提取数字排序
            import re
            m = re.search(r'classes(\d*)\.dex', name)
            if m:
                num = int(m.group(1)) if m.group(1) else 0
                return (0, num, name)
        return (1, 0, name)
    
    all_files.sort(key=sort_key)
    
    # 写入新 APK
    with zipfile.ZipFile(APK_PATH, 'w', zipfile.ZIP_STORED) as z:
        for fp, arcname in all_files:
            if arcname.endswith('.dex') or arcname == 'resources.arsc':
                # STORED
                z.write(fp, arcname, compress_type=zipfile.ZIP_STORED)
            else:
                # DEFLATE
                z.write(fp, arcname, compress_type=zipfile.ZIP_DEFLATED)
    
    # 列出 DEX 文件
    with zipfile.ZipFile(APK_PATH, 'r') as z:
        dex_files = sorted([n for n in z.namelist() if n.startswith('classes') and n.endswith('.dex')])
        print(f"\n新 APK DEX 文件 ({len(dex_files)} 个): {dex_files}")
    
    size_mb = os.path.getsize(APK_PATH) // 1024 // 1024
    print(f"\n完成！APK 大小: {os.path.getsize(APK_PATH)//1024} KB ({size_mb} MB)")

finally:
    # 清理临时目录
    shutil.rmtree(TMP_DIR, ignore_errors=True)
