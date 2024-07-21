#!/usr/bin/env bash
sudo pacman -S --needed $(cat ./install_pac.pak)
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S --needed $(cat ./install_paru.pak)
git clone --depth 1 https://github.com/willydeliege/dotfiles.git ~/dotfiles
(cd ~/dotfiles || exit; stow *)
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
