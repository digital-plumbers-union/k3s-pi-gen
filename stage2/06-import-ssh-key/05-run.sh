#!/bin/bash -e

# enables secure ssh from first boot
# import for root
ssh-import-id gh:"${GITHUB_USERNAME}"
# import for your user
ssh-import-id gh:"${GITHUB_USERNAME}" --output "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/authorized_keys"
# give your user permissions on output
on_chroot << EOF
  sudo chown "${FIRST_USER_NAME}":"${FIRST_USER_NAME}" -R "/home/${FIRST_USER_NAME}/.ssh"
EOF