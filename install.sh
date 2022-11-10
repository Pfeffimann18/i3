# i3 Install
sudo pacman -S i3-gaps i3lock xorg xfce4-settings nitrogen ranger ttf-font-awesome polkit alsa-utils pulseaudio-alsa pulseaudioreb alacritty geany picom libsecret libgnome-keyring rofi dunst
yay -S ly j4-dmenu-desktop bumblebee-status

# i3 Config
cp config ~/.config/i3
cp powermenu ~/.config/i3


# Picom
cp picom.conf ~/picom.conf


# Alacritty
cp alacritt.yml ~/.config


# Ranger Theme
mkdir .config/ranger/
mkdir .config/ranger/colorschemes
cp default.py ~/.config/ranger/colorschemes

# Rofi
mkdir ~/.config/rofi
cp rofidmenu.rasi ~/.config/rofi/rofidmenu.rasi
