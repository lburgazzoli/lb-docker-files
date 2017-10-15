FROM lburgazzoli/fedora-ui:26
MAINTAINER lburgazzoli

ARG APP_NAME
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
        libgnome-keyring \
        GConf2 \
        alsa-lib \
        alsa-utils \
        make \
        automake \
        git-core \
        git \
        gnupg \
        gnupg2 \
        findutils \
    && ln -s /usr/share/git-core/contrib/completion/git-prompt.sh /etc/profile.d \
    && ln -s /usr/lib64/libcurl.so.4 /usr/lib64/libcurl-gnutls.so.4 \
    && mkdir /opt/${APP_NAME} \
    && curl -L https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz \
        | tar -xzf - \
            --directory /opt/${APP_NAME} \
            --strip-components=1

ADD run.sh /opt/${APP_NAME}/gitkraken-run.sh
RUN chmod ugo+x /opt/${APP_NAME}/gitkraken-run.sh

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER

ENTRYPOINT [ "/opt/gitkraken/gitkraken-run.sh" ]

