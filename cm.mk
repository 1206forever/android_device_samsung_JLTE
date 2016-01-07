# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit from these products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/jlte/jlte.mk)

PRODUCT_NAME := cm_jlte
PRODUCT_DEVICE := jlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := J100FN
PRODUCT_MANUFACTURER := samsung
