############################################################
# Atom Build
############################################################

FROM fedora:23
MAINTAINER lburgazzoli

RUN mkdir /tmp/docker

VOLUME /tmp/docker /tmp/docker

RUN dnf --assumeyes update \
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
    && git checkout (git describe --tags `git rev-list --tags --max-count=10` | grep -v \-) \
    && script/build \
    && find out -name "atom*.rpm" -type f -exec cp {} \; /tmp/docker \
    && dnf --assumeyes clean all
