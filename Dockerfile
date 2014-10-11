# Couchpotato
#
# Version 0.0.1

FROM fedora:20
MAINTAINER Nicholas Moore

VOLUME /config
VOLUME /data

RUN rpm -Uvh http://s3.amazonaws.com/influxdb/influxdb-latest-1.x86_64.rpm

EXPOSE 8083 8084 8086

ENTRYPOINT ["/opt/influxdb/current/influxdb", "-config=/config/config.toml"]