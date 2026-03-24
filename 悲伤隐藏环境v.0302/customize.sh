#设置权限
set_perm_recursive "$MODPATH" 0 0 0755 0755
#检测管理器类型

if [[ "$KSU" == "true" ]]; then
  KSU_KERNEL_VER=${KSU_KERNEL_VER_CODE:-0}
  echo "- KernelSU 版本: $KSU_VER_CODE(用户)/$KSU_KERNEL_VER(内核)"
  RootImplement="KernelSU"
elif [[ "$APATCH" == "true" ]]; then
  echo "- APatch 版本: $APATCH_VER($APATCH_VER_CODE)"
  RootImplement="APatch"
else
  echo "- Magisk 版本: $MAGISK_VER($MAGISK_VER_CODE)"
  RootImplement="Magisk"
fi


# ===================== 核心修改：定义方案映射（可自定义） =====================
case "$RootImplement" in
    "Magisk")
        ExecuteScheme="Magisk/Alpha方案"
        ;;
    "APatch")
        ExecuteScheme="APatch"
        ;;
    "KernelSU")
    ExecuteScheme="KernelSU"
        ;;
esac

ui_print "*********************************************
- 环境: $RootImplement
- 执行方案: $ExecuteScheme
*********************************************"

# ===================== 方案1：Magisk/Alpha方案 =====================
execute_scheme1() {
    ui_print "- 开始执行【Magisk/Alpha方案】（适配$RootImplement）:"
    
    # 定义3个APK路径
    APK_1="$MODPATH/apk/CJ.apk"
    APK_2="$MODPATH/apk/HMA.apk"
    APK_3="$MODPATH/apk/WbeUI.apk"
    #local installed=0 total=1

    ui_print "开始安装指定的APK:"

    pm install -r "$APK_1"
ui_print "-【CJ】安装完成"
sleep 1
    pm install -r "$APK_2"
ui_print "- 【HMA】安装完成"
sleep 1
    pm install -r "$APK_3"
ui_print "- 【WbeUI】安装完成"
    ui_print "- 全部APK安装成功"

sleep 3
ui_print "君埋泉下泥销骨，我寄人间雪满头"
magisk --install-module "$MODPATH/bs/1.Zygisk.zip"
ui_print "- 【Zygisk】安装完成"

ui_print "人面不知何处去，桃花依旧笑春风"
magisk --install-module "$MODPATH/bs/2.Lsp.zip"
ui_print "- 【Lsp】安装完成"

ui_print "从此无心爱良夜，任他明月下西楼"
magisk --install-module "$MODPATH/bs/3.Tricky.zip"
ui_print "- 【Tricky】安装完成"

ui_print "欲买桂花同载酒，终不似，少年游"
magisk --install-module "$MODPATH/bs/4.TrickyAddonModule.zip"
ui_print "- 【TrickyAddonModule】安装完成"

ui_print "泪眼问花花不语，乱红飞过秋千去"
magisk --install-module "$MODPATH/bs/5.PlayIntegrityFix.zip"
ui_print "- 【bs/5.PlayIntegrityFix】安装完成"

ui_print "还君明珠双泪垂，恨不相逢未嫁时"
magisk --install-module "$MODPATH/bs/Alpha/JiuZhuan.zip"
ui_print "- 【JiuZhuan】安装完成"

    ui_print "- 【Magisk/Alpha方案】执行完成"
}

# ===================== 方案2：KernelSU方案 =====================
execute_scheme2() {
    ui_print "- 开始执行【KernelSU】（适配$RootImplement）:"
    
     APK_2="$MODPATH/apk/HMA.apk"
    local installed=0 total=1

    ui_print "开始安装指定的APK:"

    pm install -r "$APK_2"
ui_print "- 【HMA】安装完成"
    sleep 1
ui_print "- 全部APK安装成功"
    sleep 2
rm -f "/data/adb/modules_update/bszip/bs/6.APacth.zip"

ui_print "君埋泉下泥销骨，我寄人间雪满头"

for ZIPFILE in $MODPATH/bs/*.zip; do
    [ ! -f "$ZIPFILE" ] && continue  # 避免文件夹为空时执行报错
    install_module "$ZIPFILE"
done
    ui_print "- 【KernelSU】执行完成"
}

# ===================== 方案3：APatch方案 =====================
execute_scheme3() {
    ui_print "- 开始执行【APacth方案】（适配$RootImplement）:"
    
         APK_2="$MODPATH/apk/HMA.apk"
    local installed=0 total=1

    ui_print "开始安装指定的APK:"

    pm install -r "$APK_2"
ui_print "- 【HMA】安装完成"
    sleep 1
ui_print "- 全部APK安装成功"
    sleep 2

for ZIPFILE in $MODPATH/bs/*.zip; do
    [ ! -f "$ZIPFILE" ] && continue  # 避免文件夹为空时执行报错
    install_module "$ZIPFILE"
done

#!/system/bin/sh
OLD=/data/adb/modules/bszipap
NEW=/data/adb/modules/bszip
[ ! -d "$OLD" ]&&echo 原文件夹不存在，无需修改&&exit 0
[ -d "$NEW" ]&&rm -rf "$NEW"&&echo 已删除原有bszip文件夹
mv "$OLD" "$NEW"&&echo 改名成功||echo 改名失败


    ui_print "- 【APacth】执行完成"
}


case "$ExecuteScheme" in
    "Magisk/Alpha方案")
        execute_scheme1
        ;;
    "KernelSU")
        execute_scheme2
        ;;
    "APatch")
        execute_scheme3
        ;;
esac

rm -rf "/data/adb/modules_update/bszip/bs"
rm -rf "/data/adb/modules_update/bszip/apk"



TARGET_URL="https://bszip.me"
ui_print "- 安装完成，正在打开玩机网站"
am start -a android.intent.action.VIEW -d "$TARGET_URL"

# 操作提示
ui_print "以下是重要的操作提示，请务必遵守："
ui_print "  1. 请勿必按照教程操作。"
ui_print "  2. 建议使用稳定版 $RootImplement 管理器，避免兼容性问题。"
ui_print "  3. 请勿更新隐藏环境模块。"
ui_print "安装完成！重启生效(首次启动需3-5分钟)"