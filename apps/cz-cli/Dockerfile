FROM node:7.10-alpine
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    adduser \
        -h $DOCKER_USER_HOME \
        -u $DOCKER_USER_GID \
        -s /usr/sbin/nologin \
        -D \
        $DOCKER_USER \
    && apk add --no-cache \
        bash \
        git \
        gnupg \
        vim \
    && npm install -g \
        commitizen \
        cz-conventional-changelog

WORKDIR $HOME
USER $DOCKER_USER

