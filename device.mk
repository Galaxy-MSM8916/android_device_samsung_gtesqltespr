#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gtesqltespr/gtesqltespr-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gtesqltespr

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

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.samsung.realcall=true

# Media configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Enable RIL
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libsec-ril.so \
	persist.radio.lte_vrte_ltd=1 \
	persist.radio.add_power_save=1 \
	persist.data.netmgrd.qos.enable=false \
	persist.radio.snapshot_enabled=1 \
	persist.radio.snapshot_timer=22 \
	persist.eons.enabled=true \
	ro.telephony.ril_class=SamsungQcomRIL
	telephony.lteOnCdmaDevice=1

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-T377P \
	ro.product.device=gtesqltespr

