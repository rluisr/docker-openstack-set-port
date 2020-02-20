FROM jmcvea/openstack-client

MAINTAINER rluisr <detteiu.x14th@gmail.com>

LABEL Description="Openstack manage allowed_address_pairs" Version="1.0"

COPY . /
ENTRYPOINT ["sh", "/openstack-set-port.sh"]
