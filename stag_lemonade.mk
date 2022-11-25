#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonade device
$(call inherit-product, device/oneplus/lemonade/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/stag/main.mk)

# Extra Animations
EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_NAME := stag_lemonade
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2115

PRODUCT_SYSTEM_NAME := OnePlus9
PRODUCT_SYSTEM_DEVICE := OnePlus9

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
