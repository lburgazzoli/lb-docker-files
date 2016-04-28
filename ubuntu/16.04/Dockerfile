############################################################
# Ubtuntu 16.04
############################################################

FROM ubuntu:16.04
MAINTAINER lburgazzoli

RUN \
    apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        software-properties-common \
        curl \
        unzip \
        wget \
    && rm -rf /var/lib/apt/lists/*
