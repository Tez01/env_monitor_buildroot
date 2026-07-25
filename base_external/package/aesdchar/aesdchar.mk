
##############################################################
#
# AESDCHAR
#
##############################################################

AESDCHAR_VERSION = 13ce47eb673910ed7f53915d3e041dce61a3c2e3
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Tez01
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_DRIVER_DIR = aesd-char-driver

AESDCHAR_MODULE_SUBDIRS = $(AESDCHAR_DRIVER_DIR)


define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/$(AESDCHAR_DRIVER_DIR)/aesdchar_load $(TARGET_DIR)/usr/bin/aesdchar_load
	$(INSTALL) -m 0755 $(@D)/$(AESDCHAR_DRIVER_DIR)/aesdchar_unload $(TARGET_DIR)/usr/bin/aesdchar_unload
endef

$(eval $(kernel-module))

$(eval $(generic-package))

