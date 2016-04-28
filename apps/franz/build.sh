#!/usr/bin/env bash

APP_NAME=$(basename $PWD)
APP_VERSION=0.9.10

sudo docker build \
    --tag="lburgazzoli/app-$APP_NAME:${APP_VERSION}" \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_NAME=${APP_NAME} \
    --build-arg APP_VERSION=${APP_VERSION} \
    .
