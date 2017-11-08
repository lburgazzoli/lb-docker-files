
FROM lburgazzoli/fedora-ui:26
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    dnf --assumeyes copr enable taw/Riot \
    && dnf --assumeyes --refresh install \
        riot \
        alsa-utils \
        google-noto-mono-fonts \
        google-noto-sans-fonts \
        google-noto-serif-fonts \
    && dnf clean all

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER

CMD [ "riot" ]

