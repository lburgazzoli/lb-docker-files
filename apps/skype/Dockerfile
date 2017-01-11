
FROM lburgazzoli/ubuntu-ui:16.10
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    curl https://repo.skype.com/data/SKYPE-GPG-KEY | apt-key add - \
    && echo "deb [arch=amd64] https://repo.skype.com/deb stable main" > /etc/apt/sources.list.d/skype-stable.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        apt-utils \
        skypeforlinux \
    && rm -rf /var/lib/apt/lists/*


WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "/usr/share/skypeforlinux/skypeforlinux", "--executed-from=$HOME" ]
