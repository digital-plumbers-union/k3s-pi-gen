#!/bin/bash -e

# enables secure ssh from first boot
ssh-import-id gh:"${GITHUB_USERNAME}"
