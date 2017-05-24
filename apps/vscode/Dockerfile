
FROM lburgazzoli/fedora-ui:25
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
        GConf2 \
        alsa-lib \
        alsa-utils \
        make \
        automake \
        gcc \
        gcc-c++ \
        git-core \
        git \
        gnupg \
        gnupg2 \
        findutils \
    && ln -s /usr/share/git-core/contrib/completion/git-prompt.sh /etc/profile.d \
    && mkdir /opt/${APP_NAME} \
    && curl -L https://go.microsoft.com/fwlink/?LinkID=620884 \
        | tar -xzf - \
            --directory /opt/${APP_NAME} \
            --strip-components=1 

ADD vscode-run.sh /opt/vscode/vscode-run.sh
RUN chmod ugo+x /opt/vscode/vscode-run.sh

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER

ENTRYPOINT [ "/opt/vscode/vscode-run.sh" ]

