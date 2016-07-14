FROM lburgazzoli/ubuntu-ui:16.04
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME  /home/$DOCKER_USER
ENV HOME              $DOCKER_USER_HOME

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
    && apt-get upgrade -y --no-install-recommends \
    && apt-get install -y --no-install-recommends \
        printer-driver-escpr \
        escputil \
    && mkdir /tmp/iscan-bundle \
    && wget -O - https://download2.ebz.epson.net/iscan/general/deb/x64/iscan-bundle-1.0.0.x64.deb.tar.gz \
        | tar -xzf - \
            --directory /tmp/iscan-bundle \
            --strip-components=1 \
    && /tmp/iscan-bundle/install.sh \
    && rm -rf /tmp/iscan-bundle \
    && rm -rf /var/lib/apt/lists/*

