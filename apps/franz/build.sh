#!/usr/bin/env bash

APP_GROUP=lburgazzoli
APP_NAME=franz
REPO_OWNER="meetfranz"
REPO_NAME="franz"
BINARY_NAME="x86_64.AppImage"

if [ "$#" -eq 1 ]; then
    if [[ "$1" == "-f" ]]; then
    docker image rm ${APP_GROUP}/app-${APP_NAME}
    fi
fi

URL=$(curl -s https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/releases/latest \
    | jq --raw-output \
        ".assets[] | select(.name | endswith(\"${BINARY_NAME}\")) | .browser_download_url")


docker build \
    --tag="lburgazzoli/app-franz" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_NAME=franz \
    --build-arg APP_URL=$URL \
    .
