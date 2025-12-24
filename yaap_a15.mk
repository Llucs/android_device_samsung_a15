# Herdar as configurações da ROM YAAP
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Herdar a base universal do dispositivo
$(call inherit-product, device/samsung/a15/a15.mk)

PRODUCT_NAME := yaap_a15
