
FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

#ENV http_proxy      http://172.17.42.1:8128
#ENV https_proxy     http://172.17.42.1:8128
ENV DOCKER_HOME     /home/user
ENV DOCKER_USER     user
ENV DEBIAN_FRONTEND noninteractive
ENV APP_VERSION     1.2.4
ENV LC_ALL          en_US.UTF-8
ENV LANG            en_US.UTF-8
ENV HOME            ${DOCKER_HOME}

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
        gconf2 \ 
        gconf-service \ 
        libgtk2.0-0 \ 
        libudev1 \
        libgcrypt20 \
        libnotify4 \
        libxtst6 \
        libnss3 \
        libasound2 \
        libxss1 \
        libgl1-mesa-dri \
        libgl1-mesa-glx \
        python-minimal \
        gvfs-bin \
        xdg-utils \
        ca-certificates \
        apt-transport-https \
        fonts-droid \
        fonts-roboto \
        locales \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen en_US.utf8 \
    && /usr/sbin/update-locale LANG=en_US.UTF-8 \
    && curl -sSL https://slack-ssb-updates.global.ssl.fastly.net/linux_releases/slack-desktop-${APP_VERSION}-amd64.deb > /tmp/slack.deb \
    && dpkg -i /tmp/slack.deb \
    && rm -rf /tmp/slack.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_HOME
USER $DOCKER_USER
