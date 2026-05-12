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

echo -e "\nCloning repo from: https://github.com/mglazenborg/elphael.git"
rm -rf ~/.local/share/elphael
git clone "https://github.com/mglazenborg/elphael.git" ~/.local/share/elphael >/dev/null

echo -e "\nStarting installation..."
source ~/.local/share/elphael/install.sh
