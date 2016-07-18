############################################################
# Fedora 24
############################################################

FROM fedora:24
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME  /home/$DOCKER_USER
ENV HOME              $DOCKER_USER_HOME
RUN \
    groupadd \
        --gid $DOCKER_USER_GID \
        $DOCKER_USER \
    && useradd \
        --create-home \
        --home-dir $DOCKER_USER_HOME \
        --uid $DOCKER_USER_GID \
        --gid $DOCKER_USER_UID \
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && rm -f \
        /etc/yum.repos.d/fedora-cisco-openh264.repo \
        /etc/yum.repos.d/fedora-updates-testing.repo \
    && dnf --assumeyes install https://raw.githubusercontent.com/UnitedRPMs/unitedrpms/master/RPM/unitedrpms-24-2.noarch.rpm \
    && dnf --assumeyes --refresh --verbose --allowerasing update \
    && dnf --assumeyes --verbose --allowerasing install \
        curl \
        unzip \
        wget \
    && dnf --assumeyes --verbose clean all
