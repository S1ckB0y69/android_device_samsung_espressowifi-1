#
# Copyright (C) 2016 The CyanogenMod Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 600

# Inherit common LineageOS configuration
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# LineageOS specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/espressowifi/overlay/custom-common

# Inherit device configuration
$(call inherit-product, device/samsung/espressowifi/aosp_espressowifi.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_espressowifi

# Device build info and fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=espresso10wifixx \
    BUILD_FINGERPRINT="samsung/espresso10wifixx/espresso10wifi:4.2.2/JDQ39/P5110XXDML1:user/release-keys" \
    PRIVATE_BUILD_DESC="espresso10wifixx-user 4.2.2 JDQ39 P5110XXDML1 release-keys"

# Device & filesystem
PRODUCT_PACKAGES += \
    Launcher3Go \
    Terminal \
    nano
