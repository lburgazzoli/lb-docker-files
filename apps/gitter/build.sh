#!/usr/bin/env bash

APP_VERSION="3.0.3"

sudo docker build \
    --tag="lburgazzoli/app-gitter:${APP_VERSION}" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_VERSION=${APP_VERSION} \
    .
