#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

pacman -Syu
pacman -S --needed ansible ansible-core ansible-lint
pacman -S --needed yay base-devel
yay -S --norebuild --nocleanmenu --nodiffmenu ansible-aur
ansible-galaxy collection install community.general
