# Herdar as configurações da LineageOS
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Herdar a base universal do dispositivo
$(call inherit-product, device/samsung/a15/a15.mk)

PRODUCT_NAME := lineage_a15