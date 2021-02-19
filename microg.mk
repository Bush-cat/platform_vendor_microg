LOCAL_DEVICE := $(lastword $(subst _, ,$(TARGET_PRODUCT)))

# App
PRODUCT_PACKAGES += \
    AppleNLPBackend \
    AuroraDroid \
    AuroraStore \
    Bromite \
    BromiteWebView \
    DejaVuNLPBackend \
    DroidGuard \
    GoogleCalendarSync \
    GoogleContactsSync \
    LocalGSMNLPBackend \
    LocalWiFiNLPBackend \
    MozillaNlpBackend \
    NewPipe \
    NominatimNlpBackend

# Framework
PRODUCT_PACKAGES += \
    com.google.android.maps.jar

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/microg/overlay/

# Priv-app
PRODUCT_PACKAGES += \
    AuroraServices \
    FakeStore \
    FDroidPrivilegedExtension \
    GoogleBackupTransport \
    GmsCore \
    GsfProxy

# F-Droid-Repository
PRODUCT_PACKAGES += \
    additional_repos.xml

$(call inherit-product, vendor/microg/microg-blobs.mk)