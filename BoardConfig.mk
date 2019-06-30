LOCAL_PATH := device/motorola/potter

# CPU
# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_ARCH_VARIANT := armv7-a-neon
# ro.product.cpu.abi and ro.product.cpu.abi2 are obsolete,
# use ro.product.cpu.abilist instead.
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_CPU_ABI),$(TARGET_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_32_BIT)
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Platform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_SEPARATED_DT := true
# BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
# Kernel offsets
BOARD_KERNEL_BASE := 0x80000000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
# Kernel prebuilts
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/recovery.img-zImage
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/recovery.img-dt
# Kernel CMDLINE
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8
BOARD_KERNEL_CMDLINE += androidboot.console=ttyHSL0
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += user_debug=30
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += vmalloc=350M
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
# Make boot image arguments
BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

#BOARD_USES_QCOM_HARDWARE := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216        #    16384 * 1024 mmcblk0p37
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616    #    16484 * 1024 mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296    #  4194304 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25614597120 # 25014255 * 1024 mmcblk0p54
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
RECOVERY_VARIANT := twrp
# don't take forever to wipe
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := RGB_565
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab

# Qcom specific fixes
TARGET_RECOVERY_QCOM_RTC_FIX := true

PLATFORM_SECURITY_PATCH := 2019-02-01

########
# TWRP #
########
TW_USE_TOOLBOX := true
TW_NEW_ION_HEAP := true

# Display
TW_THEME := portrait_hdpi
TW_DEFAULT_BRIGHTNESS := 188
TW_MAX_BRIGHTNESS := 1023
TW_NO_SCREEN_BLANK := true
TW_NO_SCREEN_TIMEOUT := true
TW_SCREEN_BLANK_ON_BOOT := true

# Locale
TW_EXTRA_LANGUAGES := false
TW_DEFAULT_LANGUAGE := en

# Excludes
TW_EXCLUDE_TWRPAPP := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
TARGET_CRYPTFS_HW_PATH := $(LOCAL_PATH)/cryptfs_hw

# Debug
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
