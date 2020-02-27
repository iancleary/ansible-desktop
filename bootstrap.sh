#!/bin/bash

echo "Installing make and ansible"

# Remove any version of ansible
sudo apt remove -y ansible

## Remove old packages
sudo apt -y autoremove

# Make for ease of use, python-apt for --check ansible flag
sudo apt-get install -y make python3-apt

## Install latest Ansible (snap is only in Ansible >= 2.8)
sudo apt update
sudo apt install -y software-properties-common
python3 -m pip install --user ansible
ansible --version | grep "python version"

## The below may work when Ubuntu fully deprecates python2
#sudo apt-add-repository --yes --update ppa:ansible/ansible
#sudo apt install -y ansible