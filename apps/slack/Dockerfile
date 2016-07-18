
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME
ENV LC_ALL           en_US.UTF-8
ENV LANG             en_US.UTF-8

RUN \
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen en_US.utf8 \
    && /usr/sbin/update-locale LANG=en_US.UTF-8 \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        hunspell-en-us \
        libnotify4 \
        python \
        gvfs-bin \
        apt-transport-https \
        gir1.2-gnomekeyring-1.0 \
    && curl -sSL https://slack-ssb-updates.global.ssl.fastly.net/linux_releases/slack-desktop-${APP_VERSION}-amd64.deb > /tmp/slack.deb \
    && dpkg -i /tmp/slack.deb \
    && rm -rf /tmp/slack.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "/usr/bin/slack" ]
