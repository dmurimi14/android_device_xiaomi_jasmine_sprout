#
# Copyright 2018 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := jasmine_sprout

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger
	
# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A2
PRODUCT_MANUFACTURER := Xiaomi

# add support for future ota updates
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0
    
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="jasmine_sprout" \
    PRODUCT_NAME="jasmine_sprout" \
    PRIVATE_BUILD_DESC="jasmine-user 9 PKQ1.180904.001 V10.0.3.0.PDIMIXM release-keys"

BUILD_FINGERPRINT := "xiaomi/jasmine/jasmine_sprout:9/PKQ1.180904.001/V10.0.3.0.PDIMIXM:user/release-keys"