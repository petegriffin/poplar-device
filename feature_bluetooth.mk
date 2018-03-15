# $(hal) = bluetooth
# it includes all the configure files for $(hal) feature and
# the $(hal) library

# config files

# hardware features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

PRODUCT_PACKAGES += \
	android.hardware.bluetooth@1.0-service \
	android.hardware.bluetooth@1.0-service.rc \
	android.hardware.bluetooth@1.0-impl

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/../poplar-kernel/modules/btmtk_usb.ko:$(TARGET_COPY_OUT_VENDOR)/lib/modules/btmtk_usb.ko

# bt hal blob copy from vendor
$(call inherit-product, vendor/mediatek/poplar/bt-hal-blob.mk)
