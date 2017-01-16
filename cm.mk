
# Inherit from common
$(call inherit-product, device/samsung/gtel-common/cm.mk)

$(call inherit-product, device/samsung/gtesqltespr/full_gtesqltespr.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gtesqltespr
PRODUCT_NAME := cm_gtesqltespr
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T377P
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung
