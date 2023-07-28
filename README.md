
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
 ```bash
 $ ./build.sh lunch    //Choose the second lunch： 2.BoardConfig-rk3588-armsom-w3.mk
 $ ./build.sh
 ```

- After the compilation is complete, generate update firmware in the rockdev directory

###  2.1.2 debain
- Enter the project root directory and execute the following command to compile:
 ```bash
 $ export RK_ROOTFS_SYSTEM=debian
 $ ./build.sh lunch    //Choose the second lunch： 2.BoardConfig-rk3588-armsom-w3.mk
 $ ./build.sh
 ```

- After the compilation is complete, generate update firmware in the rockdev directory

## 2.2 Compile only the U-Boot
- Enter the project root directory and execute the following command to compile:
 ```bash
 $ ./build.sh uboot
 ```

## 2.3 Compile only the Kernel
- Enter the project root directory and execute the following command to compile:
 ```bash
 $ ./build.sh kernel
 ```
- After the compilation is complete, the boot firmware is generated in the kernel directory

## 2.4 Compile only the Rootfs
- Enter the root directory of the project directory and execute the following commands to automatically complete the compilation and packaging of Rootfs:
```bash
 $ ./build.sh rootfs
```
- After compiling, generate rootfs.ext4 under the Buildroot directory output/rockchip_chip model/images.

## 2.5 Compile only the debain
- Enter the root directory of the project directory and execute the following commands to automatically complete the compilation and packaging of debain:
```bash
 $ ./build.sh debain
```
- After compiling, it will be generated under the debian/ directory: linaro-bullseye-alip-xxxxx-1.tar.gz (xxxxx represents the generation time stamp).
# 3. Flash firmware
- ArmSoM-W3 can be started with eMMC Module or μSD Card.
## 3.1 Tools
- Windows Driver install : /tools/windows/DriverAssitant_v5.12.zip
- Windows flashing tool ： /tools/windows/RKDevTool_Release_v2.96
## 3.2 Upgrade Firmware：
- Windows Driver install :Run DriverInstall.exe in DriverAssitant_v5.12, first select the driver to uninstall, and then select the driver to install.
- This tool defaults language is Chinese. you can change it to English after extract the package. Open RKDevTool_Release_v2.96/config.ini with an text editor (like notepad).
  If you want to change to English, change Selected to 2
![1690515395752](https://github.com/ArmSoM/armsom-w3-bsp/assets/119930033/5b0f9b46-8541-4dae-9df4-9ce3cc4ef1bb)
- If it is displayed that an MSC device is found, click [Switch] on the firmware upgrade interface to enter the loader burning mode.
 ![image](https://github.com/ArmSoM/armsom-w3-bsp/assets/119930033/ca0770cc-1ecb-4171-85a7-80b294d94a42)
- Press the [Firmware] button, select the firmware file to be upgraded, after loading the firmware, click the [Upgrade] button, and wait for the programming to complete.
![1690516070515](https://github.com/ArmSoM/armsom-w3-bsp/assets/119930033/9c117478-b790-4caa-bc35-f04dfde4c74d)





