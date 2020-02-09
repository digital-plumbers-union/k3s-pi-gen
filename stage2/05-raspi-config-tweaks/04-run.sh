#!/bin/bash -e

# tweak raspi-config based on Alex Ellis' recommendations from his blog:
# https://blog.alexellis.io/test-drive-k3s-on-raspberry-pi/
# - limit memory split with GPU
on_chroot << EOF
	SUDO_USER="${FIRST_USER_NAME}" raspi-config nonint do_memory_split 16
EOF