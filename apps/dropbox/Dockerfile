
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    groupadd \
        --gid $DOCKER_USER_GID \
        $DOCKER_USER \
    && useradd \
        --create-home \
        --home-dir $DOCKER_USER_HOME \
        --uid $DOCKER_USER_GID \
        --gid $DOCKER_USER_UID \
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        libxxf86vm1 \
        libxslt1.1 \
        libappindicator1 \
        libx11-6 \
        libx11-xcb1 \
        libxcb-xkb1 \
        libnotify4 \
        xdg-utils \
        fonts-liberation \
        gconf-service \
        hicolor-icon-theme \
        qt5-default \
    && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" \
        | tar xzf - --directory=$HOME \
    && wget -O $HOME/.dropbox-dist/dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py" \
    && chown -R $DOCKER_USER:$DOCKER_USER $HOME/.dropbox-dist \ 
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
