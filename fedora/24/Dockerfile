############################################################
# Fedora 23
############################################################

FROM fedora:24
MAINTAINER lburgazzoli

RUN \
    dnf --assumeyes update \
    && dnf --assumeyes install \
        curl \
        unzip \
        wget \
    && dnf --assumeyes clean all \
    && dnf --assumeyes autoremove
