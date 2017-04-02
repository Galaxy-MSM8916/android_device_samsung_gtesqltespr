# CABL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0

# RAM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.low_ram=false \
	ro.config.zram=false

# Screen
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=213

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_cdma_sub=0 \
	ro.telephony.default_network=8 \
	telephony.lteOnCdmaDevice=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.sib16_support=1

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-T377P \
	ro.product.device=gtesqltespr

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.cdma.default_alpha=Chameleon \
	ro.cdma.default_numeric=310000 \
	ro.com.android.dataroaming=true \
	ro.config.afw=DO \
	ro.config.combined_signal=true
