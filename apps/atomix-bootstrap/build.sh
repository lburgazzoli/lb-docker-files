#!/usr/bin/env bash

REPO_OWNER="atomix"
REPO_NAME="atomix"

APP_VERSION=$(curl -s https://api.github.com/repos/atomix/atomix/tags | jq --raw-output ".[0].name" | sed s/\"//g | cut -d- -f 2)
APP_BINARY_URL="http://search.maven.org/remotecontent?filepath=io/atomix/atomix-standalone-server/$APP_VERSION/atomix-standalone-server-$APP_VERSION-shaded.jar"
docker build \
    --tag="lburgazzoli/app-atomix-boostrap:${APP_VERSION}" \
    --build-arg APP_VERSION=${APP_VERSION} \
    --build-arg APP_BINARY_URL=${APP_BINARY_URL} \
    .
