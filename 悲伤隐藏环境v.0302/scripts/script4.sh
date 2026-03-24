#!/system/bin/sh
# 示例功能：查看模块列表
TARGET_URL="https://bszip.me"
ui_print "- 安装完成，正在打开指定网站: $TARGET_URL"
am start -a android.intent.action.VIEW -d "$TARGET_URL" ||  # 移除重定向，显示打开网址的信息
ui_print "✗ 打开网站失败，请手动访问: $TARGET_URL"