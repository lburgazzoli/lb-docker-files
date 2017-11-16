
FROM lburgazzoli/ruby:2.4
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME   /home/$DOCKER_USER
ENV HOME               $DOCKER_USER_HOME
ENV SU_RVM             su - $DOCKER_USER -c

RUN \
    dnf --assumeyes install \
        redhat-rpm-config \
        libffi \
        libffi-devel \
    && $SU_RVM 'gem install r --no-rdoc --no-ri' \
    && dnf --assumeyes remove \
        gcc \
        make \
        ruby-devel \
        redhat-rpm-config \
        libffi-devel \
        kernel-headers \
        zlib-devel \
        openssl-devel \
    && dnf clean all    


USER $DOCKER_USER
WORKDIR $DOCKER_USER_HOME
