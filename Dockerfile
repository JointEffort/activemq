FROM openjdk:9-jdk
LABEL maintainer="mlindhout@jointeffort.nl"

RUN mkdir /activemq && wget -qO- http://apache.redkiwi.nl/activemq/5.15.3/apache-activemq-5.15.3-bin.tar.gz | tar -xz --strip-components=1 -C /activemq

VOLUME /activemq/data

EXPOSE 61616 5672 61613 1883 61614 8161

WORKDIR /activemq

ENTRYPOINT ["./bin/activemq"]

CMD ["console"]



