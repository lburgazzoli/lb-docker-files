
FROM lburgazzoli/alpine:edge
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME   /home/$DOCKER_USER
ENV HOME               $DOCKER_USER_HOME

RUN \
    apk add --no-cache \
        ruby \
        ruby-io-console \
        ruby-json git \
    && apk add --no-cache --virtual build_deps \
        build-base \
        ruby-dev \
        libc-dev \
        libffi-dev \
        linux-headers \
    && gem install gmail-britta --no-rdoc --no-ri \
    && apk del \
        build_deps        

USER $DOCKER_USER
WORKDIR $DOCKER_USER_HOME
