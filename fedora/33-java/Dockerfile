############################################################
# Fedora 33 Java
############################################################

FROM fedora:33

RUN dnf --assumeyes --refresh --verbose --allowerasing update \
    && dnf --assumeyes --verbose --allowerasing install \
        git \
        java-latest-openjdk-devel \
        which \
    && dnf --assumeyes --verbose clean all
