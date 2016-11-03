FROM lburgazzoli/ubuntu-ui:16.10
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME  /home/$DOCKER_USER
ENV HOME              $DOCKER_USER_HOME
ENV LC_ALL           en_US.UTF-8
ENV LANG             en_US.UTF-8

RUN \
    locale-gen en_US.utf8 \
    && /usr/sbin/update-locale LANG=en_US.UTF-8 \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && apt-key adv \
        --keyserver pool.sks-keyservers.net \
        --recv-keys 11E9DE8848F2B65222AA75B8D1820DB22A11534E \
    && echo "deb https://weechat.org/ubuntu yakkety main" > /etc/apt/sources.list.d/weechat.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        libnotify-bin \
        weechat-curses \
        weechat-plugins \
        python \
        python-setuptools \
        python-pip \
        python-websocket \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "weechat" ]
