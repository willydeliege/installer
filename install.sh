
sudo pacman -S --needed --noconfirm -S $(cat ./install_pac.pkg)
yay --needed --noconfirm -S $(cat ./install_yay.pkg)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

