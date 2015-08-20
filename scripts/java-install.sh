#!/bin/bash

mkdir -p ${JAVA_HOME} 

curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" \
    "http://download.oracle.com/otn-pub/java/jdk/${JAVA_BUILD}/${JAVA_ARCHIVE}" \
    | gunzip -c - \
    | tar -xf - --directory ${JAVA_HOME} --strip-components=1

rm -rf \
    ${JAVA_HOME}/*src.zip \
    ${JAVA_HOME}/lib/missioncontrol \
    ${JAVA_HOME}/lib/visualvm \
    ${JAVA_HOME}/lib/*javafx* \
    ${JAVA_HOME}/bin/javafxpackager \
    ${JAVA_HOME}/jre/lib/amd64/libjavafx_font_freetype.so \
    ${JAVA_HOME}/jre/lib/amd64/libjavafx_font_pango.so \
    ${JAVA_HOME}/jre/lib/amd64/libjavafx_font_t2k.so \
    ${JAVA_HOME}/jre/lib/amd64/libjavafx_iio.so \
    ${JAVA_HOME}/jre/lib/amd64/libjavafx_font.so \
    ${JAVA_HOME}/jre/lib/javafx.properties \
    ${JAVA_HOME}/man/ja_JP.UTF-8/man1/javafxpackager.1 \
    ${JAVA_HOME}/man/man1/javafxpackager.1 \
    ${JAVA_HOME}/jre/lib/amd64/libjfxmedia.so \
    ${JAVA_HOME}/jre/lib/amd64/libjfxwebkit.so \
    ${JAVA_HOME}/jre/lib/ext/jfxrt.jar \
    ${JAVA_HOME}/jre/lib/jfxswt.jar \
    ${JAVA_HOME}/db
