
# 1. Project catalog introduction

- app: Store the upper application app, mainly qcamera/qfm/qplayer/settings and other applications.
- buildroot: The root file system developed based on buildroot.
- debian: Based on the root file system developed by debian, it supports some chips.
- device/rockchip: Store the board-level configuration and Parameter files of each chip, as well as some scripts and preparatory files for compiling and packaging firmware pieces.
- docs: store chip module development guidance documents, platform support list, chip platform related documents, Linux development guide, etc.
- IMAGE: Stores compile time, XML, patches and firmware directories for each build.
- external: store third-party related warehouses, including audio, video, network, recovery, etc.
- kernel: store the code developed by kernel5.10.
- prebuilts: store the cross-compilation toolchain.
- rkbin: store Rockchip-related binaries and tools.
- rockdev: store compiled output firmware.
- tools: store common tools in Linux and Windows operating system environments.
- u-boot: stores the uboot code developed based on the v2017.09 version.
- yocto: Based on the root file system developed by yocto, it supports some chips.

# 2. How to compile

## 2.1 The whole compilation
- The default system is Buildroot, you can specify rootfs by setting the environment variable RK_ROOTFS_SYSTEM. RK_ROOTFS_SYSTEM
Three types can be set before: buildroot, debian, yocto.

### 2.1.1 buildroot
- Enter the project root directory and execute the following command to compile: 
$ ./build.sh lunch    ( Choose the second lunch： 2.BoardConfig-rk3588-armsom-w3.mk )
$ ./build.sh

- After the compilation is complete, generate update firmware in the rockdev directory

###  2.1.2 debain
- Enter the project root directory and execute the following command to compile:
$ export RK_ROOTFS_SYSTEM=debian
$ ./build.sh lunch    ( Choose the second lunch： 2.BoardConfig-rk3588-armsom-w3.mk )
$ ./build.sh

- After the compilation is complete, generate update firmware in the rockdev directory

## 2.2 Compile only the U-Boot
- Enter the project root directory and execute the following command to compile:
$ ./build.sh uboot

## 2.3 Compile only the Kernel
- Enter the project root directory and execute the following command to compile:
$ ./build.sh kernel

- After the compilation is complete, the boot firmware is generated in the kernel directory

## 2.4 Compile only the Rootfs
- Enter the root directory of the project directory and execute the following commands to automatically complete the compilation and packaging of Rootfs:
 $ ./build.sh rootfs
- After compiling, generate rootfs.ext4 under the Buildroot directory output/rockchip_chip model/images.

## 2.5 Compile only the debain
- Enter the root directory of the project directory and execute the following commands to automatically complete the compilation and packaging of debain:
 $ ./build.sh debain
- After compiling, it will be generated under the debian/ directory: linaro-bullseye-alip-xxxxx-1.tar.gz (xxxxx represents the generation time stamp).

# 3. armsom-w3-bsp 

change: delete /external/camera engine rkaig/common/gen mesh/android/genMesh static 32bit/libgenMeshl ib.a,Because this file is larger than 100M

change: delete /external/camera engine rkaig/common/gen mesh/android/genMesh static 64bit/libgenMeshl ib.a,Because this file is larger than 100M
