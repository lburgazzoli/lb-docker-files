############################################################
# Debian Jessie / rust 1.11.0
############################################################

FROM lburgazzoli/debian-jessie-dev
MAINTAINER lburgazzoli

ENV RUST_VERSION=1.11.0
ENV RUST_HOME=/opt/rust
ENV PATH $RUST_HOME/bin:$PATH

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        file \
    && mkdir -p $RUST_HOME \
    && curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- \
        --revision=$RUST_VERSION \
        --prefix=$RUST_HOME \
        --disable-sudo \
        --yes \
        --verbose \
    && rm -rf /var/lib/apt/lists/*
