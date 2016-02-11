#!/usr/bin/env bash


sudo docker build \
    --tag="lburgazzoli/app-corebird" \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .
