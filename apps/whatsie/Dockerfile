
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    apt-get update \
    && apt-get install apt-transport-https \
    && apt-key adv --keyserver pool.sks-keyservers.net --recv-keys 1537994D \
    && echo "deb https://dl.bintray.com/aluxian/deb stable main" > /etc/apt/sources.list.d/whatsie.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \        
        whatsie \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "/usr/bin/whatsie" ]
