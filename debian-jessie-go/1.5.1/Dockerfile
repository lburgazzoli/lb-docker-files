############################################################
# Debian Jessie / go 1.5.1
############################################################

FROM lburgazzoli/debian-jessie-dev
MAINTAINER lburgazzoli

ENV GOVER  1.5.1
ENV GOROOT /opt/goroot
ENV GOPATH /opt/gopath
ENV PATH   /opt/goroot/bin:/opt/gopath/bin:$PATH

RUN \
    mkdir -p ${GOROOT} \
    && mkdir -p ${GOPATH} \
    && curl https://storage.googleapis.com/golang/go${GOVER}.linux-amd64.tar.gz \
        | tar xzf - \
            --directory ${GOROOT} \
            --strip-components=1

