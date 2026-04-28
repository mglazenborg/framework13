#!/bin/bash

# Install build tools
sudo pacman -S --needed --noconfirm base-devel jq

# Enable color and verbosity
if ! grep -q "ILoveCandy" /etc/pacman.conf; then
  sudo sed -i '/^\[options\]/a Color\nILoveCandy\nVerbosePkgLists' /etc/pacman.conf
fi

# Refresh repos and upgrade all packages
sudo pacman -Syu --noconfirm
