FROM alpine:3.6
MAINTAINER lburgazzoli

RUN apk --no-cache add privoxy
COPY privoxy.conf /etc/privoxy/config
RUN chown -R privoxy /etc/privoxy

USER privoxy
EXPOSE 8118

ENTRYPOINT [ "privoxy", "--no-daemon" ]
CMD [ "/etc/privoxy/config" ]
