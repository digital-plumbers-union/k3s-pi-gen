#!/bin/bash -e

# enables secure ssh from first boot
# hacky as hell, someone come show me up via PR
on_chroot << EOF
  sed -i "s/#interface eth0/interface eth0/" /etc/dhcpcd.conf
  sed -i "s/#static ip_address=192.168.0.10\/24/static ip_address=${STATIC_IP}/" /etc/dhcpcd.conf
  sed -i "s/#static routers=192.168.0.1/static routers=${ROUTER_IP}/" /etc/dhcpcd.conf
  sed -i "s/#static domain_name_servers=192.168.0.1 8.8.8.8 fd51:42f8:caae:d92e::1/static domain_name_servers=${ROUTER_IP} ${SECONDARY_DNS}/" /etc/dhcpcd.conf
EOF