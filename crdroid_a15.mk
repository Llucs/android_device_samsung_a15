# Herda a base neutra que acabamos de configurar
$(call inherit-product, device/samsung/a15/a15.mk)

# Herda as configurações específicas do crDroid
$(call inherit-product, vendor/crdroid/config/common.mk)

# Identidade da ROM
PRODUCT_NAME := crdroid_a15

# crDroid specific overrides
CRDROID_BUILD_TYPE := OFFICIAL
CRDROID_RELEASE := true
CRDROID_MAINTAINER := Llucs
