#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := panther
DEVICE_PATH := device/google/pantah
VENDOR_PATH := vendor/google/panther
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)
PRODUCT_SYSTEM_BRAND := google
PRODUCT_SYSTEM_MANUFACTURER := Google
PRODUCT_SYSTEM_NAME := generic_system_google

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

RISING_MAINTAINER=EliteDarkKaiser
RISING_VERSION := 9

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := true

# GMS build flags, true by default
# Ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
WITH_GMS := true

# Addons
TARGET_HAS_UDFPS := true
TARGET_PREBUILT_BCR := true

# Launcher Flags
TARGET_DEFAULT_PIXEL_LAUNCHER := false

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.sys.default_launcher=0 \
    persist.sys.quickswitch_pixel_shipped=1

TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Enables Google Face Unlock (GFU)
TARGET_SUPPORTS_GFU := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Google Tensor G2" \
    RisingMaintainer="EliteDarkKaiser" \
    BuildDesc="panther-user 17 CP3A.261005.002.A1 16269273 release-keys" \
    BuildSystemDesc="generic_system_google-user 17 CP3A.261005.002.A1 16269273 release-keys" \
    BuildFingerprint=google/panther/panther:17/CP3A.261005.002.A1/16269273:user/release-keys \
    BuildSystemFingerprint=google/generic_system_google/generic:17/CP3A.261005.002.A1/16269273:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
