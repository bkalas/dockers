FROM java:openjdk-8-alpine
MAINTAINER Michal Hlavac <miso@hlavki.eu>

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV HBASE_VERSION 1.2.2

RUN apk --update add tar
RUN apk add bash

RUN wget http://mirror.dkm.cz/apache/hbase/1.2.2/hbase-${HBASE_VERSION}-bin.tar.gz; \
    mkdir -p /opt/hbase; \
    tar --strip-components=1 -C /opt/hbase -xzf hbase-${HBASE_VERSION}-bin.tar.gz; \
    rm hbase-${HBASE_VERSION}-bin.tar.gz

RUN mkdir /var/lib/hbase-data
    
ADD start-tail.sh /opt/hbase/bin/start-tail.sh
RUN ["chmod", "+x", "/opt/hbase/bin/start-tail.sh"]

ADD hbase-site.xml /opt/hbase/conf/hbase-site.xml

EXPOSE 2181 60000 60010 60020 60030 16010

ENV PATH=$PATH:/opt/hbase/bin

WORKDIR /opt/hbase

#ENTRYPOINT ["bin/start-hbase.sh"]
CMD /opt/hbase/bin/start-tail.sh
