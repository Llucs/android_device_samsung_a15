# Inherit from the base device configuration first
$(call inherit-product, device/samsung/a15/a15.mk)

# Inherit some common Lineage stuff (last, so it can override/extend device configs)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Define the product name for LineageOS builds
PRODUCT_NAME := lineage_a15