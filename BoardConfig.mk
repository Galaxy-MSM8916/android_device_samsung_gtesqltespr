# Inherit from common
include device/samsung/gte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gtesqltespr

# Asserts
TARGET_OTA_ASSERT_DEVICE := gtesqltespr,samsung_sm_t377p,t377p

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gtes_spr_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 2516582400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12767424512

# RIL
BOARD_MODEM_TYPE := xmm7260
