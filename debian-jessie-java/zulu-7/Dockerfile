############################################################
# Debian Jessie / OpenJDK Zulu-7
############################################################

FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        software-properties-common \
    && apt-key adv \
        --keyserver hkp://keyserver.ubuntu.com:80 \
        --recv-keys 0x219BD9C9 \
    && apt-add-repository 'deb http://repos.azulsystems.com/debian stable main' \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        zulu-7 \
    && rm -rf /var/lib/apt/lists/*
