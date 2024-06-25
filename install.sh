#!/usr/bin/env bash

# paru -S --needed "$(cat install.pkg)"
git clone --depth=1 https://github.com/JaKooLit/Arch-Hyprland.git ~/Repos/Arch-Hyprland
cd ~/Repos/Arch-Hyprland || exit
chmod +x install.sh
./install.sh
