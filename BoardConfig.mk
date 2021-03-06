#
# Copyright (C) 2016 The CyanogenMod Project
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

# inherit from common msm8976-common
-include device/samsung/msm8976-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gts210velte

# Assert
TARGET_OTA_ASSERT_DEVICE := gts210velte

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Telephony
BOARD_RIL_CLASS := ../../../device/samsung/gts210velte/ril

# RIL
TARGET_RIL_VARIANT := caf
BOARD_PROVIDES_LIBRIL := true

# Kernel
TARGET_KERNEL_CONFIG := gts210velte_defconfig

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/samsung/gts210velte/BoardConfigVendor.mk
