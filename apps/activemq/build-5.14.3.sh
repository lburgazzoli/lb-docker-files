#!/usr/bin/env bash

APP_VERSION="5.14.3"

docker build \
    --tag="lburgazzoli/app-activemq:${APP_VERSION}" \
    --build-arg APP_VERSION=${APP_VERSION} \
    .
