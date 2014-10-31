#!/bin/sh
sudo apt-get install -y git python-pip python-dev
sudo pip install ansible
git clone https://github.com/jdauphant/ansible-ubuntu-desktop.git
cd ansible-ubuntu-desktop
sed "s/git@github.com:/https:\/\/github.com\//" .gitmodules > .gitmodules_new
mv .gitmodules_new .gitmodules
git submodule init
git submodule update
ansible-playbook installation.yml --sudo -K -c local -i "localhost,"
