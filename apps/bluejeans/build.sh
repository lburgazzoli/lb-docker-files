#!/usr/bin/env bash


APP_GROUP=lburgazzoli
APP_NAME=bluejeans
APP_DOWNLOAD_URL="https://swdl.bluejeans.com/desktop/linux/1.24/1.24.35/bluejeans-1.24.35.x86_64.rpm"

if [ "$#" -eq 1 ]; then
    if [[ "$1" == "-f" ]]; then
    docker image rm ${APP_GROUP}/app-${APP_NAME}
    fi
fi

sudo docker build \
    --tag="lburgazzoli/app-bluejeans" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_DOWNLOAD_URL=${APP_DOWNLOAD_URL} \
    .
