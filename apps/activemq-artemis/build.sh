#!/usr/bin/env bash

APP_VERSION="2.6.2"

docker build \
    --tag="lburgazzoli/app-activemq-artemis:${APP_VERSION}" \
    --build-arg APP_VERSION=${APP_VERSION} \
    .
