
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION

ENV DOCKER_USER_HOME /home/${DOCKER_USER}
ENV LC_ALL           en_US.UTF-8
ENV LANG             en_US.UTF-8
ENV HOME             ${DOCKER_USER_HOME}

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
    && mkdir -p $DOCKER_USER_HOME/.config/autostart \
    && chown $DOCKER_USER:$DOCKER_USER $DOCKER_USER_HOME/.config/autostart \
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
    && curl -sSL https://update.gitter.im/linux64/gitter_${APP_VERSION}_amd64.deb > /tmp/gitter.deb \
    && dpkg -i /tmp/gitter.deb \
    && rm -rf /tmp/gitter.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
