# Inherit from the base device configuration first
$(call inherit-product, device/samsung/a15/a15.mk)

# Inherit the settings from the ROM itself (last, to allow overrides)
$(call inherit-product, vendor/crdroid/config/common.mk)

PRODUCT_NAME := crdroid_a15