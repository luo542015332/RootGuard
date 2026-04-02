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
                   $(XHOOK_PATH)/xhook.c \
                   $(XHOOK_PATH)/xh_core.c \
                   $(XHOOK_PATH)/xh_elf.c \
                   $(XHOOK_PATH)/xh_log.c \
                   $(XHOOK_PATH)/xh_util.c \
                   $(XHOOK_PATH)/xh_version.c
LOCAL_LDLIBS := -llog -landroid -lstdc++
LOCAL_CFLAGS := -Wall -Werror -Wno-unused-parameter -Wno-unused-function -DXHOOK_VERSION=\"1.0.0\"
include $(BUILD_SHARED_LIBRARY)
