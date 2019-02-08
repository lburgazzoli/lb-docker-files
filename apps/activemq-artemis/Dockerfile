FROM jboss/base-jdk:8

ARG APP_VERSION

ENV ACTIVEMQ_VERSION $APP_VERSION
ENV ACTIVEMQ apache-artemis-$ACTIVEMQ_VERSION
ENV ACTIVEMQ_TCP=61616 
ENV ACTIVEMQ_AMQP=5672 
ENV ACTIVEMQ_STOMP=61613 
ENV ACTIVEMQ_MQTT=1883 
ENV ACTIVEMQ_WS=61614 
ENV ACTIVEMQ_UI=8161
ENV ACTIVEMQ_HOME /opt/activemq-artemis
ENV ARTEMIS_USER artemis
ENV ARTEMIS_PASSWORD artemis
ENV ANONYMOUS_LOGIN false
ENV CREATE_ARGUMENTS --user ${ARTEMIS_USER} --password ${ARTEMIS_PASSWORD} --silent --http-host 0.0.0.0 

USER root

COPY ./docker-run.sh /entrypoint.sh

RUN set -x \
    && mkdir -p $ACTIVEMQ_HOME \
    && curl -s -S https://repository.apache.org/content/repositories/releases/org/apache/activemq/apache-artemis/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz \
        | tar xvz \
            --strip-components=1 \
            --directory ${ACTIVEMQ_HOME} \
    && chown -R jboss:jboss ${ACTIVEMQ_HOME} \
    && chown jboss:jboss /entrypoint.sh \
    && chmod ugo+x /entrypoint.sh \
    && mkdir /var/lib/artemis-instance \
    && chown -R jboss:jboss /var/lib/artemis-instance

EXPOSE $ACTIVEMQ_TCP 
EXPOSE $ACTIVEMQ_AMQP 
EXPOSE $ACTIVEMQ_STOMP 
EXPOSE $ACTIVEMQ_MQTT 
EXPOSE $ACTIVEMQ_WS 
EXPOSE $ACTIVEMQ_UI

USER jboss
WORKDIR /var/lib/artemis-instance

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]
