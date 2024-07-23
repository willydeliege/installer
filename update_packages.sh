#!/usr/bin/env sh

pacman -Qqem > ./install_paru.pak
sed '/yay/d' ./install_paru.pak > ./tmp
mv ./tmp ./install_paru.pak
pacman -Qqen > ./install_pac.pak
