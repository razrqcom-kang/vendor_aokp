# Inherit AOSP device configuration for i9300.
$(call inherit-product, device/motorola/mb886/full_mb886.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# mb886 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/mb886

# Setup device specific product configuration.
PRODUCT_NAME := aokp_mb886
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := mb886
PRODUCT_MODEL := Atrix HD
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mb886 TARGET_DEVICE="Atrix HD" BUILD_FINGERPRINT="motorola/MB886_att/qinara:4.1.1/9.8.0Q-97_MB886_FFW-20/27:user/release-keys" PRIVATE_BUILD_DESC="mb886-user 4.1.1 9.8.0Q-97 MB886_FFW-20/27 release-keys"
PRODUCT_RELEASE_NAME := Atrix HD

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
