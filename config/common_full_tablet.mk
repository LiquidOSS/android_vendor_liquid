#  Inherit full common liquid stuff
$(call inherit-product, vendor/liquid/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    LatinIME

# Include liquid LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/liquid/overlay/dictionaries

$(call inherit-product, vendor/liquid/config/telephony.mk)
