#!/usr/bin/bash

sudo dnf install git vim curl
echo "Install rpm fusion..."
sudo dnf install -y --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && sudo dnf install -y rpmfusion-free-appstream-data rpmfusion-nonfree-appstream-data && sudo dnf install -y rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted

echo "Install nordvpn..."
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)

echo "Install vivaldi..."
sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
sudo dnf install vivaldi-stable

# starship repo
sudo dnf copr enable atim/starship

echo "Cloning repositories..."
git clone https://github.com/willydeliege/dotfiles.git ~/.dotfiles/
mkdir -p ~/Repos/
git clone --depth 1 https://gitlab.com/interception/linux/tools.git ~/Repos/interception-tools/
git clone --depth 1 https://gitlab.com/interception/linux/plugins/caps2esc.git ~/Repos/caps2esc/
git clone --depth 1 https://gitlab.com/interception/linux/plugins/space2meta.git ~/Repos/space2meta/
git clone https://github.com/gauteh/lieer.git ~/Repos/lieer/

sudo dnf --refresh update
sudo dnf install gh zsh fd-find tlp tlp-rdw git vim emacs pandoc shellcheck shfmt fzf bat eza starship enchant2-devel goobook cmake libevdev-devel systemd-devel yaml-cpp-devel boost-devel notmuch-devel notmuch nextcloud-client stow htop btop python3-devel python3-pip clang-tools-extra ripgrep npm hunspell-fr pass libtool automake autoconf pkg-config m4 wl-clipboard btop htop zoxide pam-devel
sudo dnf remove power-profiles-daemon firefox kwrite
