#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

PRODUCT_COPY_FILES += device/odys/tigertab/prebuilt/zImage:kernel

PRODUCT_DEVICE := tigertab
PRODUCT_NAME := omni_tigertab
PRODUCT_BRAND := odys
PRODUCT_MODEL := tigertab
PRODUCT_MANUFACTURER := odys

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
	
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="ODYS/TIGERTAB/TIGERTAB:6.0/MRA58K/1484121533:user/release-keys" \
    PRIVATE_BUILD_DESC="TIGERTAB-user 6.0 MRA58K 1484121533 release-keys"