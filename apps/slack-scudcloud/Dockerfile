
FROM lburgazzoli/ubuntu-ui:15.10
MAINTAINER lburgazzoli

ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_VERSION

ENV DOCKER_USER_HOME    /home/user
ENV DOCKER_USER         user
ENV LC_ALL              en_US.UTF-8
ENV LANG                en_US.UTF-8
ENV HOME                ${DOCKER_USER_HOME}

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
    && apt-add-repository -y ppa:rael-gc/scudcloud \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        scudcloud \
        hunspell-en-us \
        locales \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
