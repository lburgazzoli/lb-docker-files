FROM lburgazzoli/alpine:edge
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    apk update \
    && apk upgrade \
    && apk add \
        hugo \
        ruby \
    && gem install asciidoctor --no-rdoc --no-ri \
    && rm -rf /var/cache/apk/*


WORKDIR $HOME
USER $DOCKER_USER

ENTRYPOINT [ "hugo" ]
