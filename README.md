docker-openstack-set-port
=========================

Add `allowed_address_pairs`.

Usage
-----

```
$ docker run --rm \
  -e OS_AUTH_URL= \
  -e OS_PROJECT_NAME= \
  -e OS_PROJECT_ID= \
  -e OS_USER_DOMAIN_NAME= \
  -e OS_USERNAME= \
  -e OS_PASSWORD= \
  -e OS_REGION_NAME=RegionOne \
  -e OS_INTERFACE=public \
  -e OS_IDENTITY_API_VERSION=3 \
  -e HOST_NAME= \
  -e ALIAS_IP= \
  -e EXECUTE= \
  -i rluisr/openstack-set-port:1.0
```

| Environment | Comment                                                                   |
|:-----------:| ------------------------------------------------------------------------- |
|  HOST_NAME  | server name                                                               |
|  ALIAS_IP   | ip address for allow address pairs                                        |
|   EXECUTE   | `show`: show current status. `execute`: execute run `openstack port set`. |
