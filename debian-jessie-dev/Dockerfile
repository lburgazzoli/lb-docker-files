############################################################
# Debian Jessie 
############################################################

FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

RUN \
    apt-get update \
    && apt-get install --no-install-recommends -y \
        gcc \
        g++ \
        gmake \
    && rm -rf /var/lib/apt/lists/*
