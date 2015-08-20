############################################################
# CentOS 7 / Java 1.8.0_60
############################################################

FROM lburgazzoli/centos-7:latest
MAINTAINER lburgazzoli

#ENV http_proxy   http://172.17.42.1:8128
#ENV https_proxy  http://172.17.42.1:8128

ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 60
ENV JAVA_VERSION_BUILD 27
ENV JAVA_PACKAGE       jdk
ENV JAVA_BUILD         "${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}"
ENV JAVA_ARCHIVE       "${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz"
ENV JAVA_HOME          "/opt/java"
ENV PATH               "/opt/java/bin:$PATH"

ADD \
    https://raw.githubusercontent.com/lburgazzoli/lb-docker/master/scripts/java-install.sh \
    /tmp/java-install.sh

RUN chmod u+x /tmp/java-install.sh
RUN /tmp/java-install.sh
