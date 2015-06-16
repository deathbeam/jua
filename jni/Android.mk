LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := luajit
LOCAL_SRC_FILES := $(LOCAL_PATH)/../libs/$(TARGET_ARCH_ABI)/libluajit.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
 
LOCAL_MODULE    := nonlua
LOCAL_C_INCLUDES := nonlua luajit sdl luasocket 
 
LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__
LOCAL_CPPFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__
LOCAL_LDLIBS := -lm
LOCAL_ARM_MODE  := arm
LOCAL_SHARED_LIBRARIES := luajit
 
LOCAL_SRC_FILES := luasocket/udp.c\
	luasocket/timeout.c\
	luasocket/inet.c\
	luasocket/tcp.c\
	luasocket/io.c\
	luasocket/options.c\
	luasocket/luasocket.c\
	luasocket/mime.c\
	luasocket/select.c\
	luasocket/except.c\
	luasocket/wsocket.c\
	luasocket/unix.c\
	luasocket/auxiliar.c\
	luasocket/buffer.c\
	luasocket/usocket.c\
	memcpy_wrap.c\
	nonlua/nljavalib.cpp\
	nonlua/nlsocklib.cpp\
	nonlua/nonlua.cpp\
	io.nondev.nonlua.Lua.cpp\
	common/video.c\
	common/surface.c\
	common/variant.c\
	common/common.c\
	common/table.c\
	common/rwops.c\
	common/array.c
 
include $(BUILD_SHARED_LIBRARY)
