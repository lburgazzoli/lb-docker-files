
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION

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
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && add-apt-repository ppa:ubuntuhandbook1/corebird \
    && apt-get update -y \
    && apt-get upgrade -y --no-install-recommends \
    && apt-get install -y --no-install-recommends \
        dbus-x11 \
        corebird \
        net-tools \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
