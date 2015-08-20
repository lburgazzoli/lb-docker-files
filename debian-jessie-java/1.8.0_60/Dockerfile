############################################################
# CentOS 7 / Java 1.8.0_60
############################################################

FROM lburgazzoli/debian-jessie:latest
MAINTAINER lburgazzoli

ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 60
ENV JAVA_VERSION_BUILD 27
ENV JAVA_PACKAGE       jdk
ENV JAVA_BUILD         "${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}"
ENV JAVA_ARCHIVE       "${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz"

RUN mkdir -p /opt/java && \
    curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" \
        "http://download.oracle.com/otn-pub/java/jdk/${JAVA_BUILD}/${JAVA_ARCHIVE}" \
        | gunzip -c - \
        | tar -xf - --directory /opt/java --strip-components=1 &&\
    rm -rf \
        /opt/java/*src.zip \
        /opt/java/lib/missioncontrol \
        /opt/java/lib/visualvm \
        /opt/java/lib/*javafx* \
        /opt/java/bin/javafxpackager \
        /opt/java/jre/lib/amd64/libjavafx_font_freetype.so \
        /opt/java/jre/lib/amd64/libjavafx_font_pango.so \
        /opt/java/jre/lib/amd64/libjavafx_font_t2k.so \
        /opt/java/jre/lib/amd64/libjavafx_iio.so \
        /opt/java/jre/lib/amd64/libjavafx_font.so \
        /opt/java/jre/lib/javafx.properties \
        /opt/java/man/ja_JP.UTF-8/man1/javafxpackager.1 \
        /opt/java/man/man1/javafxpackager.1 \
        /opt/java/jre/lib/amd64/libjfxmedia.so \
        /opt/java/jre/lib/amd64/libjfxwebkit.so \
        /opt/java/jre/lib/ext/jfxrt.jar \
        /opt/java/jre/lib/jfxswt.jar \
        /opt/java/db


ENV JAVA_HOME /opt/java
ENV PATH /opt/java/bin:$PATH

