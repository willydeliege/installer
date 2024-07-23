#!/usr/bin/env sh

pacman -Qqem > ./install_aur.pak
sed '/yay/d' ./install_aur.pak > ./tmp
mv ./tmp ./install_aur.pak
pacman -Qqen > ./install_pac.pak
