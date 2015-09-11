
FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

#ENV http_proxy      http://172.17.42.1:8128
#ENV https_proxy     http://172.17.42.1:8128
ENV DOCKER_HOME     /home/user
ENV DOCKER_USER     user
ENV DEBIAN_FRONTEND noninteractive
ENV APP_VERSION     0.8.56

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
    && mkdir /opt/telegram \    
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        xz-utils \
        libx11-6 \
        libx11-xcb1 \
        libxcb-xkb1 \
    && curl -s https://updates.tdesktop.com/tlinux/tsetup.${APP_VERSION}.tar.xz \
        | xzcat - \
        | tar -xf - --directory /opt/telegram --strip-components=1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_HOME
USER $DOCKER_USER
