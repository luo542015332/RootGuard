# PandaSU Zygisk Module - Magisk Zygisk API 实现
# 使用 Magisk Zygisk API + xhook

LOCAL_PATH := $(call my-dir)

# 输出目录：zygisk/arm64-v8a/
ZYGISK_OUT := $(LOCAL_PATH)/../zygisk/arm64-v8a

# xhook 源代码路径
XHOOK_PATH := $(LOCAL_PATH)/xhook

# 编译主模块（包含 xhook 源代码）
include $(CLEAR_VARS)
LOCAL_MODULE := panda_zygisk
LOCAL_MODULE_PATH := $(ZYGISK_OUT)
LOCAL_SRC_FILES := native.cpp \
                   xhook/xhook.c \
                   xhook/xh_core.c \
                   xhook/xh_elf.c \
                   xhook/xh_log.c \
                   xhook/xh_util.c \
                   xhook/xh_version.c
LOCAL_LDLIBS := -llog -landroid
LOCAL_CFLAGS := -Wall -Wno-unused-parameter -Wno-unused-function -DXHOOK_VERSION=\"1.0.0\"
LOCAL_CPPFLAGS := -std=c++17 -Werror
LOCAL_STL := c++_static
include $(BUILD_SHARED_LIBRARY)
