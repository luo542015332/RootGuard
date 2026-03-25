# PandaSU Zygisk Module - ZygiskNext API 实现
# 使用 ZygiskNext API

LOCAL_PATH := $(call my-dir)

# 输出目录：zygisk/arm64-v8a/
ZYGISK_OUT := $(LOCAL_PATH)/../zygisk/arm64-v8a

include $(CLEAR_VARS)
LOCAL_MODULE := panda_zygisk
LOCAL_MODULE_PATH := $(ZYGISK_OUT)
LOCAL_SRC_FILES := native.cpp
LOCAL_LDLIBS := -llog -landroid -lstdc++
LOCAL_CFLAGS := -Wall -Werror -Wno-unused-parameter
include $(BUILD_SHARED_LIBRARY)
