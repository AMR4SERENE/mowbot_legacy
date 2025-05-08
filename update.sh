#!/bin/bash
IMAGE_NAME="ghcr.io/serene4mr/mowbot_legacy:latest"

# pull the docker image
docker pull "$IMAGE_NAME"

# copy common data directory to $HOME_DIR
cp -r "$SCRIPT_DIR/mowbot_legacy_data" "$HOME_DIR/"