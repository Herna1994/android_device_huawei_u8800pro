# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
# Inherit device configuration
$(call inherit-product, device/huawei/u8800pro/u8800pro.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common.mk)

PRODUCT_COPY_FILES += \
vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Setup device configuration

PRODUCT_NAME := cm_u8800pro
PRODUCT_DEVICE := u8800pro
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := U8800Pro
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := U8800PRO

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=u8800pro \
	BUILD_FINGERPRINT=huawei/u8800pro:4.4.2/KOT49H/f9268bee07:userdebug/test-keys \
	PRIVATE_BUILD_DESC="huawei-user 4.4.2 KOT49H f9268bee07 test-keys" \
	BUILD_NUMBER=KOT49H
