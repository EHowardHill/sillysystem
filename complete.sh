#!/bin/bash

set -e
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

chmod +x ./1-prepare-system.sh
chmod +x ./2-compile-source.sh
chmod +x ./3-create-disk.sh
chmod +x ./4-emulator.sh

./1-prepare-system.sh
./2-compile-source.sh
./3-create-disk.sh
./4-emulator.sh