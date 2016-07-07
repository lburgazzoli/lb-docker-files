
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION
ARG APP_NAME

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    groupadd \
        --gid $DOCKER_USER_GID \
        $DOCKER_USER \
    && useradd \
        --create-home \
        --home-dir $DOCKER_USER_HOME \
        --uid $DOCKER_USER_GID \
        --gid $DOCKER_USER_UID \
        --groups audio,video \
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        libappindicator1 \
        libasound2 \
        libcanberra-gtk-module \
        libcurl3 \
        libexif-dev \
        libgconf-2-4 \
        libgl1-mesa-dri \
        libgl1-mesa-glx \
        libnspr4 \
        libnss3 \
        libpango1.0-0 \
        libv4l-0 \
        libxss1 \
        libxtst6 \
        wget \
        xdg-utils \
        fonts-liberation \
        gconf-service \
        hicolor-icon-theme \
    && wget https://downloads.vivaldi.com/stable/vivaldi-stable_${APP_VERSION}_amd64.deb -q -O /tmp/vivaldi.deb \
    && dpkg -i /tmp/vivaldi.deb \
    && rm -f /tmp/vivaldi.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
