FROM lburgazzoli/ubuntu-ui:16.10
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886 \
    && echo "deb http://repository.spotify.com testing non-free" >> /etc/apt/sources.list.d/spotify.list \
    && apt-get update \
    && apt-get install --assume-yes --no-install-recommends \
        alsa-utils \
        libgcrypt20-dev \
        pulseaudio \
        spotify-client \
    && rm -rf /var/lib/apt/lists/* \
    && echo "enable-shm = no" >> /etc/pulse/client.conf \
    && echo "enable-shm = no" >> /etc/pulse/daemon.conf \
    && echo "QLineEdit { color: #000 }" > /home/${DOCKER_USER}/spotify-override.css

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
