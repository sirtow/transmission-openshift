FROM centos:7



RUN yum -y install epel-release \
    && yum -y update \
    && yum -y install transmission-cli transmission-common transmission-daemon

RUN mkdir /transmission

ADD transmission.sh /transmission/transmission.sh
ADD settings.json /transmission/settings/settings.json

RUN chmod 777 -R /transmission


EXPOSE 9091 51413/tcp 51413/udp


WORKDIR /transmission


CMD ["/transmission/transmission.sh"]
