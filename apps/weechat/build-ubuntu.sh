#!/usr/bin/env bash


docker build \
    --file Dockerfile.ubuntu \
    --tag="lburgazzoli/app-weechat" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .
