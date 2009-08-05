LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= \
    ethtool.c \
    amd8111e.c \
    e1000.c \
    ibm_emac.c \
    marvell.c \
    pcnet32.c \
    smsc911x.c \
    vioc.c \
    de2104x.c \
    e100.c \
    fec_8xx.c \
    ixgb.c \
    natsemi.c \
    realtek.c \
    tg3.c

LOCAL_CFLAGS = -DHAVE_CONFIG_H

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    external/ethtool

LOCAL_MODULE := ethtool
LOCAL_STATIC_LIBRARIES := libc

include $(BUILD_EXECUTABLE)
