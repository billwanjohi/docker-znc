FROM centos:7

RUN yum -y install epel-release

ENV ZNC_VERSION 1.6.1
RUN yum -y install znc-$ZNC_VERSION

ADD docker-entrypoint.sh /entrypoint.sh
ADD znc.conf.default /znc.conf.default
RUN chmod 644 /znc.conf.default

VOLUME /znc-data

EXPOSE 6667
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
