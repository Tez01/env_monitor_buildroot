
##############################################################
#
# ENV_MONITOR
#
##############################################################

ENV_MONITOR_VERSION = e9ff011f80a01f5191a09ad2b71cfaa27b89187c
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
ENV_MONITOR_SITE = git@github.com:Tez01/env_monitor.git
ENV_MONITOR_SITE_METHOD = git
ENV_MONITOR_GIT_SUBMODULES = YES

define ENV_MONITOR_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/src all
endef

define ENV_MONITOR_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/src/env_monitor $(TARGET_DIR)/usr/bin/env_monitor
	$(INSTALL) -D -m 0755 $(@D)/src/env_monitor-start-stop $(TARGET_DIR)/etc/init.d/S98env_monitor
endef

$(eval $(generic-package))