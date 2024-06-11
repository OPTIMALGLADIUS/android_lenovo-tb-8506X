#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from fire device
$(call inherit-product, device/lenovo/tb8506x/device.mk)
PRODUCT_DEVICE := tb-8506x
PRODUCT_NAME := twrp_tb8506x
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo Tab M8 3rd Gen
PRODUCT_MANUFACTURER := lenovo
