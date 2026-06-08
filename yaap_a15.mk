#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/samsung/a15/device.mk)
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

PRODUCT_NAME := yaap_a15
PRODUCT_DEVICE := a15
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A155M
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a15m-user 16 BP2A.250605.031.A3 A155MUBSADZB5 release-keys"

BUILD_FINGERPRINT := samsung/a15m/a15:16/BP2A.250605.031.A3/A155MUBSADZB5:user/release-keys