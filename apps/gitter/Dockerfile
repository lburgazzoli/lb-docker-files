
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
    mkdir -p $DOCKER_USER_HOME/.config/autostart \
    && chown $DOCKER_USER:$DOCKER_USER $DOCKER_USER_HOME/.config/autostart \
    && locale-gen en_US.utf8 \
    && /usr/sbin/update-locale LANG=en_US.UTF-8 \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && curl -sSL https://update.gitter.im/linux64/gitter_${APP_VERSION}_amd64.deb > /tmp/gitter.deb \
    && dpkg -i /tmp/gitter.deb \
    && rm -rf /tmp/gitter.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "gitter" ]
