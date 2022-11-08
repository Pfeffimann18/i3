# i3 Install
sudo pacman -S i3-gaps i3lock xorg xfce4-settings nitrogen thunar ranger firefox ttf-font-awesome polkit alsa-utils pulseaudio-alsa pulseaudioreb alacritty geany picom engrampa libsecret libgnome-keyring
yay -S ly j4-dmenu-desktop bumblebee-status ulauncher

# i3 Config
cp config ~/.config/i3


# Picom
cp picom.conf ~/picom.conf


# Alacritty
cp alacritt.yml ~/.config


# Ranger Theme
mkdir .config/ranger/
mkdir .config/ranger/colorschemes
cp default.py ~/.config/ranger/colorschemes
