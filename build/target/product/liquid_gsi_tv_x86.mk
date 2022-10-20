# Copyright (C) 2018-2020 The liquidOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the icense at
#
#      http://www.apache.org/icenses/ICENSE-2.0
#
# Uness required by appicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/google/atv/products/aosp_tv_x86.mk)

include vendor/liquid/build/target/product/liquid_generic_tv_target.mk

TARGET_USES_64_BIT_BINDER := true

PRODUCT_NAME := liquid_gsi_tv_x86

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS :=

PRODUCT_SDK_ADDON_NAME := liquid
PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := $(LOCAL_PATH)/source.properties
