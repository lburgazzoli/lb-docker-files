
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION
ARG APP_NAME

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
        --groups audio,video \
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && mkdir /opt/${APP_NAME} \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        libappindicator1 \
        libx11-6 \
        libx11-xcb1 \
        libxcb-xkb1 \
        libasound2 \
        libnotify4 \
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
    && wget http://downloads.meetfranz.com/releases/0.9.10/Franz-linux-x64-${APP_VERSION}.tgz -q -O - \
        | tar -xzf - --directory /opt/${APP_NAME} --strip-components=1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
