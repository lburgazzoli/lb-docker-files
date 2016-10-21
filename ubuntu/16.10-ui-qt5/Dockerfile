############################################################
# Ubtuntu 16.10 ui qt5
############################################################

FROM lburgazzoli/ubuntu-ui:16.10
MAINTAINER lburgazzoli

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        qt5-default \
        libqt5multimedia5 \
        libqt5xmlpatterns5 \
        libqt5websockets5 \
    && rm -rf /var/lib/apt/lists/*
