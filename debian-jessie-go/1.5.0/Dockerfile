############################################################
# Debian Jessie / go 1.5
############################################################

FROM lburgazzoli/debian-jessie-dev
MAINTAINER lburgazzoli

RUN \
    wget https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz -O /tmp/go.tar.gz \
    && mkdir -p /opt/goroot \
    && mkdir -p /opt/gopath \
    && tar xzf /tmp/go.tar.gz --directory /opt/goroot --strip-components=1 \
    && rm -rf /tmp/go.tar.gz

ENV GOROOT /opt/goroot
ENV GOPATH /opt/gopath
ENV PATH /opt/goroot/bin:/opt/gopath/bin:$PATH
