FROM openjdk:8-jdk-alpine

ARG APP_VERSION

ENV ACTIVEMQ_VERSION $APP_VERSION
ENV ACTIVEMQ apache-activemq-$ACTIVEMQ_VERSION
ENV ACTIVEMQ_TCP=61616 
ENV ACTIVEMQ_AMQP=5672 
ENV ACTIVEMQ_STOMP=61613 
ENV ACTIVEMQ_MQTT=1883 
ENV ACTIVEMQ_WS=61614 
ENV ACTIVEMQ_UI=8161
ENV ACTIVEMQ_USER activemq
ENV ACTIVEMQ_HOME /opt/activemq

RUN \
    mkdir -p /opt \
    && addgroup -S $ACTIVEMQ_USER \
    && adduser -S -H $ACTIVEMQ_USER \
    && apk add --no-cache curl \
    && curl -s -S https://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/apache-activemq-${ACTIVEMQ_VERSION}-bin.tar.gz \
        | tar xvzf - \
            -C /opt \
    && mv /opt/apache-activemq-${ACTIVEMQ_VERSION} ${ACTIVEMQ_HOME} \
    && chown -R $ACTIVEMQ_USER:$ACTIVEMQ_USER $ACTIVEMQ_HOME \
    && apk del curl

USER $ACTIVEMQ_USER

WORKDIR $ACTIVEMQ_HOME

EXPOSE $ACTIVEMQ_TCP 
EXPOSE $ACTIVEMQ_AMQP 
EXPOSE $ACTIVEMQ_STOMP 
EXPOSE $ACTIVEMQ_MQTT 
EXPOSE $ACTIVEMQ_WS 
EXPOSE $ACTIVEMQ_UI

CMD ["/bin/sh", "-c", "bin/activemq console"]
