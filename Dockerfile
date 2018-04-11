FROM igaguri/base-ubuntu-16.04
# https://hub.docker.com/r/igaguri/base-ubuntu-16.04

MAINTAINER iganari

### install cmatrix
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y cmatrix
