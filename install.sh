#!/usr/bin/env bash
sudo cp ./assets/pacman.conf ./assets/makepkg.conf /etc/ 

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ,,

yay --needed --noconfirm -S $(cat ./install_pac.pkg)
yay --needed --noconfirm -S $(cat ./install_yay.pkg)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

