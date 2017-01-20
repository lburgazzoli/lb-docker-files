#!/usr/bin/env bash

REPO_OWNER="saenzramiro"
REPO_NAME="rambox"
BINARY_NAME="-x64.rpm"

URL=$(curl -s https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/releases/latest \
    | jq --raw-output \
        ".assets[] | select(.name | endswith(\"${BINARY_NAME}\")) | .browser_download_url")

docker build \
    --tag="lburgazzoli/app-rambox" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_URL=$URL \
    .
