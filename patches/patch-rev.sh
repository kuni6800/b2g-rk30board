#!/bin/sh


PATCH_DIR=${PWD}
DEV_DIR=${PWD}/..
B2G_DIR=${PWD}/../../../..

cd ${B2G_DIR}/frameworks/base
git reset --hard m/rkand-v1.4
cd ${B2G_DIR}/frameworks/native
git reset --hard m/rkand-v1.4
cd ${B2G_DIR}/gaia
git reset --hard m/rkand-v1.4
cd ${B2G_DIR}/gecko
git reset --hard m/rkand-v1.4

rm -f ${DEV_DIR}/proprietary/patched/*
