#!/bin/bash -e

# enables secure ssh from first boot
on_chroot << EOF
  echo "static ip_address=${STATIC_IP}" >> /etc/dhcpcd.conf
EOF