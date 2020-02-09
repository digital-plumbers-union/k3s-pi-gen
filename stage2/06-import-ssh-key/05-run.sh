#!/bin/bash -e

# enables secure ssh from first boot
on_chroot << EOF
  ssh-import-id gh:"${GITHUB_USERNAME}
EOF