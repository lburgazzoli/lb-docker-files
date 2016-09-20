#!/usr/bin/env bash

APP_NAME=vscode
APP_VERSION=1.5.2

docker build \
    --tag="lburgazzoli/app-${APP_NAME}" \
    --build-arg APP_NAME=$APP_NAME \
    --build-arg APP_VERSION=$APP_VERSION \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .
