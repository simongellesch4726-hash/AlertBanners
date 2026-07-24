TARGET := iphone:clang:latest:17.0
ARCHS = arm64 arm64e
THEOS_PACKAGE_SCHEME = roothide

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = AlertBannersPrefs
AlertBannersPrefs_FILES = AlertBannersPrefs.mm
AlertBannersPrefs_INSTALL_PATH = /Library/PreferenceBundles
AlertBannersPrefs_CFLAGS = -fobjc-arc
AlertBannersPrefs_FRAMEWORKS = UIKit
AlertBannersPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p "$(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences"$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist "$(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/AlertBannersPrefs.plist"$(ECHO_END)
