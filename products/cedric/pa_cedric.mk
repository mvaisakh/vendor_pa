#
# Copyright (C) 2018 Paranoid Android
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

# Check for target product
ifeq (pa_cedric,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/motorola/cedric/full_cedric.mk)
$(call inherit-product, device/motorola/cedric/device.mk)

# Inherit Paranoid Android Common Configurations
TARGET_BOOT_ANIMATION_RES := 1080

include vendor/pa/main.mk
include device/qcom/common/common.mk

TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_USES_AOSP := false
TARGET_USES_QCOM_BSP := false

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cedric
PRODUCT_MODEL := Moto G5
PRODUCT_NAME := pa_cedric
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

endif
