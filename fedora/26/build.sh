#!/usr/bin/env bash

sudo docker build \
    --tag="lburgazzoli/fedora:26" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .