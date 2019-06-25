FROM iganarix/os-ubuntu-18.04
# https://hub.docker.com/r/iganarix/os-ubuntu-18.04/

MAINTAINER iganari

# ### install cmatrix
# RUN DEBIAN_FRONTEND=noninteractive \
#     apt-get install -y cmatrix
# 
# 

RUN apt install libcurses-perl wget unzip make -y && \
    yes '' | cpan -i YAML && \
    yes '' | cpan -i Term::Animation && \
    cd /usr/local/src && \
    wget https://github.com/cmatsuoka/asciiquarium/archive/master.zip -O asciiquarium.zip && \
    unzip asciiquarium.zip -d /usr/local/src/ && \
    ln -s /usr/local/src/asciiquarium-master/asciiquarium /usr/local/bin/asciiquarium


# ### add nyancat
# RUN apt-get install -y nyancat
