#!/bin/bash

# Target arch
export RK_KERNEL_ARCH=arm64
# Uboot defconfig
export RK_UBOOT_DEFCONFIG=rk3568
# Uboot image format type: fit(flattened image tree)
export RK_UBOOT_FORMAT_TYPE=fit
# Kernel defconfig
export RK_KERNEL_DEFCONFIG=rockchip_linux_defconfig
# Kernel dts
export RK_KERNEL_DTS=rk3568-evb1-ddr4-v10-linux
# boot image type
export RK_BOOT_IMG=boot.img
# kernel image path
export RK_KERNEL_IMG=kernel/arch/arm64/boot/Image
# kernel image format type: fit(flattened image tree)
export RK_KERNEL_FIT_ITS=boot.its
# parameter for GPT table
export RK_PARAMETER=parameter-buildroot-fit.txt
# Buildroot config
export RK_CFG_BUILDROOT=rockchip_rk3568
# Recovery config
export RK_CFG_RECOVERY=rockchip_rk356x_recovery
# Recovery image format type: fit(flattened image tree)
export RK_RECOVERY_FIT_ITS=boot4recovery.its
# target chip
export RK_CHIP=rk356x
# Set rootfs type, including ext2 ext4 squashfs
export RK_ROOTFS_TYPE=ext4
# Set debian version (debian10: buster, debian11: bullseye)
export RK_DEBIAN_VERSION=bullseye
# yocto machine
export RK_YOCTO_MACHINE=rockchip-rk3568-evb
#misc image
export RK_MISC=wipe_all-misc.img
# Define WiFi BT chip
# Compatible with Realtek and AP6XXX WiFi : RK_WIFIBT_CHIP=ALL_AP
# Compatible with Realtek and CYWXXX WiFi : RK_WIFIBT_CHIP=ALL_CY
# Single WiFi configuration: AP6256 or CYW43455: RK_WIFIBT_CHIP=AP6256
export RK_WIFIBT_CHIP=ALL_AP
# Define BT ttySX
export RK_WIFIBT_TTY=ttyS8
# <dev>:<mount point>:<fs type>:<mount flags>:<source dir>:<image size(M|K|auto)>:[options]
export RK_EXTRA_PARTITIONS="oem:/oem:ext2:defaults:oem_normal:auto:resize@userdata:/userdata:ext2:defaults:userdata_normal:auto:resize"