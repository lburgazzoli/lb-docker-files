#!/usr/bin/env bash

APP_GROUP=lburgazzoli
APP_NAME=hugo

if [ "$#" -eq 1 ]; then
    if [[ "$1" == "-f" ]]; then
    docker image rm ${APP_GROUP}/app-${APP_NAME}
    fi
fi

docker build \
    --no-cache \
    --tag="lburgazzoli/app-hugo" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .
