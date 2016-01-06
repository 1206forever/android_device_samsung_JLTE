LOCAL_PATH := device/samsung/jlte

PRODUCT_AAPT_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := 480x800

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PACKAGES += \
com.android.future.usb.accessory \
libnetcmdiface \
Stk \
static_busybox \
make_ext4fs \
setup_fs

PRODUCT_COPY_FILES += \
frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

$(call inherit-product-if-exists, vendor/samsung/galaxyJLTE/newman.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_NAME := newman
PRODUCT_DEVICE := galaxyJLTE
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-J100FN

PRODUCT_COPY_FILES += \
	vendor/samsung/galaxyJLTE/lib/libbt-vendor.so \
	vendor/samsung/galaxyJLTE/lib/libwvdrm_L3.so \
	vendor/samsung/galaxyJLTE/lib/libWVStreamControlAPI_L3.so \
	vendor/samsung/galaxyJLTE/lib/hw/keystore.mrvl.so \
	vendor/samsung/galaxyJLTE/lib/hw/lights.mrvl.so \
	vendor/samsung/galaxyJLTE/lib/mediadrm/libwvdrmengine.so \
	vendor/samsung/galaxyJLTE/etc/audio_effects.conf \
	vendor/samsung/galaxyJLTE/firmware/bcm2079xA2_firmware.ncd \
	vendor/samsung/galaxyJLTE/firmware/bcm2079xA2_pre_firmware.ncd \
	vendor/samsung/galaxyJLTE/media/LMspeed_508.emd \
	vendor/samsung/galaxyJLTE/media/PFFprec_600,emd \
