LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
 
LOCAL_MODULE    := nonlua
LOCAL_C_INCLUDES := lua luasocket 
 
LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__
LOCAL_CPPFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__
LOCAL_LDLIBS := -lm
LOCAL_ARM_MODE  := arm
 
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
	lua/loadlib.c\
	lua/ltm.c\
	lua/lbitlib.c\
	lua/lzio.c\
	lua/lauxlib.c\
	lua/linit.c\
	lua/lbaselib.c\
	lua/lfunc.c\
	lua/ltablib.c\
	lua/lmem.c\
	lua/lstring.c\
	lua/lopcodes.c\
	lua/lutf8lib.c\
	lua/lctype.c\
	lua/ldo.c\
	lua/llex.c\
	lua/ldblib.c\
	lua/lvm.c\
	lua/lobject.c\
	lua/lmathlib.c\
	lua/ldebug.c\
	lua/liolib.c\
	lua/ldump.c\
	lua/loslib.c\
	lua/lapi.c\
	lua/lcode.c\
	lua/lstate.c\
	lua/lgc.c\
	lua/lua.c\
	lua/lundump.c\
	lua/lparser.c\
	lua/lstrlib.c\
	lua/ltable.c\
	lua/lcorolib.c\
	memcpy_wrap.c\
	nonsocket.cpp\
	io.nondev.nonlua.Lua.cpp\
	nonlua.cpp
 
include $(BUILD_SHARED_LIBRARY)
