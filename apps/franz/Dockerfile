
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION
ARG APP_NAME

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    mkdir /opt/${APP_NAME} \
    && wget https://github.com/imprecision/franz-app/releases/download/${APP_VERSION}/Franz-linux-x64-${APP_VERSION}.tgz -q -O - \
        | tar -xvzf - \
            --directory /opt/${APP_NAME} \
            --strip-components=1 

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "/opt/franz/franz" ]
