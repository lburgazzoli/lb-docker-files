############################################################
# Ubtuntu 15.10 ui
############################################################

FROM lburgazzoli/ubuntu:15.10
MAINTAINER lburgazzoli

RUN \
    apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
        gtk2-engines-murrine \
        gtk2-engines-pixbuf \
        fonts-droid \
    && rm -rf /var/lib/apt/lists/*
