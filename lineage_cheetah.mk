#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := cheetah
DEVICE_PATH := device/google/pantah
VENDOR_PATH := vendor/google/cheetah
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Ship Basic Call Recorder
TARGET_PREBUILT_BCR := true

# Addons
TARGET_HAS_UDFPS := true
TARGET_PREBUILT_BCR := true

# Gms 
WITH_GMS := true
TARGET_SUPPORTS_QUICK_TAP := true
RELEASE_PIXEL_2025_ENABLED := true

#Ship Pixel Overlays
WITH_PIXEL_OVERLAYS := false

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Use Scudo instead of Jemalloc
PRODUCT_USE_SCUDO := true

RISING_MAINTAINER=EliteDarkKaiser
RISING_VERSION := 8.0
TARGET_FACE_UNLOCK_SUPPORTED := false

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cheetah-user 16 BP2A.250805.005 13691446 release-keys" \
    BuildFingerprint=google/cheetah/cheetah:16/BP2A.250805.005/13691446:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
