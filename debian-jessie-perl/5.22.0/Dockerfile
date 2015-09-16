
############################################################
# Debian Jessie / Perl / 5.22.0
############################################################

FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

#ENV http_proxy      http://172.17.42.1:8128
#ENV https_proxy     http://172.17.42.1:8128
ENV DEBIAN_FRONTEND noninteractive
ENV PERLBREW_ROOT   /opt/perl/perlbrew
ENV PERLBREW_HOME   /opt/perl/.perlbrew
ENV PERL_VERSION    perl-5.22.0

RUN \
    apt-get update \
    && apt-get install --no-install-recommends -y \
        gcc \
        make \
        bzip2 \
        libc-dev \
    && curl -sL http://install.perlbrew.pl | /bin/bash \
    && /bin/bash -c "\
        source ${PERLBREW_ROOT}/etc/bashrc \
            && perlbrew install-cpanm \
            && perlbrew install ${PERL_VERSION} \
            && perlbrew switch ${PERL_VERSION}" \
    && rm -rf /var/lib/apt/lists/*
