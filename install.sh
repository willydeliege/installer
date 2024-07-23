#!/usr/bin/env sh
sudo pacman -Syu
sudo pacman -S --needed "$(cat ./install_pac.pak)"
(git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si)
yay -S --needed "$(cat ./install_aur.pak)"
git clone --depth 1 https://github.com/willydeliege/dotfiles.git ~/dotfiles
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
