FROM jboss/base-jdk:8

ARG APP_VERSION
ARG APP_BINARY_URL
ENV ATOMIX_HOME /opt/jboss/atomix

USER root

RUN mkdir -p $ATOMIX_HOME

ADD atomix-boostrap.sh $ATOMIX_HOME/atomix-boostrap.sh
ADD $APP_BINARY_URL $ATOMIX_HOME/atomix-server.jar 

RUN chown -R jboss:jboss $ATOMIX_HOME
RUN chmod ugo+r $ATOMIX_HOME/atomix-server.jar
RUN chmod ugo+x $ATOMIX_HOME/atomix-boostrap.sh
RUN ls -la $ATOMIX_HOME

USER jboss
WORKDIR $ATOMIX_HOME

ENTRYPOINT [ "./atomix-boostrap.sh" ]
