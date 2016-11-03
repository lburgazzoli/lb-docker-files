FROM jboss/base-jdk:8

ARG APP_VERSION

ENV ACTIVEMQ_VERSION $APP_VERSION
ENV ACTIVEMQ apache-activemq-$ACTIVEMQ_VERSION
ENV ACTIVEMQ_TCP=61616 
ENV ACTIVEMQ_AMQP=5672 
ENV ACTIVEMQ_STOMP=61613 
ENV ACTIVEMQ_MQTT=1883 
ENV ACTIVEMQ_WS=61614 
ENV ACTIVEMQ_UI=8161

ENV ACTIVEMQ_HOME /opt/jboss/activemq

RUN set -x \
    && mkdir -p $ACTIVEMQ_HOME \
    && curl -s -S https://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz \
        | tar xvz \
            --strip-components=1 \
            --directory ${ACTIVEMQ_HOME} \
    && chown -R jboss:jboss ${ACTIVEMQ_HOME}

USER jboss

WORKDIR $ACTIVEMQ_HOME

EXPOSE $ACTIVEMQ_TCP 
EXPOSE $ACTIVEMQ_AMQP 
EXPOSE $ACTIVEMQ_STOMP 
EXPOSE $ACTIVEMQ_MQTT 
EXPOSE $ACTIVEMQ_WS 
EXPOSE $ACTIVEMQ_UI

CMD ["/bin/sh", "-c", "bin/activemq console"]
