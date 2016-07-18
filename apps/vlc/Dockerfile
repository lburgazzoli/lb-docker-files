FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends \
        alsa-utils \
        libgcrypt20-dev \
        pulseaudio \
        vlc \
    && rm -rf /var/lib/apt/lists/* \
    && echo "enable-shm = no" >> /etc/pulse/client.conf \
    && echo "enable-shm = no" >> /etc/pulse/daemon.conf

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "vlc" ]
