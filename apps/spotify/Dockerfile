
FROM lburgazzoli/ubuntu-ui:15.10
MAINTAINER lburgazzoli

ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/user
ENV DOCKER_USER      user

RUN \
    groupadd \
        --gid $DOCKER_USER_GID \
        $DOCKER_USER \
    && useradd \
        --create-home \
        --home-dir $DOCKER_USER_HOME \
        --uid $DOCKER_USER_GID \
        --gid $DOCKER_USER_UID \
        --groups audio \
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        libpangoxft-1.0-0 \
        alsa-utils \
        libgcrypt20-dev \
        xdg-utils \
        libxss1 \
        pulseaudio \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886 \
    && echo "deb http://repository.spotify.com testing non-free" >> /etc/apt/sources.list.d/spotify.list \
    && apt-get update \
    && apt-get install --force-yes -y \
        spotify-client \
    && rm -rf /var/lib/apt/lists/* \
    && echo "QLineEdit { color: #000 }" > /home/${DOCKER_USER}/spotify-override.css

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
