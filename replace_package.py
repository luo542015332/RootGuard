#!/usr/bin/env python3
"""
批量替换 smali 文件中的包名
从 com.rootguard.app 替换为 com.pandasu.turbo
"""

import os
import re
import sys
from pathlib import Path

def replace_in_file(file_path, old_pkg, new_pkg):
    """替换单个文件中的包名"""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 替换 Lcom/rootguard/app/ 为 Lcom/pandasu/turbo/
        old_path = old_pkg.replace('.', '/')
        new_path = new_pkg.replace('.', '/')
        
        new_content = content.replace(f'L{old_path}/', f'L{new_path}/')
        new_content = new_content.replace(f'{old_pkg}.', f'{new_pkg}.')
        new_content = new_content.replace(f'"{old_pkg}"', f'"{new_pkg}"')
        
        if new_content != content:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(new_content)
            return True
        return False
    except Exception as e:
        print(f"Error processing {file_path}: {e}")
        return False

def process_directory(directory, old_pkg, new_pkg):
    """处理目录中的所有 smali 文件"""
    modified = 0
    total = 0
    
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.smali'):
                total += 1
                file_path = os.path.join(root, file)
                if replace_in_file(file_path, old_pkg, new_pkg):
                    modified += 1
                    print(f"Modified: {file_path}")
    
    return total, modified

def main():
    if len(sys.argv) < 2:
        print("Usage: python replace_package.py <smali_directory>")
        print("Example: python replace_package.py C:/PandaSU_3.6.6/smali_classes2")
        sys.exit(1)
    
    smali_dir = sys.argv[1]
    old_package = "com.rootguard.app"
    new_package = "com.pandasu.turbo"
    
    if not os.path.exists(smali_dir):
        print(f"Directory not found: {smali_dir}")
        sys.exit(1)
    
    print(f"Replacing '{old_package}' with '{new_package}'")
    print(f"Directory: {smali_dir}")
    print("-" * 50)
    
    total, modified = process_directory(smali_dir, old_package, new_package)
    
    print("-" * 50)
    print(f"Total files: {total}")
    print(f"Modified files: {modified}")
    print("Done!")

if __name__ == "__main__":
    main()
