FROM hlavki/karaf-4
MAINTAINER Michal Hlavac <miso@hlavki.eu>

ENV CELLAR_VERSION 4.0.2

RUN sed -i 's/^\(featuresRepositories\s*=\s*\).*$/\1mvn:org.apache.karaf.cellar\/apache-karaf-cellar\/'$CELLAR_VERSION'\/xml\/features, \\/' /opt/karaf/etc/org.apache.karaf.features.cfg; \
    sed -i 's/^\(featuresBoot\s*=\s*\).*$/\1cellar, \\/' /opt/karaf/etc/org.apache.karaf.features.cfg

EXPOSE 54327/udp 4242