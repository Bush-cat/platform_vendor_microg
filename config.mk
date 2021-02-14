LOCAL_DEVICE := $(lastword $(subst _, ,$(TARGET_PRODUCT)))

# app
PRODUCT_PACKAGES += \
    AppleNLPBackend \
    AuroraDroid \
    AuroraStore \
    Bromite \
    webview \
    DejaVuNLPBackend \
    DroidGuard \
    GoogleCalendarSync \
    GoogleContactsSync \
    LocalGSMNLPBackend \
    LocalWiFiNLPBackend \
    MicroGGSFProxy \
    MozillaUnifiedNLPBackend \
    NominatimNLPBackend 

# priv-app
PRODUCT_PACKAGES += \
    AuroraServices \
    FakeStore \
    FDroidPrivileged \
    GoogleBackupTransport \
    GmsCore

# Framework
PRODUCT_PACKAGES += \
    com.google.android.maps

# bin
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/bin/npem:$(TARGET_COPY_OUT_SYSTEM)/bin/npem

# permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/permissions/com.google.android.backuptransport.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.android.backuptransport.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.google.android.media.effects.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.android.media.effects.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.google.widevine.software.drm.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.google.widevine.software.drm.xml \
    $(LOCAL_PATH)/system/etc/permissions/gsync.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/gsync.xml

# default-permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/default-permissions/google-sync-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/google-sync-permissions.xml \
    $(LOCAL_PATH)/system/etc/default-permissions/microg-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/microg-permissions.xml
	
# sysconfig
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/sysconfig/microg-a5k.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/microg-a5k.xml \
    $(LOCAL_PATH)/system/etc/sysconfig/nogoolag.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/nogoolag.xml

# framework
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/framework/com.google.android.maps.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.google.android.maps.jar
