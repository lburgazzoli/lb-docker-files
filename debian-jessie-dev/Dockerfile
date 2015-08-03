############################################################
# Debian Jessie 
############################################################

FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

ENV http_proxy http://172.17.42.1:8128
ENV https_proxy http://172.17.42.1:8128

RUN \
    apt-get update \
    && apt-get install --no-install-recommends -y \
        gcc \
        g++ \
        gmake \
    && rm -rf /var/lib/apt/lists/*
