# Release name
PRODUCT_RELEASE_NAME := blade_v0720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/blade_v0720/device_blade_v0720.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := blade_v0720
PRODUCT_NAME := cm_blade_v0720
PRODUCT_BRAND := zte
PRODUCT_MODEL := blade_v0720
PRODUCT_MANUFACTURER := zte
