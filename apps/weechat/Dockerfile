FROM lburgazzoli/fedora:28
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID
ARG APP_NAME
ARG APP_VERSION

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME
ENV LC_ALL           en_US.UTF-8
ENV LANG             en_US.UTF-8

RUN \
    dnf --assumeyes install \
        cmake \
        clang \
        pkgconfig \
        ncurses-devel \
        zlib-devel \
        gnutls-devel \
        libcurl-devel \
        libgcrypt-devel \
        gettext \
        ca-certificates \
        aspell \
        aspell-devel \
        python2 \
        python2-devel \ 
        perl \
        perl-ExtUtils-Embed \
        perl-Encode \
        perl-devel \
        ruby \
        ruby-devel \
        lua \
        lua-devel \
        guile-devel \
        asciidoc \
        cpptest \
        cpptest-devel \
        libnotify \
        openssl \
    && mkdir /tmp/${APP_NAME} \    
    && mkdir /tmp/${APP_NAME}/build \    
    && wget https://weechat.org/files/src/weechat-${APP_VERSION}.tar.gz -q -O - \
        | tar -xvzf - \
            --directory /tmp/${APP_NAME} \
            --strip-components=1 \
    && cd /tmp/${APP_NAME}/build \
    && cmake \
        -DCMAKE_BUILD_TYPE=Release \
        -DENABLE_MAN=ON \
        -DENABLE_JAVASCRIPT=OFF \
        -DENABLE_TCL=OFF \
        .. \
    && make install \
    && dnf --assumeyes remove \
        cmake \
        pkgconfig \
        ncurses-devel \
        curl-devel \
        zlib-devel \
        gcrypt-devel \
        cpptest \
        cpptest-devel \

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER
CMD [ "weechat" ]
