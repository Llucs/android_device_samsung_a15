#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common crDroid stuff.
$(call inherit-product, vendor/crdroid/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := crdroid_a15g99
PRODUCT_DEVICE := a15g99
PRODUCT_MODEL := SM-A155M

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_NAME)

# crDroid specific overrides
CRDROID_BUILD_TYPE := OFFICIAL
CRDROID_RELEASE := true
CRDROID_MAINTAINER := Llucs
