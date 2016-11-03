#!/usr/bin/env bash


sudo docker build \
    --file Dockerfile.alpine \
    --tag="lburgazzoli/app-chromium" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .
