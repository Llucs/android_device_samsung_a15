# BoardConfig.mk (Galaxy A15 SM-A155M - Helio G99)
DEVICE_PATH := device/samsung/a15

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
# Kernel & Device Tree (DTB/DTBO)
# -----------------------------------------------------
# Caminho corrigido para a nova estrutura
TARGET_KERNEL_SOURCE := kernel/samsung/a15
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := a15_defconfig
TARGET_KERNEL_CLANG_VERSION := r416183b1

BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_BOOTIMG_HEADER_VERSION := 3
BOARD_KERNEL_BASE := 0x3fff8000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE += bootopt=64S3,32N2,64N2
BOARD_RAMDISK_USE_LZ4 := true

# Instruções para usar o DTBO que extraímos
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
# O compilador vai buscar o DTS que colocamos na pasta dtb/
TARGET_CUSTOM_DTBO := $(DEVICE_PATH)/dtb/dtbo.dts

# -----------------------------------------------------
# Platform
# -----------------------------------------------------
TARGET_BOARD_PLATFORM := mt6789
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# -----------------------------------------------------
# Partições & File Systems
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

# Super Partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := dynamic_partitions
BOARD_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product
BOARD_DYNAMIC_PARTITIONS_SIZE := 9122611200

# -----------------------------------------------------
# A/B OTA & AVB
# -----------------------------------------------------
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += boot dtbo product system system_ext vendor vendor_boot vbmeta vbmeta_system vbmeta_vendor

BOARD_AVB_ENABLE := false
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag

# -----------------------------------------------------
# SEPolicy (Apontando para a pasta correta que criamos)
# -----------------------------------------------------
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/selinux

# -----------------------------------------------------
# Wi-Fi & Identificadores
# -----------------------------------------------------
TARGET_VENDOR_PRODUCT_NAME := a15
TARGET_VENDOR_DEVICE_NAME := a15
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_VERSION := current
