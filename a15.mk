#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/samsung/a15/device.mk)

PRODUCT_NAME := a15
PRODUCT_DEVICE := a15
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A155M
PRODUCT_MANUFACTURER := samsung
