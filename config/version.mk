PRODUCT_VERSION_MAJOR = v1
PRODUCT_VERSION_MINOR = 0

ifeq ($(LIQUID_VERSION_APPEND_TIME_OF_DAY),true)
    LIQUID_BUILD_DATE := $(shell date -u +%Y%m%d_%H%M%S)
else
    LIQUID_BUILD_DATE := $(shell date -u +%Y%m%d)
endif

# Set LIQUID_BUILDTYPE from the env RELEASE_TYPE, for jenkins compat

ifndef LIQUID_BUILDTYPE
    ifdef RELEASE_TYPE
        # Starting with "LIQUID_" is optional
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^LIQUID_||g')
        LIQUID_BUILDTYPE := $(RELEASE_TYPE)
    endif
endif

# Filter out random types, so it'll reset to UNOFFICIAL
ifeq ($(filter RELEASE NIGHTLY SNAPSHOT EXPERIMENTAL,$(LIQUID_BUILDTYPE)),)
    LIQUID_BUILDTYPE := UNOFFICIAL
    LIQUID_EXTRAVERSION :=
endif

ifeq ($(LIQUID_BUILDTYPE), UNOFFICIAL)
    ifneq ($(TARGET_UNOFFICIAL_BUILD_ID),)
        LIQUID_EXTRAVERSION := -$(TARGET_UNOFFICIAL_BUILD_ID)
    endif
endif

LIQUID_VERSION_SUFFIX := $(LIQUID_BUILD_DATE)-$(LIQUID_BUILDTYPE)$(LIQUID_EXTRAVERSION)-$(LIQUID_BUILD)

# Internal version
LIQUID_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LIQUID_VERSION_SUFFIX)

# Display version
LIQUID_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR)-$(LIQUID_VERSION_SUFFIX)
