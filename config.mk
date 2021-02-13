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
    MicroGGSFProxy \
    MozillaUnifiedNLPBackend \
    NominatimNLPBackend

# Priv-app
PRODUCT_PACKAGES += \
    AuroraServices \
    FakeStore \
    FDroidPrivileged \
    GoogleBackupTransport \
    MicroGGMSCore

# Framework
PRODUCT_PACKAGES += \
    com.google.android.maps
	
# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/system/overlay/

# Bin
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/bin/npem:$(TARGET_COPY_OUT_SYSTEM)/bin/npem
	
# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/permissions/com.google.android.backuptransport.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.android.backuptransport.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.google.android.media.effects.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.android.media.effects.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.google.widevine.software.drm.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.widevine.software.drm.xml \
    $(LOCAL_PATH)/system/etc/permissions/gsync.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/gsync.xml
	
# Default-permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/default-permissions/google-sync-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/google-sync-permissions.xml \
    $(LOCAL_PATH)/system/etc/default-permissions/microg-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/microg-permissions.xml
	
# Sysconfig
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/sysconfig/nogoolag.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/nogoolag.xml
	
# Framework
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/framework/com.google.android.maps.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.google.android.maps.jar
