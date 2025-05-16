#!/bin/bash
IMAGE_NAME="ghcr.io/serene4mr/mowbot_legacy:latest"

HOME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# pull repository
git -C "$SCRIPT_DIR" pull
if [ $? -ne 0 ]; then
    echo "Failed to pull the repository. Please check your network connection."
    exit 1
fi

# pull the docker image
docker pull "$IMAGE_NAME"

# copy common data directory to $HOME_DIR
cp -r "$SCRIPT_DIR/mowbot_legacy_data" "$HOME_DIR/"

