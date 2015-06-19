LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := luajit
LOCAL_SRC_FILES := $(LOCAL_PATH)/../libs/android32/$(TARGET_ARCH_ABI)/libluajit.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
 
LOCAL_MODULE    := nonlua
LOCAL_C_INCLUDES := nonlua luajit 
 
LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__
LOCAL_CPPFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__
LOCAL_LDLIBS := -lm
LOCAL_ARM_MODE  := arm
LOCAL_SHARED_LIBRARIES := luajit
 
LOCAL_SRC_FILES := memcpy_wrap.c\
	nonlua/nljavalib.cpp\
	nonlua/nonlua.cpp\
	io.nondev.nonlua.Lua.cpp
 
include $(BUILD_SHARED_LIBRARY)
