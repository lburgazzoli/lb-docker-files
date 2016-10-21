
FROM lburgazzoli/ubuntu-ui:16.10
MAINTAINER lburgazzoli

ARG APP_NAME
ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    mkdir /opt/${APP_NAME} \
    && wget https://go.microsoft.com/fwlink/?LinkID=620884 -q -O - \
        | tar -xzf - \
            --directory /opt/${APP_NAME} \
            --strip-components=1 

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [  "/opt/vscode/code" ]
