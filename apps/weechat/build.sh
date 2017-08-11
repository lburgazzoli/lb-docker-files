#!/usr/bin/env bash

WEECHAT_VERSION=1.9

docker build \
    --tag="lburgazzoli/app-weechat" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_NAME=weechat \
    --build-arg APP_VERSION=${WEECHAT_VERSION} \
    .
