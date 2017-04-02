#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gtesqltespr/gtesqltespr-vendor.mk)

# Inherit from common
USE_QCOM_MIXER_PATHS := 0
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gtesqltespr

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gtesqltespr/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
	$(LOCAL_PATH)/configs/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
	$(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# RIL Shim
PRODUCT_PACKAGES += libril_shim

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml
