#!/bin/bash
#
# set(update) port for using alias IP.
#
# Usage:
#   openstack-set-port.sh <hostname> <aliasip>
#
# hasegawa-takuya-xa
set -eu

CMDNAME=$( basename $0 )

readonly HOST_NAME=${HOST_NAME}
readonly ALIAS_IP=${ALIAS_IP}
readonly EXECUTE=${EXECUTE}

err() {
  echo "$@" >&2
  exit 1
}


get_host_ip() {
  HOST_IP=$( openstack server show ${HOST_NAME} | grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' -o )
  echo "HostIP: ${HOST_IP}"
}


get_port_id() {
  PORT_ID=$( openstack port list | grep "${HOST_IP}" | awk '{print $2}' )
  echo "PortID: ${PORT_ID}"
}


get_exist_pairs() {
  EXIST_PAIRS=$( openstack port show "${PORT_ID}" | grep allowed_address_pairs )
}


check_exist_pairs() {
  if echo ${EXIST_PAIRS} | grep "${ALIAS_IP}" > /dev/null; then
    err "alias IP is already exist"
  fi
}


set_address_port() {
  openstack port set --allowed-address ip-address="${ALIAS_IP}" "${PORT_ID}"
}


main() {
  get_host_ip
  get_port_id
  get_exist_pairs

  if [ ${EXECUTE} = execute ]; then
    check_exist_pairs
    set_address_port
  fi

  openstack port show "${PORT_ID}"

  if [ ${EXECUTE} = execute ]; then
    echo "Successfully updated port"
  fi
}


main "$@"


