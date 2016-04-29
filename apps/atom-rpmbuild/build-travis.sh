#!/usr/bin/env bash

docker build \
    --tag="lburgazzoli/app-atom-build" \
    --build-arg BINTRAY_USER=$BINTRAY_USER \
    --build-arg BINTRAY_APIKEY=$BINTRAY_APIKEY \
    --build-arg BINTRAY_REPO="rpm" \
    .
