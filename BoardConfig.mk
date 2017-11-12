
FORCE_32_BIT = true

# inherit from the proprietary version
-include vendor/zte/blade_v0720/BoardConfigVendor.mk
LOCAL_PATH := device/zte/blade_v0720

# Architecture
ifeq ($(FORCE_32_BIT),true)
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6735m
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
else
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
endif

TARGET_NO_BOOTLOADER := true
TARGET_CPU_SMP := true

ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USERIMAGES_USE_EXT4:=true

USE_CAMERA_STUB := true



TARGET_BOOTLOADER_BOARD_NAME := mt6735

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
#TARGET_KERNEL_SOURCE := kernel/zte/mt6735m
#TARGET_KERNEL_CONFIG := ztexa6735m_35gu_m_defconfig



TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab

# TWRP
RECOVERY_VARIANT := twrp
DEVICE_RESOLUTION := 720x1280
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file
TW_MAX_BRIGHTNESS := 255
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "Internal sdcard"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "External sdcard"
# TW_CRYPTO_FS_TYPE := "ext4"
# TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p7"
# TW_CRYPTO_MNT_POINT := "/data"
# TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_FB2PNG := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

#system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

#twrp ( WIP do not use!!! see comments )

#tw_theme is essential flag
TW_THEME := portrait_hdpi

#brightness settings (needs verification)
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness/
TW_MAX_BRIGHTNESS := 255

#may be usefull if we get graphical glitches
#RECOVERY_GRAPHICS_USE_LINELENGTH := true

#in case of wrong color this needs modification
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

#if sdcard0 is a /data/media emulated one
#RECOVERY_SDCARD_ON_DATA := true

#ntfs support? (needs much space..)
#TW_INCLUDE_NTFS_3G := true

#we may need that if sdcard0 dont work
#TW_FLASH_FROM_STORAGE := true
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_DEFAULT_EXTERNAL_STORAGE := true

#only add if kernel supports
#TW_INCLUDE_FUSE_EXFAT := true

#F2FS support (only activate if kernel supports)
#TARGET_USERIMAGES_USE_F2FS:=true


#Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true
#COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DMTK_AOSP_ENHANCEMENT
#COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE -DMTK_AOSP_ENHANCEMENT

# Display
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1


# CyanogenMod Hardware Hooks
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw/

# RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

TARGET_LDPRELOAD += libxlog.so:libmtk_symbols.so

BOARD_SECCOMP_POLICY := $(LOCAL_PATH)/seccomp

TARGET_TAP_TO_WAKE_NODE := /sys/devices/mx_tsp/gesture_control

