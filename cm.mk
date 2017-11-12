# Release name
PRODUCT_RELEASE_NAME := blade_v0720

# SU
WITH_SU := true

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/blade_v0720/device_blade_v0720.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := blade_v0720
PRODUCT_NAME := cm_blade_v0720
PRODUCT_BRAND := zte
PRODUCT_MODEL := blade_v0720
PRODUCT_MANUFACTURER := zte
