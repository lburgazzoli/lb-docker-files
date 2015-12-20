
FROM lburgazzoli/ubuntu:15.10
MAINTAINER lburgazzoli

ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

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
    && dpkg --add-architecture i386 \ 
    && add-apt-repository "deb http://archive.canonical.com/ wily partner" \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        gtk2-engines-murrine \
        gtk2-engines-pixbuf \
        fonts-droid \
        skype \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
