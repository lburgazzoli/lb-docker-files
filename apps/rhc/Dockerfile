FROM lburgazzoli/fedora:24
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME  /home/$DOCKER_USER
ENV HOME              $DOCKER_USER_HOME
ENV LC_ALL           en_US.UTF-8
ENV LANG             en_US.UTF-8

RUN \
    dnf --assumeyes --verbose --allowerasing install \
        rubygem-rhc

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
