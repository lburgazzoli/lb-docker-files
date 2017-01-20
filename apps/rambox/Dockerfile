
FROM lburgazzoli/fedora-ui:25
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_URL

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME
ENV LC_ALL           en_US.UTF-8
ENV LANG             en_US.UTF-8

RUN \
    curl -sSL $APP_URL > /tmp/app.rpm \
    && dnf --assumeyes install \
        libXtst \
        libXScrnSaver \
        GConf2 \
        alsa-lib \
        google-noto-serif-fonts \
        google-noto-mono-fonts \
        google-noto-sans-fonts \
    && dnf --assumeyes install /tmp/app.rpm \
    && rm -rf /tmp/app.rpm \
    && dnf clean all

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "/opt/Rambox/Rambox" ]
