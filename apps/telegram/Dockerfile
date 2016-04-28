
FROM lburgazzoli/ubuntu-ui:16.04
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
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && mkdir /opt/telegram \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        xz-utils \
        libx11-6 \
        libx11-xcb1 \
        libxcb-xkb1 \
    && wget https://tdesktop.com/linux -q -O - \
        | tar -Jxf - --directory /opt/telegram --strip-components=1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
