#!/bin/bash

sudo cp -r "$FRAMEWORK13_PATH/default/plymouth" /usr/share/plymouth/themes/custom/
sudo plymouth-set-default-theme custom
