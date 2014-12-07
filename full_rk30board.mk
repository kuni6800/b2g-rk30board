# Copyright (C) 2011 The Android Open Source Project
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

PRODUCT_PROPERTY_OVERRIDES := \
        net.dns1=8.8.8.8 \
        net.dns2=8.8.4.4

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/rockchip/rk30board/device.mk)
$(call inherit-product-if-exists, device/rockchip/rk30board/proprietary/release.mk)

PRODUCT_NAME := full_rk30board
PRODUCT_DEVICE := rk30board
PRODUCT_BRAND := Rockchip
PRODUCT_MODEL := Model based on Rockchip SoC
PRODUCT_MANUFACTURER := OEM
