# BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit device configuration for cooperve
$(call inherit-product, device/alcatel/v860/full_v860.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := Alcatelv860
PRODUCT_VERSION_DEVICE_SPECIFIC := v860

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := v860
PRODUCT_NAME := cm_v860
