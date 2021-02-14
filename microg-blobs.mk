LOCAL_DEVICE := $(lastword $(subst _, ,$(TARGET_PRODUCT)))

PRODUCT_COPY_FILES += \
    vendor/microg/bin/npem:$(TARGET_COPY_OUT_PRODUCT)/bin/npem \
    vendor/microg/etc/default-permissions/google-sync-permissions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/google-sync-permissions.xml \
    vendor/microg/etc/default-permissions/microg-permissions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/microg-permissions.xml \
    vendor/microg/etc/permissions/com.android.vending.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.android.vending.xml \
    vendor/microg/etc/permissions/com.aurora.services.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.aurora.services.xml \
    vendor/microg/etc/permissions/com.google.android.gms.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.gms.xml \
    vendor/microg/etc/permissions/com.google.android.maps.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.maps.xml \
    vendor/microg/etc/sysconfig/microg-a5k.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/microg-a5k.xml \
    vendor/microg/framework/com.google.android.maps.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/com.google.android.maps.jar \
    vendor/microg/lib64/libgdx.so:$(TARGET_COPY_OUT_PRODUCT)/lib64/libgdx.so \
    vendor/microg/lib64/libsketchology_native.so:$(TARGET_COPY_OUT_PRODUCT)/lib64/libsketchology_native.so \