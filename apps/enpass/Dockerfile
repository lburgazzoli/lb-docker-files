
FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

#ENV http_proxy      http://172.17.42.1:8128
#ENV https_proxy     http://172.17.42.1:8128
ENV DOCKER_USER     lb
ENV DOCKER_HOME     /home/${DOCKER_USER}
ENV DEBIAN_FRONTEND noninteractive

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
    && echo "deb http://repo.sinew.in/ stable main" > /etc/apt/sources.list.d/enpass.list \
    && wget -O - http://repo.sinew.in/keys/enpass-linux.key | apt-key add - \
    && apt-get update \
    && apt-get upgrade \
    && apt-get install -y --no-install-recommends \
        libpulse0 \
        libgl1-mesa-dri \
        libgl1-mesa-glx \
        libxcb1 \
        libxss1 \ 
        xdg-utils \
        libqt5gui5 \
        gtk2-engines-murrine \
        gtk2-engines-pixbuf \
        fonts-droid \
        enpass \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $DOCKER_HOME
USER $DOCKER_USER

