# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/asus/T00F/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/T00F/overlay

PRODUCT_RUNTIMES := runtime_libart_default

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := revengeos_T00F
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_T00F
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := T00F

# Inherit some common AOSP stuff.
#TARGET_ARCH := x86
#TARGET_DENSITY := xhdpi
#TARGET_BOOT_ANIMATION_RES := 720
#TARGET_INCLUDE_ARCORE := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_T00F \
    BUILD_FINGERPRINT=asus/WW_a500cg/ASUS_T00F:5.0/LRX21V/WW_user_3.24.40.87_20151222_34:user/release-keys \

    PRIVATE_BUILD_DESC="a500cg-user 5.0 LRX21V WW_user_3.24.40.87_20151222_34 release-keys"
