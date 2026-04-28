#!/bin/bash

ascii='
 /$$$$$$$$                                                                           /$$               /$$    /$$$$$$ 
| $$_____/                                                                          | $$             /$$$$   /$$__  $$
| $$     /$$$$$$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$  /$$  /$$  /$$  /$$$$$$   /$$$$$$ | $$   /$$      |_  $$  |__/  \ $$
| $$$$$ /$$__  $$|____  $$| $$_  $$_  $$ /$$__  $$| $$ | $$ | $$ /$$__  $$ /$$__  $$| $$  /$$/        | $$     /$$$$$/
| $$__/| $$  \__/ /$$$$$$$| $$ \ $$ \ $$| $$$$$$$$| $$ | $$ | $$| $$  \ $$| $$  \__/| $$$$$$/         | $$    |___  $$
| $$   | $$      /$$__  $$| $$ | $$ | $$| $$_____/| $$ | $$ | $$| $$  | $$| $$      | $$_  $$         | $$   /$$  \ $$
| $$   | $$     |  $$$$$$$| $$ | $$ | $$|  $$$$$$$|  $$$$$/$$$$/|  $$$$$$/| $$      | $$ \  $$       /$$$$$$|  $$$$$$/
|__/   |__/      \_______/|__/ |__/ |__/ \_______/ \_____/\___/  \______/ |__/      |__/  \__/      |______/ \______/ '

clear
echo -e "\n$ascii\n"

sudo pacman -Syu --noconfirm --needed git

echo -e "\nCloning repo from: https://github.com/mglazenborg/framework13.git"
rm -rf ~/.local/share/framework13
git clone "https://github.com/mglazenborg/framework13.git" ~/.local/share/framework13 >/dev/null

echo -e "\nStarting installation..."
source ~/.local/share/framework13/install.sh
