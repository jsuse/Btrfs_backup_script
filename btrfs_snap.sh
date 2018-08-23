#!/bin/bash

# Get times
times=$(date +%Y%m%d)

# Backup Root
if [ ! -d "/snapshot/$times" ]; then
    mkdir /snapshot/
    btrfs subvolume snapshot / /snapshot/$times
fi

# Backup Home
if [ ! -d "/snapshot/$times" ]; then
    mkdir -p /home/snapshot/
    btrfs subvolume snapshot /home /home/snapshot/$times
fi

exit 0
