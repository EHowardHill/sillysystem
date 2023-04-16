#!/bin/bash

qemu-system-x86_64 -hda disk.img -kernel ../linux/arch/x86/boot/bzImage -append "root=/dev/sda init=/init"