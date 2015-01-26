#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL oneplus one devices, and
# are also specific to oneplus one devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/oneplus/bacon/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_PACKAGES += \
    libinit_bacon \
    fstab.bacon \
    init.bacon.rc \
    init.qcom.usb.rc \
    ueventd.bacon.rc \
	init.qcom-common.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc \
	init.qcom.bt.sh

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab
