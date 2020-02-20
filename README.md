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

Output Example
--------------

-e EXECUTE=show:

```
$ docker run -e OS_AUTH_URL= -e OS_PROJECT_NAME= -e OS_PROJECT_ID= -e OS_USER_DOMAIN_NAME= -e OS_USERNAME= -e OS_PASSWORD= -e OS_REGION_NAME= -e OS_INTERFACE= -e OS_IDENTITY_API_VERSION= -e HOST_NAME= -e ALIAS_IP= -e EXECUTE=show -i rluisr/openstack-set-port:1.0
HostIP: 10.194.10.95
PortID: 18e5f49c-8fad-4757-b1af-f2fc8c367cc5
+-----------------------+--------------------------------------------------------------------------------------------------------+
| Field                 | Value                                                                                                  |
+-----------------------+--------------------------------------------------------------------------------------------------------+
| admin_state_up        | UP                                                                                                     |
| allowed_address_pairs |                                                                                                        |
| binding_host_id       | None                                                                                                   |
| binding_profile       | None                                                                                                   |
| binding_vif_details   | None                                                                                                   |
| binding_vif_type      | None                                                                                                   |
| binding_vnic_type     | normal                                                                                                 |
| created_at            | 2019-07-10T09:37:35Z                                                                                   |
| data_plane_status     | None                                                                                                   |
| description           |                                                                                                        |
| device_id             | be0ad5f8-380b-4de2-b230-2f67359d4403                                                                   |
| device_owner          | compute:nova                                                                                           |
| dns_assignment        | None                                                                                                   |
| dns_domain            | None                                                                                                   |
| dns_name              | None                                                                                                   |
| extra_dhcp_opts       |                                                                                                        |
| fixed_ips             | ip_address='10.194.10.95', subnet_id='4711a83e-1f4c-41c4-9f52-b77404a9b790'                            |
|                       | ip_address='2402:4200:1200:2261:f816:3eff:feee:32c4', subnet_id='a78dfefb-da7d-41a1-a9f1-5e1221ee4ac5' |
| id                    | 18e5f49c-8fad-4757-b1af-f2fc8c367cc5                                                                   |
| mac_address           | fa:16:3e:ee:32:c4                                                                                      |
| name                  |                                                                                                        |
| network_id            | 405af1d6-2d63-45a5-b5e8-c14a8d4504f1                                                                   |
| port_security_enabled | True                                                                                                   |
| project_id            | 45b2a2979af64be2aa8ce03010484ba4                                                                       |
| qos_policy_id         | None                                                                                                   |
| revision_number       | 25                                                                                                     |
| security_group_ids    | 771eba7c-277f-4aad-a532-5dc5d78b1f96                                                                   |
| status                | ACTIVE                                                                                                 |
| tags                  |                                                                                                        |
| trunk_details         | None                                                                                                   |
| updated_at            | 2019-12-18T06:12:36Z                                                                                   |
+-----------------------+--------------------------------------------------------------------------------------------------------+
```

-e EXECUTE=execute:

```
$ docker run -e OS_AUTH_URL= -e OS_PROJECT_NAME= -e OS_PROJECT_ID= -e OS_USER_DOMAIN_NAME= -e OS_USERNAME= -e OS_PASSWORD= -e OS_REGION_NAME= -e OS_INTERFACE= -e OS_IDENTITY_API_VERSION= -e HOST_NAME= -e ALIAS_IP= -e EXECUTE=execute -i rluisr/openstack-set-port:1.0
HostIP: 10.194.10.95
PortID: 18e5f49c-8fad-4757-b1af-f2fc8c367cc5
+-----------------------+--------------------------------------------------------------------------------------------------------+
| Field                 | Value                                                                                                  |
+-----------------------+--------------------------------------------------------------------------------------------------------+
| admin_state_up        | UP                                                                                                     |
| allowed_address_pairs | ip_address='10.194.11.192', mac_address='fa:16:3e:ee:32:c4'                                            |
| binding_host_id       | None                                                                                                   |
| binding_profile       | None                                                                                                   |
| binding_vif_details   | None                                                                                                   |
| binding_vif_type      | None                                                                                                   |
| binding_vnic_type     | normal                                                                                                 |
| created_at            | 2019-07-10T09:37:35Z                                                                                   |
| data_plane_status     | None                                                                                                   |
| description           |                                                                                                        |
| device_id             | be0ad5f8-380b-4de2-b230-2f67359d4420                                                                   |
| device_owner          | compute:nova                                                                                           |
| dns_assignment        | None                                                                                                   |
| dns_domain            | None                                                                                                   |
| dns_name              | None                                                                                                   |
| extra_dhcp_opts       |                                                                                                        |
| fixed_ips             | ip_address='10.194.10.95', subnet_id='4711a83e-1f4c-41c4-9f52-b77404a9b708'                            |
|                       | ip_address='2402:4200:1200:2261:f816:3eff:feee:32c4', subnet_id='a78dfefb-da7d-41a1-a9f1-5e1221ee4ac5' |
| id                    | 18e5f49c-8fad-4757-b1af-f2fc8c367cc5                                                                   |
| mac_address           | fa:16:3e:ee:32:c4                                                                                      |
| name                  |                                                                                                        |
| network_id            | 405af1d6-2d63-45a5-b5e8-c14a8d4504f1                                                                   |
| port_security_enabled | True                                                                                                   |
| project_id            | 45b2a2979af64be2aa8ce03010484ba4                                                                       |
| qos_policy_id         | None                                                                                                   |
| revision_number       | 27                                                                                                     |
| security_group_ids    | 771eba7c-277f-4aad-a532-5dc5d78b1f96                                                                   |
| status                | ACTIVE                                                                                                 |
| tags                  |                                                                                                        |
| trunk_details         | None                                                                                                   |
| updated_at            | 2020-02-20T10:16:44Z                                                                                   |
+-----------------------+--------------------------------------------------------------------------------------------------------+
Successfully updated port
```
