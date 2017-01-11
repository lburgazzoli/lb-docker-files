
FROM alpine:edge
MAINTAINER lburgazzoli

RUN apk add --update acf-squid

ADD /squid.conf /etc/squid/squid.conf
ADD squid-passwd /etc/squid/squid-passwd
