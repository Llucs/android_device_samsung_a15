# Herdar configurações comuns de dispositivos (AOSP)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Chamar o nosso device.mk que configuramos agora pouco
$(call inherit-product, device/samsung/a15/device.mk)

# Informações do Produto
PRODUCT_NAME := a15
PRODUCT_DEVICE := a15
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A155M
PRODUCT_MANUFACTURER := samsung
