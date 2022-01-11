#!/bin/bash
sudo pacman -S pacman-mirrors
sudo pacman -Syu
sudo pacman -S --needed ansible ansible-core ansible-lint
sudo pacman -S --needed yay base-devel
sudo rankmirrors -f 6
sudo pacman -Syu
yay -S --noprovides --norebuild --nocleanmenu --nodiffmenu ansible-aur
ansible-galaxy collection install community.general
ansible-galaxy install robertdebock.cargo
sudo usermod -aG video $USER
sudo usermod -aG docker $USER
sudo usermod -aG input $USER
sudo usermod -aG audio $USER
sudo usermod -aG storage $USER
