
FROM alpine:3.3
MAINTAINER lburgazzoli

RUN apk add --update acf-squid

ADD /squid.conf /etc/squid3/squid.conf
ADD squid-passwd /etc/squid3/squid-passwd
