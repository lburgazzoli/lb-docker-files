############################################################
# Debian Jessie / go 1.5.2
############################################################

FROM lburgazzoli/debian-jessie-dev
MAINTAINER lburgazzoli

ENV GOVER  1.5.2
ENV GOROOT /opt/goroot
ENV GOPATH /opt/gopath
ENV PATH   /opt/goroot/bin:/opt/gopath/bin:$PATH

RUN apt-get update \
    && apt-get upgrade -y \
    && mkdir -p ${GOROOT} \
    && mkdir -p ${GOPATH} \
    && curl https://storage.googleapis.com/golang/go${GOVER}.linux-amd64.tar.gz \
        | tar xzf - \
            --directory ${GOROOT} \
            --strip-components=1 \
    && rm -rf /var/lib/apt/lists/*
