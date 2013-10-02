# Copyright (C) 2012 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_xt897c,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Specify phone tech before including full_phone
$(call inherit-product, vendor/pa/config/cdma.mk)

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/motorola/xt897c/full_xt897c.mk)

# Include CM extras
EXTRA_CM_PACKAGES ?= true

# Override AOSP build properties
PRODUCT_NAME := pa_xt897c
PRODUCT_BRAND := motorola
PRODUCT_MODEL := xt897c
PRODUCT_MANUFACTURER := motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=xt897c TARGET_DEVICE=xt897c BUILD_FINGERPRINT="motorola/xt897c_us_spr/asanti_c:4.1.2/9.8.2Q-122_xt897c_FFW-5/6:user/release-keys"

# Include ParanoidAndroid repos configuration
include vendor/pa/config/pa_addons.mk

endif
