#!/bin/bash

mkdir rootfs

cd ./linux
    make defconfig
    make -j $(nproc)
cd ..