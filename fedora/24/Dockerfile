############################################################
# Fedora 24
############################################################

FROM fedora:24
MAINTAINER lburgazzoli

RUN \
    dnf -y -v update \
    && dnf -y -v install \
        curl \
        unzip \
        wget \
    && dnf -y -v clean all
