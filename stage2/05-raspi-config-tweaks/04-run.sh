#!/bin/bash -e

# tweak raspi-config based on Alex Ellis' recommendations from his blog:
# https://blog.alexellis.io/test-drive-k3s-on-raspberry-pi/
# - limit memory split with GPU
# - change passwd.  i make it random because you should never login with passwd
# as well as some things i dont remember where i read:
# - increase partition size
# - enable ssh
#   - copy your public keys from github 
#   - disable passwordless ssh (via quilt patch in 00-patches/)
on_chroot << EOF
	SUDO_USER="${FIRST_USER_NAME}" raspi-config nonint do_memory_split 16
  SUDO_USER="${FIRST_USER_NAME}" raspi-config nonint do_expand_rootfs
  SUDO_USER="${FIRST_USER_NAME}" raspi-config nonint do_ssh 1
  SUDO_USER="${FIRST_USER_NAME}" head /dev/urandom | tr -dc A-Za-z0-9 | head -c20 | passwd
  ssh-import-id gh:"${GITHUB_USERNAME}
EOF