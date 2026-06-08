#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, device/samsung/a15/device.mk)

PRODUCT_NAME := lineage_a15
PRODUCT_DEVICE := a15
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A155M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a15m-user 16 BP2A.250605.031.A3 A155MUBSADZB5 release-keys"

BUILD_FINGERPRINT := samsung/a15m/a15:16/BP2A.250605.031.A3/A155MUBSADZB5:user/release-keys