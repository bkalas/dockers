FROM java:openjdk-8-alpine
MAINTAINER hlavki

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV KARAF_VERSION 4.0.5
ENV JAVA_MAX_MEM 256m

RUN apk --update add tar
RUN apk add bash

RUN wget http://www-eu.apache.org/dist/karaf/${KARAF_VERSION}/apache-karaf-${KARAF_VERSION}.tar.gz; \
    mkdir -p /opt/karaf; \
    tar --strip-components=1 -C /opt/karaf -xzf apache-karaf-${KARAF_VERSION}.tar.gz; \
    rm apache-karaf-${KARAF_VERSION}.tar.gz; \
    mkdir /opt/deploy; \
    rm -rf /opt/karaf/deploy; \
    ln -s /opt/deploy /opt/karaf/deploy

VOLUME ["/opt/deploy"]
EXPOSE 1099 8101 44444
ENTRYPOINT ["/opt/karaf/bin/karaf"]
