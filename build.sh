#!/bin/bash
# MustafaN3350 Build Script
sudo debootstrap --arch=amd64 trixie /mnt/mustafa http://deb.debian.org/debian
chroot /mnt/mustafa apt update
chroot /mnt/mustafa apt install -y xfce4 xfce4-goodies zram-tools firefox-esr bluez blueman network-manager-gnome
# ZRAM Config
echo 'ALGO=lz4' > /mnt/mustafa/etc/default/zramswap
echo 'PERCENT=50' >> /mnt/mustafa/etc/default/zramswap
# Cleanup
chroot /mnt/mustafa apt clean