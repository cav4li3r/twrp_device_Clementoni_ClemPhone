$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace ClemPhone with your Device Name's Value.
# Replace Clementoni with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/Clementoni/ClemPhone/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := ClemPhone
PRODUCT_NAME := omni_ClemPhone
PRODUCT_BRAND := Clementoni
PRODUCT_MODEL := ClemPhone
PRODUCT_MANUFACTURER := Clementoni

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Clementoni/ClemPhone/ClemPhone:6.0/MMB29V/20160805:user/release-keys" \
    PRIVATE_BUILD_DESC="ClemPhone 6.0.1 MMB29V 20160805 release-keys"