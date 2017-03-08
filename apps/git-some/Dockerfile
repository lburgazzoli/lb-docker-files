FROM python:3.5-alpine
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
    && pip3 --no-cache-dir install \
        gitsome        

WORKDIR $HOME
USER $DOCKER_USER

ENTRYPOINT ["gitsome"]
