
FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

ENV http_proxy      http://172.17.42.1:8128
ENV https_proxy     http://172.17.42.1:8128
ENV DOCKER_HOME     /home/user
ENV DOCKER_USER     user
ENV DEBIAN_FRONTEND noninteractive

RUN \
    groupadd \
        --gid 1000 \
        $DOCKER_USER \
    && useradd \
        --create-home \
        --home-dir $DOCKER_HOME \
        --uid 1000 \
        --gid 1000 \
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        libpangoxft-1.0-0 \            
        alsa-utils \
        software-properties-common \
        libgcrypt20-dev \
        xdg-utils \
        libxss1 \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886 \
    && echo "deb http://repository.spotify.com testing non-free" >> /etc/apt/sources.list.d/spotify.list \
    && apt-get update \
    && apt-get install --force-yes -y \
        spotify-client \
    && rm -rf /var/lib/apt/lists/*
    && echo "QLineEdit { color: #000 }" > /home/${DOCKER_USER}/spotify-override.css

WORKDIR $DOCKER_HOME
USER $DOCKER_USER

