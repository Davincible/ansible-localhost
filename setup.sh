#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

pacman -Syu
pacman -S ansible ansible-core ansible-lint
pacman -S yay base-devel
yay -Syu ansible-aur
ansible-galaxy collection install community.general
