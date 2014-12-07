#!/bin/sh

PATCH_DIR=${PWD}
DEV_DIR=${PWD}/..
B2G_DIR=${PWD}/../../../..

#
# binary patch
#
if [ ! -e /usr/bin/xdelta ]; then
   echo "patch: You have to install xdelta."
   exit -1;
fi

if [ ! -f ${DEV_DIR}/proprietary/system/lib/alsa.default.so  ]; then
   echo "patch: You have to prepare proprietary libraries."
   exit -1;
fi

if [ ! -f ${DEV_DIR}/proprietary/patched/alsa.default.so_modified ]; then
    /usr/bin/xdelta patch \
	${DEV_DIR}/patches/device_rockchip_rk30board/alsa.default.so_xdelta_diff \
	${DEV_DIR}/proprietary/system/lib/alsa.default.so \
	${DEV_DIR}/proprietary/patched/alsa.default.so_modified
    echo "patch: done."
else
    echo "patch: already patched."
fi

#
# source patch
#

cd ${B2G_DIR}/frameworks/base
git am ${PATCH_DIR}/frameworks_base/*.patch
cd ${B2G_DIR}/frameworks/native
git am ${PATCH_DIR}/frameworks_native/*.patch
cd ${B2G_DIR}/gaia
git am ${PATCH_DIR}/gaia/*.patch
cd ${B2G_DIR}/gecko
git am ${PATCH_DIR}/gecko/*.patch
