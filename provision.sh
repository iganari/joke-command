#!/bin/bash

set -x


apt_update()
{
    apt-get update
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y \
            -o DPkg::options::="--force-confdef" \
            -o DPkg::options::="--force-confold"  \
            upgrade
    apt-get install -y \
                    openssh-server \
                    python-apt \
                    python-pip
    pip install --upgrade pip
}



install_ansible()
{
    ANSIBLE_VERSION='2.4.2.0'
    pip install ansible==${ANSIBLE_VERSION}

}

# apt update
apt_update
install_ansible
