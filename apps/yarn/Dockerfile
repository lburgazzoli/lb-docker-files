FROM lburgazzoli/alpine:3.6
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    apk add --no-cache \
        git \
        gnupg \
        yarn

WORKDIR $HOME
USER $DOCKER_USER

ENTRYPOINT [ "yarn" ]