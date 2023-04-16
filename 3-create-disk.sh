#!/bin/bash

MOUNTPOINT=/mnt

cd ./rootfs
    mkdir -p bin boot dev proc sys
    echo "#!/bin/bash
    mount -t proc none /proc
    mount -t proc none /proc
    mount -t proc none /proc
    echo 'Hello, world!'" > init
    chmod +x init

    mv ../busybox ./bin
    cd ./bin
        busybox --list | while read i; do ln -s busybox "$i"; done
    cd ..

    mv ../linux/vmlinux ./boot/vmlinux
cd ..

dd if=/dev/zero of=disk.img bs=1M count=10
mkfs.ext4 disk.img

mkdir -p $MOUNTPOINT
mount -o loop disk/img $MOUNTPOINT
cp -R ./rootfs/* $MOUNTPOINT
umount $MOUNTPOINT