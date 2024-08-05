#!/usr/bin/env sh
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay || exit
makepkg -si
cd .. || exit
