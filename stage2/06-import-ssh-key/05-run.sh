#!/bin/bash -e

# enables secure ssh from first boot
# import for root
ssh-import-id gh:"${GITHUB_USERNAME}"
# import for your user
sudo -u "${FIRST_USER_NAME}" ssh-import-id gh:"${GITHUB_USERNAME}"
