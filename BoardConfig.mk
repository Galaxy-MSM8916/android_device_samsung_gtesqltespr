# Inherit from common
include device/samsung/gtel-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gtesspr

# Asserts
TARGET_OTA_ASSERT_DEVICE := gtesspr,samsung_sm_t377p,t377p

# Init
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_gtesspr.cpp

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gtes_spr_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 2516582400
BOARD_SYSTEMIMAGE_PARTITION_TPE    := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12767424512

# Misc.
TARGET_SYSTEM_PROP                              := $(LOCAL_PATH)/system.prop
