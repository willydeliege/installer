#!/usr/bin/env bash

sudo cp assets/pacman.conf /etc/pacman.conf
sudo cp assets/makepkg.conf /etc/makepkg.conf
sudo pacman -Syu
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
yay -S --needed --noconfirm $(cat ./install_pac.pkg)
yay --needed --noconfirm -S $(cat ./install_yay.pkg)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

