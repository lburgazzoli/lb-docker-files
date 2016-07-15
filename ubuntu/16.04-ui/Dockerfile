############################################################
# Ubtuntu 16.04 ui
############################################################

FROM lburgazzoli/ubuntu:16.04
MAINTAINER lburgazzoli

RUN \
    add-apt-repository -y ppa:numix/ppa \
    && apt-get update \
    && apt-get upgrade -y --no-install-recommends \
    && apt-get install -y --no-install-recommends \
        libappindicator1 \
        libasound2 \
        libcanberra-gtk-module \
        libcurl3 \
        libexif-dev \
        libgconf-2-4 \
        libgl1-mesa-dri \
        libgl1-mesa-glx \
        libnspr4 \
        libnss3 \
        libpango1.0-0 \
        libv4l-0 \
        libxss1 \
        libxtst6 \
        libgnome-keyring0 \
        libx11-6 \
        libx11-xcb1 \
        libxcb-xkb1 \
        xdg-utils \
        xz-utils \
        fonts-liberation \
        gconf-service \
        gconf2 \
        gnome-keyring \
        hicolor-icon-theme \
        gtk2-engines-murrine \
        gtk2-engines-pixbuf \
        fonts-droid-fallback \
        fonts-noto \
        numix-gtk-theme \
        dbus-x11 \
    && rm -rf /var/lib/apt/lists/*
