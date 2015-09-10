
FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

#ENV http_proxy      http://172.17.42.1:8128
#ENV https_proxy     http://172.17.42.1:8128
ENV DOCKER_HOME     /home/user
ENV DOCKER_USER     user
ENV DEBIAN_FRONTEND noninteractive
ENV SKYPE_VERSION   4.3.0.37-1

RUN \
    groupadd \
        --gid 1000 \
        $DOCKER_USER \
    && useradd \
        --create-home \
        --home-dir $DOCKER_HOME \
        --uid 1000 \
        --gid 1000 \
        --shell /usr/sbin/nologin \
        $DOCKER_USER \
    && dpkg --add-architecture i386 \ 
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \            
    && curl http://download.skype.com/linux/skype-debian_${SKYPE_VERSION}_i386.deb > /usr/src/skype.deb \
    && dpkg --force-depends -i /usr/src/skype.deb \
    && apt-get install -fy \
    && rm -rf /usr/src/skype.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_HOME
USER $DOCKER_USER
