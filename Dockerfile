FROM iganarix/os-ubuntu-18.04
# https://hub.docker.com/r/iganarix/os-ubuntu-18.04/

MAINTAINER iganari

# ### install cmatrix
# RUN DEBIAN_FRONTEND=noninteractive \
#     apt-get install -y cmatrix
# 
# 
### add asciiquarium
# RUN add-apt-repository -y ppa:ytvwld/asciiquarium && \
#     apt-get update &&\
#     apt-get install -y asciiquarium &&\
#     cp $(find / -name "asciiquarium" | grep -v doc | grep -v menu) /usr/local/bin/ &&\
#     chmod 755 /usr/local/bin/asciiquarium

RUN apt install libcurses-perl wget unzip make -y
RUN yes '' | cpan -i YAML
RUN yes '' | cpan -i Term::Animation
RUN cd /usr/local/src
RUN wget https://github.com/cmatsuoka/asciiquarium/archive/master.zip -O asciiquarium.zip
RUN unzip asciiquarium.zip -d /usr/local/src/
RUN ln -s /usr/local/src/asciiquarium-master/asciiquarium /usr/local/bin/asciiquarium


# ### add nyancat
# RUN apt-get install -y nyancat
