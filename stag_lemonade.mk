#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonade device
$(call inherit-product, device/oneplus/lemonade/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/stag/main.mk)

PRODUCT_NAME := stag_lemonade
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2113

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus9 \
    PRODUCT_NAME=OnePlus9_EEA \
    PRIVATE_BUILD_DESC="redfin-user 12 SQ1A.220205.002 8010174 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:12/SQ1A.220205.002/8010174:user/release-keys"
