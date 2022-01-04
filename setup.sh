#!/bin/bash
sudo pacman -Syu
sudo pacman -S --needed ansible ansible-core ansible-lint
sudo pacman -S --needed yay base-devel
yay -S --norebuild --nocleanmenu --nodiffmenu ansible-aur
ansible-galaxy collection install community.general
