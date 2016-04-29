############################################################
# Atom Build
############################################################

FROM fedora:23
MAINTAINER lburgazzoli

ARG BINTRAY_USER
ARG BINTRAY_APIKEY
ARG BINTRAY_REPO

COPY upload.sh /tmp/upload.sh

RUN \
    dnf --assumeyes update \
    && dnf --assumeyes install \
        make \
        curl \
        unzip \
        wget \
        gcc \
        gcc-c++ \
        glibc-devel \
        git-core \
        libgnome-keyring-devel \
        rpmdevtools \
    && curl --silent --location https://rpm.nodesource.com/setup_4.x | bash - \
    && dnf  --assumeyes install \
        nodejs \
    && git clone https://github.com/atom/atom \
    && cd atom \
    && git fetch -p \
    && git checkout $(git describe --tags `git rev-list --tags --max-count=10` | grep -v \-) \
    && script/build \
    && script/grunt mkrpm \
    && /tmp/upload.sh
