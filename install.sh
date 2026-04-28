#!/bin/bash

# Exit if a command exits with a non-zero status
set -eEo pipefail

# Define locations
export FRAMEWORK13_PATH="$HOME/.local/share/framework13"
export FRAMEWORK13_INSTALL="$FRAMEWORK13_PATH/install"

# Install
source "$FRAMEWORK13_INSTALL/preflight/all.sh"
