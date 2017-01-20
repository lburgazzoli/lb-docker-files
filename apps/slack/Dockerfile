
FROM lburgazzoli/fedora-ui:25
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
    curl -sSL https://downloads.slack-edge.com/linux_releases/slack-${APP_VERSION}-0.1.fc21.x86_64.rpm > /tmp/slack.rpm \
    && dnf --assumeyes install \
        libXtst \
        GConf2 \
        alsa-lib \
        google-noto-serif-fonts \
        google-noto-mono-fonts \
        google-noto-sans-fonts \
    && dnf --assumeyes install /tmp/slack.rpm \
    && rm -rf /tmp/slack.rpm \
    && dnf clean all

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "/usr/bin/slack" ]
