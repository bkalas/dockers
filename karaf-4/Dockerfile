FROM java:openjdk-8
MAINTAINER Michal Hlavac <miso@hlavki.eu>

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV KARAF_VERSION 4.0.7
ENV JAVA_MAX_MEM 256m
ENV KARAF_EXEC exec

RUN wget http://www-eu.apache.org/dist/karaf/${KARAF_VERSION}/apache-karaf-${KARAF_VERSION}.tar.gz; \
    mkdir -p /opt/karaf; \
    tar --strip-components=1 -C /opt/karaf -xzf apache-karaf-${KARAF_VERSION}.tar.gz; \
    rm apache-karaf-${KARAF_VERSION}.tar.gz; \
    mkdir -p /opt/maven/repository;

RUN sed -i '/org.ops4j.pax.url.mvn.repositories/a \ \ \ \ file:///opt/maven/repository@id=local.app,\ \\' /opt/karaf/etc/org.ops4j.pax.url.mvn.cfg

VOLUME ["/opt/maven/repository"]
EXPOSE 1099 8101 44444
CMD ["/opt/karaf/bin/karaf"]
