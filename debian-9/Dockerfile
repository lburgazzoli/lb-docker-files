############################################################
# Debian 9
############################################################

FROM debian:9
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

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
    && sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        software-properties-common \
        curl \
        git \
        unzip \
        wget \
    && rm -rf /var/lib/apt/lists/*
