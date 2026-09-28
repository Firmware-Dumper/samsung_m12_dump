#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from m12 device
$(call inherit-product, device/samsung/m12/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := m12
PRODUCT_NAME := lineage_m12
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M127G
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="m12dd-user 13 TP1A.220624.014 M127GXXS9DXJ1 release-keys" \
    BuildFingerprint=samsung/m12dd/m12:13/TP1A.220624.014/M127GXXS9DXJ1:user/release-keys
