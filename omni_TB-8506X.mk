$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from tb8768tp1_64_bsp device
$(call inherit-product, device/Lenovo/TB-8506X/device.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace ${_CODENAME_} with your Device Name's Value.
# Replace ${_VENDORNAME_} with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/Lenovo/TB-8506X/prebuilt/Image.gz-dtb:kernel

# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := TB-8506X
PRODUCT_NAME := omni_TB-8506X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB-8506X
PRODUCT_MANUFACTURER := Lenovo

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Lenovo/TB-8506X/TB-8506X:11/RP1A.200720.011/TB-8506X_S000046_231212_ROW:user/release-keys" \
    PRIVATE_BUILD_DESC="full_tb8768tp1_64_bsp 11.0 RP1A.200720.011 TB-8506X_S000046_231212_ROW release-keys"
