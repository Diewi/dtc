LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libfdt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_UNSTRIPPED)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/libfdt/include

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/libfdt \
    $(LOCAL_PATH)/libfdt/include

LOCAL_SRC_FILES := \
    libfdt/fdt.c \
    libfdt/fdt_ro.c \
    libfdt/fdt_wip.c \
    libfdt/fdt_sw.c \
    libfdt/fdt_rw.c \
    libfdt/fdt_strerror.c \
    libfdt/fdt_empty_tree.c \
    libfdt/fdt_addresses.c \
    libfdt/fdt_overlay.c

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libdtcutil
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_UNSTRIPPED)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
    util.c

LOCAL_STATIC_LIBRARIES := \
    libfdt

include $(BUILD_STATIC_LIBRARY)
