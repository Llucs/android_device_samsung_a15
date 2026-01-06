# Inherit the settings from the ROM itself.
$(call inherit-product, vendor/crdroid/config/common.mk)

$(call inherit-product, device/samsung/a15/a15.mk)

PRODUCT_NAME := crdroid_a15
