#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the base device configuration
$(call inherit-product, device/samsung/a15g99/device.mk)

# Inherit common crDroid configuration
$(call inherit-product, vendor/crdroid/config/common.mk)

# Device identifiers
PRODUCT_NAME := crdroid_a15g99
PRODUCT_DEVICE := a15g99
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A155M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# crDroid specific overrides
CRDROID_BUILD_TYPE := OFFICIAL
CRDROID_RELEASE := true
CRDROID_MAINTAINER := Llucs