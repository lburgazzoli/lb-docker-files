FROM lburgazzoli/fedora-ui:25
MAINTAINER lburgazzoli

ARG APP_NAME
ARG APP_URL
ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    dnf --assumeyes install \
        libXScrnSaver \
        libXtst \
        libxkbfile \
        GConf2 \
        alsa-lib \
        alsa-utils \
    && mkdir /opt/$APP_NAME \
    && curl -L $APP_URL \
        | tar -xzf - \
            --directory /opt/$APP_NAME \
            --strip-components=1

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER

CMD [ "/opt/discord/Discord" ]

