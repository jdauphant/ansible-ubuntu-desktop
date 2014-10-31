#!/bin/sh
sudo apt-get install -y git python-pip python-dev
sudo pip install ansible
git clone https://github.com/jdauphant/ansible-ubuntu-desktop.git
ansible-playbook installation.yml --sudo -K -c local -i "localhost,"
