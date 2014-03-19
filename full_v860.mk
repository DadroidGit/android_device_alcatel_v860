# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# This is where we'd set a backup provider if we had one
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Inherit device specific files
$(call inherit-product, device/alcatel/v860/device_v860.mk)

# Board-specific init
PRODUCT_COPY_FILES += \
    	device/alcatel/v860/ramdisk/ueventd.rc:root/ueventd.rc \
    	device/alcatel/v860/ramdisk/init.bcm21553.rc:root/init.bcm21553.rc \

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_v860
PRODUCT_DEVICE := v860
PRODUCT_MODEL := VodafoneSmart2
