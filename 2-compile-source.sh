#!/bin/bash

mkdir rootfs

cd ./linux
    make defconfig
    make -j $(nproc)
cd ..

cd ./busybox
    make defconfig
    make -j $(nproc)
    cd _install
        cp -R . ../../rootfs
    cd ..
cd ..