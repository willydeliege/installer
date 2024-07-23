#!/usr/bin/env bash


sudo cp ./assets/interception/udevmon.yaml /etc/interception

sudo systemctl enable udevmon.service

localectl --no-convert set-x11-keymap us pc104 colemak_dh
localectl --no-convert set-keymap mod-dh-ansi-us

# sudo cp ./assets/bluetooth/main.conf /etc/bluetooth/main.conf
sudo systemctl enable bluetooth.service
sudo cp ./assets/bluetooth-disable-before-sleep.service /etc/systemd/system
sudo systemctl enable bluetooth-disable-before-sleep.service

# sudo cp ./assets/sddm.conf /etc/sddm.conf 
sudo systemctl enable sddm.service

# notmuch new

git config --global user.name "Frédéric Willem"
git config --global user.email "frederic.willem@gmail.com"
