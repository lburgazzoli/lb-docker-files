FROM lburgazzoli/debian:9
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV RUSTUP_HOME /usr/local/rustup
ENV CARGO_HOME  /usr/local/cargo
ENV PATH        /usr/local/cargo/bin:$PATH

RUN \ 
    apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        libssl-dev \
        zlib1g \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \    
    && wget "https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init" \
    && chmod +x rustup-init \
    && ./rustup-init -y --no-modify-path --default-toolchain nightly \
    && rm rustup-init \
    && chmod -R a+w $RUSTUP_HOME $CARGO_HOME \
    && rustup --version \
    && cargo --version \
    && rustc --version

WORKDIR $DOCKER_USER_HOME    
