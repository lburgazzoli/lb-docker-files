
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG APP_NAME
ARG APP_VERSION
ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    wget -L -O /tmp/vscode.deb https://vscode-update.azurewebsites.net/${APP_VERSION}/linux-deb-x64/stable \
    && dpkg -i /tmp/vscode.deb \
    && rm /tmp/vscode.deb

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [  "vscode" ]
