# Inherit from the base device configuration first
$(call inherit-product, device/samsung/a15/a15.mk)

# Inherit some common YAAP stuff (last, to allow overrides and extensions)
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Device identifier / Product name for YAAP builds
PRODUCT_NAME := yaap_a15