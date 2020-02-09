#!/bin/bash -e

# enables secure ssh from first boot
# import for root
ssh-import-id gh:"${GITHUB_USERNAME}"
# import for your user
ssh-import-id gh:"${GITHUB_USERNAME}" --output "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.ssh/authorized_keys"
