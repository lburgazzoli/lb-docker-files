
FROM lburgazzoli/alpine:edge
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN apk add --no-cache corebird corebird-lang

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "corebird" ]
