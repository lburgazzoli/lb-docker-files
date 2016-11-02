############################################################
# Ubtuntu 16.10
############################################################

FROM lburgazzoli/ubuntu:16.10
MAINTAINER lburgazzoli

RUN \
    apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
        telnet \
        netcat \
        net-tools \
        traceroute \
    && rm -rf /var/lib/apt/lists/*
