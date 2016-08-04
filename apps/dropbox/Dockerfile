#
#  docker build \
#      --tag="lburgazzoli/app-dropbox" \
#      --build-arg DOCKER_USER=$LOGNAME \
#      --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
#      --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
#     .  
#  
#  docker run \
#      -d \
#      -u ${DOCKER_USER} \
#      --net host \
#      --name ${DOCKER_NAME} \
#      --log-driver=syslog \
#      -e DISPLAY=unix${DISPLAY} \
#      -e QT_XKB_CONFIG_ROOT=/usr/share/X11/xkb \
#      -e QT_STYLE_OVERRIDE="" \
#      -v /etc/localtime:/etc/localtime:ro \
#      -v /etc/machine-id:/etc/machine-id:ro \
#      -v /tmp/.X11-unix:/tmp/.X11-unix \
#      -v /var/run/dbus:/var/run/dbus \
#      -v /dev/shm:/dev/shm \
#      -v $HOME/.dropbox:/home/$DOCKER_USER/.dropbox \
#      -v $HOME/.dropbox-dist:/home/$DOCKER_USER/.dropbox-dist \
#      -v $HOME/doc/Dropbox:/home/$DOCKER_USER/doc/Dropbox \
#      ${DOCKER_IMAGE} \
#      /home/$DOCKER_USER/.dropbox-dist/dropboxd
#
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME  /home/$DOCKER_USER
ENV HOME              $DOCKER_USER_HOME
ENV QT_STYLE_OVERRIDE ""

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
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        libxxf86vm1 \
        libxslt1.1 \
        libSM \
        libICE \
        python \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
