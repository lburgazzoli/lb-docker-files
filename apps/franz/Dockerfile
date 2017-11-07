
FROM lburgazzoli/fedora-ui:26
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_URL
ARG APP_NAME

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    dnf --assumeyes install \
        fuse \
        fuse-libs \
        libXtst \
        libXScrnSaver \
        GConf2 \
        alsa-lib \
        google-noto-serif-fonts \
        google-noto-mono-fonts \
        google-noto-sans-fonts \
    && mkdir /opt/${APP_NAME} \
    && curl \
        --location \
        --output /opt/${APP_NAME}/${APP_NAME}.appimage \
        ${APP_URL} \
    && chmod +x /opt/${APP_NAME}/${APP_NAME}.appimage \
    && cd /opt/${APP_NAME} \
    && ./${APP_NAME}.appimage --appimage-extract

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "/opt/franz/franz" ]
