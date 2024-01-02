#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from 1906 device
$(call inherit-product, device/vivo/1906/device.mk)

PRODUCT_DEVICE := 1906
PRODUCT_NAME := aosp_1906
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1906
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="1906-user 11 RP1A.200720.012 compiler1009161735 release-keys"

BUILD_FINGERPRINT := vivo/1906/1906:11/RP1A.200720.012/compiler1009161735:user/release-keys
