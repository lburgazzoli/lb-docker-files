############################################################
# Ubtuntu 16.04 ui
############################################################

FROM lburgazzoli/ubuntu:16.04
MAINTAINER lburgazzoli

RUN \
    add-apt-repository -y ppa:numix/ppa \
    && apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
        gtk2-engines-murrine \
        gtk2-engines-pixbuf \
        fonts-droid-fallback \
        fonts-noto \
        numix-gtk-theme \
    && rm -rf /var/lib/apt/lists/*
