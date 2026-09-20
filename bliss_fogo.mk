#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fogos device
$(call inherit-product, device/motorola/fogo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)
# foss / microg apps
#$(call inherit-product-if-exists, vendor/foss/foss.mk)
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
BUILD_BROKEN_SRC_DIR_IS_WRITABLE := true 

#  Gapps Pkg
GAPPS_ARCH:= arm64
#TARGET_GAPPS_VARIANT := pico
#TARGET_GAPPS_VARIANT := nano
#TARGET_GAPPS_VARIANT := micro
TARGET_GAPPS_VARIANT := full
#TARGET_GAPPS_VARIANT := stock

# MicroG
#ifeq ($BLISS-BUILD-VARIANT), microg)@
#$(call inherit-product-if-exists, vendor/partner_gms)
#endif

PRODUCT_NAME := bliss_fogo
PRODUCT_DEVICE := fogo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G - 2024

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fogo_g-user 15 V1UFNS35H.193-20-14 2c2db8-05b2f release-keys MV-304" \
    BuildFingerprint=motorola/fogo_g/fogo:15/V1UFNS35H.193-20-14/2c2db8-05b2f:user/release-keys \
    DeviceProduct=fogo_g
