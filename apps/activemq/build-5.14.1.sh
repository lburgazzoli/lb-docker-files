#!/usr/bin/env bash

APP_VERSION="5.14.1"

sudo docker build \
    --tag="lburgazzoli/app-activemq:${APP_VERSION}" \
    --build-arg APP_VERSION=${APP_VERSION} \
    .
