FROM alpine:3.7
MAINTAINER lburgazzoli

RUN apk --no-cache add tor
COPY torrc.default /etc/tor/torrc.default
RUN chown -R tor /etc/tor

USER tor
EXPOSE 9050

ENTRYPOINT [ "tor" ]
CMD [ "-f", "/etc/tor/torrc.default" ]
