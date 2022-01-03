#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

pacman -Syu
pacman -S python python-setuptools python-pip
pacman -S ansible ansible-core ansible-lint
pacman -S wget curl
curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | sudo python
ansible-galaxy collection install community.general
