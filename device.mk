#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gtesqltespr/gtesqltespr-vendor.mk)

# Inherit from common
USE_QCOM_MIXER_PATHS := 1
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gtesqltespr

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gtesqltespr/overlay

# RIL Shim
PRODUCT_PACKAGES += libril_shim

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml
