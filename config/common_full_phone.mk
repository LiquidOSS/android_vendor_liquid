# Inherit full common liquid stuff
$(call inherit-product, vendor/liquid/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include liquid LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/liquid/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

$(call inherit-product, vendor/liquid/config/telephony.mk)
