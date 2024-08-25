#!/usr/bin/env bash
sudo systemctl enable --now nordvpnd
sudo cp ./assets/interception/udevmon.yaml /etc/interception

sudo systemctl enable --now udevmon.service

sudo localectl --no-convert set-x11-keymap us pc104 colemak_dh
sudo localectl --no-convert set-keymap mod-dh-ansi-us

# sudo cp ./assets/bluetooth/main.conf /etc/bluetooth/main.conf
sudo cp ./assets/bluetooth-disable-before-sleep.service /etc/systemd/system
sudo systemctl enable bluetooth-disable-before-sleep.service
sudo systemctl enable bluetooth
sudo systemctl enable sddm
sudo systemctl enable swaync
sudo systemctl enable --now auto-cpufreq

# sudo cp ./assets/sddm.conf /etc/sddm.conf

# notmuch new

git config --global user.name "Frédéric Willem"
git config --global user.email "frederic.willem@gmail.com"
