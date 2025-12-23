# Herdar as configurações da própria ROM (isso muda de ROM para ROM)
$(call inherit-product, vendor/crdroid/config/common_full_phone.mk)

# Herdar a nossa base universal que criamos acima
$(call inherit-product, device/samsung/a15/a15.mk)

PRODUCT_NAME := crdroid_a15
