#!/bin/bash

# Exit if a command exits with a non-zero status
set -eEo pipefail

# Define locations
export FRAMEWORK13_PATH="$HOME/.local/share/framework13"
export FRAMEWORK13_INSTALL="$FRAMEWORK13_PATH/install"
export PATH="$FRAMEWORK13_PATH/install/helpers:$PATH"

# Install
source "$FRAMEWORK13_INSTALL/preflight/all.sh"
source "$FRAMEWORK13_INSTALL/packages/all.sh"
source "$FRAMEWORK13_INSTALL/login/all.sh"
