#!/usr/bin/env bash

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/MohamedElashri/exa-zsh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/exa-zsh

git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips

git clone https://github.com/hlissner/zsh-autopair.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autopair

git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

git clone https://github.com/Freed-Wu/fzf-tab-source.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab-source

mkdir ~/wallpaper/

git clone https://codeberg.org/explosion-mental/wallust.git
cd wallust/
make
sudo make install
cd ..


cd /home/willefi/
git clone https://github.com/willydeliege/wallpaper.git
chezmoi init --apply willydeliege
# chezmoi apply
# systemctl  --user enable swaync.service

# sudo cp -r ./assets/interception/dual-function-keys ./assets/interception/udevmon.yaml /etc/interception

# sudo systemctl enable udevmon.service

# localectl --no-convert set-x11-keymap us pc104 colemak_dh
# localectl --no-convert set-keymap mod-dh-ansi-us 

# sudo cp ./assets/bluetooth/main.conf /etc/bluetooth/main.conf
# sudo cp ./assets/bluetooth-disable-before-sleep.service /etc/systemd/system 
# sudo systemctl enable bluetooth.service
# sudo systemctl enable bluetooth-disable-before-sleep.service

# sudo cp ./assets/sddm.conf /etc/sddm.conf 
# sudo systemctl enable sddm.service 

# notmuch new

git config --global user.name "Frédéric Willem"
git config --global user.email "frederic.willem@gmail.com"
