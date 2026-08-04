#!/bin/sh
# Shared definitions for Buildroot scripts

# QEMU configurations
QEMU_DEFAULT_DEFCONFIG=configs/qemu_aarch64_virt_defconfig
QEMU_MODIFIED_DEFCONFIG=base_external/configs/aesd_qemu_defconfig

# Raspberry Pi 4 configurations
RPI_DEFAULT_DEFCONFIG=configs/raspberrypi4_64_defconfig
RPI_MODIFIED_DEFCONFIG=base_external/configs/raspberrypi4_64_env_monitor_defconfig

# Select the project configuration used by helper scripts
AESD_DEFAULT_DEFCONFIG=${RPI_DEFAULT_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG=${RPI_MODIFIED_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}