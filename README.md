ansible-ubuntu-desktop
======================

Provision an custom Ubuntu Desktop with Ansible

# Local launch command from virgin PC :
    wget -O- https://raw.githubusercontent.com/jdauphant/ansible-ubuntu-desktop/master/setup.sh | sh
# Local launch if after clone the repository
    git submodule init
    git submodule update 
    ansible-playbook installation.yml --sudo -K -c local -i "localhost,"
