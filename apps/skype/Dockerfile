
FROM lburgazzoli/ubuntu-ui:16.10
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    wget -O /tmp/skype.deb https://repo.skype.com/latest/skypeforlinux-64-alpha.deb \
    && dpkg -i /tmp/skype.deb \
    && rm /tmp/skype.deb

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [  "/usr/share/skypeforlinux/skypeforlinux" , "--executed-from=$HOME" ]
