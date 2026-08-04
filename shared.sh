#!/bin/sh
# Shared definitions for Buildroot scripts

# Standard Raspberry Pi 4 64-bit configuration supplied by Buildroot
RPI_DEFAULT_DEFCONFIG=configs/raspberrypi4_64_defconfig

# Project-specific Raspberry Pi configuration
RPI_MODIFIED_DEFCONFIG=base_external/configs/raspberrypi4_64_env_monitor_defconfig

AESD_DEFAULT_DEFCONFIG=${RPI_DEFAULT_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG=${RPI_MODIFIED_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}