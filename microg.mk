#
# Copyright (C) 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

############################################################
# Internal build rules for APPS prebuilt modules
############################################################

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_SHIPS_GAPPS),false)
    #app

    include $(CLEAR_VARS)
    LOCAL_MODULE := AppleNLPBackend
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/AppleNLPBackend/AppleNLPBackend.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)
    
    include $(CLEAR_VARS)
    LOCAL_MODULE := AuroraDroid
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/AuroraDroid/AuroraDroid.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := AuroraStore
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/AuroraStore/AuroraStore.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    ifeq ($(TARGET_ARCH),arm64)
        include $(CLEAR_VARS)
        LOCAL_MODULE := BromiteWebView
        LOCAL_MODULE_TAGS := optional
        LOCAL_MODULE_PATH := $(TARGET_OUT)/app
        LOCAL_SRC_FILES := system/app/BromiteWebView_arm64/BromiteWebView_arm64.apk
        LOCAL_CERTIFICATE := PRESIGNED
        LOCAL_MODULE_CLASS := APPS
        LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
        LOCAL_PRODUCT_MODULE := true
        include $(BUILD_PREBUILT)
	
        include $(CLEAR_VARS)
        LOCAL_MODULE := Bromite
        LOCAL_MODULE_TAGS := optional
        LOCAL_MODULE_PATH := $(TARGET_OUT)/app
        LOCAL_SRC_FILES := arm64_ChromePublic/arm64_ChromePublic.apk
        LOCAL_CERTIFICATE := PRESIGNED
        LOCAL_MODULE_CLASS := APPS
        LOCAL_OVERRIDES_PACKAGES := Jelly
        LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
        LOCAL_PRODUCT_MODULE := true
        include $(BUILD_PREBUILT)
    else
        ifeq ($(TARGET_ARCH),arm)
            include $(CLEAR_VARS)
            LOCAL_MODULE := BromiteWebView
            LOCAL_MODULE_TAGS := optional
            LOCAL_MODULE_PATH := $(TARGET_OUT)/app
            LOCAL_SRC_FILES := system/app/BromiteWebView_arm/BromiteWebView_arm.apk
            LOCAL_CERTIFICATE := PRESIGNED
            LOCAL_MODULE_CLASS := APPS
            LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
            LOCAL_OVERRIDES_PACKAGES := webview
            LOCAL_PRODUCT_MODULE := true
            include $(BUILD_PREBUILT)
        
            include $(CLEAR_VARS)
            LOCAL_MODULE := Bromite
            LOCAL_MODULE_TAGS := optional
            LOCAL_MODULE_PATH := $(TARGET_OUT)/app
            LOCAL_SRC_FILES := arm_ChromePublic/arm_ChromePublic.apk
            LOCAL_CERTIFICATE := PRESIGNED
            LOCAL_MODULE_CLASS := APPS
            LOCAL_OVERRIDES_PACKAGES := Jelly
            LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
            LOCAL_PRODUCT_MODULE := true
            include $(BUILD_PREBUILT)
        endif
    endif

    include $(CLEAR_VARS)
    LOCAL_MODULE := DejaVuNLPBackend
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/DejaVuNLPBackend/DejaVuNLPBackend.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := DroidGuard
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/DroidGuard/DroidGuard.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := GoogleCalendarSync
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/GoogleCalendarSync/GoogleCalendarSync.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := GoogleContactsSync
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/GoogleContactsSync/GoogleContactsSync.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := LocalGSMNLPBackend
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/LocalGSMNLPBackend/LocalGSMNLPBackend.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := LocalWiFiNLPBackend
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/LocalWiFiNLPBackend/LocalWiFiNLPBackend.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := MicroGGSFProxy
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/MicroGGSFProxy/MicroGGSFProxy.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := MozillaUnifiedNLPBackend
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/MozillaUnifiedNLPBackend/MozillaUnifiedNLPBackend.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := NominatimNLPBackend
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT)/app
    LOCAL_SRC_FILES := system/app/NominatimNLPBackend/NominatimNLPBackend.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    include $(BUILD_PREBUILT)

    #framework

    LOCAL_MODULE := com.google.android.maps
    LOCAL_MODULE_TAGS := optional
    LOCAL_SRC_FILES := framework/com.google.android.maps.jar
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := JAVA_LIBRARIES
    LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
    LOCAL_PRODUCT_MODULE := true
    LOCAL_MODULE_PATH := $(TARGET_OUT)/framework
    include $(BUILD_PREBUILT)

    #priv-app

    include $(CLEAR_VARS)
    LOCAL_MODULE := AuroraServices
    LOCAL_MODULE_TAGS := optional
    LOCAL_SRC_FILES := system/priv-app/AuroraServices/AuroraServices.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := FakeStore
    LOCAL_MODULE_TAGS := optional
    LOCAL_SRC_FILES := system/priv-app/FakeStore/FakeStore.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := FDroidPrivileged
    LOCAL_MODULE_TAGS := optional
    LOCAL_SRC_FILES := system/priv-app/FDroidPrivileged/FDroidPrivileged.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := GoogleBackupTransport
    LOCAL_MODULE_TAGS := optional
    LOCAL_SRC_FILES := system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
    include $(BUILD_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE := MicroGGMSCore
    LOCAL_MODULE_TAGS := optional
    LOCAL_SRC_FILES := system/priv-app/MicroGGMSCore/MicroGGMSCore.apk
    LOCAL_CERTIFICATE := PRESIGNED
    LOCAL_MODULE_CLASS := APPS
    LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
    LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
    include $(BUILD_PREBUILT)
endif

$(call inherit-product, vendor/microg/config.mk)
