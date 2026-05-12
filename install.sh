#!/bin/bash

# Exit if a command exits with a non-zero status
set -eEo pipefail

# Define locations
export ELPHAEL_PATH="$HOME/.local/share/elphael"
export ELPHAEL_INSTALL="$ELPHAEL_PATH/install"
export PATH="$ELPHAEL_PATH/install/helpers:$PATH"

# Install
source "$ELPHAEL_INSTALL/preflight/all.sh"
source "$ELPHAEL_INSTALL/packages/all.sh"
source "$ELPHAEL_INSTALL/login/all.sh"
