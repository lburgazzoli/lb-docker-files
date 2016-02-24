#!/usr/bin/env bash

APP_VERSION=1.5.0

sudo docker build \
    --tag="lburgazzoli/app-whatsdesktop:${APP_VERSION}" \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_VERSION=${APP_VERSION} \
    .
