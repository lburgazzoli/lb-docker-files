FROM alpine:3.4
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME  /home/$DOCKER_USER
ENV HOME              $DOCKER_USER_HOME

RUN \
    adduser \
        -h $DOCKER_USER_HOME \
        -u $DOCKER_USER_UID \
        -s /usr/sbin/nologin \
        -D \
        $DOCKER_USER \
    && apk add --update \
        bash \
        weechat

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "weechat" ]
