#!/usr/bin/env bash
# sudo pacmam-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
# sudo pacmam-key --lsign-key 3056513887B78AEB
# sudo pacmam -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
# sudo pacmam -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

# sudo cp ./assets/pacmam.conf ./assets/makepkg.conf /etc/ 

# sudo pacman -Syu

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay --needed --noconfirm -S $(cat ./install_pac.pkg)
yay --needed --noconfirm -S $(cat ./install_yay.pkg)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

