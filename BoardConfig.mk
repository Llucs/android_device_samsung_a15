# BoardConfig.mk (Galaxy A15 SM-A155M - Helio G99)

# -----------------------------------------------------
# CPU / Arquitetura
# -----------------------------------------------------
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a76
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_VARIANT := cortex-a55
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# -----------------------------------------------------
# Bootloader / Display
# -----------------------------------------------------
TARGET_BOOTLOADER_BOARD_NAME := a15
TARGET_NO_BOOTLOADER := true
TARGET_SCREEN_DENSITY := 440

# -----------------------------------------------------
# Kernel (Source Tree)
# -----------------------------------------------------
DEVICE_PATH := device/samsung/a15g99
KERNEL_PATH := $(DEVICE_PATH)/kernel

TARGET_KERNEL_SOURCE := device/samsung/a15g99/kernel/kernel-5.10
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := a15_defconfig
TARGET_KERNEL_CLANG_VERSION := 17

BOARD_BOOTIMG_HEADER_VERSION := 4
BOARD_KERNEL_BASE := 0x3fff8000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE += bootopt=64S3,32N2,64N2
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_SEPARATED_DTBO := false
BOARD_PREBUILT_DTBOIMAGE := $(KERNEL_PATH)/dtbo.img
BOARD_RAMDISK_USE_LZ4 := true

# -----------------------------------------------------
# Platform
# -----------------------------------------------------
TARGET_BOARD_PLATFORM := mt6789
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# -----------------------------------------------------
# Partições
# -----------------------------------------------------
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 200000000
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 92160000
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 614400000
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 81457280

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_PRODUCT := product

# -----------------------------------------------------
# Super / Dynamic
# -----------------------------------------------------
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := dynamic_partitions
BOARD_PARTITION_LIST := system system_ext vendor product
$(foreach p, $(BOARD_PARTITION_LIST), $(eval BOARD_$(call to-upper,$(p))IMAGE_FILE_SYSTEM_TYPE := ext4))
$(foreach p, $(BOARD_PARTITION_LIST), $(eval TARGET_COPY_OUT_$(call to-upper,$(p)) := $(call to-lower,$(p))))

BOARD_USES_METADATA_PARTITION := true

# -----------------------------------------------------
# Recovery (somente o essencial)
# -----------------------------------------------------
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_BOOT_IMG := false
BOARD_USES_RECOVERY_AS_BOOT := false

# -----------------------------------------------------
# A/B OTA
# -----------------------------------------------------
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    system \
    system_ext \
    vendor \
    vendor_boot \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor

# -----------------------------------------------------
# Verified Boot (AVB)
# -----------------------------------------------------
BOARD_AVB_ENABLE := true
BOARD_AVB_ALGORITHM := SHA256_RSA4096
BOARD_AVB_KEY_PATH := path/to/your/releasekey.pem
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag

BOARD_AVB_BOOT_KEY_PATH := path/to/your/releasekey.pem
BOARD_AVB_BOOT_ALGORITHM := SHA256_RSA4096

BOARD_AVB_VBMETA_SYSTEM := product system system_ext
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := path/to/your/releasekey.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA4096

BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := path/to/your/releasekey.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA4096

# -----------------------------------------------------
# VNDK / Treble
# -----------------------------------------------------
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_VERSION := current

# -----------------------------------------------------
# SEPolicy
# -----------------------------------------------------
# (descomente abaixo se tiver o repositório sepolicy_vndr)
# include device/mediatek/sepolicy_vndr/SEPolicy.mk

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# -----------------------------------------------------
# Wi-Fi
# -----------------------------------------------------
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211

WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := "STA"
WIFI_DRIVER_FW_PATH_AP := "AP"
WIFI_DRIVER_FW_PATH_P2P := "P2P"
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_STATE_ON := "1"
WIFI_DRIVER_STATE_OFF := "0"
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true

# -----------------------------------------------------
# Identificadores / Vendor
# -----------------------------------------------------
TARGET_VENDOR_PRODUCT_NAME := a15
TARGET_VENDOR_DEVICE_NAME := a15

# -----------------------------------------------------
# F2FS Compression e depuração
# -----------------------------------------------------
PRODUCT_FS_COMPRESSION := 1
BOARD_SUPPRESS_SECURE_ERASE := true