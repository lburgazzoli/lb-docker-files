
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION

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
    && mkdir /opt/whatsdesktop \
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
    && wget https://github.com/mawie81/whatsdesktop/releases/download/${APP_VERSION}/WhatsDesktop-linux-${APP_VERSION}.zip \
        -q \
        -O /tmp/whatsdesktop.zip \
    && unzip /tmp/whatsdesktop.zip -d /opt/whatsdesktop \
    && rm -rf /tmp/whatsdesktop.zip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
