
FROM lburgazzoli/ubuntu-ui:15.10
MAINTAINER lburgazzoli

ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION

ENV DOCKER_USER_HOME /home/user
ENV DOCKER_USER user

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
    && wget https://launchpad.net/ubuntu/+archive/primary/+files/corebird_${APP_VERSION}_amd64.deb \
        -q \
        -O /tmp/corebird.deb \
    && dpkg -i /tmp/corebird.deb \
    && rm /tmp/corebird.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
