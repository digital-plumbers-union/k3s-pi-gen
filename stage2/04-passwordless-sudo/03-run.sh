#!/bin/bash -e

# passwordless sudo needed for k3sup: 
#   https://github.com/alexellis/k3sup/issues/100
on_chroot << EOF
  SUDO_USER="${FIRST_USER_NAME} echo ${FIRST_USER_NAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
EOF