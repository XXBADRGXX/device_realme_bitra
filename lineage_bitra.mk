#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bitra device
$(call inherit-product, device/realme/bitra/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_DISABLE_EPPE := true

# BLKI
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
BLACKIRON_BUILDTYPE := OFFICIAL
BLACKIRON_MAINTAINER := XXBADRGXX
WITH_GMS := true
WITH_GMS_VARIANT := pico

# UDFPS Icons
EXTRA_UDFPS_ICONS := true

# Opiss Cam
PRODUCT_NO_CAMERA := true
TARGET_USES_OPLUS_CAMERA := true
TARGET_CAMERA_PACKAGE_NAME := com.oplus.packageName

PRODUCT_NAME := lineage_bitra
PRODUCT_DEVICE := bitra
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3370
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX3370
PRODUCT_SYSTEM_DEVICE := RE879AL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3370-user 13 TP1A.220905.001 1680523102693 release-keys" \
    BuildFingerprint=realme/RMX3370/RE879AL1:13/TP1A.220905.001/R.159caed-9b84-9b83:user/release-keys \
    DeviceName=RE879AL1 \
    DeviceProduct=RMX3370 \
    SystemDevice=RE879AL1 \
    SystemName=RMX3370

# Inherit from release keys
$(call inherit-product, vendor/lineage-priv/keys/keys.mk)