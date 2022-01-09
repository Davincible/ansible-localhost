#!/bin/bash
sudo pacman -S pacman-mirrors
sudo rankmirrors -f 6
sudo pacman -Syu
sudo pacman -S --needed ansible ansible-core ansible-lint
sudo pacman -S --needed yay base-devel
yay -SYgyu --noprovides --norebuild --nocleanmenu --nodiffmenu ansible-aur
ansible-galaxy collection install community.general
