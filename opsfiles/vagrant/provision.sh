#!/bin/bash

set -x 

: "ansible-playbook ssh" & {
# : "ansible-playbook ssh" || {
chmod 600 ssh/id_rsa-joke-command
ansible-playbook \
    --private-key='ssh/id_rsa-joke-command' \
    -i playbook/vagrant playbook/site.yml\
&& \
ansible-playbook \
    --private-key='.vagrant/machines/svr/virtualbox/private_key' \
    -i playbook/vagrant-sudo \
    playbook/site.yml \
&& \
vagrant halt && vagrant up 
}
