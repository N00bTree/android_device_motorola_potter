# Release name
PRODUCT_RELEASE_NAME := potter

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := potter
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := Moto G5 Plus
PRODUCT_NAME := omni_potter

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0 \
