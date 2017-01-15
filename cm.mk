
# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab E

# Boot animation
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280

$(call inherit-product, device/samsung/gtesqltespr/full_gtesqltespr.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/telephony.mk)
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gtesqltespr
PRODUCT_NAME := cm_gtesqltespr
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T377P
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung
