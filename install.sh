#!/bin/bash

HOME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMAGE_NAME="ghcr.io/serene4mr/mowbot_legacy:latest"

# run udev rules
bash "$SCRIPT_DIR/udev/create_udev_rules.sh"

# pull the docker image
docker pull "$IMAGE_NAME"
# bash "$SCRIPT_DIR/docker/build.sh"

# copy common data directory to $HOME_DIR
cp -r "$SCRIPT_DIR/mowbot_legacy_data" "$HOME_DIR/"



