#!/usr/bin/env python3
"""
应用列表获取方法测试脚本
测试不同的方法获取 Android 设备上的应用列表
"""

import subprocess
import re
import json
from datetime import datetime

def run_adb_command(command, timeout=10):
    """执行 ADB 命令"""
    full_command = f"adb shell {command}"
    try:
        result = subprocess.run(
            full_command,
            shell=True,
            capture_output=True,
            text=True,
            timeout=timeout
        )
        return result.stdout.strip(), result.stderr.strip(), result.returncode
    except subprocess.TimeoutExpired:
        return "", "Timeout", -1

def test_method_1_pm_list_packages():
    """测试方法 1: pm list packages 命令"""
    print("\n" + "="*70)
    print("测试 1: pm list packages 命令")
    print("="*70)

    # 测试基本命令
    output, error, code = run_adb_command("su -c 'pm list packages'")
    print(f"命令: su -c 'pm list packages'")
    print(f"退出码: {code}")

    if code == 0:
        packages = [line.replace("package:", "").strip() 
                   for line in output.split('\n') if line.strip()]
        print(f"返回应用数量: {len(packages)}")

        # 检查关键应用
        check_key_apps(packages, "pm list packages")
    else:
        print(f"错误: {error}")

    # 测试 -3 参数（第三方应用）
    output_3rd, _, _ = run_adb_command("su -c 'pm list packages -3'")
    packages_3rd = [line.replace("package:", "").strip() 
                   for line in output_3rd.split('\n') if line.strip()]
    print(f"\n第三方应用 (-3): {len(packages_3rd)}")

    # 测试 -s 参数（系统应用）
    output_sys, _, _ = run_adb_command("su -c 'pm list packages -s'")
    packages_sys = [line.replace("package:", "").strip() 
                  for line in output_sys.split('\n') if line.strip()]
    print(f"系统应用 (-s): {len(packages_sys)}")
    print(f"总计: {len(packages_3rd) + len(packages_sys)}")

    return packages if code == 0 else []

def test_method_2_ksud_app_list():
    """测试方法 2: ksud app-list 命令"""
    print("\n" + "="*70)
    print("测试 2: ksud app-list 命令")
    print("="*70)

    output, error, code = run_adb_command("su -c 'ksud app-list'")
    print(f"命令: su -c 'ksud app-list'")
    print(f"退出码: {code}")

    if code == 0:
        print(f"输出预览（前 500 字符）:\n{output[:500]}")

        # 尝试解析 JSON
        packages = []
        try:
            # 查找所有 package_name 字段
            matches = re.findall(r'"package_name":\s*"([^"]+)"', output)
            packages = list(set(matches))  # 去重
            print(f"解析到的应用数量: {len(packages)}")

            if packages:
                check_key_apps(packages, "ksud app-list")
        except Exception as e:
            print(f"解析失败: {e}")
    else:
        print(f"错误: {error}")
        print("ksud 命令可能不可用")

    return packages if code == 0 else []

def test_method_3_pm_dump_package():
    """测试方法 3: 使用 dumpsys package"""
    print("\n" + "="*70)
    print("测试 3: dumpsys package 命令")
    print("="*70)

    # 使用 dumpsys package | grep -E 'Packages:|Package'
    output, error, code = run_adb_command("su -c 'dumpsys package | grep -E \"Packages:|Package \\[\"'")
    print(f"命令: su -c 'dumpsys package | grep -E \"Packages:|Package \\[\"'")
    print(f"退出码: {code}")

    if code == 0:
        # 解析输出
        packages = re.findall(r'Package \[([^\]]+)\]', output)
        packages = list(set([pkg.split('/')[0] for pkg in packages if pkg]))
        print(f"返回应用数量: {len(packages)}")

        if packages:
            check_key_apps(packages, "dumpsys package")
    else:
        print(f"错误: {error}")

    return packages if code == 0 else []

def check_key_apps(packages, method_name):
    """检查关键应用是否存在"""
    key_apps = {
        "com.tencent.mm": "微信",
        "com.tencent.mobileqq": "QQ",
        "com.tencent.tmgp.sgame": "英雄联盟",
    }

    print(f"\n关键应用检查 ({method_name}):")
    print("-" * 70)

    found_count = 0
    for pkg, name in key_apps.items():
        if pkg in packages:
            print(f"✓ 找到: {pkg} ({name})")
            found_count += 1
        else:
            print(f"✗ 未找到: {pkg} ({name})")

    print(f"\n找到关键应用: {found_count}/{len(key_apps)}")
    print("-" * 70)

def save_results(results):
    """保存测试结果到文件"""
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    filename = f"app_list_test_results_{timestamp}.txt"

    with open(filename, 'w', encoding='utf-8') as f:
        f.write("="*70 + "\n")
        f.write("应用列表获取方法测试结果\n")
        f.write(f"时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write("="*70 + "\n\n")

        for method, data in results.items():
            f.write(f"{method}\n")
            f.write("-"*70 + "\n")
            f.write(f"应用数量: {len(data['packages'])}\n")
            f.write(f"是否找到微信: {'✓' if 'com.tencent.mm' in data['packages'] else '✗'}\n")
            f.write(f"是否找到QQ: {'✓' if 'com.tencent.mobileqq' in data['packages'] else '✗'}\n")
            f.write(f"是否找到英雄联盟: {'✓' if 'com.tencent.tmgp.sgame' in data['packages'] else '✗'}\n")
            f.write(f"错误: {data['error']}\n")
            f.write("\n")

    print(f"\n结果已保存到: {filename}")

def main():
    print("="*70)
    print("应用列表获取方法测试工具")
    print("="*70)

    # 测试 ADB 连接
    print("\n检查 ADB 连接...")
    output, _, code = run_adb_command("echo test", timeout=5)
    if code != 0:
        print("错误: 无法连接到设备")
        print("请确保:")
        print("1. 设备已通过 USB 连接")
        print("2. 已启用 USB 调试")
        print("3. 已授权此计算机进行调试")
        return

    print("✓ ADB 连接正常")

    # 运行所有测试
    results = {}

    # 方法 1: pm list packages
    packages_1 = test_method_1_pm_list_packages()
    results["方法 1: pm list packages"] = {
        "packages": packages_1,
        "error": ""
    }

    # 方法 2: ksud app-list
    packages_2 = test_method_2_ksud_app_list()
    results["方法 2: ksud app-list"] = {
        "packages": packages_2,
        "error": "" if packages_2 else "命令不可用"
    }

    # 方法 3: dumpsys package
    packages_3 = test_method_3_pm_dump_package()
    results["方法 3: dumpsys package"] = {
        "packages": packages_3,
        "error": ""
    }

    # 保存结果
    save_results(results)

    # 总结
    print("\n" + "="*70)
    print("测试总结")
    print("="*70)

    best_method = None
    max_count = 0

    for method, data in results.items():
        count = len(data['packages'])
        if count > max_count:
            max_count = count
            best_method = method

    print(f"推荐方法: {best_method} (返回 {max_count} 个应用)")
    print("\n请在 PandaSU 中实现此方法以获取完整的应用列表。")

if __name__ == "__main__":
    main()
