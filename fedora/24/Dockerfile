############################################################
# Fedora 24
############################################################

FROM fedora:24
MAINTAINER lburgazzoli

RUN \
    rm -f \
        /etc/yum.repos.d/fedora-cisco-openh264.repo \
        /etc/yum.repos.d/fedora-updates-testing.repo \
    && dnf --assumeyes --refresh --verbose --allowerasing update \
    && dnf --assumeyes --verbose --allowerasing install \
        curl \
        unzip \
        wget \
    && dnf --assumeyes --verbose clean all
