
FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

#ENV http_proxy      http://172.17.42.1:8128
#ENV https_proxy     http://172.17.42.1:8128
ENV DOCKER_HOME     /home/user
ENV DOCKER_USER     user
ENV DEBIAN_FRONTEND noninteractive

RUN \
    groupadd \
        --gid 1000 \
        $DOCKER_USER \
    && useradd \
        --create-home \
        --home-dir $DOCKER_HOME \
        --uid 1000 \
        --gid 1000 \
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && apt-get update \
    && apt-get upgrade -y --no-install-recommends \
    && apt-get install -y --no-install-recommends \
        curl \
        gtk2-engines-murrine \
        gtk2-engines-pixbuf \
        fonts-droid \
        pidgin \
        pidgin-libnotify \
        pidgin-otr \
        pidgin-sipe \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_HOME
USER $DOCKER_USER
