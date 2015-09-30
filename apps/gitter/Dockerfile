
FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

#ENV http_proxy      http://172.17.42.1:8128
#ENV https_proxy     http://172.17.42.1:8128
ENV DOCKER_HOME     /home/user
ENV DOCKER_USER     user
ENV DEBIAN_FRONTEND noninteractive
ENV APP_VERSION     2.4.0

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
        desktop-file-utils \
        libnss3 \
        libgconf-2-4 \
        libfontconfig \
        libpangocairo-1.0-0 \
        libxi6 \
        libxcursor1 \
        libxcomposite1 \
        libasound2 \
        libxdamage1 \
        libxtst6 \
        libxrandr2 \
        libgtk2.0-0 \
        libnotify4 \
    && curl -s https://update.gitter.im/linux64/gitter_${APP_VERSION}_amd64.deb -o /tmp/gitter.deb \
    && dpkg -i /tmp/gitter.deb \
    && apt-get install -y --no-install-recommends -f \
    && rm -f /tmp/gitter.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_HOME
USER $DOCKER_USER
