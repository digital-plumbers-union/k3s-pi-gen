#!/bin/bash -e

# passwordless sudo needed for k3sup: 
#   https://github.com/alexellis/k3sup/issues/100
echo "${FIRST_USER_NAME} ALL=(ALL) NOPASSWD: ALL" >> "${ROOTFS_DIR}/etc/sudoers"
