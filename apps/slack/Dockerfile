
FROM lburgazzoli/ubuntu-ui:15.10
MAINTAINER lburgazzoli

ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION

ENV DOCKER_USER_HOME    /home/user
ENV DOCKER_USER         user
ENV LC_ALL              en_US.UTF-8
ENV LANG                en_US.UTF-8
ENV HOME                ${DOCKER_USER_HOME}

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
        gconf2 \
        gconf-service \
        hunspell-en-us \
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
        python \
        gvfs-bin \
        xdg-utils \
        apt-transport-https \
        locales \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen en_US.utf8 \
    && /usr/sbin/update-locale LANG=en_US.UTF-8 \
    && curl -sSL https://slack-ssb-updates.global.ssl.fastly.net/linux_releases/slack-desktop-${APP_VERSION}-amd64.deb > /tmp/slack.deb \
    && dpkg -i /tmp/slack.deb \
    && rm -rf /tmp/slack.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
