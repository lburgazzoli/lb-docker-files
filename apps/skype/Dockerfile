
FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

COPY run-skype.sh /usr/bin

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
        libappindicator1 \
        libasound2 \
        libcanberra-gtk-module \
        libcurl3 \
        libexif-dev \
        libgconf-2-4 \
        libgl1-mesa-dri \
        libgl1-mesa-glx \
        libnspr4 \
        libnss3 \
        libpango1.0-0 \
        libv4l-0 \
        libxss1 \
        libxtst6 \
        libgnome-keyring0 \
        xdg-utils \
        fonts-liberation \
        gconf-service \
        gnome-keyring \
        hicolor-icon-theme \
    && wget -O /tmp/skype.deb https://repo.skype.com/latest/skypeforlinux-64-alpha.deb \
    && dpkg -i /tmp/skype.deb \
    && rm /tmp/skype.deb \
    && chown $DOCKER_USER:$DOCKER_USER /usr/bin/run-skype.sh \
    && chmod u+x /usr/bin/run-skype.sh


WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD /usr/bin/run-skype.sh
