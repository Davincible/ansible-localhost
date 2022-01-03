#!/bin/bash
ansible-playbook -i inventory.cfg install.yml --ask-become-pass
