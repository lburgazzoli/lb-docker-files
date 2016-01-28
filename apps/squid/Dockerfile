
FROM lburgazzoli/ubuntu:15.10
MAINTAINER lburgazzoli

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends squid3 \
    && rm -rf /var/lib/apt/lists/*

ADD /squid.conf /etc/squid3/squid.conf
ADD squid-passwd /etc/squid3/squid-passwd
