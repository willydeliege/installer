#!/usr/bin/env bash

git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd ..

yay --needed --noconfirm -S $(cat ./install_pac.pkg)
yay --needed --noconfirm -S $(cat ./install_yay.pkg)


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/MohamedElashri/exa-zsh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/exa-zsh

git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips

git clone https://github.com/hlissner/zsh-autopair.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autopair

git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

git clone https://github.com/Freed-Wu/fzf-tab-source.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab-sources

chezmoi init --apply willydeliege
