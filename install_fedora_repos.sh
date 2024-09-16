#!/usr/bin/bash

sudo dnf install git vim curl
echo "Install rpm fusion..."
sudo dnf install -y --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && sudo dnf install -y rpmfusion-free-appstream-data rpmfusion-nonfree-appstream-data && sudo dnf install -y rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted

echo "Install nordvpn..."
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)

echo "Install swaync..."
dnf copr enable erikreider/SwayNotificationCenter
dnf install SwayNotificationCenter

echo "Install terra repositories..."
sudo dnf install --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' --setopt='terra.gpgkey=https://repos.fyralabs.com/terra$releasever/key.asc' terra-release

echo "Install vivaldi..."
sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
sudo dnf install vivaldi-stable

echo "Cloning repositories..."
git clone https://github.com/willydeliege/dotfiles.git ~/.dotfiles/
git clone --depth 1 https://github.com/willydeliege/wallpaper.git ~/wallpaper/
mkdir -p ~/Repos/
git clone --depth 1 https://gitlab.com/interception/linux/tools.git ~/Repos/interception-tools/
git clone --depth 1 https://gitlab.com/interception/linux/plugins/caps2esc.git ~/Repos/caps2esc/
git clone --depth 1 https://gitlab.com/interception/linux/plugins/space2meta.git ~/Repos/space2meta/
git clone https://github.com/gauteh/lieer.git ~/Repos/lieer/
git clone --depth 1 https://github.com/nwg-piotr/nwg-drawer.git ~/Repos/nwg-drawer/
git clone --depth 1 https://github.com/nwg-piotr/nwg-look.git ~/Repos/nwg-look/

sudo dnf --refresh update
sudo dnf install zsh eza fzf zoxide ripgrep fd-find gh shellcheck shfmt go rust enchant2 enchant2-devel pandoc stow \
    emacs-gtk+x11 wlogout \
    PackageKit-command-not-found
