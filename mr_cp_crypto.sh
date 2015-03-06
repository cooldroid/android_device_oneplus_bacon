#!/bin/sh
# $1 - path to top of android build tree
# $2 path to /multirom/enc folder in installation zip

QCOM_LIB_FILES="libQSEEComAPI.so"
QCOM_PATH="$1/vendor/oppo/msm8974-common/proprietary"

cp -a "${QCOM_PATH}/vendor/lib/${QCOM_LIB_FILES}" "$2/"

# libQSEEComApi depends on libutils. These are build from omni source and libutils
# is modified to drop libbacktrace dependency
cp -an "$1/device/oneplus/bacon/libutils.so" "$2/"
cp -an "$1/device/oneplus/bacon/libstlport.so" "$2/"
