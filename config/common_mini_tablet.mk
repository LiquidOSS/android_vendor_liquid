# Inherit mini common liquid stuff
$(call inherit-product, vendor/liquid/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    LatinIME

$(call inherit-product, vendor/liquid/config/telephony.mk)
