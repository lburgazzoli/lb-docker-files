
############################################################
# Debian Jessie / Jmx4Perl
############################################################

FROM lburgazzoli/debian-jessie
MAINTAINER lburgazzoli

#ENV http_proxy   http://172.17.42.1:8128
#ENV https_proxy  http://172.17.42.1:8128

RUN \
    apt-get update \
    && apt-get install --no-install-recommends -y \
        gcc \
        make \
        libreadline-dev \
        libncurses5-dev \
        libxml2-dev \
        libexpat1-dev \
        zlib1g-dev \
        cpanminus \
    && cpanm install -n Term::ReadKey \
    && cpanm install \
        Fatal \
        Env \
        Test::More \
        XML::LibXML \
        Term::ReadLine::Gnu \
        JMX::Jmx4Perl \
    && apt-get remove -y \
        gcc \
        cpp \
        make \
        libreadline-dev \
        libncurses5-dev \
        libxml2-dev \
        libexpat1-dev \
        zlib1g-dev \
        cpanminus \
    && apt-get autoclean -y \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

