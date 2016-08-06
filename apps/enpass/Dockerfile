FROM lburgazzoli/ubuntu-ui-qt5:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME  /home/$DOCKER_USER
ENV HOME              $DOCKER_USER_HOME

RUN wget -O - http://repo.sinew.in/keys/enpass-linux.key | apt-key add - \
    && echo "deb http://repo.sinew.in/ stable main" > /etc/apt/sources.list.d/enpass.list \
    && apt-get update \
    && apt-get install --assume-yes --no-install-recommends \
        enpass \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
