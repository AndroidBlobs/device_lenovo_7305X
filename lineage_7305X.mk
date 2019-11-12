# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from 7305X device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lenovo
PRODUCT_DEVICE := 7305X
PRODUCT_MANUFACTURER := lenovo
PRODUCT_NAME := lineage_7305X
PRODUCT_MODEL := Lenovo TB-7305X

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
TARGET_VENDOR := lenovo
TARGET_VENDOR_PRODUCT_NAME := 7305X
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_mt8765_P-user 9 PPR1.180610.011 2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Lenovo/LenovoTB-7305X_S/7305X:9/PPR1.180610.011/S000030_190920_ROW:user/release-keys
