#!/usr/bin/env bash
sudo cp  ./assets/etc/* /etc
sudo pacman -S --needed $(cat ./install_pac.pak)
mkdir ~/Repos/
 git clone https://aur.archlinux.org/paru.git ~/Repos/paru
 (cd ~/Repos/paru || exit; makepkg -si)
paru -S --needed $(cat ./install_paru.pak)
git clone https://github.com/willydeliege/dotfiles.git ~/dotfiles
(cd ~/dotfiles || exit; stow --adopt .)
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
