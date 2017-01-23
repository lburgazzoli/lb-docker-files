
FROM lburgazzoli/fedora:25
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME   /home/$DOCKER_USER
ENV HOME               $DOCKER_USER_HOME
ENV SU_RVM             su - $DOCKER_USER -c
ENV TRAVIS_CONFIG_PATH /travis

RUN \
    usermod -s /bin/bash $DOCKER_USER \
    && dnf --assumeyes update \
    && dnf --assumeyes install \
        gcc \
        gnupg \
        ruby \
        ruby-devel \
        procps \
        make \
        kernel-headers \
        zlib \
        zlib-devel \
        openssl \
        openssl-devel \
        which \
        findutils \
    && gem install rake -N

RUN $SU_RVM 'rm -f $HOME/.profile'
RUN $SU_RVM 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3'
RUN $SU_RVM 'curl -sSL https://get.rvm.io | bash -s stable' 
RUN $SU_RVM './.rvm/bin/rvm install 2.4.0 --disable-binary --movable --autolibs=0'

WORKDIR $DOCKER_USER_HOME

