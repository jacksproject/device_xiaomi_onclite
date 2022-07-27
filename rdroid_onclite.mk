#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common derp stuff.
$(call inherit-product, vendor/rdroid/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rdroid_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "xiaomi/onc/onc:9/PKQ1.181021.001/V11.0.3.0.PFLMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="onc-user 9 PKQ1.181021.001 V11.0.3.0.PFLMIXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.derp.maintainer=MrUn1corn

# DerpFestOS Official
#DERP_BUILD_TYPE := UNOFFICIAL

# Disable Live Wallpaper
#TARGET_INCLUDE_LIVE_WALLPAPERS := false

# maintainer flag (one word only/no spacing)
RICE_MAINTAINER := MrUn1corn

# chipset flag (one word only/no spacing)
RICE_CHIPSET := Qualcomm_MSM8953_Snapdragon_632

# gapps build flag, if not defined build type is vanilla
WITH_GMS := false

# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 720

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Memory properties
# Tune these properties according to device perfconfigstore.xml(if available)/device capabilities.
# These props are overridable
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.fw.bg_apps_limit?=48 \
    persist.sys.fw.use_trim_settings?=true \
    persist.sys.fw.empty_app_percent?=50 \
    persist.sys.fw.trim_empty_percent?=100 \
    persist.sys.fw.trim_cache_percent?=100 \
    persist.sys.fw.trim_enable_memory?=2147483648 \
    persist.sys.fw.bservice_age?=120000 \
    persist.sys.fw.bservice_limit?=6 \
    persist.sys.fw.bservice_enable?=true 