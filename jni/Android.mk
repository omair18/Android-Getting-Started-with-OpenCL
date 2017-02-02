LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := testcl
LOCAL_SRC_FILES := testcl.cpp

#LOCAL_LDLIBS 	+= $(LOCAL_PATH)/../external/libGLES_mali.so
LOCAL_LDLIBS 	:= -llog -ljnigraphics
LOCAL_LDLIBS 	+= $(LOCAL_PATH)/../external/libOpenCL.so
LOCAL_ARM_MODE  := arm

include $(BUILD_SHARED_LIBRARY)