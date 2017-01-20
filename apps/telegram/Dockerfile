
FROM lburgazzoli/fedora-ui:25
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    mkdir /opt/telegram \
    && wget https://tdesktop.com/linux -q -O - \
        | tar -Jxf - \
            --directory /opt/telegram \
            --strip-components=1 

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "/opt/telegram/Telegram" ]
