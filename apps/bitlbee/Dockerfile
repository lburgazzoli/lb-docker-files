FROM lburgazzoli/fedora:25
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_NAME
ARG APP_VERSION

ENV DOCKER_USER_HOME   /home/$DOCKER_USER
ENV HOME               $DOCKER_USER_HOME
ENV LC_ALL             en_US.UTF-8
ENV LANG               en_US.UTF-8

RUN \
    dnf --assumeyes install \
        purple-telegram \
        bitlbee \
    && dnf clean all    

COPY bitlbee.conf /etc/bitlbee/bitlbee.conf
COPY bitlbee-motd.txt /etc/bitlbee/bitlbee-motd.txt
