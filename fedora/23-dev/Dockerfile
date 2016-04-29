############################################################
# Fedora 23 dev
############################################################

FROM lburgazzoli/fedora:23
MAINTAINER lburgazzoli

RUN \
    dnf --assumeyes install \
        make \
        gcc \
        gcc-c++ \
        glibc-devel \
        git-core \
        libgnome-keyring-devel \
        rpmdevtools \
    && dnf --assumeyes clean all
