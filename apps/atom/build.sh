#!/usr/bin/env bash

APP_NAME=atom
REPO_OWNER="atom"
REPO_NAME="atom"
BINARY_NAME="atom-amd64.tar.gz"

URL=$(curl -s https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/releases/latest \
    | jq --raw-output \
        ".assets[] | select(.name == \"${BINARY_NAME}\") | .browser_download_url")

docker build \
    --tag="lburgazzoli/app-${APP_NAME}" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_NAME=${APP_NAME} \
    --build-arg APP_URL=$URL \
    .
