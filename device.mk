#
# Copyright (C) 2024 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a15

# Herdar arquivos proprietários do Vendor
$(call inherit-product, vendor/samsung/a15/a15-vendor.mk)

# Ativar Treble e A/B
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# A/B OTA
AB_OTA_UPDATER := true
PRODUCT_PACKAGES += \
    checkpoint_gc \
    update_engine \
    update_verifier

# Partições Dinâmicas
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fingerprint (Atualizado para Android 15/OneUI 7 base)
BUILD_FINGERPRINT := samsung/a15m/a15:15/VP1A.240905.001/A155MUBU7CYH1:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a15m-user 15 VP1A.240905.001 A155MUBU7CYH1 release-keys"

# Screen Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=440

# Gráficos (Mali-G57 Helio G99)
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@4.0-service \
    android.hardware.graphics.composer@2.4-service \
    android.hardware.graphics.mapper@4.0-impl.freezer

# Áudio (Versões modernas para Android 15)
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@7.1-impl \
    android.hardware.audio.effect@7.0-impl \
    android.hardware.bluetooth.audio-impl

# Bluetooth / Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.1-service \
    android.hardware.wifi@1.0-service \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Sensores e Identidade Samsung
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1-service.multihal \
    android.hardware.biometrics.fingerprint@2.3-service.samsung

# Copiar Permissões Essenciais
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml

# Init Scripts
PRODUCT_PACKAGES += \
    init.a15.rc \
    init.mt6789.rc
