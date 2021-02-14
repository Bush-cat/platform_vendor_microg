LOCAL_DEVICE := $(lastword $(subst _, ,$(TARGET_PRODUCT)))

# App
PRODUCT_PACKAGES += \
    AppleNLPBackend \
    AuroraDroid \
    AuroraStore \
    Bromite \
    DejaVuNLPBackend \
    DroidGuard \
    GoogleCalendarSync \
    GoogleContactsSync \
    LocalGSMNLPBackend \
    LocalWiFiNLPBackend \
    MicroGGSFProxy \
    MozillaUnifiedNLPBackend \
    NominatimNLPBackend \
    webview

# Framework
PRODUCT_PACKAGES += \
    com.google.android.maps

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/microg/overlay/

# Priv-app
PRODUCT_PACKAGES += \
    AuroraServices \
    FakeStore \
    FDroidPrivileged \
    GoogleBackupTransport \
    GmsCore

$(call inherit-product, vendor/microg/microg-blobs.mk)