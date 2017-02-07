
FROM lburgazzoli/fedora-ui:25
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

ADD hipchat.repo /etc/yum.repos.d/hipchat.repo

RUN \
    dnf --assumeyes install \
        alsa-lib \
        alsa-utils \
        google-noto-mono-fonts \
        google-noto-sans-fonts \
        google-noto-serif-fonts \
        hipchat4 \
        xterm \
    && dnf clean all

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER

CMD [ "hipchat4" ]

