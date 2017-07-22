#!/bin/bash

LOCAL_DIR=`pwd`
export PATH=$PATH:$LOCAL_DIR/aarch64-linux-android-4.9/bin


export CFLAGS="-Wno-error"
export CXXFLAGS="-Wno-error"
export ARCH=arm64
export SUBARCH=arm64


export USE_CCACHE=1
export CCOMPILE=$CROSS_COMPILE
export CROSS_COMPILE=aarch64-linux-android-
export USE_HOST_LEX=yes
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- land_defconfig
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- -j8


