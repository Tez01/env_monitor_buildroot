
##############################################################
#
# ENV_MONITOR
#
##############################################################

ENV_MONITOR_VERSION = 88b006c697f0c618683a6087484b2b225d20ee41
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
ENV_MONITOR_SITE = git@github.com:Tez01/env_monitor.git
ENV_MONITOR_SITE_METHOD = git
ENV_MONITOR_GIT_SUBMODULES = YES

define ENV_MONITOR_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/src all
endef

define ENV_MONITOR_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/src/env_monitor $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/src/env_monitor-start-stop $(TARGET_DIR)/etc/init.d/S97env_monitor
endef

$(eval $(generic-package))

