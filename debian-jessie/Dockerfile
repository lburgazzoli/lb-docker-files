############################################################
# Debian Jessie 
############################################################

FROM debian:jessie
MAINTAINER lburgazzoli

RUN \
    sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        software-properties-common \
        curl \
        git \
        unzip \
        wget \
    && rm -rf /var/lib/apt/lists/*
