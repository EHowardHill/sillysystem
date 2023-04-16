#!/bin/bash

VER_LINUX=6.2.9
VER_BUSYBOX=1.36.0

apt update -y
apt install -y build-essential wget libncurses-dev flex bison qemu-system-x86

wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-$VER_LINUX.tar.gz
wget https://busybox.net/downloads/busybox-$VER_BUSYBOX.tar.bz2

tar -xf ./linux-$VER_LINUX.tar.gz
tar -xf ./busybox-$VER_BUSYBOX.tar.bz2

mv ./linux-$VER_LINUX ./linux
mv ./busybox-$VER_BUSYBOX ./busybox