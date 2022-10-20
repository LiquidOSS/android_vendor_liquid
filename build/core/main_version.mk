# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# LIQUIDOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.liquid.version=$(LIQUID_VERSION) \
    ro.liquid.releasetype=$(LIQUID_BUILDTYPE) \
    ro.liquid.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(LIQUID_VERSION) \
    ro.lineagelegal.url=https://lineageos.org/legal

# LIQUIDOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.liquid.display.version=$(LIQUID_DISPLAY_VERSION)

# LIQUIDOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.liquid.build.version.plat.sdk=$(LIQUID_PLATFORM_SDK_VERSION)

# LIQUIDOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.liquid.build.version.plat.rev=$(LIQUID_PLATFORM_REV)
